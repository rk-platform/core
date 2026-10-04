#!/usr/bin/env sh
# research-kit installer: downloads rk/reach for this OS/arch from the
# latest GitHub release, places them in ~/.rk/bin, then runs `rk install`
# to write skills, hooks, and the PATH line. POSIX sh only, no bashisms.
set -eu

REPO="${RK_INSTALL_REPO:-rk-platform/core}"
# Fixed, not overridable: `rk install`, `rk update` and the PATH line rk writes
# all resolve this same path from $HOME, so a bin dir chosen only here would
# leave the install pointing at a directory rk itself never looks in.
BIN_DIR="$HOME/.rk/bin"
# The site's own "latest release" page, not api.github.com: the API allows an
# unauthenticated IP 60 calls an hour, and an operator behind an IP whose quota
# others had spent could not install at all (#334).
LATEST="https://github.com/$REPO/releases/latest"

# Digest tool, chosen once. Not `sha256sum ... || shasum ...`: a pipeline's
# exit status is its LAST command's, so the fallback after a pipe never fires
# when sha256sum is missing -- it yields an empty digest and every download
# then looks like a checksum mismatch.
if command -v sha256sum >/dev/null 2>&1; then
  sha256_of() { sha256sum "$1" | cut -d' ' -f1; }
elif command -v shasum >/dev/null 2>&1; then
  sha256_of() { shasum -a 256 "$1" | cut -d' ' -f1; }
else
  echo "install.sh: neither sha256sum nor shasum found; cannot verify downloads" >&2
  exit 1
fi

os=$(uname -s | tr '[:upper:]' '[:lower:]')
arch=$(uname -m)
case "$arch" in
  x86_64|amd64)  arch=amd64 ;;
  arm64|aarch64) arch=arm64 ;;
  *) echo "install.sh: unsupported architecture $arch" >&2; exit 1 ;;
esac
case "$os" in
  darwin|linux) : ;;
  *) echo "install.sh: unsupported OS $os (rk runs on macOS and Linux)" >&2; exit 1 ;;
esac

echo "research-kit: finding the latest release at $LATEST"
# The page answers with a redirect to the newest tag's page; the tag is the
# last segment of its Location, read without following it.
location=$(curl -fsSI "$LATEST" | tr -d '\r' | grep -i '^location:' | head -n1 || true)
case "$location" in
  */releases/tag/?*) tag=${location##*/releases/tag/} ;;
  *) echo "install.sh: could not find the latest release at $LATEST" >&2; exit 1 ;;
esac
DOWNLOAD="https://github.com/$REPO/releases/download/$tag"

# Where the asset named $1 downloads from. Release downloads are always
# .../releases/download/<tag>/<asset name>, so the URL is built rather than
# looked up; an asset the release does not carry fails at download.
asset_url() {
  printf '%s/%s' "$DOWNLOAD" "$1"
}

# umask 077: a fresh ~/.rk is created private, since it comes to hold case
# content, settings and transcripts.
(umask 077 && mkdir -p "$BIN_DIR")
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

checksums_url=$(asset_url "checksums.txt")
if ! curl -fsSL "$checksums_url" -o "$tmp/checksums.txt"; then
  echo "install.sh: could not download checksums.txt from release $tag" >&2
  exit 1
fi

for name in rk; do
  asset="$name-$os-$arch"
  url=$(asset_url "$asset")
  if ! curl -fsSL "$url" -o "$tmp/$asset"; then
    echo "install.sh: no $asset asset in release $tag" >&2
    exit 1
  fi
  want=$(grep "  $asset\$" "$tmp/checksums.txt" | cut -d' ' -f1)
  if [ -z "$want" ]; then
    echo "install.sh: no checksum entry for $asset" >&2
    exit 1
  fi
  got=$(sha256_of "$tmp/$asset")
  if [ "$got" != "$want" ]; then
    echo "install.sh: checksum mismatch for $asset (got $got, want $want)" >&2
    exit 1
  fi
  mv "$tmp/$asset" "$BIN_DIR/$name"
  chmod +x "$BIN_DIR/$name"
  echo "research-kit: installed $BIN_DIR/$name"
done

# The embedding model is no longer installed here: it is a GGUF like the other
# local models, fetched by `rk install` below alongside them, rather than a
# separate binary and ONNX set on their own release tag.

echo "research-kit: running rk install"
"$BIN_DIR/rk" install

echo
echo "research-kit is installed. Open a new terminal (or re-source your"
echo "shell rc file) so $BIN_DIR is picked up on PATH, then run: rk --version"
