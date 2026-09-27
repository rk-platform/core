# Third-party notices

research-kit's semantic search feature (`rk kb search --semantic`) ships
third-party components alongside its own MIT-incompatible proprietary code
(see `LICENSE`). This file lists them, as required by their licenses.

## google/embeddinggemma-300m

- Project: https://huggingface.co/google/embeddinggemma-300m
- License: Gemma Terms of Use (https://ai.google.dev/gemma/terms)

The embedding model itself, downloaded (not compiled in) by `rk install` as a
GGUF and served by llama-server, pinned by URL and sha256 in
`rkv2/services/llm/llamaserver/models.go`. rk pins ggml-org's conversion of
Google's weights.

The Gemma Terms allow commercial use and redistribution, and require that the
terms and the Prohibited Use Policy travel with the model to anyone who
receives it. This adds no obligation rk did not already carry: the XS and XXS
tiers run gemma-4 and gemma-3, under the same terms, fetched by the same
`rk install`.

## Qwen/Qwen3-Reranker-0.6B

- Project: https://huggingface.co/Qwen/Qwen3-Reranker-0.6B
- License: Apache License 2.0

The re-ranking model behind processing's `rerank` toggle, downloaded (not
compiled in) by `rk install` as a GGUF and served by llama-server. rk converts
Alibaba's weights itself (`tools/models/convert-qwen3-reranker.sh`) and
publishes the result as a release asset of this repository, pinned by URL and
sha256 in `rkv2/shared/localmodels/manifest.go`. The conversion changes the
format and quantisation only.

## sundowndev/phoneinfoga

- Project: https://github.com/sundowndev/phoneinfoga
- License: GNU General Public License v3.0

The program behind rk's built-in PhoneInfoga plugin, downloaded (not compiled
in) by `rk install` as the project's own v2.11.0 release binary, pinned by URL
and sha256 in `rkv2/shared/selfinstall/plugins.go`, and shipped unmodified. rk
runs it as a separate program for the length of one plugin call and talks to
it only over its REST API; no part of it is linked into rk. Its source is at
the project URL above.
