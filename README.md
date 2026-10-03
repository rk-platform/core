# RK

RK, the Research Knowledge Platform, is a local-first workspace built around AI. It brings
your AI models, documents, notes and the web into one place. You can research the web, build
and organize knowledge, extend RK with skills and plugins, and write reports. Your work
stays on your machine, in plain markdown files.

This repository holds RK's releases and its installer. It installs:

- **RK Core**, the background daemon that does the work, and `rk`, the command line, with a
  terminal interface (`rk` on its own opens it); both are clients of the daemon;
- **RK Workspace**, the desktop app. Its releases live in [rk-platform/workspace](https://github.com/rk-platform/workspace).

## State

RK is currently in pre-alpha. Alpha will start within days. If you want to test it in alpha or beta we would appreciate if you send a mail to <support@10boring.com>.
RK is about to go into alpha testing. It runs on Apple Silicon Macs only for now; Linux and
Windows support are planned in the near future.

## Requirements

- An Apple Silicon Mac with macOS 15 or later.
- [Claude Code](https://claude.com/claude-code), installed and logged in. For the alpha, RK's
  larger models run through it; support for Codex and open-source models is coming soon.
- Several GB of disk for the local models.

## Install

    curl -fsSL https://raw.githubusercontent.com/rk-platform/core/HEAD/install.sh | sh

This puts `rk` in `~/.rk/bin`, adds that to your `PATH`, and runs `rk install`, which sets up
what RK needs, asking before it downloads anything large:

- `uv` and the pinned Python helpers RK fetches web pages with;
- `pdftotext`, for PDFs;
- Docker (colima), for rendering reports to PDF;
- llama.cpp and the local models RK runs on your own machine;
- RK Workspace, into `/Applications`.

Open a new terminal, then check that everything is in place:

    rk doctor

`rk doctor` says what is missing and what that costs you, and `rk doctor --fix <item>`
repairs one thing.

## Getting started

A project holds your research; its knowledge base is shared by every case in it. A case is
one research question worked through from question to report.

    rk project create ~/research/acme --name "Acme" --purpose "Supplier due diligence"
    cd ~/research/acme
    rk case create "Who owns Acme"

Then work the case through its phases, each one a command you can rerun. Each takes the
case's name, or asks which case you mean:

| Command | What it does |
|---|---|
| `rk case direction` | settles the research question, the questions that answer it, and a plan, with you |
| `rk case collection` | collects sources for the plan from the web |
| `rk case process` | turns the sources into claims and answers each question |
| `rk case evaluation` | judges which questions the evidence answers, and records the gaps |
| `rk case analysis` | weighs competing hypotheses and drafts the assessment |
| `rk case report` | writes the report, which always says what is still open |

`rk status` says where you are and what could come next. The report is markdown and yours to
edit; `rk render report.md` turns it into a PDF when you are ready.

Other ways in:

- `rk web-research --question "..."` researches one question across the web and writes a
  cited report, without a case.
- `rk chat` talks to your knowledge base over many turns.
- `rk plugin` adds tools of your own. PhoneInfoga ships as a built-in plugin.
- `rk reach <url>` fetches and captures one page, trying further methods when a site blocks
  the first.

Every command has `--help`.

## Models

RK asks for a model by size, not by name, and each size is a setting:

| Tier | Default | Runs |
|---|---|---|
| `xxs` | Gemma 3 270M, off by default (`rk set features.xxs_tier true`) | locally, through llama.cpp |
| `xs` | Gemma 4 E4B | locally, through llama.cpp |
| `small` | Claude Haiku 4.5 | through Claude Code |
| `medium` | Claude Sonnet 5 | through Claude Code |
| `large` | Claude Opus 5.5 | through Claude Code |

`rk set llm <tier> model <name>` changes what a tier runs, and `rk model status` shows whether
the local models are running. Semantic search runs on a local embedding model, so your
documents are indexed without leaving your machine.

## Updating and removing

    rk update       # rk, and RK Workspace when a newer one is released
    rk uninstall    # removes what rk install added

[CHANGELOG.md](CHANGELOG.md) lists what changed in each release.

## Privacy

RK keeps a log at `~/.rk/rk-YYYY-MM-DD.log`. It records commands, file paths, counts and
timings, and never the content of your research, so it is safe to share when you ask for
help. `RK_LOG=off` turns it off.

`rk install`, `rk update` and `rk uninstall` each send one event to our Plausible analytics:
`installed`, `updated` or `uninstalled`, or `install failed`, `update failed` or
`uninstall failed`. It carries the rk version (and on an update the one you came from), the
RK Workspace version, your OS, OS version and processor architecture, and nothing else: no
identifier, nothing that links two events from the same machine. Plausible works out your
country from the request's IP address and does not keep the address. The command says, in
one line at its start, that it logs the event and with which values; if you do not want it
sent, stop the command with Ctrl-C. rk and RK Workspace send nothing else.

RK fetches web pages from your own network connection, and provides no anonymity of its own.
`rk opsec` shows what a site sees when RK visits it: your IP address and provider, your DNS
resolver, and whether it looks like a bot.

## License

RK is proprietary software, licensed under an end user license agreement. The free edition
is free to use, and paid editions add features. See [LICENSE](LICENSE).
