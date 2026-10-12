# Changelog

What changed in each release of RK (`rk`, its terminal interface and its daemon). RK Workspace,
the desktop app, has [its own changelog](https://github.com/rk-platform/workspace/blob/main/CHANGELOG.md).

## 0.1.58 (2026-10-12)

- Plugins: install from any marketplaces, repository or JSON, supporting plugins written for the open Agent Plugins standard (mcp, skills and more). Support for rk collection plugins.
- Marketplace: Curated list of recommended plugins plus rk collection plugins.
- New plugins: Collect from Reddit and Telegram. Start a collection plugin from its icon, the palette, the chat or `rk collect reddit "…"`; it collects in the background and ends in a report that links every Source it landed.
- The chat runs rk's commands for you: web search, fetch, web research, ingest, a case phase or a sync. The command asks its questions in the chat and tells you when it is done. The chat also uses skills from your plugins and follows your AGENTS.md.
- Long runs survive: case phases and web research keep going when you close the terminal (`rk job attach` follows them again), and continue where they were after a crash or reboot without paying twice.
- See model cost while it works, in estimated dollars.
- Research report from what your project already holds, Search improvment for your notes and case files, and a web search returns a ranked list of answers before ingesting anything. 
- Web research improvments.
- Increased reachability using real browser. 
- Faster Claude calls with warm processes, Codex on OpenAI's newest models without the Codex CLI (`rk login codex`), and a set effort per model size (`rk set llm medium effort high`).
- Editions: Free, Pro or Intelligence. Beta is on Intelligence.
- Docker support for Apple's container, Docker or colima with doctor support.
- Bug fixes and improvements.
- Performance enhancements.
- `rk plugin list` and `rk plugin install` say what rk left out of a plugin written to the Agent Plugins specification: a `plugin.json` field it does not define, an `mcp.json` it refuses, each server it skips, a key or install value of rk's it cannot use, and a `.mcp.json` it does not read.
- A plugin written to the Agent Plugins specification can carry rk's own keys (its kinds, icon, install values and server sign-in) under rk's namespace, `com.10boring.rk`, and its servers' `mcp.json` entries take only the specification's own placeholders.
- The chat no longer sends every installed MCP server's tools with every turn; it loads only the tools of a plugin it needs when you ask for something that plugin does, so installing more servers no longer makes each turn slower and more expensive.
- Reports and assessments are written in English, in one voice, and cite their sources the same way every time.
- A processing run limited to one question no longer marks the case processed while another question has never been read.
- A web research or plugin collection report covers only what that run collected, laid out as a collection report with what was searched and where to look next; to report on everything the project already holds, use kb research. `rk web-research --kb` is gone.
- Direction can take a handed-over document's stated wording as an assumption, and grades wording you cannot vouch for as a transcription rather than a description.
- A plugin's server finds its plugin folder and its kept data folder in the `PLUGIN_ROOT` and `PLUGIN_DATA` environment variables.
- A plugin's server that names no working folder runs in the plugin's own folder, so it finds the files it ships with.
- After an update, `rk login`, plugin sign-in and the terminal interface restart a daemon still running the older rk instead of talking to it.
- A plugin written to the Agent Plugins specification is checked the way the specification says: a bad `plugin.json` stops the install, a bad `mcp.json` or server entry costs only those servers, and a server's command, URL and headers are used as written.
- A plugin written to the Agent Plugins specification loses only the part a symlink leading outside it belongs to, skips a skill that does not follow the Agent Skills specification, and a server's headers never follow a redirect to another site.
- The daemon hands RK Workspace the bytes of an image or a PDF up to 6 MB, so the workspace can show it.
- A collection with a plugin lands only what bears on what it collects for, and captures a page only for what lands.
- Reports name a cited document that has no title of its own by its opening words rather than its file slug, and cite a document with no author by the site that published it.
- Doctor checks that your container runtime runs and its containers reach the internet; when a VPN blocks Apple's container, Doctor and the render both print the command that lets it through.
- A plugin says how rk uses it with `kinds` in its `.rk-plugin/plugin.json`, and keeps skills only rk uses in `.rk-plugin/skills/`, out of other agents' way.
- Start a collection plugin yourself: each one has an icon on the left and an entry in the command palette, the chat can start it, and `rk collect reddit "…"` does it from the terminal. Once its questions are answered it collects in the background, and ends in a report on what it found that links every Source it landed.
- Collect from Telegram with the telegram plugin: messages, the conversation around them and their media land as Sources, read through your own research accounts.
- rk answers the map of a project's documents and their links that RK Workspace's graph view draws.
- A command that needs the project's index while it is being synced waits and runs once the index is free, instead of failing with `busy`.
- PDFs render with Apple's container, Docker or colima, whichever your Mac has; rk install picks one and Settings can change it.
- A run shows what it has spent while it works, in the terminal interface's status line and in the workspace, and costs are shown as estimated dollars.
- A plugin can teach rk to collect with its MCP server when it declares itself a collection plugin; Reddit is the first. rk reads its own plugin format (`.rk-plugin/`) first, and plugins written for Claude Code or Codex still install.
- The web-archive rung and its setting are gone; the Internet Archive tool does that job.
- A command the chat starts now answers with its job number at once and runs its own interview with you in the chat: its questions come with the file they are about, the interviewer knows what you said in the chat first, and the chat tells you when the job is done. Closing the chat ends a job that is still asking.
- A case phase or web research cut off by a daemon restart, a crash or a reboot continues from where it was when the daemon comes back, without redoing finished work or paying for a model call twice. A Direction cut off mid-conversation continues next time you start it, asking the waiting question again.
- Every case phase reads your whole case file and its status page when it works, so what it does follows the case as you set it up.
- Processing forms no claim from a source that says nothing on the question, instead of one claim for each source it was shown.
- The score changes an Analysis proposes are now made; before, most of them were dropped without a word.
- A case report no longer repeats the gaps, the contradictions and the so-what under its last question.
- The chat offers skills from installed plugins and your own skill folders, and follows your AGENTS.md.
- Plugins written to the open Agent Plugins standard (agent-plugins.org) install and run in rk.
- Plugins whose MCP server needs a sign-in, such as Gmail, can be signed in to with `rk plugin login`, with more than one account.
- A plugin whose MCP server signs in with its own command, such as Outlook, shows Not signed in and signs in with `rk plugin login`, which prints the page to open and the code. `rk install` offers to install Node for plugins that run with `npx`.
- The plugins in OpenAI's Codex marketplace (openai/plugins) can be installed; before, most were listed as not installable.
- Fetching a page with the headless browser no longer ends in an empty capture when the page is still loading, so a page that was reachable is no longer reported as blocked.
- The chat and scripts can ask for your own browser when a site blocks a fetch (`--operator-browser`), and the chat asks you first. `rk project retry` says so when nobody is there to use the browser, instead of reporting nothing tried.
- rk installs plugins and their MCP servers from marketplaces, repositories or JSON (`rk marketplace`, `rk plugin install`), and their tools reach rk's models. rk's own plugins are now collection plugins, managed with `rk collector`.
- `rk kb research` writes a report from what your project already holds, searching the knowledge base, your notes, or both.
- A web search now gives you a ranked list of the pages that answer your question, each with a line on what it says, and ingests nothing until you say so.
- `rk search` finds your notes and case files; `rk kb search` now searches the knowledge base only.
- A model size can run at a set effort: `rk set llm medium effort high` makes every call on it think harder, and `default` takes it off again.
- Codex uses OpenAI's newest models by default: gpt-6-luna for the small tiers and for medium, where it thinks harder, and gpt-6.1-sol for large. gpt-6.1-sol can be chosen for medium, gpt-6-astra for large, and the gpt-5.6 models stay available.
- rk runs as one edition, Free, Pro or Intelligence, chosen under Edition in Settings. During the beta every install starts on Intelligence.
- The chat can run rk's commands for you: search the web, fetch a page, look up a domain, run web research, ingest a bundle or run a case phase, asking you first for anything it needs.
- Long case phases keep running when you close the terminal, and you can follow them again with `rk job attach`. A case runs one phase at a time: starting the phase that is running follows it, and starting another one is refused until it is done.
- Claude calls start faster: rk keeps a Claude process ready for the next call, so a call no longer waits for Claude to start. Two settings bound it: Claude warm-up timeout and Claude warm processes.
- Codex models no longer need the Codex CLI: log in once with `rk login codex`.
- Reports and assessments are written in the case folder, and rk's bookkeeping moved to a hidden `.meta` folder; existing projects are moved over automatically.
- Sync no longer waits for a chat to be closed: an open chat, or a direction waiting for your answer, does not hold a sync back, and a sync that had to wait runs as soon as the project is free.
- In a project that syncs, the chat can sync it when you ask, with a new sync tool.
- Replacing a document at ingest no longer loses the old one when the new one is refused, and `rk kb ingest-bundle` says when the index could not be updated.
- A Processing run in which a view failed no longer marks the case processed, and a Collection round that cannot close the phase says so.
- A fault in the daemon's background work (file watching, index refresh, sync) no longer stops every running job, a cancelled job stops at once even when every slot is busy, and `rk jobs` no longer waits on a slow disk.
- A model that keeps calling tools is asked for its answer after 40 turns instead of searching on, long document and file reads come back a page at a time, and a broken Python environment for fetching is repaired on its own.
- The xs and xxs tiers run the local model their setting names; a model file that is missing is reported by `rk doctor`.
- A changed setting takes effect at the next command, with no daemon restart, and runs started together now share one limit on model and fetch calls.
- The spend a run reports includes model calls that failed after the provider billed them, and cached prompt tokens on OpenAI-compatible endpoints; a Processing run writes its view summaries and checks its claims for duplicates in parallel.
- A knowledge base index that fails to upgrade keeps the chunk context sentences already paid for, and the index engine stays within 256 MB per connection.
- On a Mac, watching a large project no longer runs out of file handles. A project is watched only while it is open in the workspace window, and from a terminal a project syncs only after a command you run.
- web-research lands only the pages that bear on your question. Pages found off the question stay in the run folder, and the run report says which angles found none; `rk kb ingest-bundle <run> --page <slug>` takes one in anyway.

## 0.1.57 (2026-10-04)

- Re-ranking can be switched off in Settings for a computer too slow for it: search then returns its candidates unscored, the re-rank model is not started or downloaded, and Doctor lists it as disabled.

## 0.1.56 (2026-10-04)

- Security and reliability fixes: fetching refuses local and private addresses, rk's files and socket are private to you, and case notes are saved safely even if the disk fills.
- An edited verdict in the assessment is recorded the next time Analysis runs; until then the report lists it as open.
- rk runs its local models on the CPU inside a virtual machine, where the virtual GPU could freeze the machine, and the re-ranker's context is a setting that starts smaller on a computer with under 16 GB of memory.

## 0.1.55 (2026-10-04)

- rk no longer starts the local Extra small model on a computer with less than 16 GB of memory. It says why in Doctor and in the log instead of hanging.
- Changing a setting restarts the rk daemon once its background jobs are done, so the new value takes effect without `rk daemon restart`.

## 0.1.54 (2026-10-04)

- **Check for updates** in the workspace palette looks for a new release right away instead of waiting for the daily check, and the **Update rk** button goes away once rk is updated.
- Doctor asks every model a short question and says which one cannot answer, and Settings lets a computer too small for the Extra small model use a Claude or Codex model instead.

## 0.1.53 (2026-10-03)

- Bug fixes for sync and update.


## 0.1.52 (2026-10-03)

This is pre-alpha release number 3.
- Tables, tags and links between notes, shown in the workspace.
- RK can copy a file into a project, or into `input/` ready to ingest, for dropping files on RK Workspace, and can give a new note the next free name.
- The chat can read, create and edit your own files in the project when you ask it to.
- `rk update` restarts the daemon on the new version (once a running background job is done) and tells you to reopen RK Workspace when it was updated too.
- A project can sync itself to GitHub, GitLab, Bitbucket or your own Gitea or Forgejo server, with conflicts merged for you: `rk sync-setup`, `rk sync`, `rk sync-stop` and `rk clone`.
- Installing and updating no longer fail with "status 403" behind a shared internet connection: rk finds its releases without GitHub's rate-limited API.
- The chat can explain a feature from the help pages.
- RK can create, rename, move, duplicate, delete and restore a project's own notes for the workspace, with the links in your other notes updated and deleted files kept in `.trash/` until you empty it.
- Direction plans collection from what the KB already holds
- A command that writes to your project now checks it first, puts back what rk can rebuild, and tells you what is wrong instead of writing over damage.
- `rk kb read` reads a document, or a range of its chunks, from the terminal: the next step after a `rk kb search` hit.
- RK can tell which of your notes are about a file, entity, case or folder, for the workspace.
- rk tells you when a newer version is released: a line above any command, and `rk status` shows it for rk and for RK Workspace. `rk update --core-only` and `--gui-only` update one half, and `rk daemon restart --when-done` restarts the daemon once its background jobs finish.
- RK has a new license: an end user license agreement under which the free edition is free to use, with paid editions to come. Usage telemetry is never a condition of it.
- Searching the knowledge base (`rk kb search`, the workspace search and the chat) puts the passages that answer your question first, over your sources and your own notes by default. `--derived` and `--no-derived` choose whether rk's own reports are included.
- `rk kb ingest-bundle` takes in a page rk collected but you chose not to ingest, and with no name lists the ones still waiting.
- Commands report where they are while they run, step by step, so the workspace's activity line keeps moving.

## 0.1.51 (2026-10-01)

This is pre-alpha release number 2.
- Support Sonnet 5.5 and Opus 5.5, default medium and large for claude.
- Case processing no longer has settings for its retrieval and writing improvements: it always uses them.
- On a Mac, rk starts colima when a render needs docker and stops it again after five idle minutes, so the VM does not hold memory between runs. A colima you started yourself is left alone.
- Direction searches the knowledge base for what it already holds before planning collection, shows you what it found, and plans steps only for what is missing. `rk kb search --rerank` returns the same passages.
- Case summaries, evaluation and direction follow their instructions more reliably at the model tier they run on.
- A collection step that comes back empty is now ticked off and marked as having landed nothing, so a plan no longer stays stuck on it. A fetched page step (reach-it) that did land is ticked too, where it was left open before.
- Collection runs are kept together under a project's `runs/` folder, and search no longer finds each collected document twice; existing run folders move there when the project is upgraded.
- `rk case waive` accepts something a case still has open, with a reason; the report says it was waived and why.
- A project is the folder you open, marked by a `.rkproject` folder, and rk no longer looks upward for one. Existing projects are upgraded automatically. A command that needs a project asks whether to make one where there is none, and a knowledge base exists only inside a project.
- Plugin support for collection plugins.
- `rk backup` and `rk restore` keep and put back copies of a project's own files, and every KB migration takes a backup first.
- Case direction dialouge and approval improvement.
- Case process improvements.
- Case collection improvements: the network gate says what each step sends, and stopping a sweep stops all of it.
- CLI improvements.
- Case report improvements: your edits to the Assessment reach the report, and a case whose summaries are out of date is sent back to processing first.
- Close and reopen a case. Whether its report is final is set when you close it.
- The extra-extra small local model is off by default and no longer downloaded; `rk set features.xxs_tier true` turns it back on.
- Case evaluation is faster: it judges every case question and rival at once instead of one at a time.
- The daemon runs more jobs at once by default (was 4, now 20), so several commands or sweeps queue behind each other less.
- Conversations are much faster: web-research's opening questions and case direction's interview answer in seconds rather than minutes.
- Bug fixes and improvements.

## 0.1.50 (2026-09-27)

- Case process improvements.
- Bug fixes and improvements.

## 0.1.49 (2026-09-27)

- Bug fixes and improvements.

## 0.1.48 (2026-09-27)

- Pre-alpha release, for Apple Silicon Macs.
