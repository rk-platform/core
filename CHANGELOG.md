# Changelog

What changed in each release of RK (`rk`, its terminal interface and its daemon). RK Workspace,
the desktop app, has [its own changelog](https://github.com/rk-platform/workspace/blob/main/CHANGELOG.md).

## 0.1.51 (2026-10-01)

This is pre-alpha release number 2.
- Support Sonnet 5.5 and Opus 5.5, default medium and large for claude.
- Case processing no longer has settings for its retrieval and writing improvements: it always uses them.
- On a Mac, rk starts colima when a render needs docker and stops it again after five idle minutes, so the VM does not hold memory between runs. A colima you started yourself is left alone.
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
