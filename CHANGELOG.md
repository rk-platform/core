# [0.47.0](http://gitea:3000/10boring/research-kit/compare/v0.46.1...v0.47.0) (2026-09-27)


### Bug Fixes

* [#266](http://gitea:3000/10boring/research-kit/issues/266) dropUnreached keeps only retrieved or unfetched sources, so error shells no longer reach the claim writer ([0e44937](http://gitea:3000/10boring/research-kit/commit/0e44937a0a685944a29b8b7bd6683f45cf2daed5))
* [#272](http://gitea:3000/10boring/research-kit/issues/272) [#315](http://gitea:3000/10boring/research-kit/issues/315) dedupe re-ranks its candidates, folds a batch into itself after review, and keeps what a bound claim bore ([eccd1fd](http://gitea:3000/10boring/research-kit/commit/eccd1fd754b856acf4bc551eabe96497b8f4e4cc))
* [#280](http://gitea:3000/10boring/research-kit/issues/280) Analysis records the judge's verdicts, and corrects a draft that states another ([03eae2a](http://gitea:3000/10boring/research-kit/commit/03eae2a46d0b16517cf5a39e563081ffabc71c89))
* [#314](http://gitea:3000/10boring/research-kit/issues/314) the Models panel follows the models' state, and its dot shows running, sleeping or stopped ([d8c0fa4](http://gitea:3000/10boring/research-kit/commit/d8c0fa4244aeb7cf6c98d388154030bddb6820bc))
* [#315](http://gitea:3000/10boring/research-kit/issues/315) a claim review rewrote is judged against the KB again ([066b5d4](http://gitea:3000/10boring/research-kit/commit/066b5d4b4b8fe8ee83420a51d09a825f50e95f1e))
* [#317](http://gitea:3000/10boring/research-kit/issues/317) workspace icons sit centred in their buttons, are larger, and the tree draws real icons ([e429cd9](http://gitea:3000/10boring/research-kit/commit/e429cd9312160d1cf0ea4e328593154f992c3405))
* a daemon started from the desktop app reads the login shell's PATH, so it finds brew, uv and rk ([075df39](http://gitea:3000/10boring/research-kit/commit/075df39db2a915f966d8bbae9bc51bc31cb33f1c))
* rk uninstall removes RK Workspace, and the release scripts survive an empty repo and a failing GitHub call ([2faf634](http://gitea:3000/10boring/research-kit/commit/2faf634f82d816c0a9f9f52bfb1620ad0c38c454))
* the desktop app calls itself RK Workspace, and A32 files the LICENSE rewrite ([c9ce769](http://gitea:3000/10boring/research-kit/commit/c9ce76912a818d36f3b62d48f7605a92b8a3e7da))


### Features

* A29 CI publishes the re-rank model to rk-platform/core once, and rk fetches it from there ([b6d6506](http://gitea:3000/10boring/research-kit/commit/b6d65068a2bc70687dcd32a45efa3f4e9ed9d8ac))
* L95 the local models fit in GPU memory together, [#313](http://gitea:3000/10boring/research-kit/issues/313) and [#315](http://gitea:3000/10boring/research-kit/issues/315)'s structured-claim route fixed ([9ac426c](http://gitea:3000/10boring/research-kit/commit/9ac426ce333e11501f2c51ca419bc0ef41cc8fa1))
* long-lived plugins, plugin tools in case plans and the chat, plugin skills, and a guide to writing a plugin ([d2b49f8](http://gitea:3000/10boring/research-kit/commit/d2b49f8e9c4a10bb9fa46791e6a053a251232439))
* rk releases to rk-platform/core and the desktop client to rk-platform/workspace, with a README of its own ([bd08a38](http://gitea:3000/10boring/research-kit/commit/bd08a38e70f9d4025420c3285b263d0cdddf232c))

## [0.46.1](http://gitea:3000/10boring/research-kit/compare/v0.46.0...v0.46.1) (2026-09-26)


### Bug Fixes

* the release no longer ships install.ps1, which had no Windows binary to install ([f91c520](http://gitea:3000/10boring/research-kit/commit/f91c520d081500b6d8a63bcbfe9a59896df4dedd))

# [0.46.0](http://gitea:3000/10boring/research-kit/compare/v0.45.0...v0.46.0) (2026-09-26)


### Bug Fixes

* make release-desktop builds at once and waits for CI before publishing, instead of refusing to start until CI passed ([36ce1ab](http://gitea:3000/10boring/research-kit/commit/36ce1abd0eb56b7c5dff85c2a5ed5b6959acba33))
* make release-desktop commits its version bump and takes BUMP=minor/major, and install-desktop no longer bumps ([8e2f320](http://gitea:3000/10boring/research-kit/commit/8e2f3200ff184f9a9615398e2c2b0f7618b1f399))
* make release-desktop runs the desktop tests, bumps desktop/VERSION, builds and publishes, with no CI wait ([40e9e63](http://gitea:3000/10boring/research-kit/commit/40e9e6310469708786c1ab82d9f6a0d75c1b6a59))
* release dist drops windows/amd64, which rk does not build for ([41ab294](http://gitea:3000/10boring/research-kit/commit/41ab2947ae6cea8371ff9a40c30d6fefa35b6ad6))


### Features

* A7 rk install and rk update deliver the desktop client, and make release-desktop publishes it from a Mac once CI passed ([afcefa4](http://gitea:3000/10boring/research-kit/commit/afcefa4fad3b6f9bcb47ea30e09756793a101ba7))

# [0.45.0](http://gitea:3000/10boring/research-kit/compare/v0.44.0...v0.45.0) (2026-09-26)


### Bug Fixes

* [#120](http://gitea:3000/10boring/research-kit/issues/120) a KB's index pool is opened once and kept, bounded by idle connections and a handle cap ([f454e56](http://gitea:3000/10boring/research-kit/commit/f454e562ff46e46f1ae332db5104176571309a00))
* [#124](http://gitea:3000/10boring/research-kit/issues/124) an old job notice stops repeating itself, [#127](http://gitea:3000/10boring/research-kit/issues/127) claudecli/codexcli honour graded reasoning effort ([a32045d](http://gitea:3000/10boring/research-kit/commit/a32045d90d9c5b3aae8db7b6aa60f8ccb3653353))
* [#132](http://gitea:3000/10boring/research-kit/issues/132) a selector that keeps nothing falls back to the search order, [#133](http://gitea:3000/10boring/research-kit/issues/133) the rail says how a job ended, [#134](http://gitea:3000/10boring/research-kit/issues/134) rk job ack ([fd32a7d](http://gitea:3000/10boring/research-kit/commit/fd32a7d5b62b154f4c5d7b922acebf4f5fde39ed))
* [#135](http://gitea:3000/10boring/research-kit/issues/135) acknowledging a job clears the rail's own failure mark, so attach and ack both dismiss it ([7f82b3c](http://gitea:3000/10boring/research-kit/commit/7f82b3ce9506dc8847b07ece0bbb5398d3184e7f))
* [#164](http://gitea:3000/10boring/research-kit/issues/164) a read is answered on the connection that asked, not tabled as a job ([e7cece2](http://gitea:3000/10boring/research-kit/commit/e7cece26f30954c011cb7df0822587e6b78be633))
* [#172](http://gitea:3000/10boring/research-kit/issues/172) rkv2 copies what it needs instead of importing the root module ([b29c11e](http://gitea:3000/10boring/research-kit/commit/b29c11e4aa228dbf383d3ba06ee35bdedfa8c69b))
* [#173](http://gitea:3000/10boring/research-kit/issues/173) a withheld step says so, [#174](http://gitea:3000/10boring/research-kit/issues/174) the case log records what happened ([28efb3e](http://gitea:3000/10boring/research-kit/commit/28efb3ec6dbdeee072790b1b1d8e801030b4b9c9))
* [#175](http://gitea:3000/10boring/research-kit/issues/175) the interview opens by asking one thing instead of demanding a whole brief ([2bf0ad8](http://gitea:3000/10boring/research-kit/commit/2bf0ad82cc18597b1342ebdd8d73f39b61edb004))
* [#177](http://gitea:3000/10boring/research-kit/issues/177), the embed targets stage a tree only when it changed, 4.7s to 0.09s per build ([c6caab6](http://gitea:3000/10boring/research-kit/commit/c6caab658045e1414379cbcbf2f4cc861b6fb22f))
* [#178](http://gitea:3000/10boring/research-kit/issues/178) a handler publishes its result shape in its own api package ([c2ecef8](http://gitea:3000/10boring/research-kit/commit/c2ecef8097a0408fe8241d89e4b55b5b50f26059))
* [#189](http://gitea:3000/10boring/research-kit/issues/189) the rivals ACH names become hypotheses of the case, so something investigates them ([11e7fd7](http://gitea:3000/10boring/research-kit/commit/11e7fd73b5447bb66fb0f41d91f9bf80105c8df1))
* [#201](http://gitea:3000/10boring/research-kit/issues/201) desktop chat pane shows tool-call activity instead of dropping it ([1b706c3](http://gitea:3000/10boring/research-kit/commit/1b706c32ac945bde9c9619711014a3d75a833a62))
* [#202](http://gitea:3000/10boring/research-kit/issues/202) claudecli stops discarding answers it already got from a resolved MCP call ([8a07c62](http://gitea:3000/10boring/research-kit/commit/8a07c6227e857513229ce813367fdf75f2d6acc3))
* [#203](http://gitea:3000/10boring/research-kit/issues/203) codexcli stops redispatching MCP calls it already resolved live ([f950a78](http://gitea:3000/10boring/research-kit/commit/f950a78a52a04d563106127ad19ab7eaac72b405))
* [#204](http://gitea:3000/10boring/research-kit/issues/204) the KB tools follow the project the handler resolved, not the run's cwd ([7431dd4](http://gitea:3000/10boring/research-kit/commit/7431dd45bc35058cc61f6e15dadc8784ab1a22a1))
* [#206](http://gitea:3000/10boring/research-kit/issues/206) a view carries what its claims assert, how firmly, and where they disagree ([4f678c7](http://gitea:3000/10boring/research-kit/commit/4f678c77915b95477561af6c1b4dbc2c20e1795f))
* [#207](http://gitea:3000/10boring/research-kit/issues/207) the interview is told what the conversation already settled ([692714b](http://gitea:3000/10boring/research-kit/commit/692714b66b0812e4ef485402e25c00ef29d14a12))
* [#208](http://gitea:3000/10boring/research-kit/issues/208) a scribe leg writes the conversation into the live document as it goes ([0a1ffc1](http://gitea:3000/10boring/research-kit/commit/0a1ffc1c099d84b12d82ee7118bf16c1d857f92a))
* [#209](http://gitea:3000/10boring/research-kit/issues/209) a claim's evidence carries the document, not how rk fetched it ([099b83f](http://gitea:3000/10boring/research-kit/commit/099b83fdc1097ad9a50cd7e01418569191d0551c))
* [#210](http://gitea:3000/10boring/research-kit/issues/210) the KB changelog dates its own rows instead of asking every caller ([7123e4e](http://gitea:3000/10boring/research-kit/commit/7123e4ebd5db4411ec7b3a3778ffc4a86c34121e))
* [#213](http://gitea:3000/10boring/research-kit/issues/213) every prompt site that returns structure declares its schema ([7463166](http://gitea:3000/10boring/research-kit/commit/7463166c032fd323cd0f13b854084b0e932c2abf))
* [#214](http://gitea:3000/10boring/research-kit/issues/214) the interview declares a reply schema built from the goal it is running ([424bc81](http://gitea:3000/10boring/research-kit/commit/424bc81faba3ed343a7fd3b2b621af837b314e69))
* [#215](http://gitea:3000/10boring/research-kit/issues/215) a claim read back carries its own sentence, not the whole rendered document ([2861290](http://gitea:3000/10boring/research-kit/commit/2861290d70c833f90d463a0414002f9a8d0d8b55))
* [#215](http://gitea:3000/10boring/research-kit/issues/215) a re-run extends the claim the knowledge base already holds instead of writing a second copy ([9415708](http://gitea:3000/10boring/research-kit/commit/9415708ba0c774b19934552448104076eb9fd04b))
* [#215](http://gitea:3000/10boring/research-kit/issues/215) every searchable scope is embedded, so a claims search can match on meaning ([df9d4a5](http://gitea:3000/10boring/research-kit/commit/df9d4a571b3bb7abc702ccce9ea6b5313adc91a0))
* [#215](http://gitea:3000/10boring/research-kit/issues/215) the claim writer is shown every claim the knowledge base holds, not the twenty nearest its question ([4908614](http://gitea:3000/10boring/research-kit/commit/490861490f2567ed04469fdceebaa653cb9a8cd4))
* [#215](http://gitea:3000/10boring/research-kit/issues/215) the dedupe judge is shown the claims nearest the proposal's own sentence ([244fd6b](http://gitea:3000/10boring/research-kit/commit/244fd6b9db968acf39720e9cbe4702c157b5f3d2))
* [#216](http://gitea:3000/10boring/research-kit/issues/216) the hold-back pass reads only the case's Givens, not the whole case file ([86f290e](http://gitea:3000/10boring/research-kit/commit/86f290e8a47b917fd1f0439ef42ee5f6fcee9e1a))
* [#217](http://gitea:3000/10boring/research-kit/issues/217) rk model status names a live process a tier's pid file does not account for ([cba94db](http://gitea:3000/10boring/research-kit/commit/cba94dbd66b4844c6cc8b7eb66f2b84136adc567))
* [#220](http://gitea:3000/10boring/research-kit/issues/220) the local model runtime is the machine's, not the run home's ([0c9b584](http://gitea:3000/10boring/research-kit/commit/0c9b584f8063198365cbc33c2ab0f3e03cedcff5))
* [#221](http://gitea:3000/10boring/research-kit/issues/221) a claim nobody has judged is unknown, not low ([29ab9f5](http://gitea:3000/10boring/research-kit/commit/29ab9f51f7e8565c36d583a7a950180d63fa2d48))
* [#223](http://gitea:3000/10boring/research-kit/issues/223) ACH step 1 stops being built around an artifact the case may not have ([a269631](http://gitea:3000/10boring/research-kit/commit/a2696314c1c7553f6cbabe6f3da8c18382392cc8))
* [#225](http://gitea:3000/10boring/research-kit/issues/225) the CLI asks the engine where the operator is standing instead of walking the tree ([8c98a49](http://gitea:3000/10boring/research-kit/commit/8c98a49018388be265e55490489b2724d01f2132))
* [#226](http://gitea:3000/10boring/research-kit/issues/226) the GUI ribbon stops sending a path web-research does not declare ([468dec2](http://gitea:3000/10boring/research-kit/commit/468dec220385610e62c821190e3623505f272e9c))
* [#228](http://gitea:3000/10boring/research-kit/issues/228) the framing session has to ask how deep a web-research run should go ([16d83e5](http://gitea:3000/10boring/research-kit/commit/16d83e53374ed86e7a203adbc2fbf15ffdeede66))
* [#229](http://gitea:3000/10boring/research-kit/issues/229) part 1, four yes/no readers delegate to the shared yesno vocabulary ([b810283](http://gitea:3000/10boring/research-kit/commit/b810283d24e8edcfea121392d33f3eca81e9876e))
* [#234](http://gitea:3000/10boring/research-kit/issues/234) embed one text per request, so a batch can't overflow llama-server's physical batch ([e35dfa8](http://gitea:3000/10boring/research-kit/commit/e35dfa8beb588d763643bf357897e9fe5363d965))
* [#234](http://gitea:3000/10boring/research-kit/issues/234) shrink the per-call embed timeout, correct stale comments, file [#238](http://gitea:3000/10boring/research-kit/issues/238) for the residual single-chunk overflow ([e14de3e](http://gitea:3000/10boring/research-kit/commit/e14de3e579e51aec56c3fabef3a70762ec7f4428))
* [#234](http://gitea:3000/10boring/research-kit/issues/234)a Go renders the case file from the goal leg's running answers, and the scribe leg is gone ([3a306a5](http://gitea:3000/10boring/research-kit/commit/3a306a5c34e168f2a0216fb6373f24b23c72865d)), closes [#234a](http://gitea:3000/10boring/research-kit/issues/234a)
* [#234](http://gitea:3000/10boring/research-kit/issues/234)a the goal site's floor contract declares settled and ask_about ([9e357e1](http://gitea:3000/10boring/research-kit/commit/9e357e1ee0e2d1f9fbc22f8c1967ca6878ff3fce)), closes [#234a](http://gitea:3000/10boring/research-kit/issues/234a)
* [#234](http://gitea:3000/10boring/research-kit/issues/234)a the interview.goal rubric allows ask_about, which the envelope requires ([8084d03](http://gitea:3000/10boring/research-kit/commit/8084d030ccb2ea1795eaec07b5375f849f15beef)), closes [#234a](http://gitea:3000/10boring/research-kit/issues/234a)
* [#234](http://gitea:3000/10boring/research-kit/issues/234)b direction learns what the project's KB holds from status.md, and stops offering phase moves it can't honor ([a49a897](http://gitea:3000/10boring/research-kit/commit/a49a897de17f301424defe6c742bde7e881b295f)), closes [#234b](http://gitea:3000/10boring/research-kit/issues/234b)
* [#238](http://gitea:3000/10boring/research-kit/issues/238) a span with no sentence boundary is cut to the budget instead of emitted whole ([abafd81](http://gitea:3000/10boring/research-kit/commit/abafd8162a5c266015f44258e2aac1f4e9403822))
* [#238](http://gitea:3000/10boring/research-kit/issues/238) the hard cut terminates on invalid UTF-8, no chunk is only whitespace, and the embed prefix is capped ([545b17d](http://gitea:3000/10boring/research-kit/commit/545b17d40909e8ba6681a4eb070a266382bbab25))
* [#240](http://gitea:3000/10boring/research-kit/issues/240) both suites price and remember what a run cost, and report drift against their own history ([fce28db](http://gitea:3000/10boring/research-kit/commit/fce28db96f3e8bba60538782e16fdbb899240426))
* [#242](http://gitea:3000/10boring/research-kit/issues/242) the GUI terminal's pty inherits no TERM or locale, so zsh's line editor degrades ([80fd6b2](http://gitea:3000/10boring/research-kit/commit/80fd6b25a1f9fe3b958c70de06d2fa83dd197938))
* [#244](http://gitea:3000/10boring/research-kit/issues/244) make test-race is green, and it covers desktop too ([3009b5d](http://gitea:3000/10boring/research-kit/commit/3009b5d2fad1fc183ca3234d65e9e7ccd4c325c1))
* [#246](http://gitea:3000/10boring/research-kit/issues/246) a NOT YET case is recommended a replan not a report, [#247](http://gitea:3000/10boring/research-kit/issues/247) the analysis tests follow the design ([8c3223f](http://gitea:3000/10boring/research-kit/commit/8c3223f7be0102ad9b27f9ff05b7ad0018498a5d))
* [#248](http://gitea:3000/10boring/research-kit/issues/248) a score the analysis left standing is recorded as standing, not as a move ([ab64d40](http://gitea:3000/10boring/research-kit/commit/ab64d405fbb798b50a196935832f48a2562c599e))
* [#248](http://gitea:3000/10boring/research-kit/issues/248) the render image is native, so to-pdf produces a PDF on Apple Silicon ([d516723](http://gitea:3000/10boring/research-kit/commit/d51672366b2efecbc5631389af0dcd569a4ed53b))
* [#249](http://gitea:3000/10boring/research-kit/issues/249) the Assessment draft opens with a title ([afe980a](http://gitea:3000/10boring/research-kit/commit/afe980ab847943e11bd70669d9a95d869b88f9bc))
* [#250](http://gitea:3000/10boring/research-kit/issues/250) a render streams docker's output as progress and log instead of one blob at the end ([317140c](http://gitea:3000/10boring/research-kit/commit/317140c6512ff000066447d1e98b20cd526e28be))
* [#250](http://gitea:3000/10boring/research-kit/issues/250) a replan treats the assumptions the tasking fixed as settled, and records its outcome as directed2 ([585d364](http://gitea:3000/10boring/research-kit/commit/585d36470b9ec83776e5161039676f1c50d8160e))
* [#251](http://gitea:3000/10boring/research-kit/issues/251) the case log says what a replan took on out of what Analysis suggested ([7e3cb40](http://gitea:3000/10boring/research-kit/commit/7e3cb40a17ee030020fcbb965b82026364250471))
* [#252](http://gitea:3000/10boring/research-kit/issues/252) the plan drafter sees what the case has already spent, and the depth rule names full ([069de9c](http://gitea:3000/10boring/research-kit/commit/069de9ca3b83b620b8bc324dee9c56af6f663d0a))
* [#255](http://gitea:3000/10boring/research-kit/issues/255) a write that finds the embedder changed records the debt and starts the rebuild, and says something useful when it cannot ([b7fc20c](http://gitea:3000/10boring/research-kit/commit/b7fc20c1128e5779668598e12c76b999c9454be3))
* [#257](http://gitea:3000/10boring/research-kit/issues/257) one register per KB file, and only a winning open clears its leases ([f0e9f20](http://gitea:3000/10boring/research-kit/commit/f0e9f2069457f65ba39396a481583722107672f8))
* [#258](http://gitea:3000/10boring/research-kit/issues/258) a red interrupt test carries the helper's own account of why ([f9a0a50](http://gitea:3000/10boring/research-kit/commit/f9a0a508af1f3b15295479b232882d867ad4a1c9))
* [#258](http://gitea:3000/10boring/research-kit/issues/258) the harness stops the daemon it started, including when the run is interrupted ([b7a5d09](http://gitea:3000/10boring/research-kit/commit/b7a5d0903d68ee04a20f60dfff84fe84d19773a1))
* [#259](http://gitea:3000/10boring/research-kit/issues/259) a report is published once, under its dated name ([7da1a2e](http://gitea:3000/10boring/research-kit/commit/7da1a2e6875c639c1d7e966ec0cbb0888684ea88))
* [#260](http://gitea:3000/10boring/research-kit/issues/260) the Settings window's nav list waits for a snapshot Svelte never marks reactive ([a499afa](http://gitea:3000/10boring/research-kit/commit/a499afac5fc54cff86f096bef52cab5d1bce7779))
* [#261](http://gitea:3000/10boring/research-kit/issues/261) the bytes overrule a declared PDF, [#262](http://gitea:3000/10boring/research-kit/issues/262) a rung's failure note is one line ([c3219be](http://gitea:3000/10boring/research-kit/commit/c3219be53d00cf972206240b1c60eb49c5e4d3f0))
* [#264](http://gitea:3000/10boring/research-kit/issues/264) a KB rebuild announces itself as a visible background job ([ab1e979](http://gitea:3000/10boring/research-kit/commit/ab1e9790b0ee51236c9d0e1f318a5acb596848fc))
* [#265](http://gitea:3000/10boring/research-kit/issues/265) a change to url-decisions.md reaches the register through the index ([777d55c](http://gitea:3000/10boring/research-kit/commit/777d55cca6abf99e531961e16771b034093e9f1f))
* [#265](http://gitea:3000/10boring/research-kit/issues/265) the URL register's tables live in the KB's index, not a database in the project ([4b196e9](http://gitea:3000/10boring/research-kit/commit/4b196e9a46d5586aaf18e2426123c4afdf064133))
* [#267](http://gitea:3000/10boring/research-kit/issues/267) a sync commits in batches, so an interrupted one keeps its work and the next resumes ([3141e22](http://gitea:3000/10boring/research-kit/commit/3141e2292e29535b89129b200cddd5acacc23a37))
* [#267](http://gitea:3000/10boring/research-kit/issues/267) cancelling the kb-sync-index job stops the sync and leaves the index clean ([efd2eb7](http://gitea:3000/10boring/research-kit/commit/efd2eb73934256c7adba58c9bca967084838d2ce))
* [#267](http://gitea:3000/10boring/research-kit/issues/267) index work answers busy instead of holding the daemon, and a connected client keeps it from idle-stopping ([1690d9e](http://gitea:3000/10boring/research-kit/commit/1690d9e3fab3aa9a43ea6a0d4441d317a03d15a7))
* [#267](http://gitea:3000/10boring/research-kit/issues/267) opening a project runs its index sync as a visible kb-sync-index background job ([7f53de0](http://gitea:3000/10boring/research-kit/commit/7f53de09f9242226ffc9cd54d0cf8a1b7a1d3494))
* [#268](http://gitea:3000/10boring/research-kit/issues/268) a finished job records its end before it signals done ([3b06cf3](http://gitea:3000/10boring/research-kit/commit/3b06cf3967126a17cdbc110ca6f85ecd8379c8bf))
* [#277](http://gitea:3000/10boring/research-kit/issues/277) every writing handler takes the project lock for its writes, never across a model call or a question ([4f840ff](http://gitea:3000/10boring/research-kit/commit/4f840fff9c6c8012aa48c6aef773856603aca2c9))
* [#277](http://gitea:3000/10boring/research-kit/issues/277) Processing's reindex is left to the KB's own index lock, not held under the project lock ([2ae6556](http://gitea:3000/10boring/research-kit/commit/2ae65567c52f913bfb5f99503dd0536aaee7e1ac))
* [#279](http://gitea:3000/10boring/research-kit/issues/279) Processing records whether a claim supports or contradicts each hypothesis it bears on ([a0d2154](http://gitea:3000/10boring/research-kit/commit/a0d2154c339c1b4e53847c7d27b700a1bfcdcd5d))
* [#307](http://gitea:3000/10boring/research-kit/issues/307) processing fills its passages from Sources and adds at most three of rk's own reports on top ([cee95db](http://gitea:3000/10boring/research-kit/commit/cee95db20ce717faff85fc1413ea1733fc685c10))
* [#310](http://gitea:3000/10boring/research-kit/issues/310) a rendered page's Source text is what the page showed, with what it hid kept after it under its own heading ([69c881f](http://gitea:3000/10boring/research-kit/commit/69c881f89f6697cb412beef6df8d8492576de433))
* [#311](http://gitea:3000/10boring/research-kit/issues/311) domain-intel and internet-archive land their record as the Source's text, and each domain-intel run is its own run and Source ([59334c3](http://gitea:3000/10boring/research-kit/commit/59334c31a1aab927fecc231cd9fc63fc4b15a3bc))
* [#311](http://gitea:3000/10boring/research-kit/issues/311) the KB refuses a Source with no text and an empty one never blocks its replacement, and each internet-archive run is its own run ([05bd1f0](http://gitea:3000/10boring/research-kit/commit/05bd1f0a262d374d82bb96431546795408aadeb6))
* [#312](http://gitea:3000/10boring/research-kit/issues/312) the claim writer is told which section of its Source each passage comes from ([7b44654](http://gitea:3000/10boring/research-kit/commit/7b44654a444e6924573e7684f481e5721d245712))
* a background job's spend now reaches the coordinator that awaited it ([129b094](http://gitea:3000/10boring/research-kit/commit/129b0948148c12eb7aacb32d4781424512ddc91e))
* a bare return takes the answer the question offered ([6b0d12e](http://gitea:3000/10boring/research-kit/commit/6b0d12e3bab0fb8d555b6e74e8c29de5c345d533))
* a bare-slug lookup and descendant-KB search now resolve a symlinked root too ([6030d89](http://gitea:3000/10boring/research-kit/commit/6030d8953869a82c6065415cffa48f7127b272c5))
* a binary or oversized file is described, not sent as a document body ([4e2e599](http://gitea:3000/10boring/research-kit/commit/4e2e59907d0a5c50a4b6b4d1bbe2d2ca01593056))
* a capability refusal fails its case instead of dropping out of the score ([af3a277](http://gitea:3000/10boring/research-kit/commit/af3a2778757860ade1f7f64be5452c1bc9fa395c))
* a capture that is not the document (a wall, a failed or empty fetch) is never landed as a source ([0b602a6](http://gitea:3000/10boring/research-kit/commit/0b602a605542608ff8186edb5cbbba92f26ed638))
* a capture the fetch ladder never got through is not material and is not unexamined work ([6274662](http://gitea:3000/10boring/research-kit/commit/62746623dc926be04c663f1868522ab3b6a673e7))
* a case can be named by its slug or its number, and every case command asks when you give none ([5bb0c2a](http://gitea:3000/10boring/research-kit/commit/5bb0c2a258cb9212325e150ff83711676937854a))
* a case that types its inputs can be rendered, so caseevaluation.hypothesis is measurable ([fe4f1c7](http://gitea:3000/10boring/research-kit/commit/fe4f1c7003f7fa281fc18a5460644b948a8a0666))
* a Choice's numbered options always reach the operator ([9c4febc](http://gitea:3000/10boring/research-kit/commit/9c4febce0ebc0f44e6bb6a1b5bf241e10b4aaabe))
* a citation the writer invented is dropped, not fatal to the whole report ([77f2f09](http://gitea:3000/10boring/research-kit/commit/77f2f09672e9b64caa7ca2d189491f51a07301d6))
* a claim may cite a Source by the name the tools give it ([fe8d020](http://gitea:3000/10boring/research-kit/commit/fe8d02024c0b712a0c18a517c6ad6dcee5cd9192))
* a claim's quote is one unbroken passage, never stitched with an ellipsis ([bd4ed9f](http://gitea:3000/10boring/research-kit/commit/bd4ed9ff4f0098fad7c6825b9379c65bebf5fdff))
* a collection round reports the sources its run collected, and every log line carries its date ([b43c393](http://gitea:3000/10boring/research-kit/commit/b43c39337927fe06f2488ad00080edb044b84372))
* a collection step is ticked when its run landed material, and the step-judge that guessed at the answer is gone ([4d1772e](http://gitea:3000/10boring/research-kit/commit/4d1772e8ae0d8704e43109f54901281faeb4a1a6))
* a collection sweep dispatches web-research with a depth it accepts, and says why a job failed ([e90a9ae](http://gitea:3000/10boring/research-kit/commit/e90a9ae167fbb2eb1dd591a70e28490b7ae8399c))
* a collection turn with no step of the operator's asks them nothing ([726e72e](http://gitea:3000/10boring/research-kit/commit/726e72ebfcb839fba72865400c97089c68e8b432))
* a contradiction the KB does not hold as two facts is labelled so, not resolved ([0e0abdd](http://gitea:3000/10boring/research-kit/commit/0e0abddd046433fa40fb9486d68ea34cb9508e71))
* a dead daemon connection is now dropped and redialed instead of reused forever ([461740c](http://gitea:3000/10boring/research-kit/commit/461740c0077884a71d6ddeb8d53d21579a887804))
* a decode failure's error includes the raw payload, not just the JSON parser's own message ([99d8ce6](http://gitea:3000/10boring/research-kit/commit/99d8ce604dba135927b4b2b2ef9fa1e1c31f24e2))
* a done refused because the operator was never asked is answered with a question, not resent until the run fails ([2eee8a1](http://gitea:3000/10boring/research-kit/commit/2eee8a19e7b158a0384e9bcda4638c419efdf34a))
* a failed job's message no longer claims the documents it landed are lost ([ec5ae77](http://gitea:3000/10boring/research-kit/commit/ec5ae778f54664dceee3bd4c596ad4584ce275aa))
* a fresh checkout can build the desktop client again ([7755251](http://gitea:3000/10boring/research-kit/commit/775525179e90d59c069e7d6a27a4b0316451fede))
* a freshly created project reports clean instead of a stale index ([5e12ea0](http://gitea:3000/10boring/research-kit/commit/5e12ea0b33041005b06bca6ebd35b2c283b34d41))
* a gone page keeps climbing, because the archive may still hold it ([4c2eec8](http://gitea:3000/10boring/research-kit/commit/4c2eec8dc31b5a19dd0c0c118e613becc374317e))
* a graceful daemon shutdown records died and stays resumable, not failed ([c5b92fa](http://gitea:3000/10boring/research-kit/commit/c5b92faefecdba34b891867e1160fa9b16b7ffed))
* a handler refuses a parameter it does not declare, instead of dropping it in silence ([ec06414](http://gitea:3000/10boring/research-kit/commit/ec064142e97ac757252a7d35c15795a29815d20b))
* a handler's events carry the run they came from, so a second run no longer silences both ([38f2390](http://gitea:3000/10boring/research-kit/commit/38f23909607f10e0329cec2a59e2347c309d387f))
* a headless fetch stops announcing itself as headless on an 800x600 screen ([29bdf91](http://gitea:3000/10boring/research-kit/commit/29bdf91a05ec145767adec845b7add92a3e27083))
* a hypothesis gap names the kind of record without quoting material no claim carries ([308d8b3](http://gitea:3000/10boring/research-kit/commit/308d8b345f7de226e194f228229fee8cd7e63241))
* a hypothesis id stays inside a filename without merging two rivals into one view ([6ac4ac4](http://gitea:3000/10boring/research-kit/commit/6ac4ac4dfc67cc2bd5faf3abf95987c75895f393))
* a hypothesis restated with different quotes is the same hypothesis, not a second one ([86f2e01](http://gitea:3000/10boring/research-kit/commit/86f2e01feab42c80c1d6ef9f2331a5ef6efba4db))
* a hypothesis view built from a bare case.md bullet is no longer reported as drift ([0d3b52d](http://gitea:3000/10boring/research-kit/commit/0d3b52d62a90e42eb647b2328f1c9e856b8bdb20))
* a job nothing will resume is announced, and pruning never deletes a live one ([bdef7d0](http://gitea:3000/10boring/research-kit/commit/bdef7d0bfac18c663e0ec8e6658ac4460882219d))
* a loaded model outlives the daemon, and only install and uninstall end one ([37e7bc9](http://gitea:3000/10boring/research-kit/commit/37e7bc92c85ec0aebab00b6bc68893a75f37e48d))
* a local model server's pid must prove it serves this tier before it is adopted ([a0f2898](http://gitea:3000/10boring/research-kit/commit/a0f2898ce33caffde24b9f55d50c58aef2c48ac2))
* a new hypothesis must be a competing answer to a case question, not a claim dispute or a finding ([dc8da39](http://gitea:3000/10boring/research-kit/commit/dc8da398236a6e3238f0047c7de1a62dcb177da2))
* a new hypothesis or case-question id is the text's opening words, at most 40 characters ([ba4b86e](http://gitea:3000/10boring/research-kit/commit/ba4b86e7bc15ddc53ad18d6e2ca584a3400bc5f9))
* a new project is always stamped language: en, and the flag that promised otherwise is gone ([25b6872](http://gitea:3000/10boring/research-kit/commit/25b687260617cb64531de8f566664b0ea19e0e4b))
* a page whose content is gone gets its own verdict and stops the ladder ([77fb5f4](http://gitea:3000/10boring/research-kit/commit/77fb5f41fa3b216b3b6bb9058c3029e32a2efcd6))
* a pinned tier is checked against what its adapter can do, so a declared need is never silently unmet ([29a592e](http://gitea:3000/10boring/research-kit/commit/29a592ee5283986f38476c57c6cff04fa812d97a))
* a plan may name the phases rk has not built yet, and a direction run says so in the log ([8acfca0](http://gitea:3000/10boring/research-kit/commit/8acfca0368a5870a6091db3d6f3f9be3c7c4b761))
* a preliminary report over a CONTINUE recommendation routes to a replan, not to the same report again ([b1a60f9](http://gitea:3000/10boring/research-kit/commit/b1a60f987923befff8ef535f1dbea3906e01925e))
* a progress event carries only its note, and the notes read professionally ([459b98c](http://gitea:3000/10boring/research-kit/commit/459b98c11897f16ecb69c4d8e31f49181c3970d6))
* a project lock file is never swept, since its mtime cannot tell a held lock from a dead one ([1c2ddc3](http://gitea:3000/10boring/research-kit/commit/1c2ddc32930a9a963a8b35cb438107f8955dd666))
* a project opened through a symlink is now watched for file changes ([98c52f7](http://gitea:3000/10boring/research-kit/commit/98c52f72e0a02fe1a1e5057cf9fec45e4428218e))
* a project reached through a symlink resolves a document by its id, not just by its path ([9b94e94](http://gitea:3000/10boring/research-kit/commit/9b94e94c486b072d4ee28cb9a20808dddb514446))
* a prompt's input is its three token classes summed, on both sides of the boundary ([3a964b5](http://gitea:3000/10boring/research-kit/commit/3a964b59e8fcdceed5f6f65536ba62c792bb2bfb))
* a question attached to a search request stays in search ([397866b](http://gitea:3000/10boring/research-kit/commit/397866b5111236c06bb4d93dd6b76697efaacadc))
* a re-asked question says what was wrong instead of repeating itself ([4612f6b](http://gitea:3000/10boring/research-kit/commit/4612f6bc12dc11ee944c639cbcd2e5b3edd49290))
* a read-only handler that declares CapKBWrite or CapOperator is refused at registration ([e992177](http://gitea:3000/10boring/research-kit/commit/e99217761fe0a0b3570319dde62d9ab93b045eb5))
* a recorded job failure reaches the TUI rail, scoped to this project ([6ad6a18](http://gitea:3000/10boring/research-kit/commit/6ad6a18c89c4d5283242db89560a2db7b97b22e5))
* a recorded verdict reaches the hypothesis view, not just the verdict store ([f1fcf49](http://gitea:3000/10boring/research-kit/commit/f1fcf49dbd3373e61d9d372716e077d5c1b6d71a))
* a refused interview answer stops after three corrections, and an accept is never held for changes the operator did not ask for ([04d8ffa](http://gitea:3000/10boring/research-kit/commit/04d8ffaed96dca00dddb03e1f32574571bf0379d))
* a replan asks what has come in since the last lap, not again for what was handed over ([7d58afe](http://gitea:3000/10boring/research-kit/commit/7d58afe9bf23c9f59a90acaf762fab69eda4e05a))
* a replan cannot delete a hypothesis the case carries, and the confirm leg stops re-asking what gathering settled ([b7d25fd](http://gitea:3000/10boring/research-kit/commit/b7d25fda3e0de0816bebaafc375a4b8a693bad92))
* a replan does not ask the operator to confirm a date the research question already carried ([647c81a](http://gitea:3000/10boring/research-kit/commit/647c81a66ceb596769757821b048460e03f32ec1))
* a replan plans an absence with web-research and an archived post with internet-archive ([9dbc4a6](http://gitea:3000/10boring/research-kit/commit/9dbc4a6a3d05a456482de1e6475b842c8f016ce6))
* a replan reads the case's own evaluation status and stops re-asking for a brief ([2f2b5fd](http://gitea:3000/10boring/research-kit/commit/2f2b5fd48df7f347f7159401d6b17685fc8ad3cf))
* a report introduces its suggested continuation as work to do, and suggestions are written in plain words ([8f0ec64](http://gitea:3000/10boring/research-kit/commit/8f0ec64aa6251b83c7f5f7b175d182ec58577e32))
* a report states each caveat as one clause beside its judgment and in full only in Limitations, and leaves the research process out ([66c3f4c](http://gitea:3000/10boring/research-kit/commit/66c3f4c17b7740ca834b162e91812fec477391db))
* a rival nothing has been read against is no longer reported as one nothing bears against ([3257cef](http://gitea:3000/10boring/research-kit/commit/3257cef94b56e0023ed0b7fc5734c6e5f87924e8))
* a rival's test survives a tool rk does not have, and stops carrying a recalled record into case.md ([80a6f42](http://gitea:3000/10boring/research-kit/commit/80a6f42ad7d5c071bb00c04beb0bea2d8fd0d266))
* a run says what it is doing, what it left running, and what comes next ([25447b1](http://gitea:3000/10boring/research-kit/commit/25447b1190a3f4842d13c4414ffd363af190d37d))
* a run waits out a vector rebuild instead of refusing on one ([4ec008e](http://gitea:3000/10boring/research-kit/commit/4ec008e28defc22058fed9eaef6f4bedb4a40fd3))
* a run with no working directory gets no tools rather than a broken one ([1e7deac](http://gitea:3000/10boring/research-kit/commit/1e7deaca7f2709579bdc22d93edafbf3ce25bdf3))
* a run's bundle lands whole, every route lands sources unverified, and confidence_basis is gone ([580b7ea](http://gitea:3000/10boring/research-kit/commit/580b7ea67e11e7d24320ddaf28b3be76157f5a8b))
* a run's cost reaches the CLI, the GUI and the e2e report, split by the model that answered ([c95cf66](http://gitea:3000/10boring/research-kit/commit/c95cf665ec0805a9721e319ab40f0e97e6c6d47a))
* a search whose vector leg cannot run now fails loudly instead of degrading to keywords ([264c3c8](http://gitea:3000/10boring/research-kit/commit/264c3c808436d3c6d555d88f7f1c9172e55f0d23))
* a sentence ends at a blank line and at each line of a fenced block, and a view's retrieval stamp counts against both search legs ([92de367](http://gitea:3000/10boring/research-kit/commit/92de36717a7b1c9311fbb9caca9dac0d7605026e))
* a Source keeps the page's JSON-LD, and its document_* scalars stay on one line ([7ee037c](http://gitea:3000/10boring/research-kit/commit/7ee037c313c7da7079f1e57d7746b3f1fc8b12d7))
* a stale reconnect poll no longer strands a poll that overlapped it, and two contradicting comments now agree on where recovery lives ([dcf74e5](http://gitea:3000/10boring/research-kit/commit/dcf74e533f56a7b40749af899b4bd43ad86eb009))
* a suggestion is matched by its parsed text, and a binding naming nothing the case carries is dropped ([e426a11](http://gitea:3000/10boring/research-kit/commit/e426a1152a40dd9d2633f18d29f567a5f8587e14))
* a supplied document with nothing to name it by is cited as supplied material, and an untested rival no longer discounts every conclusion ([7d4121b](http://gitea:3000/10boring/research-kit/commit/7d4121b937e573aa897d8286145bb9ecf81867ba))
* a sweep can find the run bundle web-research produced, so it lands what it collected ([599fdf1](http://gitea:3000/10boring/research-kit/commit/599fdf1b3ce2e4ff94772a54dc7fb9a93704d145))
* a test binary gets a temp rk home, never the operator's own ([ea43307](http://gitea:3000/10boring/research-kit/commit/ea433078744270c85bbdb7faa6baf22b41ccd63e))
* a test home shares the operator's model servers instead of starting its own ([6b2512c](http://gitea:3000/10boring/research-kit/commit/6b2512cf454673e74cf962f117cc3dfb1a55df5a))
* a URL two angles both find in one round is deduped before reaching the selector ([99c1bd6](http://gitea:3000/10boring/research-kit/commit/99c1bd68b1bf3a9cde76627c1f0ee24af2d81858))
* a verdict on a hypothesis whose bullet carries no id is no longer reported as drift ([855fa6d](http://gitea:3000/10boring/research-kit/commit/855fa6d8dff8c6bb003445721d95e8952d00d54d))
* a view's retrieval searches with the case's research question beside its own text ([444abd0](http://gitea:3000/10boring/research-kit/commit/444abd025a3b9b453be814d66c3ee5b99239a590))
* a web-research run holds its directory for the whole invocation and refuses a second runner ([5517e66](http://gitea:3000/10boring/research-kit/commit/5517e6666936ed9c3aef75b5a91ee87cc7016d6f))
* a web-research run labels itself instead of overwriting its RunID ([7f0a0d6](http://gitea:3000/10boring/research-kit/commit/7f0a0d62ad94bebdd7192b31192aefd67f6940f0))
* a working-tree build stamps dev, not the release version ([960548c](http://gitea:3000/10boring/research-kit/commit/960548cab6200768a761dc5eba7c25ea5c82efa1))
* accept "new case" alongside "new" for web-research routing ([99241e9](http://gitea:3000/10boring/research-kit/commit/99241e9f507626855534afd070301a9ce02ddfbe))
* address code-review findings in case-direction (crash, RQ-check laundering, turn renumbering, silent-consent, cq bullet format) ([dda4b7d](http://gitea:3000/10boring/research-kit/commit/dda4b7d68d3833d328b989f4c554d1b4ab00ae93))
* an Analysis reports what it left outstanding, not the work it did itself ([298de9f](http://gitea:3000/10boring/research-kit/commit/298de9fa1aa13e2368a97e065493fcb89d0eb781))
* an archive listing longer than one prompt is selected in portions instead of failing the step ([00cb4a1](http://gitea:3000/10boring/research-kit/commit/00cb4a1df0b137fce69642a42b161f4a31b8826a))
* an archive run with no purpose fetches what it found instead of asking a model to choose by nothing ([5ec5b95](http://gitea:3000/10boring/research-kit/commit/5ec5b95d589329adbefa01891df973d86bf1814e))
* an archived Source is cited by its Wayback copy, a rendered post is titled by its words, supplied material by its opening, and a second-lap report suite ([cc2cb98](http://gitea:3000/10boring/research-kit/commit/cc2cb988f96138c8d0b59688e440562f8ca8197d))
* an archived X post is fetched as the page the Wayback Machine draws, through the fetch service's browser rung, not as raw JSON ([6b85060](http://gitea:3000/10boring/research-kit/commit/6b8506094bb817d73c57e0171f5e1b795daae785))
* an archived X post's JSON copy lands with a screenshot of the Wayback Machine's rendering of the post ([23e35b0](http://gitea:3000/10boring/research-kit/commit/23e35b06d09154031a99c9668a5e6cead9fe259b))
* an envelope carrying an answer settles the field even with no class ([351b2e2](http://gitea:3000/10boring/research-kit/commit/351b2e230096c9ef2e0055a7996dad48aa7c96e6))
* an event from a newer protocol version is refused rather than guessed at ([70a0f27](http://gitea:3000/10boring/research-kit/commit/70a0f27ebe0482481199e07cbb3247ba04880426))
* an interview names a want settled only when the conversation shows it, so a refused done no longer loops on contradicting orders ([b44816e](http://gitea:3000/10boring/research-kit/commit/b44816e95f03cb92daf56579840e9939839fe7cb))
* an off-contract angles reply gets one reminder instead of killing the run ([b27876d](http://gitea:3000/10boring/research-kit/commit/b27876d722bab8b3fc31dfdaf8284b0974086ed8))
* an unbuilt hypothesis holds the report gate and routes to Processing, not to a collection round ([c650608](http://gitea:3000/10boring/research-kit/commit/c650608b840fd308ced3ae8dd2c3d117be8ee5b4))
* Analysis shows each examined source as what it is, through the one renderer Evaluation uses ([b54ca90](http://gitea:3000/10boring/research-kit/commit/b54ca9016c021a6e88b7ee32360a2b494880a330))
* angles are planned for the step's own question, not the case around it ([fceed55](http://gitea:3000/10boring/research-kit/commit/fceed556dd8ed01e50ab70d16e3613f70714644a))
* announce a parked job regardless of kind, the only kind that can actually park ([5396c8c](http://gitea:3000/10boring/research-kit/commit/5396c8cf5541b58d90039a3d14ab9e59cbc8c549))
* apply persisted log settings in the daemon's own startup too ([1bd3453](http://gitea:3000/10boring/research-kit/commit/1bd345370aa91ddd41b8bdab03cb8ffc8a42adec))
* archive rung passes --headers-out, was crashing every attempt ([e2bdf47](http://gitea:3000/10boring/research-kit/commit/e2bdf47145de9770bf03921763eab225e3868262))
* ask an interactive operator for kill-criteria during create-project ([ab0e3b8](http://gitea:3000/10boring/research-kit/commit/ab0e3b8de35fe19bbe717ecb2d50f5ab3d3515b0))
* ask each adapter what it supports instead of making the model prove it ([a14db22](http://gitea:3000/10boring/research-kit/commit/a14db2253dd91a0900b032ab18c67a33f242b26f))
* askclassify owns its own tier, and its yes/no confirm is measured ([9138c2e](http://gitea:3000/10boring/research-kit/commit/9138c2e35a8707b1cf30b0fb26c39edfe3e096c2))
* assessments/round-N.md reflects the assessor's decision, not the angle's pre-round state ([3218f9b](http://gitea:3000/10boring/research-kit/commit/3218f9bbe326b05ea8308118a9a88f47a746ef8c))
* bar the operator-browser rung after a geo-block or rate-limit verdict ([f1b2faa](http://gitea:3000/10boring/research-kit/commit/f1b2faaa3a2551b8746c4853cbe5723f44b45754))
* bare rk honours RK_HOME instead of always reaching the real ~/.rk ([#179](http://gitea:3000/10boring/research-kit/issues/179)) ([55b07c4](http://gitea:3000/10boring/research-kit/commit/55b07c4d28e55b31a62518c86816078b9be5a7bf))
* bring casecollection's four sites under the coverage gate ([fba47db](http://gitea:3000/10boring/research-kit/commit/fba47db4236d9bde2138f30cb136d8a1c59ae90c))
* broaden daemon-crash detection to signal crashes and bound the stderr-log read ([941dcfc](http://gitea:3000/10boring/research-kit/commit/941dcfc029ee0a052ebff7c6c3755f439604ac86))
* build error ([e713552](http://gitea:3000/10boring/research-kit/commit/e7135521f8697079bea8f0def71673d6043f2649))
* build-desktop and desktop-run install frontend deps when missing ([29505f7](http://gitea:3000/10boring/research-kit/commit/29505f78952270621a5cbb0af5833044912d4d4d))
* bump http-fetch's stale Chrome fingerprint pin and add a bump-check tool ([09a6027](http://gitea:3000/10boring/research-kit/commit/09a602766137e8e04aa878e6eedfe3d1a1bb1f57))
* bump the pinned llama.cpp to b10519, so /metrics reads without waking a model ([11e65b6](http://gitea:3000/10boring/research-kit/commit/11e65b65bf685a25811fee10e3a5f5d48c4f4df8))
* cancelled confirm-gate no longer reported as a decline ([49f2dfe](http://gitea:3000/10boring/research-kit/commit/49f2dfe815cb944ed21bc20cd20d3205fdae9529))
* cancelling a run kills the whole subprocess tree instead of orphaning python and chrome ([bde2d1e](http://gitea:3000/10boring/research-kit/commit/bde2d1e69bfc6622b112e5168aa29bb9914c56fc))
* cancelling a run no longer marks its unfetched urls permanently unreachable ([d84ddbb](http://gitea:3000/10boring/research-kit/commit/d84ddbbb8418b1f45bfea6b1a1cdf1a91a970a3c))
* carry a non-JSON reply through the bus envelopes instead of crashing on it ([e8fcd5d](http://gitea:3000/10boring/research-kit/commit/e8fcd5dd5aa35831c8efebdfa77edeb1e8b97d1e))
* carry the caller's effort to the model, and make the tier start lock's wait cancellable ([2e800d9](http://gitea:3000/10boring/research-kit/commit/2e800d9d9b087818e352ea63f42e85daa0509af8))
* case-direction picks between several cases at a project root, like show case does ([7171fd4](http://gitea:3000/10boring/research-kit/commit/7171fd4f6ccee04b65a7babaf0a4d0d63fbcf4f0))
* change default model to google's ([79e9545](http://gitea:3000/10boring/research-kit/commit/79e95450cfdae960f084f4a076318afb1ad7eb07))
* ci error plus docs ([88dbdd7](http://gitea:3000/10boring/research-kit/commit/88dbdd707d646d52252a36a142e03b7fa455bcb2))
* CI job runs with an init and a tmpfs /tmp, so orphans are reaped and SQLite tests finish in time ([e33ff68](http://gitea:3000/10boring/research-kit/commit/e33ff6829abe0299b065a9a2fe92ce1942d2e685))
* CI runs green on Linux, the unchunked-read test no longer depends on macOS's symlinked temp dir ([c8dbf11](http://gitea:3000/10boring/research-kit/commit/c8dbf11cdf366ed74bdfb5533bd301a14d69ea2c))
* claim repair may think before choosing a cure ([1d87c9d](http://gitea:3000/10boring/research-kit/commit/1d87c9da47de26db77ab76f132d7eb5fc6746530))
* claim soundness asks after a party's role, an occasion and a relation ([f9467b4](http://gitea:3000/10boring/research-kit/commit/f9467b49ced5c1b35b5a91059eeabbdfdab0bfd6))
* claims prompt ([745b928](http://gitea:3000/10boring/research-kit/commit/745b928b4818be925a80cfbf77c66c302dd59deb))
* clamp runConcurrent's n to at least 1 to avoid a zero-cap deadlock ([efbfcd8](http://gitea:3000/10boring/research-kit/commit/efbfcd889e4d54fe091bc67366fda2de73620c14))
* classify delivered images/video/audio as retrieved, not empty ([24ce1b1](http://gitea:3000/10boring/research-kit/commit/24ce1b15234e3b93c100d640b0e5a3754208d1e1))
* claude -p runs clear of the operator's own settings and project, 14.6k tokens to 269 ([e066a60](http://gitea:3000/10boring/research-kit/commit/e066a60dc11cf7b04d94bcf2b0f98cb76e87fe10))
* claude's thinking modes are enabled, adaptive and disabled, one each ([73a48f6](http://gitea:3000/10boring/research-kit/commit/73a48f60bd71e4e37326c356ee7e605ba523a6a9))
* clear a web-research URL's in-flight marker only once its record is durable ([a835e6c](http://gitea:3000/10boring/research-kit/commit/a835e6c51861b1fab60fa1ea41d8f9ba99c8b802))
* close the review defects in create, show and the shared prelude ([e2f3f0a](http://gitea:3000/10boring/research-kit/commit/e2f3f0aa2dc09d2ca6434e0d34ca9e18ae2ccc0a))
* close the review round's defects and treat an injected instruction as a credibility finding ([65cf549](http://gitea:3000/10boring/research-kit/commit/65cf5496612697ae41c807a93309bf6d28bdd2a1))
* codex exec runs clear of the operator's project too, sharing one neutral working directory ([116dd9f](http://gitea:3000/10boring/research-kit/commit/116dd9f14087b2ed0825c0f6f504f61f8be2ff35))
* codex runs in an rk-owned home, so the operator's AGENTS.md never reaches a prompt ([6eba1d8](http://gitea:3000/10boring/research-kit/commit/6eba1d8be5dac3e01c7ee603630d6eab7bf279e6))
* Collection closes when its plan is spent, in the round that finishes the work, and asks nobody ([6b974db](http://gitea:3000/10boring/research-kit/commit/6b974db83004fe13e979bbf7fa128333d9b06d35))
* collection stops re-asking the operator to grade an assumption the case already settled ([f6389df](http://gitea:3000/10boring/research-kit/commit/f6389df0256185a9345b5215138ded53718f8dd3))
* commands ([42a4f7b](http://gitea:3000/10boring/research-kit/commit/42a4f7b1f8ff57c22729cb3eaf5ee4e7cf14a6e2))
* compare captures across ladder rungs instead of keeping whichever answered first ([78c663a](http://gitea:3000/10boring/research-kit/commit/78c663ab843c7f1d18b06d6eaeb50db64b55e2dc))
* constrain distill source provenance ([cfbaa94](http://gitea:3000/10boring/research-kit/commit/cfbaa946a660144a9dc4280c37b7e936988b4573))
* continue bug ([a6b0a38](http://gitea:3000/10boring/research-kit/commit/a6b0a38cc09739e90601114f3715a5867191865c))
* count a cached prefix once, not once for the write and again for the read ([e153075](http://gitea:3000/10boring/research-kit/commit/e153075f2593cf02479220ae4cbda6c9ad8608dd))
* daemon-crash-stderr warning no longer trips on ordinary LogScreen echo ([c4dd1fb](http://gitea:3000/10boring/research-kit/commit/c4dd1fba0e87c5b18e922856aaca851d6d73479e))
* default creative-search-in-reach off, since nothing performs it yet ([f58124f](http://gitea:3000/10boring/research-kit/commit/f58124f736f217efa4c01ed643ccc86273a20f77))
* derive Gitea coordinates from origin, name the CI token secret, record the 0.2.0 publish ([432120e](http://gitea:3000/10boring/research-kit/commit/432120e7803255a8f79171f25ce584e89ac9ffd9))
* derive parked status from whether any view can answer, not whether any is attached ([650f900](http://gitea:3000/10boring/research-kit/commit/650f90032b5c7d3df5500242668906cca253dfff))
* desktop client falls back to $RK_HOME/bin/rk when rk isn't on PATH ([e7dd31b](http://gitea:3000/10boring/research-kit/commit/e7dd31b7101604a3ba5e89deaebd637d868a50ac))
* Direction's confirm conversation reports a step the operator agreed to instead of taking the yes as acceptance ([c92ab65](http://gitea:3000/10boring/research-kit/commit/c92ab6558b9fd11cc6a1350bb78124ba313ad3f5))
* Direction's plan draft, redraft and follow-up run on the large tier ([31847ac](http://gitea:3000/10boring/research-kit/commit/31847acdb74a7b78c585b76e4bb883d370d1de64))
* disambiguate each ladder rung's capture files so one rung can't overwrite another's ([03ee916](http://gitea:3000/10boring/research-kit/commit/03ee916cf1c3575d2264e8b83c34bc1cd36b4984))
* dispatched tool calls are recorded in the LLM transcript ([22464ff](http://gitea:3000/10boring/research-kit/commit/22464ff68628dde91c9733e759199fc6a410146b))
* don't fail a write when only its changelog entry could not be appended ([5318073](http://gitea:3000/10boring/research-kit/commit/531807335950461c96950ee3e2c39e6106b01eb7))
* drop the redundant path default from show-status, matching integrity ([08b5666](http://gitea:3000/10boring/research-kit/commit/08b5666f73bf55b8916e748f7c6882de8470ed55))
* e2e suite no longer passes the removed --kill-criteria flag to project create ([db75103](http://gitea:3000/10boring/research-kit/commit/db751032b81250a4bc51c264168a0303cbc4cad3))
* e2e's kept workspace also keeps the run's LLM transcript ([62b6967](http://gitea:3000/10boring/research-kit/commit/62b69673d93a3112f13535a4c7c617cfa1bfa3f4))
* establish ACP session lifecycle ([e2794ca](http://gitea:3000/10boring/research-kit/commit/e2794ca71ee7fd92acfae4e870ca8dc7e89fea72))
* Evaluation is shown what an examined source is, not its file name, so a failed fetch no longer reads as a lookup that found nothing ([b07442d](http://gitea:3000/10boring/research-kit/commit/b07442d7b7915bb5d73a80c0280fb775f8e470f2))
* evaluation names collectable gaps and a verdict its report supports, with the e2e chain re-recorded ([2c0be37](http://gitea:3000/10boring/research-kit/commit/2c0be3786403c700512ddb6eaf3816d74b7463ce))
* evaluation records the phase marker and logs the run, like every other phase ([027a464](http://gitea:3000/10boring/research-kit/commit/027a46479ff523b796e188ec70c7878368763cc9))
* every held log line becomes its own dated entry, and the second-lap suite reads the phase marker against the plan ([19bf889](http://gitea:3000/10boring/research-kit/commit/19bf8893a26dab9b0d4d9f19c82f63d88e0507af))
* every result table puts its values in one column, so a group with a long detail lines up with the rest ([e473aa2](http://gitea:3000/10boring/research-kit/commit/e473aa2acc560d3270413d7c147ec778d4483625))
* fetch receipts carry run-relative paths and survive verbatim for the manifest ([b3f2c7b](http://gitea:3000/10boring/research-kit/commit/b3f2c7b50888dcf5b6b93ddaafbe21b2247ee12d))
* fetch_browser.py reports a render failure as one clean line, not a traceback ([5724ed7](http://gitea:3000/10boring/research-kit/commit/5724ed7abf8c80a6df481cdfe231998e09c29280))
* fetch_http.py reports a transport failure as one clean line, not a traceback ([a316901](http://gitea:3000/10boring/research-kit/commit/a316901be9b552ab635961fb20b048d1c883dc8b))
* five dropped-signal bugs in case-process and kb search rendering ([#180](http://gitea:3000/10boring/research-kit/issues/180) items 5-8, 10) ([52cb0f5](http://gitea:3000/10boring/research-kit/commit/52cb0f5c89d29f100ec32225a483a5633a374dd5))
* five silent-corruption bugs in case-process and case-direction ([#180](http://gitea:3000/10boring/research-kit/issues/180) items 1-4, 9) ([fa5cd7d](http://gitea:3000/10boring/research-kit/commit/fa5cd7dd5ad1ea15ab9e0a92f081a50ccf8e750c))
* followability harness copies per-run transcripts without colliding on basename ([78560f3](http://gitea:3000/10boring/research-kit/commit/78560f3afeb9c699cc9b0c6c7a1c4e98b5f36f86))
* give fetch attempt IDs a counter suffix so concurrent fetches never collide ([30a4070](http://gitea:3000/10boring/research-kit/commit/30a40704b49e5747c7e673e1c70262ccac571ded))
* give R15's retry real coverage and add Stop tests, per review ([b7f569b](http://gitea:3000/10boring/research-kit/commit/b7f569bee16ebb52956ac784c99b366ebdf861f1))
* Go asks the question itself when the model will not compose one ([a5638b1](http://gitea:3000/10boring/research-kit/commit/a5638b1af318bbe67e83ebbbfb208e3a12a51b9f))
* Go's task instructions no longer leak onto the operator's screen ([2ecedd4](http://gitea:3000/10boring/research-kit/commit/2ecedd4fb7ba6139736cca74a96a65fcb3b1758f))
* guard grammar sampling, cache the kv prefix, free native resources, and let llama.cpp errors through ([d58ffc4](http://gitea:3000/10boring/research-kit/commit/d58ffc40ca4f514462af28e05004ce32c1a3ab3c))
* guard journal Prune by growth-since-last-pass and bound Summary values ([67ec206](http://gitea:3000/10boring/research-kit/commit/67ec2063ba56e11686bb7e6c09378b030667c511))
* guard purpose and depth against a mangled hand-edited PLAN.md ([cb2631c](http://gitea:3000/10boring/research-kit/commit/cb2631c66c66ab1d521a46b5e6b4907975690dfc))
* guard the history envelope against a target that ignores want_history ([f62393d](http://gitea:3000/10boring/research-kit/commit/f62393d31d2d49d46f18d03d12f598fc4699232c))
* handed-over material keeps its own name and is typed as the text it is ([e143957](http://gitea:3000/10boring/research-kit/commit/e143957cdedb7fab3011744120b32fe27c1b51e1))
* harden distill validation boundaries ([4dce095](http://gitea:3000/10boring/research-kit/commit/4dce095a265109a3221761efb3ff5fc0b8228d68))
* harden rk pivot lifecycle and hidden help ([c328094](http://gitea:3000/10boring/research-kit/commit/c328094e380769dab415941a61d8733de362bb4a))
* harvest real followability cases for casedirection.gather and three stale webresearch sites ([7f1eeb2](http://gitea:3000/10boring/research-kit/commit/7f1eeb22cc468a9c379ca4c3c2897b65db0e1926))
* hide the GUI's own housekeeping polls from Background jobs and resume offer ([8e2697f](http://gitea:3000/10boring/research-kit/commit/8e2697f936816cad730f9025b09cbad5c400de26))
* honor --json on rk case collection --stop ([adc4332](http://gitea:3000/10boring/research-kit/commit/adc4332f7873e1c637b34f0ffece4319c404f891))
* icons ([afe1714](http://gitea:3000/10boring/research-kit/commit/afe171448e5b00ccfcba1938f0d452372d0a889a))
* input dropzone ([6a19857](http://gitea:3000/10boring/research-kit/commit/6a19857fcab365425c6f011e94c4550c32acf54d))
* install no longer writes hooks for retired commands ([7a58356](http://gitea:3000/10boring/research-kit/commit/7a5835680c6a0f280004d57e1e32699bc3346010))
* install-desktop leaves one bundle on disk and stamps the bumped version ([465dc8f](http://gitea:3000/10boring/research-kit/commit/465dc8f1ed94385cbc79442f196ab40a8af25511))
* kb index-path has a user-tier renderer ([3e8413a](http://gitea:3000/10boring/research-kit/commit/3e8413abd9b17b23692e504f2061dd82df9709cc))
* keep a case name's casing in the existing: routing spelling ([cba2ba2](http://gitea:3000/10boring/research-kit/commit/cba2ba26d5c233b96f6023dcfd58f9b0ff59f361))
* keep reach out of the release but still in the sandbox image ([d0e45f5](http://gitea:3000/10boring/research-kit/commit/d0e45f5e052fcb889708c34a69ee27ce5aeb7718))
* keep RK_LLAMA_SLEEP_IDLE_SECONDS when spawning the daemon ([29ab56b](http://gitea:3000/10boring/research-kit/commit/29ab56babd8e6d25d110b0b18e74e4d38688d2de))
* keep the interview on XSmall so the tier comparison stays a clean A/B ([f91a7d6](http://gitea:3000/10boring/research-kit/commit/f91a7d69ae207ed58069800a491ea8a2131bf2a0))
* keep the last frame draft and report review-cap exhaustion honestly ([99c1212](http://gitea:3000/10boring/research-kit/commit/99c1212c96ace170e4ed883fd9e34e068b43598e))
* keep the local tiers' json grammar until a handler runs the tool loop ([a8c1d9e](http://gitea:3000/10boring/research-kit/commit/a8c1d9e6d437f5a50b283a2218f0ed97cbf6593f))
* Kind means background work, not the absence of a terminal ([3ecba89](http://gitea:3000/10boring/research-kit/commit/3ecba897645c3b3012b0e27eb9f5fbb1b5d77b1b))
* let a restart proceed over an open chat, and record why a daemon restarted ([5236813](http://gitea:3000/10boring/research-kit/commit/5236813de3f7d9caf8dfab64ec0c2a2553cf0c52))
* let the web-research background job actually re-enter, and rename every provisional-collision bundle ([1b35a12](http://gitea:3000/10boring/research-kit/commit/1b35a12bbf6454c3b9e69889b701687937667b87))
* lock and atomically write settings.json to stop concurrent rk set calls losing updates ([dd717cd](http://gitea:3000/10boring/research-kit/commit/dd717cd247afe2bc4c9f1aede79775a0125f0369))
* make bus.Publish nil-safe instead of panicking on a nil *Bus ([f7e1f6e](http://gitea:3000/10boring/research-kit/commit/f7e1f6ec37b967c6ae882184d415727df2b2d317))
* make rk jobs, daemon status and the notice line show work, not command history ([6abb2da](http://gitea:3000/10boring/research-kit/commit/6abb2dac1197f3de22734cad05cc4840dd49ac1d))
* make rk's tools dir a real setting, not an ad hoc RK_TOOLS_DIR check ([a5aa0fa](http://gitea:3000/10boring/research-kit/commit/a5aa0fa98cd5e3d96239bb37a91357490b9f5999))
* make the e2e suite observable and stop RK_OPERATOR from authorising a headed browser fetch ([373ab0e](http://gitea:3000/10boring/research-kit/commit/373ab0eb0190bdd7e3bdd342d68b8219a0f3ba1b))
* make the project lock refusable instead of an uncancellable blocking acquire ([8fc529d](http://gitea:3000/10boring/research-kit/commit/8fc529d74953c41cbce50391f3b14d830f768c53))
* make the site scan deterministic and name what a divergent row disagrees with ([519580d](http://gitea:3000/10boring/research-kit/commit/519580d4f6ef9ad5d24b0f1149a646315856b84c))
* match replan case questions by echoed id, not freshly-derived text slug ([a668baa](http://gitea:3000/10boring/research-kit/commit/a668baac8c18d8fd80e21126b853de1589ac59fa))
* match web-research's case_routing case-insensitively ([ac4121c](http://gitea:3000/10boring/research-kit/commit/ac4121c59583755d8373d726eb430758b5ee9dd6))
* measure what a model can do, not what the probe forgot to ask for ([525d897](http://gitea:3000/10boring/research-kit/commit/525d897510503f3eb52603b5a3cef734a737ac6f))
* minor faults ([a565ee5](http://gitea:3000/10boring/research-kit/commit/a565ee56e975dd4abb1965ca8b7b943acda85ba8))
* minor vector bug found in review ([2fb83c6](http://gitea:3000/10boring/research-kit/commit/2fb83c67b52a353ee7958ad5079a0ee66b517c82))
* model version 22 strips confidence_basis from every Source on disk ([1fa8d58](http://gitea:3000/10boring/research-kit/commit/1fa8d5846fc1b1980dd399aa317572c0410891e3))
* modernize ([e27def9](http://gitea:3000/10boring/research-kit/commit/e27def9469e3081851863ba58c041107606267cb))
* name rk daemon restart when a stale daemon fails a dial with a version mismatch ([f0d213d](http://gitea:3000/10boring/research-kit/commit/f0d213d07a4cf0a0a275213b01facf9ab866c25e))
* newTestScratchpad populates every directory so a writer can't fall back to a relative path ([0e33d44](http://gitea:3000/10boring/research-kit/commit/0e33d443514835b36a49df06a020d78656a9d2ae))
* one question's unreadable reply costs that question, not the whole Evaluation run ([0d85973](http://gitea:3000/10boring/research-kit/commit/0d8597366b3a8e85025df5779f74c6df314f1e98))
* one rival's unreadable reply costs that rival, not the whole Evaluation run ([9dfe1ae](http://gitea:3000/10boring/research-kit/commit/9dfe1ae5209fc27fee596abf1ade897c9e8c02e9))
* one slug per document across captures, derived and distillations, with a capture extension ([347d71c](http://gitea:3000/10boring/research-kit/commit/347d71cdd215ed5ebeb05e46cf1e4a717825e6da))
* only a labelled given-contradicted note reaches the operator's case.md ([9509ac2](http://gitea:3000/10boring/research-kit/commit/9509ac232fbc9083d684d9e649790ac60141b0a4))
* only a Source that yielded a claim backs a view's answer ([bdacaca](http://gitea:3000/10boring/research-kit/commit/bdacaca62cb16007e9dfdb94a38bdd13f1d92e65))
* only background jobs are journaled ([9b7fc2b](http://gitea:3000/10boring/research-kit/commit/9b7fc2bce5e8b27e51aa32f0d8b78c3eb5835b8e))
* operator-browser rung launches directly, no redundant per-URL consent ([a608ae5](http://gitea:3000/10boring/research-kit/commit/a608ae587b56c32738ba49de811b20dc90cc7620))
* pass collection round steps in lockstep with jobs instead of re-deriving them from plan.md ([a335d19](http://gitea:3000/10boring/research-kit/commit/a335d1915a62244065ae0e9ea83b008154561e43))
* pin a loadable embedder, cap chunk size, and scope --semantic to the run ([8b7726c](http://gitea:3000/10boring/research-kit/commit/8b7726cf3792145935b8fc9a0c1126a0b57a02cf))
* pin embedding model as fixed URL+checksum assets, same as xs/xxs ([067cd7e](http://gitea:3000/10boring/research-kit/commit/067cd7ee01569028efda1b4ef86ff15743673295))
* plain-path search hits and a kb index-path renderer ([f726261](http://gitea:3000/10boring/research-kit/commit/f7262617e065072afef587b27672ad3ba2ae6ea2))
* polish desktop workflow ([2706c72](http://gitea:3000/10boring/research-kit/commit/2706c72faea79e5d2f9c207e1e9384d087f9393c))
* probe llama-server's own /props for sleep state, and surface call usage plus process memory/cpu ([5dd5cd4](http://gitea:3000/10boring/research-kit/commit/5dd5cd40592cad672ddf1b826b9c6b71dfc5f3e6))
* process, evaluation and analysis are offered in the commands catalog, so a client can run them ([ae8d58f](http://gitea:3000/10boring/research-kit/commit/ae8d58f6880336bd5ed09c3d08387d5ef13ffc67))
* processing ships with four toggles on, rerank and claim_evidence off, and recording checked pairs no longer logs a false error ([d1aaec7](http://gitea:3000/10boring/research-kit/commit/d1aaec7218d6e4e5e547f7f09ad780b9f7a9b2a0))
* promotion aborts and reports when moving a standalone KB fails ([dd15a77](http://gitea:3000/10boring/research-kit/commit/dd15a778df6f3ede94fcb74952e686f33e7729b1))
* publish ACP logger before receiving input ([a1853aa](http://gitea:3000/10boring/research-kit/commit/a1853aab94711207a89c8f07239f2a2bcd3fed57))
* purpose question is optional and explains what it's used for ([ff76d0c](http://gitea:3000/10boring/research-kit/commit/ff76d0c2696282a4f985c0ce384800eeb490f429))
* pyhelper derives captures natively, no more shelling to rk capture ([23cd7f4](http://gitea:3000/10boring/research-kit/commit/23cd7f4d481d9bfe0b9f70ae71c75454b9edf894))
* rate limits are waited out, and an archive's own block no longer bars the operator browser ([6d12e0c](http://gitea:3000/10boring/research-kit/commit/6d12e0c127fa4d980c068b986abcdbd48e621278))
* re-extract the python fetch helpers when the build that wrote them differs, and stamp dev builds with a timestamp ([26472ef](http://gitea:3000/10boring/research-kit/commit/26472ef44ff2685471eaa353f8951fbd5e577e35))
* read the model table smallest tier first ([9a021c7](http://gitea:3000/10boring/research-kit/commit/9a021c7a40dacfc2f4e5ee748a36bf21241c4283))
* recognize spoken negatives in ask-loops, retry the approval gate instead of discarding an ambiguous reply ([112c713](http://gitea:3000/10boring/research-kit/commit/112c713a5f83f90b294f537112081f6bea35fdeb))
* record parked jobs in the journal, carry resume attempts to the successor, announce a shutdown-killed background job ([a33f1ff](http://gitea:3000/10boring/research-kit/commit/a33f1ff8ca33bfb6676ec96c84bd4e07e30efeca))
* recover a conversation when a model answers off-contract instead of in JSON ([213bf1f](http://gitea:3000/10boring/research-kit/commit/213bf1f727babb0e92833867dfb95a1857961f0b))
* refresh PLAN.md as angles close ([aab76b4](http://gitea:3000/10boring/research-kit/commit/aab76b4dcf7e5330a991458c1712c4ed00f575e5))
* refuse a web-research run the model proposed no angles for ([0faf180](http://gitea:3000/10boring/research-kit/commit/0faf180968b331a69ccee09a95027a3f5f86702f))
* refuse to resume a background job that never checkpointed instead of losing its parameters ([7e21628](http://gitea:3000/10boring/research-kit/commit/7e2162884f9dc519f45bf7de4c89dbfb4f8062be))
* refuse to resume when params.json exists but can't be read, not just when RunDir is empty ([82bc4c3](http://gitea:3000/10boring/research-kit/commit/82bc4c36e78f87098f492240985bf256e116381d))
* relay off-contract model replies in web-research v2 framing instead of aborting ([56f626f](http://gitea:3000/10boring/research-kit/commit/56f626f296ddc92314e674d46622c8bbfd1788e8))
* report no-KB-here as an answer, date-frame research angles, and background the web-research sweep ([7251609](http://gitea:3000/10boring/research-kit/commit/7251609e42f0bbe5138116e8a27a2a0dac532fde))
* report-readiness is judged after the analysis carries out what it decided ([b6bcaf7](http://gitea:3000/10boring/research-kit/commit/b6bcaf7da5469d475c6938c1e465e9a72665bcf7))
* report.md separates blocked captures from real Primary sources ([4d7572f](http://gitea:3000/10boring/research-kit/commit/4d7572fa8a26f7a9b91c6c0ae2a77e598c6dfa37))
* require contracts for every model site ([477325e](http://gitea:3000/10boring/research-kit/commit/477325e9d667a5fa2fd183c9f272688bd04efe6d))
* retire the never-dispatched distill handler ([#8](http://gitea:3000/10boring/research-kit/issues/8)) ([629b0f5](http://gitea:3000/10boring/research-kit/commit/629b0f579a6342dd606ad1c2a6976221fdd5940b))
* reuse a document rediscovered by a new angle in a later round ([f890651](http://gitea:3000/10boring/research-kit/commit/f890651de696f1ffa16add3619ce8bfaa94e0663))
* rk job prune forgets finished journals instead of deleting run dirs ([f0be31b](http://gitea:3000/10boring/research-kit/commit/f0be31b31e531e3d48b637cc009e1725d1b04bcc))
* rk kb show/search now find a standalone web-research run's own KB ([5cf6a9b](http://gitea:3000/10boring/research-kit/commit/5cf6a9b352e1a709cbc48f5c8428fc0296079e33))
* rk model status lists capabilities instead of six boolean fields ([156b0d0](http://gitea:3000/10boring/research-kit/commit/156b0d0f4a63987a3d71330c0d631cf5ed9a6585))
* rk model stop takes the tier lock so it can't orphan a racing server start ([514df3c](http://gitea:3000/10boring/research-kit/commit/514df3cabb2f677e60e70c9bb29b92631c47eb56))
* rk retry resolves a re-fetch conflict, reports an unresolved row, and records the operator's own verdict ([681ac6f](http://gitea:3000/10boring/research-kit/commit/681ac6f3b9b0793bf7395ee6f57f668d72d1335d))
* rk-embed 0.4.1 ([0e23b69](http://gitea:3000/10boring/research-kit/commit/0e23b69fd65336d7b6a8a53fdbb6b32e6da0a8ca))
* rk-embed source hash ignores build artifacts ([5023191](http://gitea:3000/10boring/research-kit/commit/5023191afed8ea6bb54ece013b41364108f84b65))
* rk's conversations can load a skill, so a plan step added while confirming Direction reads the tool's skill first ([90f722a](http://gitea:3000/10boring/research-kit/commit/90f722aeb751480102e70ed6104d7d1c594aa62f))
* rkfa counts every billed token class, so the dearer model stops reading as the cheaper one ([ac8c32f](http://gitea:3000/10boring/research-kit/commit/ac8c32f7fd8dac1ac879744d311cdd7eb78bbed2))
* rkfa replays the production contract and refuses a case that restates it ([9a9f681](http://gitea:3000/10boring/research-kit/commit/9a9f681942df7936fc5f1f0c44fe3cb6a920b1f9))
* run xs/xxs on ollama again, the in-process llama.cpp path segfaults on the pinned gemma-4 ([7cb7d5a](http://gitea:3000/10boring/research-kit/commit/7cb7d5a132cbae1193249d99024885ad208108b5))
* search ([8a7a0e8](http://gitea:3000/10boring/research-kit/commit/8a7a0e816468279fd0a0d7fcb9158d7648bf36b0))
* serialize LLM transcript appends so concurrent calls cannot interleave partial entries ([be9bc31](http://gitea:3000/10boring/research-kit/commit/be9bc31bdcbde3d68cd1d3a07e130d83539864dd))
* serialize OnPark/OnFinish/OnRunDir journal writes and refuse to regress a terminal entry ([64d1d93](http://gitea:3000/10boring/research-kit/commit/64d1d93211fab2a4ea785f797d7390124bc047ff))
* show Plan steps in the review summary and actively repair a coverage gap the amend call drops, instead of a passive warning ([46e5bf0](http://gitea:3000/10boring/research-kit/commit/46e5bf05a2cc77c02146f9140bbb998bd5c15544))
* show project and show case answer instead of dying above a project-less KB ([529100c](http://gitea:3000/10boring/research-kit/commit/529100cf4cbbfb1f0ff74674ffb726157dc481d7))
* show status suggests the command the operator actually invoked ([1b14511](http://gitea:3000/10boring/research-kit/commit/1b145116354d8917248b63d47146845ca8816423))
* some fixes ([1508fe5](http://gitea:3000/10boring/research-kit/commit/1508fe5cf4f1a445e7072b1008d93c0794ad7e21))
* state settled frame values in the model's own vocabulary ([3fd9bf4](http://gitea:3000/10boring/research-kit/commit/3fd9bf460c317a5b622a08648fba7d00f9a6b804))
* stop asking the model to hand-write JSON around free-text LLM replies ([347bece](http://gitea:3000/10boring/research-kit/commit/347bece3f45f4cd6913eb9e22e0067be457a35fb))
* stop dispatching claude's own resolved tool calls back into rk's registry ([abdfd13](http://gitea:3000/10boring/research-kit/commit/abdfd136309bc91f27267fd72ac67f091a67d2f8))
* stop flagging a view's title as stale drift against case.md ([8938fb5](http://gitea:3000/10boring/research-kit/commit/8938fb559225f3002583008478ebc8e91ab69fb0))
* stop handing claude and codex a schema that any object satisfies ([8fe0f8e](http://gitea:3000/10boring/research-kit/commit/8fe0f8eb69da0e47119aa4ab0ca25dfaacfb8d30))
* stop persisting the fetched URL into reach's journal summary ([7f273f7](http://gitea:3000/10boring/research-kit/commit/7f273f76604ee3bbb674e1826379269bcf50415a))
* stop phase-rail buttons inheriting the global blue button fill ([69ca8bc](http://gitea:3000/10boring/research-kit/commit/69ca8bced575e146d59b6e4a7847c50b8b8090c3))
* stop rendering the never-computed progress percentage ([1eac558](http://gitea:3000/10boring/research-kit/commit/1eac5580e1a15ebcff0e1aaca2adc364273d8352))
* store canonical JSON in conversation history instead of a model's raw wrapped answer ([81e4ea2](http://gitea:3000/10boring/research-kit/commit/81e4ea2e7e9179be0300282fac39975adf615818))
* stream progress events live instead of batching until the run ends ([93d6943](http://gitea:3000/10boring/research-kit/commit/93d6943b1a5e991e8c4300a4c0fd2c1823793dc3))
* strip markdown code fences from claude -p JSON replies ([c9f8ab5](http://gitea:3000/10boring/research-kit/commit/c9f8ab5c9ee357a7dd37b616f255b359fa67bd00))
* surface a failed record-decision write instead of discarding the error ([b9926dd](http://gitea:3000/10boring/research-kit/commit/b9926dd6e8403df13f9b2e255c0282fae4d6d372))
* synchronize stdout between progress narration and the Ask prompt ([c4f6fe2](http://gitea:3000/10boring/research-kit/commit/c4f6fe2f8ae141cc2c7c30bcff4b425bc80e60b3))
* test error ([ff6986b](http://gitea:3000/10boring/research-kit/commit/ff6986b3fc25ff3680907ce7764fa6f83493c58e))
* test fixtures ([b5bc2c7](http://gitea:3000/10boring/research-kit/commit/b5bc2c741220123546a99a2d15d60cf08cec37ea))
* testcases ([379a1a5](http://gitea:3000/10boring/research-kit/commit/379a1a59cafeb1a727b2f584c469bdab13aebd10))
* tests ([1fa6626](http://gitea:3000/10boring/research-kit/commit/1fa66265bd8d654c20f18ae7a3db7eb7c70fbe97))
* the analysis judge never refutes an untested rival by absence and names the rival a CONTINUE rests on ([6ee91c0](http://gitea:3000/10boring/research-kit/commit/6ee91c0d28ce7e3ac85135255a5bf2c3bb38ec77))
* the Analysis writer is given the claims and their sources, not summaries of them ([2b1428a](http://gitea:3000/10boring/research-kit/commit/2b1428ad628bc090dbb4b1c28804da743dc651c7))
* the angles prompt carries one example, and it is not built from a live case ([936b982](http://gitea:3000/10boring/research-kit/commit/936b982bf79cc7402debfacd717549e44c4ffb70))
* the angles prompt no longer implies the subject's identity must be confirmed first ([fbd6305](http://gitea:3000/10boring/research-kit/commit/fbd63053a201c8538d48df44477e3c82e554b502))
* the angles reminder restates the contract it reminds of ([b897a57](http://gitea:3000/10boring/research-kit/commit/b897a574e7b7f505e8aa49cfa542a436fdb361d3))
* the archive is tried after the operator's browser, since a copy is not the document ([7313fdc](http://gitea:3000/10boring/research-kit/commit/7313fdc70b15db071800709d302bc684d7e2975d))
* the archive listing keeps JSON captures, where an X post's text survives after 2023 ([93b1551](http://gitea:3000/10boring/research-kit/commit/93b155156af111bfdf334901653b73357bab0c45))
* the archive rung fetches what the archive captured, not the archive's rendering of it ([45d50df](http://gitea:3000/10boring/research-kit/commit/45d50df17acd592a191f9899c06105b210df9478))
* the archive selection allows a day either side when a purpose's local date meets a UTC time ([0cb121c](http://gitea:3000/10boring/research-kit/commit/0cb121cff6e3d19b1bae4ad8b9af0ec354f73c17))
* the archive selection shows each copy's type and, for an X post, when it was posted ([c646904](http://gitea:3000/10boring/research-kit/commit/c646904d192ce0be24cd048ec127784c739729ff))
* the archive selection shows when each copy was saved to the minute, marked UTC ([6d82ccf](http://gitea:3000/10boring/research-kit/commit/6d82ccf4561d81f4b084a3b4707bad1d08f83d5a))
* the archive tool says it reads an account's old posts, and Direction's confirm conversation plans from the same tool list as the drafter ([9121313](http://gitea:3000/10boring/research-kit/commit/9121313c28896b7e18482410bec166ce348f9076))
* the assessor judges an angle as answered against the research question, not its own name ([c270778](http://gitea:3000/10boring/research-kit/commit/c270778d5ef5ab43339d8b68728bffda89c9d4d0))
* the assessor's angle-close decision is no longer dropped when the model echoes the whole angle line ([eccb085](http://gitea:3000/10boring/research-kit/commit/eccb0852a58fa7ead47dd3c9ddca21cf1d9ee520))
* the assessor's state value is normalized in code and pinned to lowercase in the prompt ([0f811f2](http://gitea:3000/10boring/research-kit/commit/0f811f21f5519af8c2aded4c3e723808ad54e991))
* the assumptions question never offers the handed-over document's wording as its example ([89adb52](http://gitea:3000/10boring/research-kit/commit/89adb52667c46972dfe30ebd3147d3a29eb355db))
* the brief may cite what its author read, and a depth's per-angle share fits its ceiling ([93e3ff7](http://gitea:3000/10boring/research-kit/commit/93e3ff75066b450a9d5422aefc371636c168fa62))
* the case log counts the plan as committed, so steps added while confirming are recorded ([470e593](http://gitea:3000/10boring/research-kit/commit/470e593ea8bcdd7eaf6bc924e939958413a6aa34))
* the case log names a document with a wikilink instead of the writer's own absolute path ([c179424](http://gitea:3000/10boring/research-kit/commit/c1794243ae824520fb7f5005121302068e781081))
* the case log names the research run each collected turn came from ([17dc931](http://gitea:3000/10boring/research-kit/commit/17dc931dfdfb11c795cc76ff55392aa5ca047f01))
* the case log names the turn a round belongs to, not the round number inside it ([cfa8e8e](http://gitea:3000/10boring/research-kit/commit/cfa8e8e75fdbfd211ac428f5eef959df9d0acd17))
* the caseprocess followability corpus is on the current KB model version ([fb9bc2b](http://gitea:3000/10boring/research-kit/commit/fb9bc2b950598ab56639eb31d39587c77f963cac))
* the changed-broadcast preview demo names the fixture's real case, not lakeside ([ab46c80](http://gitea:3000/10boring/research-kit/commit/ab46c80e331a67fcc8ea6ff1f6e75c70cb87e5a4))
* the claim writer may follow a derived Source to its primaries, and only reads Sources ([d176f67](http://gitea:3000/10boring/research-kit/commit/d176f679a01ac0431c652ded78d935f6c19142da))
* the claim writer records a disagreement between documents as two contradicting claims ([5a0e2e9](http://gitea:3000/10boring/research-kit/commit/5a0e2e9a6a7385481c7c9a2d7a90cb8d5bf5eca5))
* the cli import gate sees external test packages, and lets the cli name a service api ([a582da1](http://gitea:3000/10boring/research-kit/commit/a582da172f25a6130e763029913fac20222c1e8f))
* the close question says the turn sent nothing out and how many steps are still open ([3e99778](http://gitea:3000/10boring/research-kit/commit/3e997782f0f0f7d4a1c80dade542ce31ff4ad3b5))
* the confirm question points at the plan the operator has not seen ([0f8807e](http://gitea:3000/10boring/research-kit/commit/0f8807e7b4bd7f1e39f74639207d96702a41c177))
* the daemon await tests compare spend totals that now carry a per-model map ([6f9efa6](http://gitea:3000/10boring/research-kit/commit/6f9efa6936b39016a99c73758c064ca18b8a4c6e))
* the desktop client shows reconnecting instead of masking a killed daemon as connected ([c301dc7](http://gitea:3000/10boring/research-kit/commit/c301dc75cb06b28c7c678576dbb6eb98f167a1d1))
* the e2e suite sets no feature toggle, so a run exercises the shipped defaults ([007d3ce](http://gitea:3000/10boring/research-kit/commit/007d3ce12758a5c8a08b5612d43ec88b5a59ee44))
* the embedding server accepts a whole chunk, so a KB's vector leg actually completes ([d5ffd55](http://gitea:3000/10boring/research-kit/commit/d5ffd558d5887d409a76edaa3a8eb96100a346cc))
* the Evaluation prompts go back to the house style, semantic notes rather than a described reply shape ([a1ff421](http://gitea:3000/10boring/research-kit/commit/a1ff421119f5fa530c6d91b0b5671170516a0af2))
* the Evaluation prompts name the three fields they must return instead of asking for prose ([5072420](http://gitea:3000/10boring/research-kit/commit/5072420e8ed26c641608c6a039875e6524f10482))
* the fake model refuses an ambiguous script instead of picking a reply at random ([4b89cc7](http://gitea:3000/10boring/research-kit/commit/4b89cc722e35ff52a3984d13b6292630bbe017cb))
* the fetch judge reads a page's opening, and an oversized prompt no longer reads as unreachable ([2ae5c40](http://gitea:3000/10boring/research-kit/commit/2ae5c40bfa44865dd59f0ff1192d77090f01ea51))
* the fetch service's rate-limit backoff is per service, so no test races another's fetch ([0030f05](http://gitea:3000/10boring/research-kit/commit/0030f055a4179a3159963654c6a23f1a647e14cd))
* the followability cases own their corpus instead of borrowing the e2e's ([8e86fa0](http://gitea:3000/10boring/research-kit/commit/8e86fa02c64880533cf6a0a4c6126e66882de9a5))
* the followability harness resolves a Source id the way the phase does ([e331693](http://gitea:3000/10boring/research-kit/commit/e331693ab38f43b463de4395783d221fbc991926))
* the guide fixtures are built by rk, so their KBs carry a current model version ([4d66db8](http://gitea:3000/10boring/research-kit/commit/4d66db85ee2f8bbe7e873a0d82f0388392f5db0d))
* the guide fixtures carry model version 22, the one this build writes ([3d6d8c6](http://gitea:3000/10boring/research-kit/commit/3d6d8c6b1991d876b1f5e9ba64614e36c849874d))
* the guide takes a command's spelling from the table, not from a phase's name ([bae62c2](http://gitea:3000/10boring/research-kit/commit/bae62c2973e274156b7cfd8abc2e4fd1d7195ebe))
* the guide's criteria name real commands themselves, since no judge can check rk's surface ([12c9c32](http://gitea:3000/10boring/research-kit/commit/12c9c325d60281f78fdf8e96a630b9b251245fdc))
* the guide's followability cases measure prompt-following, not a matrix of case states ([0b42db6](http://gitea:3000/10boring/research-kit/commit/0b42db659c1f2b415aaf79110524819f21f8023f))
* the hypothesis status block reports what bears against a rival without deciding it ([4c411a6](http://gitea:3000/10boring/research-kit/commit/4c411a65a3dcaca480278d46de0ee7017db0a4da))
* the index and lock directories follow RK_HOME ([3ed29d6](http://gitea:3000/10boring/research-kit/commit/3ed29d636c7e1f677fe5fe963ccd07e8ce8c7914))
* the injection judge asks about text aimed at an automated reader, not every imperative sentence ([d1b2acc](http://gitea:3000/10boring/research-kit/commit/d1b2accd273945c0bbd6768c990828b2511b8a74))
* the internet-archive skill plans the named account's archive when a post's author is in question ([ed82293](http://gitea:3000/10boring/research-kit/commit/ed82293045088dc7879a7319714e87d110938545))
* the internet-archive tool's line names it as the check when a case asks whether a post came from an account it names ([07809dc](http://gitea:3000/10boring/research-kit/commit/07809dcaa299349523f3018103c5bec1622f6051))
* the interview's fallback keeps its contract, validates revises, and catches short echoes ([1ba96ce](http://gitea:3000/10boring/research-kit/commit/1ba96ce3a00de22960802d5d7f60f6299fd5e1e8))
* the judge and the readiness call apply one attribution rule from one file, and a record about another copy no longer attributes the item ([c33cad7](http://gitea:3000/10boring/research-kit/commit/c33cad712200c59caa4fe92275c780512af2d32e))
* the likelihood ceiling is an instruction review states, not a criterion it grades ([ee615a8](http://gitea:3000/10boring/research-kit/commit/ee615a864dae7f2dfb908dfc48b64d4537d82523))
* the live document flushes the operator's typing instead of discarding it on the next question ([e4bf258](http://gitea:3000/10boring/research-kit/commit/e4bf258340ad484ddd647e533f0e0d6cb5059356))
* the operator picks from fetchladder's own verdict vocabulary, not a binary can/cannot-reach ([deaaa6b](http://gitea:3000/10boring/research-kit/commit/deaaa6b722c22c282abe0cd6f83b6b9f9485c036))
* the palette no longer offers the case-context fields only a plan step supplies ([ae0e057](http://gitea:3000/10boring/research-kit/commit/ae0e0572d0550da8798dc980c42be7041bfa51ae))
* the phase question asks to mark Collection complete, and the gate says it is about to spend ([9ee312b](http://gitea:3000/10boring/research-kit/commit/9ee312b03d7e22f285ed03da24390ff7c3ba8001))
* the pivot backlog's done items move to Done, and case process stops promising an approval gate ([da5d5f3](http://gitea:3000/10boring/research-kit/commit/da5d5f31497f3bf0ff979328fc8c42b6babbe299))
* the plain-HTTP rung runs, and the fingerprint leg reports what a person can read ([181498b](http://gitea:3000/10boring/research-kit/commit/181498bf0201252d3752cc36ae5386767f64131c))
* the plan's tool binding decides what Collection dispatches, and the hold-back classifier that could overrule it is gone ([fdbab49](http://gitea:3000/10boring/research-kit/commit/fdbab49edf88b4a046150d0b83a21020c6946a66))
* the preview harness reads the real command catalog instead of a hand-typed copy ([d179025](http://gitea:3000/10boring/research-kit/commit/d179025bfc9ab3d2295219187bc201ab0e88e160))
* the re-rank server stops XS before it serves, since both do not fit in GPU memory ([37a4b5a](http://gitea:3000/10boring/research-kit/commit/37a4b5a67eaf7674895b67000afbe6a313502cde))
* the readiness call reads the knowledge base it is told it is reading ([48f9289](http://gitea:3000/10boring/research-kit/commit/48f928963368b9c208c53864275bd1de4511f06c))
* the reconnect fix now distinguishes a dead connection from a detach or a stale decode error, and never discards one another run already replaced ([911c58a](http://gitea:3000/10boring/research-kit/commit/911c58a8621271840c927afab76ded16786cb290))
* the report writer answers by directive name, not by position ([9aafa7b](http://gitea:3000/10boring/research-kit/commit/9aafa7bff2a354f81db8f5c7dc9377a959808b03))
* the report writer declares its own tier, and its prompt says what Go fills ([f7a1cce](http://gitea:3000/10boring/research-kit/commit/f7a1cce068d362a109153373c4aeac8ea8dacbcf))
* the report writer is sampled against the template's own segment count ([c9f4265](http://gitea:3000/10boring/research-kit/commit/c9f4265dfecd2bc885dd6e8aa61733c4307d7a98))
* the report writer reads the kit's own TONE.md before writing ([8dec5bc](http://gitea:3000/10boring/research-kit/commit/8dec5bc88047a0744963a39c86e8cc49f720fa57))
* the review questions are questions again ([b5181f9](http://gitea:3000/10boring/research-kit/commit/b5181f98311b5c3615bb9bb768d9c33372fcde6d))
* the rivals call says which suggestion it adopted, so sharpening one is not recorded as refusing it ([5aebf29](http://gitea:3000/10boring/research-kit/commit/5aebf29743fb3952ba5c7198eca70a5fbff954e2))
* the Source contract drops confidence_basis at model version 22, and the final offer reports only the report ([7bbe354](http://gitea:3000/10boring/research-kit/commit/7bbe35454a8ba453114fdd69e5ed04ab089b2188))
* the support log no longer carries fetched urls or the model's kb queries ([3ce6aa1](http://gitea:3000/10boring/research-kit/commit/3ce6aa182f5b04c710eda4c5116a525ca2d06695))
* the tool-turn case asks for a sentence, so it can run on the tier it measures ([5a9e6a3](http://gitea:3000/10boring/research-kit/commit/5a9e6a3c1deb4682847be6775b82fa61f43f548c))
* the TUI job rail polls, so a background job leaves it when it finishes ([a61cdeb](http://gitea:3000/10boring/research-kit/commit/a61cdeb7eb83822a4e325b8bec739379dc62d0c4))
* the unreachable-material case uses a fixture where the material really is missing ([02c634d](http://gitea:3000/10boring/research-kit/commit/02c634d4f2a26d1b03966eecdf0bb05cd28731fc))
* the Verdicts section names the hypothesis instead of its slug ([84a2c0c](http://gitea:3000/10boring/research-kit/commit/84a2c0c0421bd042d8bc37eabc84071809681e17))
* the view's prose is a readable summary, and no machine reader is given it ([4e27e85](http://gitea:3000/10boring/research-kit/commit/4e27e850f25db85ea059a38e4b764482a743ab24))
* the view's prose section is called Summary everywhere, not Finding ([6ca1aa8](http://gitea:3000/10boring/research-kit/commit/6ca1aa804b2e1e8a3686a40b7fd4221affd6c7af))
* the view's Summary is a one-line instruction measured by one criterion that mirrors it ([59705c1](http://gitea:3000/10boring/research-kit/commit/59705c1fb33f55447761b671231e3a032e4a42e1))
* the view's Summary is a text reply at tier xs, measured on three cases ([d97cbd6](http://gitea:3000/10boring/research-kit/commit/d97cbd686cded90b9e5a60c81dd5604aff4333a2))
* the writer's tone guide no longer points at a kb.md this handler has no access to ([0203498](http://gitea:3000/10boring/research-kit/commit/02034980a817c07249bb315cf83acf6bd65206e2))
* thread the declared tier through to the router ([d50ca31](http://gitea:3000/10boring/research-kit/commit/d50ca31b22fa3f87fbb50ffbdea7ef10a52510b4))
* tier xs for casename ([09d62a0](http://gitea:3000/10boring/research-kit/commit/09d62a0545f952bae524e99d16dd180030c62560))
* turn on webarchive ([2c87e20](http://gitea:3000/10boring/research-kit/commit/2c87e20c08114e69cd37eef98a855ebb16cbc8a0))
* two archived copies of one page are written under their own names, so neither overwrites the other before ingest ([01d432f](http://gitea:3000/10boring/research-kit/commit/01d432f58245628f32e2cafca00a02c039a24d46))
* validate the frame flags on the --continue path and report the ones it drops ([e52eddd](http://gitea:3000/10boring/research-kit/commit/e52eddd6622b514b9fadd4c4135c9297cfe87d15))
* web-research brings the index current once per brief, not once per angle ([3d08e3b](http://gitea:3000/10boring/research-kit/commit/3d08e3beb4b2c35a35aaf2ecae1922f928cc7036))
* web-research never refetches a URL already attempted in an earlier round ([e93ba31](http://gitea:3000/10boring/research-kit/commit/e93ba31664abaa9d8baab8cbfef686b00fd3e264))
* web-research v2 depth resolve bug and remove files-only output mode ([6d67d4d](http://gitea:3000/10boring/research-kit/commit/6d67d4d5540c42ba554c06351f5f52f9280b9104))
* what the investigation did is read from rk's collection record, never from what a source is called or says ([570ba15](http://gitea:3000/10boring/research-kit/commit/570ba154456b2356760f2986325d3f02e492ef00))
* wikilinks resolve from the containing file's directory, via one shared package ([36d458b](http://gitea:3000/10boring/research-kit/commit/36d458b2a6a0ccdb6d5a76bd70dea5fb6576346b))
* write a claim's numeric value, qualifiers, and auto-append its property to the vocabulary ([1d701eb](http://gitea:3000/10boring/research-kit/commit/1d701eb2b3f5c4c2d3d84e1d21148304466c1f44))


### Features

* --kb widens web-research retrieval, reports say their provenance, and Collection records what it took ([8646fc5](http://gitea:3000/10boring/research-kit/commit/8646fc520e28f94078540386c74b772b081849c9))
* [#222](http://gitea:3000/10boring/research-kit/issues/222) plan.md is a collection plan, and Direction reads the loopback ([10f90b7](http://gitea:3000/10boring/research-kit/commit/10f90b7001f1d34bbe2c4f3e56899e2fe6ba9619))
* [#235](http://gitea:3000/10boring/research-kit/issues/235) the workspace follows the project's files, through a daemon watch and a run-less broadcast ([50b9bec](http://gitea:3000/10boring/research-kit/commit/50b9bec2362482f14b2d92796431605128dcefab))
* [#241](http://gitea:3000/10boring/research-kit/issues/241) read_document reports and accepts a section, reviewed by Opus ([faf4931](http://gitea:3000/10boring/research-kit/commit/faf4931b455d48adaf223bd663a1ee5d966b82c5))
* a capture keeps everything the artifact says about itself, under one contract ([f2d3f37](http://gitea:3000/10boring/research-kit/commit/f2d3f377d40a560750e081ed6672c91a9f4ca8ad))
* a competing answer Direction refuses is recorded, shown on the status page, and not offered again blind ([feb4dda](http://gitea:3000/10boring/research-kit/commit/feb4dda4ed1286924cff343b2ba7d35b73ef1df1))
* a continuation refills the source ceiling and restarts its round count ([73c8b3f](http://gitea:3000/10boring/research-kit/commit/73c8b3fbc15b7a47e4f44056cbf43794eb222948))
* a daemon start sweeps rk's own home by a stated lifetime per file class ([d9a452b](http://gitea:3000/10boring/research-kit/commit/d9a452b742ebf2ae7675fecf934294052c1500ef))
* a jobs list is background work only, and a client can say it is leaving ([7afe97b](http://gitea:3000/10boring/research-kit/commit/7afe97bf32c58708f5181ad8c786787351fed93c))
* a plan step says which question it moves and which rival it collects against, and an unpursued rival is named ([98290c9](http://gitea:3000/10boring/research-kit/commit/98290c93a686a1f2ef95da5f1ebf94a2665e64e6))
* a project's schema, files and vectors are brought up to date when the daemon opens it, and a request waits ([83f66d8](http://gitea:3000/10boring/research-kit/commit/83f66d87c93c9a4bbe2ddafd044e7a8895d7b5c0))
* a prompt names the skills it may load, and load_skill offers and loads only those ([0c6774c](http://gitea:3000/10boring/research-kit/commit/0c6774c4cbbd093a9dbc68eba7ad01cfecd10b36))
* a run reuses what the project KB already holds instead of fetching it again ([db5a74d](http://gitea:3000/10boring/research-kit/commit/db5a74d845da1141807c8b1209782120d27b2abf))
* a run's summary says how much of the report came from the KB and what it cost in tool calls ([cff6943](http://gitea:3000/10boring/research-kit/commit/cff6943b2011ec1854bcb7600ea8d2e8bbb2e489))
* a second Processing pass is driven end-to-end, over what a second collection landed ([a565782](http://gitea:3000/10boring/research-kit/commit/a5657822b381659298f9845fbcb3bca5c38243cc))
* a Source records the domain its URL names, parsed in one place ([16b06c3](http://gitea:3000/10boring/research-kit/commit/16b06c31be276706cec3cc55cc5d1ed83d0a110f))
* a source records what the origin said, not only where the document came from ([949dfaf](http://gitea:3000/10boring/research-kit/commit/949dfaf8e3d4983b5e9c234502dced125e10473b))
* a tool ribbon and a project switcher in the desktop window ([2aaf60f](http://gitea:3000/10boring/research-kit/commit/2aaf60f7082b96509f37819e02c00d2c69ad4ce0))
* a view's prose section is migrated from Finding to Summary at model version 20 ([e09d0f7](http://gitea:3000/10boring/research-kit/commit/e09d0f7959185e77ecd5e8e45487765793de204e))
* a web-research run makes one pass, and its plan is reviewed as a file ([304beb6](http://gitea:3000/10boring/research-kit/commit/304beb6d347040ba59b4fff3c071d9923ba29792))
* ACH step 1 moves to Direction, which plants rivals and their disconfirming tests ([2602e0f](http://gitea:3000/10boring/research-kit/commit/2602e0faef76497057b8a806f32639cd1d95c999))
* ACP connection over net.Pipe ([4aac741](http://gitea:3000/10boring/research-kit/commit/4aac741b5a99222fc6e7d0e6899b1a1f7a28134a))
* add --depth, --case, --output and --yes to rk web-research ([7ec9835](http://gitea:3000/10boring/research-kit/commit/7ec983542ac44c1b53f7a1bdfc9a7758849cdba1))
* add a shared ask-classify LLM primitive, reused in create case and create project ([2f27899](http://gitea:3000/10boring/research-kit/commit/2f27899debf1dc548cdf08752a3375fc368a8805))
* add a thinking axis to llm.Request, deliberately unwired ([34d96fa](http://gitea:3000/10boring/research-kit/commit/34d96faa6aadf4ec845db38a6b92612eab169278))
* add bus.Decode for turning a Publish reply into a caller's type ([d2483e5](http://gitea:3000/10boring/research-kit/commit/d2483e5f305cd3d7e51a339584f6f3286fbf8210))
* add busrt, the connector from runtime.Runtime to bus.Session, with a real ask_id ([c7ce85b](http://gitea:3000/10boring/research-kit/commit/c7ce85b96fe1d9d6eb3b9f95fc6b07da21b9f718))
* add case-direction handler skeleton with case resolution ([da67548](http://gitea:3000/10boring/research-kit/commit/da67548f99dadc38cfa471220621fc1379ee77f0))
* add case-questions step to case-direction ([b43097e](http://gitea:3000/10boring/research-kit/commit/b43097eae4f13330efdcaa0b373a1481fc1a9a75))
* add daemon jobs that outlive their client, with per-view pumps and ordered replay ([a74f6e8](http://gitea:3000/10boring/research-kit/commit/a74f6e8e424d20601c76bfc285d59a259f5ca095))
* add desktop settings window ([0899593](http://gitea:3000/10boring/research-kit/commit/0899593502378ac49b88386e3802c21ae734ef43))
* add fake multiturn support to llm adapters, dedupe transcript writing, harden weak-model prompts ([434f80d](http://gitea:3000/10boring/research-kit/commit/434f80dc53d7e4bc16f2507771d6036c11330133))
* add history-aware LLM calls to runtime.LLMCaller ([82e76a7](http://gitea:3000/10boring/research-kit/commit/82e76a769ab816439426ca624e5da8a7c45dc2dd))
* add install, uninstall and update to the rk CLI ([b8d85e9](http://gitea:3000/10boring/research-kit/commit/b8d85e9abdf2b987b4aee711087e3e7826517e31))
* add live draft documents ([531359c](http://gitea:3000/10boring/research-kit/commit/531359cd40dfb437df7481e8aedca2839a6a2d9c))
* add llm.Router.Handle, its bus.Handler, additively ([3276a6a](http://gitea:3000/10boring/research-kit/commit/3276a6ae2fdf1baf9f348390bae9d33ad820753b))
* add local Ollama adapter and fixture e2e/perf test harness for rkv2 ([99e58cd](http://gitea:3000/10boring/research-kit/commit/99e58cd3f4760179c0c8ba0314749482418f71b5))
* add localllm adapter skeleton and gollama.cpp dependency ([40b794b](http://gitea:3000/10boring/research-kit/commit/40b794beeecb66de5a0922bc2cc4d7c420524ab7))
* add localllm prompt building and transcript writer ([ca51535](http://gitea:3000/10boring/research-kit/commit/ca51535e2521ff532d532f26a2c914ea8e329def))
* add plan-steps drafting and rendering to case-direction ([b0f1673](http://gitea:3000/10boring/research-kit/commit/b0f1673e97708dad9ba04f68657d8551d3023b60))
* add prior-knowledge and givens steps to case-direction ([93a1458](http://gitea:3000/10boring/research-kit/commit/93a14582384a942fc9477149b98d04f61a456fd4))
* add reusable report service ([4dc9af7](http://gitea:3000/10boring/research-kit/commit/4dc9af71d683a1514a4f2f7019f7366e46572e22))
* add rk case replan as a stub pointing at create-case, fix case-direction's already-committed message to do the same ([a566fe5](http://gitea:3000/10boring/research-kit/commit/a566fe5c21ed0dcfc3e0a8192ebc89ba30d34d3b))
* add rk daemon run/status/stop/restart, and fix a broken daemon autostart argv ([7f55904](http://gitea:3000/10boring/research-kit/commit/7f55904ccc354a866a70668ceb4cc7d445d89836))
* add rk jobs and a shared handler-to-renderer table ([9cf07c3](http://gitea:3000/10boring/research-kit/commit/9cf07c38da91299e0eddd67fb110430a4465169a))
* add rk model for one-shot tier probes, and release native resources on ctrl-c ([24cf906](http://gitea:3000/10boring/research-kit/commit/24cf906fe293d3a80773be333d7bdd5d88cb18e0))
* add self-review checks to case-direction ([1f51777](http://gitea:3000/10boring/research-kit/commit/1f517770f16899b18ba4e302d0a2cf0e76baa51f))
* add settings.Features, toggle for archive and creative-search rungs ([abc1bee](http://gitea:3000/10boring/research-kit/commit/abc1beea19886f9d56a4c8d49488b695c19eb52a))
* add show kb, project and case with a consented repair pass ([b8f005b](http://gitea:3000/10boring/research-kit/commit/b8f005bd588cf72b2c7e1621b13b84721fb5c857))
* add show status as the read-only orientation command ([af2608b](http://gitea:3000/10boring/research-kit/commit/af2608ba1ffbe4d072a71d4d46c3fee86e27a67d))
* add the canonical per-project lock ([8d57c69](http://gitea:3000/10boring/research-kit/commit/8d57c6922c71632d3c6a8787d796a70060d4af6c))
* add the create-case handler with same-request detection ([7a248dd](http://gitea:3000/10boring/research-kit/commit/7a248ddb5b69b30944baa717e8226bf63dc85d1d))
* add the create-project handler with gated, confirmed promotion ([bda8203](http://gitea:3000/10boring/research-kit/commit/bda82037c0cd7439ab5485f2ce624226773f0466))
* add the internal service bus (register, publish, panic recovery, cancellation) ([8090657](http://gitea:3000/10boring/research-kit/commit/8090657982632104bd7b62ce59aaf1ddd3fb44cb))
* add the kb service bus handler ([762ba97](http://gitea:3000/10boring/research-kit/commit/762ba9771904bc25c5a66695d4006e2ac6312f94))
* add the migrate handler driving the model-version chain ([bbb89aa](http://gitea:3000/10boring/research-kit/commit/bbb89aa56fe0d488f713286cf73cec21dcee7269))
* add the migration chain service driving the lifted upgrade package ([10162a5](http://gitea:3000/10boring/research-kit/commit/10162a5fe82c2fde6216818e355a61530069f521))
* add the per-daemon job journal with an owner-checked died sweep ([46dbcf4](http://gitea:3000/10boring/research-kit/commit/46dbcf4b87a30b855565c7f8cb2a515ca74d1f24))
* add the project service for project and case operations ([7088089](http://gitea:3000/10boring/research-kit/commit/7088089381b14afefc09ed916e770a6d45554a1c))
* add the reach handler (fetch, capture, manifest, ingest question) ([88fa86c](http://gitea:3000/10boring/research-kit/commit/88fa86c492363e91224ea7dc6dd7e3879a871e35))
* add the rk desktop workspace client, a Wails GUI over ACP ([a25d967](http://gitea:3000/10boring/research-kit/commit/a25d967a29abd9ea13cda1a53504aa67f46dd288))
* add the shared handler prelude and test harness ([d449646](http://gitea:3000/10boring/research-kit/commit/d449646b22d108396ea211a03cfecb89e0a87abb))
* add the shared model-version classifier and rebuild the write guard on it ([b0865ed](http://gitea:3000/10boring/research-kit/commit/b0865edd8b8bf1fce6f23db45ec88ae7d07e6e71))
* add web-research's frame review and correction loop ([aaaa758](http://gitea:3000/10boring/research-kit/commit/aaaa75841639140c2c7b3a549ea827da3d54d55a))
* add web-research's model-driven framing session ([f8e37f9](http://gitea:3000/10boring/research-kit/commit/f8e37f98663f3aefd98626cf07f476194c8d2c05))
* add Why drafting step to case-direction ([60fbfdc](http://gitea:3000/10boring/research-kit/commit/60fbfdc6ea8489a9a38741eef1c8bc0e2cfad29b))
* add xs/xxs LLM tiers always pinned to local Ollama models ([5f5b142](http://gitea:3000/10boring/research-kit/commit/5f5b142e088ef3f8a5ce07f2d114f2a1315b4521))
* an interactive job ends with its client, and rk continue becomes rk job attach ([32e25b6](http://gitea:3000/10boring/research-kit/commit/32e25b670350fe06a87d022700cc47508b0da502))
* an internet-archive skill the planning prompts load on demand, like any other skill ([f334c19](http://gitea:3000/10boring/research-kit/commit/f334c19059e0f2b49f7eea3402f9de7c5628b9de))
* an interview helper for operator questions, with create project as its first caller ([50e5652](http://gitea:3000/10boring/research-kit/commit/50e565270c80bb2fa6493d0a0818651fb1d04ab7))
* analysis recommends close or continue with ICD 203 confidence per question, reports are preliminary until finalised, citations dated by publication ([7e573b7](http://gitea:3000/10boring/research-kit/commit/7e573b7bb9b259537b6645f36d95dcd178c33c29))
* analysis suggests the hypotheses and applies its own re-scores; rk kb ingest takes in handed-over material ([10e189c](http://gitea:3000/10boring/research-kit/commit/10e189cde3c30bb419114d163442ddab5ae6618d))
* announce waiting and finished jobs on the next rk invocation ([3cad05c](http://gitea:3000/10boring/research-kit/commit/3cad05cc06e6422fb2fe5961a909d79fcf89e57c))
* approve claude-opus-5-5 for the large tier and the rkfa roster ([42c6804](http://gitea:3000/10boring/research-kit/commit/42c6804ec22b26c2a99a2c7950ca02d24cdc2759))
* ask for missing parameters instead of rejecting ([8c7cf38](http://gitea:3000/10boring/research-kit/commit/8c7cf388e54b473099d38b7a8080e090d15a329c))
* ask round-trip while a prompt is in flight ([27a4dd5](http://gitea:3000/10boring/research-kit/commit/27a4dd5abe44ab1791e994d3191efa7a8d5f0d6c))
* attribute log lines to their job and relay them to attached clients ([6256f8b](http://gitea:3000/10boring/research-kit/commit/6256f8b1b7b43ff82212d8efff24d118f57dbfb3))
* background jobs can fan out, wait on what they dispatched, and leave a result that survives ([9b497e5](http://gitea:3000/10boring/research-kit/commit/9b497e504653e9851fee8820f370ffd64779c97d))
* bin/rk is the rkv2 engine; the old one builds as bin/rkc ([082ce93](http://gitea:3000/10boring/research-kit/commit/082ce93eb3216b2917951d002d9037f057646eb0))
* build a fresh engine per job so rk set takes effect without a daemon restart ([8d92f1f](http://gitea:3000/10boring/research-kit/commit/8d92f1faf0c93e382a91a992e98e3a1cf51f2d02))
* carry llm history over the bus behind an opt-in envelope ([324f729](http://gitea:3000/10boring/research-kit/commit/324f72961a61246c8269ba0e8d9c67888c420e80))
* carry the submitting client's cwd onto the request and the runtime ([823fd0a](http://gitea:3000/10boring/research-kit/commit/823fd0abe1b6f120348f8cc6cd33846859258057))
* case create asks nothing, and leaves the research question to direction ([618edc1](http://gitea:3000/10boring/research-kit/commit/618edc16f5479e256c7fc3d588c532eff87d1b4c))
* case direction is the re-runnable conversation that settles a case's research question and next steps ([077519a](http://gitea:3000/10boring/research-kit/commit/077519a80499cbf7c96b563556fb9c1bc4624c08))
* case direction, create-case and web-research all interview through one engine ([d24f13e](http://gitea:3000/10boring/research-kit/commit/d24f13e3706c8417dc56118829bec2c73a0f143a))
* case-analysis catches main up on corroboration, the rq-view removal, and evidence-locator fixes ([fe79995](http://gitea:3000/10boring/research-kit/commit/fe799952da5ed93a48fd5e7c77f9bd819b63c637))
* case-analysis merges 157 commits — model dial support, followability writer measurement, embedder-outage hardening ([37d56a4](http://gitea:3000/10boring/research-kit/commit/37d56a446f8fc2492e3aac2a42b0320d974b2d96))
* casefile and planfile carry the in-place mutations Direction makes ([746e2f5](http://gitea:3000/10boring/research-kit/commit/746e2f5b5d81f308730ee027e7650faaec54677b))
* chunk to a stated policy, read by chunk range, version the pin ([a21b553](http://gitea:3000/10boring/research-kit/commit/a21b5537e481cb4da411b46b50e303a031b0a399))
* claude -p adapter ([8961a19](http://gitea:3000/10boring/research-kit/commit/8961a19809ddab16577c8a66b3d8fcee42e45d15))
* Collection is usable end to end, from operator material to a closed phase ([bbe49b1](http://gitea:3000/10boring/research-kit/commit/bbe49b1fab8281dd9692e60b0be2a08a0713516b))
* complete collection sweep and daemon recovery ([7512659](http://gitea:3000/10boring/research-kit/commit/751265992934563bd1b10f861227fffc0e5a4a00))
* create case asks for and LLM-validates the research question and name ([34994e4](http://gitea:3000/10boring/research-kit/commit/34994e48d86eb527a7e6a298030d1c9016b21ea6))
* daemon jobs get a Label and ParentID, minted through runreg ([50472e4](http://gitea:3000/10boring/research-kit/commit/50472e438849cda4215fa3249192003f0adff13a))
* desktop GUI gets in-app file editing with frontmatter toggle and locked fenced regions ([830399a](http://gitea:3000/10boring/research-kit/commit/830399a075fdc064af443c0cab9ea72fe25a958e))
* dial or autostart the daemon, spawned detached with a scrubbed environment ([c3ce0c6](http://gitea:3000/10boring/research-kit/commit/c3ce0c675013539bf5401c5adaae2f12b0096f78))
* Direction asks the drafter once more for steps on a hypothesis it planted and left without one ([5f51e64](http://gitea:3000/10boring/research-kit/commit/5f51e6469c6833a8ac279ea3ff83c9e9270d6369))
* Direction changes case.md and plan.md only through typed operations ([c3b128f](http://gitea:3000/10boring/research-kit/commit/c3b128f39a656904c4f0d1ef7719e87539844243))
* distill one source into claims in Go ([d010702](http://gitea:3000/10boring/research-kit/commit/d0107029a53b852fa74ca473da788cb2e6534cbb))
* distill resolves a project instead of taking a raw KB path ([f5c6a0a](http://gitea:3000/10boring/research-kit/commit/f5c6a0a2aaf0812950353f7a2bfd48e4d4e15979))
* distillations become records carrying their angle, slug, credibility and receipt ([131ca50](http://gitea:3000/10boring/research-kit/commit/131ca50fef0fe79613c7a1585d2f2c0e67689142))
* domain-intel gets a globe icon in the ribbon and a preview-fixture result ([ea0d911](http://gitea:3000/10boring/research-kit/commit/ea0d91125db00db1f06b24b05fe8d45f89acbc58))
* embed the KB templates in the root module for rk-pivot ([d4fb990](http://gitea:3000/10boring/research-kit/commit/d4fb990c29276a447e63693dff5af33f358c6d2a))
* embed the skills and fetch trees in cmd/rk ([4e414d8](http://gitea:3000/10boring/research-kit/commit/4e414d8f91da7ca736419d868781f496f2324d05))
* embed through the llm layer, add run-scoped hybrid retrieval and rk kb search ([08bb316](http://gitea:3000/10boring/research-kit/commit/08bb31651ffd698ec5d611809fd3edba93a31a46))
* end-to-end engine slice behind rk engine distill ([1f788d8](http://gitea:3000/10boring/research-kit/commit/1f788d86b04bd75d3cfcf69fbb64905ef406c8ca))
* Engine mints a run id and wires per-run transcript paths ([5468ebf](http://gitea:3000/10boring/research-kit/commit/5468ebf5b1ba056450891c7f5fd785c4fea19777))
* Evaluation hands its work to Analysis, and a contradiction can be settled ([7c998d6](http://gitea:3000/10boring/research-kit/commit/7c998d6543008bb7c9c7c8bbc75eac033e6b47c1))
* evaluation reports each hypothesis, the KB's contradictions and every claim's confidence ([6201587](http://gitea:3000/10boring/research-kit/commit/620158737987dcce30a45fe31cbefd95c70b9632))
* every collection tool lands in its project's KB, and a Source records what collected it ([d82f9b8](http://gitea:3000/10boring/research-kit/commit/d82f9b8c9ea0c95bec1ce70c0d41cdb89f158cd5))
* every followability case renders the live prompt and every prompt site is measured ([53d2f8b](http://gitea:3000/10boring/research-kit/commit/53d2f8b854e37e4a8a776487b4371be60ddc2c17))
* every followability case says what it costs when it fails ([2d0db3b](http://gitea:3000/10boring/research-kit/commit/2d0db3b35b458120e026b1b75f5905bc7bce2c3e))
* every markdown document in a project is searchable, in one of five scopes ([8552ee8](http://gitea:3000/10boring/research-kit/commit/8552ee833535d48193089c8d43fca100245cab49))
* every offered option is numbered, and the number answers it ([2a27f2a](http://gitea:3000/10boring/research-kit/commit/2a27f2ae87bc7f0e866fb55bc45c4b4ba75b95dd))
* every prompt rk sends is a prompt file with its own header ([248d1bd](http://gitea:3000/10boring/research-kit/commit/248d1bdb481e10b671791f0982aa5490950ecf7f))
* every run reports what it spent, in units that work across models ([b801d0e](http://gitea:3000/10boring/research-kit/commit/b801d0e60f9bcbcbcb924671d7d6547354235445))
* extract Engine.Exec and resolve every path against the submitting client's cwd ([3d25a2c](http://gitea:3000/10boring/research-kit/commit/3d25a2c05d433d103eeb69b72b566b09e63e7dc8))
* fetch accepts a caller-assigned slug and gives captures a content-type extension ([abf61fb](http://gitea:3000/10boring/research-kit/commit/abf61fbebf12b89ecb7573a439da0975785f8057))
* fetch reports its attempt trail, terminal event and best capture instead of discarding them ([49245ce](http://gitea:3000/10boring/research-kit/commit/49245ce5fc83a61db6201c53a8f960ddb6084eb1))
* fetch service logs vital rung detail through rklog ([a66a4af](http://gitea:3000/10boring/research-kit/commit/a66a4afc90fb2ebaad14a844333799a96baf84d1))
* fetch service narrates each rung attempt ([53fbe94](http://gitea:3000/10boring/research-kit/commit/53fbe94592a930fbfbcb9dba7792b26ea6f4f42c))
* fetch service with model-judged rungs ([f0bf7bb](http://gitea:3000/10boring/research-kit/commit/f0bf7bbb1e91d444b91b3b582cf08edb0341d013))
* fetch xs/xxs GGUF models during rk install ([19f0392](http://gitea:3000/10boring/research-kit/commit/19f0392d65a72a9d610b61662bdb48c7ea99ab3c))
* fetch.Service implements the async Service interface, fetches concurrently ([6e90254](http://gitea:3000/10boring/research-kit/commit/6e9025499b1e1bc32ee779170909640c1ac11458))
* files-only writes every artifact but the manifest ([927afbe](http://gitea:3000/10boring/research-kit/commit/927afbe4b28bf029a66c06a374095062d043e582))
* followability becomes an instrument, with data-driven cases, a rubric judge and site-tagged transcripts ([ca2f868](http://gitea:3000/10boring/research-kit/commit/ca2f86864146f3388dc39b4ed550f077259a95b3))
* followability replays a captured call's real contract, and every prompt is fingerprinted ([feac4b0](http://gitea:3000/10boring/research-kit/commit/feac4b058bbe74d88ee6db87ee182fd3576f3c24))
* give rkv2's ported capture package its own tools-dir tests and resolution ([4d7779e](http://gitea:3000/10boring/research-kit/commit/4d7779e555a258d616b6f2169cacc8f556624bd7))
* give the desktop GUI a professional visual pass (icons, type, phase rail, Output tab, ask modal) ([cad6a64](http://gitea:3000/10boring/research-kit/commit/cad6a64b95c1876923fbaa074b765a2af07d6555))
* Go states a goal and the model runs the operator interview ([44f84e1](http://gitea:3000/10boring/research-kit/commit/44f84e18afd253096fa23c862edd836942d809aa))
* ground case-direction's gathering session in sibling cases' status.md, not just title/phase ([9a29c5e](http://gitea:3000/10boring/research-kit/commit/9a29c5e371a551bbd9cf724319d3ebc2919054df))
* handler contract and registry ([9374689](http://gitea:3000/10boring/research-kit/commit/9374689e4da98482504f3b2d2624c95fe3ad249e))
* implement case-replan as a second gather/review/amend flow that never touches completed Plan items ([2aa1992](http://gitea:3000/10boring/research-kit/commit/2aa19922e0d1482c3e33734351e871c4a2cb5f6c))
* install-desktop auto-bumps desktop/VERSION's patch digit ([13aaccd](http://gitea:3000/10boring/research-kit/commit/13aaccdecc2918c11fe57690db3753db42b1280d))
* internet-archive finds what used to be at a URL, a section or a handle and lands it from the web archive ([c7f21e1](http://gitea:3000/10boring/research-kit/commit/c7f21e116292160acc5696cefb54dd914cb46317))
* internet-archive reads every capture in a required span of publish dates and lands only what the selector picks by its text ([d4ade77](http://gitea:3000/10boring/research-kit/commit/d4ade771e0006e29c00808f8514cc94db8dbf398))
* journal entries carry a bounded Label and ParentID ([a4749f3](http://gitea:3000/10boring/research-kit/commit/a4749f367c85b9815b4c84b7b69d8793481b3001))
* L36 plugins: rk runs command plugins over its plugin protocol and ships PhoneInfoga as the first built-in ([e980a3e](http://gitea:3000/10boring/research-kit/commit/e980a3e634a504ad27d928aad365cbf63ddac17e))
* label every followability call with its case, record tool calls, and keep each run's logs ([8218543](http://gitea:3000/10boring/research-kit/commit/8218543577e1bb23036847006f3f792f5750b2b7))
* let a handler submit a background job and keep its own resume journal ([3c543b2](http://gitea:3000/10boring/research-kit/commit/3c543b27afd01c9edc48b092e36a0133ca4c5e91))
* license the operator browser on reachability, not attendance ([5b2a153](http://gitea:3000/10boring/research-kit/commit/5b2a1531ddeb243490baae7905d491e770253d47))
* LLM debug transcript with token usage and cost ([2cfaf93](http://gitea:3000/10boring/research-kit/commit/2cfaf937c3a5efc4edadb37c821dc638692a1c28))
* LLM router with schema validation and retry ([25e6e3f](http://gitea:3000/10boring/research-kit/commit/25e6e3f5d24cefe46676b037b5f22b0f18b5865d))
* make rk a lazy client of the daemon, with model ask staying client-only ([a46f28e](http://gitea:3000/10boring/research-kit/commit/a46f28e354191f8eb57d8d27d03fa45e3c8ac860))
* make test-followability-shipped runs every case at the tier its own prompt declares ([2d9f395](http://gitea:3000/10boring/research-kit/commit/2d9f3950e26ec69793a01f267002ec02e437ce8c))
* make the URL decision register compound, cache a case's candidate documents, and add rk retry ([8b107f9](http://gitea:3000/10boring/research-kit/commit/8b107f9ad7739eabd1d1c547b19b39243772cd77))
* make web-research resumable after an interruption, separately from --continue ([f3cd076](http://gitea:3000/10boring/research-kit/commit/f3cd07683fd8fe94781300876abda745f782e233))
* mint sequential ids outside a daemon too, and exact-match job ids ([b0f041c](http://gitea:3000/10boring/research-kit/commit/b0f041c4d4934cbfe031e34b5e23b00af320fe93))
* mint unique run ids instead of the shared rk-local constant ([5726900](http://gitea:3000/10boring/research-kit/commit/57269007e14dc23eab363940c84d94e85e641b72))
* model tiers ([85e6059](http://gitea:3000/10boring/research-kit/commit/85e6059e2add387b9f52f05adede135a2e419ce9))
* model-idle is an operator setting, so the local model servers sleep when he says ([9601b2b](http://gitea:3000/10boring/research-kit/commit/9601b2b6fb523e70bbf73661841aad4946c7d8e3))
* negotiate LLM capabilities per call ([d3c5a3e](http://gitea:3000/10boring/research-kit/commit/d3c5a3ea241f337bd99b9c5b034c357da314f0e8))
* no-bearing documents get their own record, and a wall capture is distilled, lands and stays unreached ([4aaef97](http://gitea:3000/10boring/research-kit/commit/4aaef971617f03e043a4a0b7ffb095338e5ffb70))
* park questions on a routed queue that survives a detach ([85b7bfa](http://gitea:3000/10boring/research-kit/commit/85b7bfae32e2859cfac8bc249a18ee5d329b64d4))
* parse and validate web-research's frame parameters ([5dc8091](http://gitea:3000/10boring/research-kit/commit/5dc80917bb0a5d2f3e02fdf3afee6d5eb54d701c))
* pin xs/xxs model filenames, URLs, and checksums ([34e66dd](http://gitea:3000/10boring/research-kit/commit/34e66ddf2e57da70e24ecd2c41bea521994a98fd))
* PLAN.md records the depth, its caps, the ceiling and a round log, written atomically ([eaf6be1](http://gitea:3000/10boring/research-kit/commit/eaf6be1dc6bab3beef9fc1ad1711dc22fa80d948))
* Processing checks every claim against its own quotes before writing it ([9e84d55](http://gitea:3000/10boring/research-kit/commit/9e84d5519e1dffd5ab8dd57504d12e5d7d2a8f38))
* Processing retrieves the whole KB, hands off the view files, and shows what each claim rests on ([5d2ceb0](http://gitea:3000/10boring/research-kit/commit/5d2ceb0e1c2afdd08d4aaae0c2eed8d19de89dd9))
* Processing skips a view with nothing new to read against it, and --reexamine overrides the gate ([8211272](http://gitea:3000/10boring/research-kit/commit/8211272d0839168628603cbc83840ebd1ef28f27))
* processing v3, seven improvements to processing behind feature toggles ([7fcf822](http://gitea:3000/10boring/research-kit/commit/7fcf8222bdef480c2f2ca7d498861df09e2a1d51))
* processing writes, reviews and prices the claims it forms, and a claim carries what it rests on ([d0332ea](http://gitea:3000/10boring/research-kit/commit/d0332ea8de539dd53fbff370e8d2fd2ba19acb2a))
* project create asks nothing, and e2e judges results instead of mid-run behaviour ([e43acfd](http://gitea:3000/10boring/research-kit/commit/e43acfd78e28bdb45a2c9df5023230ea765aa787))
* prompt sites own their reply schema and rkfa replays the production contract ([e5189e5](http://gitea:3000/10boring/research-kit/commit/e5189e5fe0fd45a9f1834198083ad528b6eaaa56))
* prompts name tool and skill groups, and a skill declares its group ([a3851ea](http://gitea:3000/10boring/research-kit/commit/a3851eac1781c12f88b80da761c51087c5584659))
* provider-neutral LLM adapter interface ([04a8a33](http://gitea:3000/10boring/research-kit/commit/04a8a33a43782301d3c390d36498361186f448d2))
* rejected.md records both pre-fetch drops and post-fetch duplicate collapses ([62912cf](http://gitea:3000/10boring/research-kit/commit/62912cf35c9bd8cdfcb8f575ba725d0b6e296dbf))
* REPL mode ([11ba443](http://gitea:3000/10boring/research-kit/commit/11ba44355d3cc3362fd755333fdfe385c34756ce))
* replace case-direction's hand-rolled ask-loops with a model-driven gathering conversation, write-first review, and amend-in-place corrections ([384658c](http://gitea:3000/10boring/research-kit/commit/384658c7d0c362373668561662f8c84a051acc59))
* report download progress and prune superseded model files during rk install ([3d9fa21](http://gitea:3000/10boring/research-kit/commit/3d9fa21463138787851305d5ee4d43c9246fcc75))
* report each case as it finishes, and name roster rows after models ([ee3dca6](http://gitea:3000/10boring/research-kit/commit/ee3dca65cce01b738ec45344956eb070a490ecf9))
* reshape the cmd/rk seam so results, runs and questions are data ([b368b60](http://gitea:3000/10boring/research-kit/commit/b368b60f3f3c5664aa83c1dc5fb0a4882342aba2))
* rk can call an OpenAI-compatible endpoint whose capabilities the operator declares ([b49ed72](http://gitea:3000/10boring/research-kit/commit/b49ed7230ccbfe4fc50ec6dd034572215cc03654))
* rk case process --view works one view, and the workspace tree gets a context menu ([daf298e](http://gitea:3000/10boring/research-kit/commit/daf298e0c4e8224efa0eaa2bfb393b0e5ab5fc36))
* rk case process and rk case evaluation, the Processing and Evaluation phases ([282b120](http://gitea:3000/10boring/research-kit/commit/282b1206672e06686f573c6a9c94b0edc9e55c63))
* rk chat can guide an operator through a case ([479bd94](http://gitea:3000/10boring/research-kit/commit/479bd94d261b318ee9146c7c2a5c7c59da981eaf))
* rk chat talks to the knowledge base over many turns ([c33cff1](http://gitea:3000/10boring/research-kit/commit/c33cff15c1277125324817f8d97735299701458c))
* rk doctor reports install, environment and project health, repairs what is safe, and gates work on what rk cannot run without ([282512b](http://gitea:3000/10boring/research-kit/commit/282512bdc15d4c9d25d4be59cb3d7f215697bcbc))
* rk domain-intel looks a domain or IP up in the registries, DNS, CT logs and the host itself, and lands one primary Source ([3109c0b](http://gitea:3000/10boring/research-kit/commit/3109c0b259673e4f9f252817d60072492a7a3a51))
* rk gains log-screen and log-level settings, off/file-only for rkc ([abc642c](http://gitea:3000/10boring/research-kit/commit/abc642caf11ff7126418fc01618c75e17250afe7))
* rk job prune deletes finished jobs' run directories ([8380f2f](http://gitea:3000/10boring/research-kit/commit/8380f2fbb130eab05326d93b6b9d37d9ef9b41bc))
* rk kb query puts a question to the KB and gets back a short cited report ([fbadbf1](http://gitea:3000/10boring/research-kit/commit/fbadbf1445cbef57e1c49ee59350b5b4f9e1126c))
* rk model ask --thinking, and every adapter honours whether a model deliberates ([f60326c](http://gitea:3000/10boring/research-kit/commit/f60326ce28135b2411e6991ba4985705b545ae0c))
* rk model ask labels its run from the question ([8d9ff23](http://gitea:3000/10boring/research-kit/commit/8d9ff236acc300e9b841522377c29d1ea1d3a118))
* rk opsec measures what a target sees when rk touches it ([65a9202](http://gitea:3000/10boring/research-kit/commit/65a92026feb669b18b98bf746d8e493cd50077e5))
* rk render turns a markdown report into a branded PDF ([6860877](http://gitea:3000/10boring/research-kit/commit/686087786c177854a1fd6376b0050b823b7edfda))
* rk tui, a terminal front end over the same runs the cli drives ([45c7784](http://gitea:3000/10boring/research-kit/commit/45c7784560b23609c6d410c4769610577e25e534))
* rkfa sites shows what tier each prompt runs at and how well it is measured ([a625982](http://gitea:3000/10boring/research-kit/commit/a625982fa2f4c31070fd3f3b380f5d9b184cf75d))
* rklog can echo to screen when opted in, off by default ([b36dac6](http://gitea:3000/10boring/research-kit/commit/b36dac68a76fd0be11376a74a0b0f9f3293116de))
* route handler-level LLM calls through the bus via busLLM ([921751d](http://gitea:3000/10boring/research-kit/commit/921751dc8fc90ca2fcd32367ad6d7baf777617b7))
* route xs/xxs tiers through the in-process localllm adapter ([57b2aad](http://gitea:3000/10boring/research-kit/commit/57b2aad777a61d7085f67fdf9ebbeaf239217bd0))
* router dispatches handlers by name ([c5e2699](http://gitea:3000/10boring/research-kit/commit/c5e2699e09ac27a284d80a47896d4ca441cd25d7))
* run directories and model transcripts are a setting, off by default ([647381e](http://gitea:3000/10boring/research-kit/commit/647381e1881ae05f67816b54a3c6fb6413b8932b))
* run followability suites through the rk binary, with a table and run history ([0ebf2c8](http://gitea:3000/10boring/research-kit/commit/0ebf2c8d1faf985457670a53cca7daaa0bd8ff6e))
* run the daemon listener, resume background jobs on start, and say goodbye to the model daemons ([127a782](http://gitea:3000/10boring/research-kit/commit/127a782b5332759e35cc1fd2c5150db0d8f35c22))
* run the xs and xxs tiers as per-tier llama.cpp daemons over unix sockets ([8482a6a](http://gitea:3000/10boring/research-kit/commit/8482a6a593cb8eeee70bff21cb75910daac75c47))
* run web-research's frame as one session and review, not four gates ([0837957](http://gitea:3000/10boring/research-kit/commit/08379570c281cad279009ac6b3dffe40d378432e))
* run xs on gemma-4 in-process, with its chat template, per-tier limits, and 2.7x faster inference ([3d976dc](http://gitea:3000/10boring/research-kit/commit/3d976dc95c35fc2e617c361e40b1b75d9bd5f700))
* run XS/XXS tiers in-process via yzma instead of an external Ollama server ([23192f9](http://gitea:3000/10boring/research-kit/commit/23192f942df6a74205e0a11bdcdbb59c973a9761))
* runtime with Emit and Ask ([f7c06df](http://gitea:3000/10boring/research-kit/commit/f7c06df55772d9dc3da0e3f0b9fe3ce861b6e634))
* runtime.Runtime gains SetRunLabel, mirroring SetRunDir ([e73518b](http://gitea:3000/10boring/research-kit/commit/e73518b72d92a13e49cc4610dd06e2ccefda67fa))
* scan what tier each llm call site declares ([f2ca96c](http://gitea:3000/10boring/research-kit/commit/f2ca96c373ba6231696fa84c1530a498772e4e0d))
* search defaults to hybrid, and the vector build survives an interruption ([6b785dc](http://gitea:3000/10boring/research-kit/commit/6b785dc9a888be898e8d1d8de3c61fb3004939c3))
* search service ([86d1bd2](http://gitea:3000/10boring/research-kit/commit/86d1bd2ff6221d956573b5500283d3ad859eb1af))
* search.Service implements the async Service interface ([da15c77](http://gitea:3000/10boring/research-kit/commit/da15c772ca9e184ce03a2245273a3aeeb63bcf33))
* semantic retrieval works end to end and case-process retrieves spans ([abaf290](http://gitea:3000/10boring/research-kit/commit/abaf2905009271edc05fa5b296a004d2f501c206))
* serve jobs over ACP with daemon.jobs/attach/cancel and a version handshake ([6aafbe1](http://gitea:3000/10boring/research-kit/commit/6aafbe1068845f6deed81b4e22eaf23a7055a8c7))
* share UpdateEmbedSet between rk update and rk install ([5f40eaa](http://gitea:3000/10boring/research-kit/commit/5f40eaadcdb8ae8a0c57583856ccc624499aa187))
* shared async Service interface every service will implement ([b827315](http://gitea:3000/10boring/research-kit/commit/b82731521adf97c2bfc4d052160e2405960107ab))
* synthesis.md becomes a living scratchpad folded after every round ([591a46e](http://gitea:3000/10boring/research-kit/commit/591a46e75221d91775bc33a177fc9f74d65c44fb))
* the browser rungs photograph the page, and the ladder says whether to ([1088c14](http://gitea:3000/10boring/research-kit/commit/1088c148a037729228991b10a82529327c272568))
* the dedupe judgement is measured, so no prompt site is unmeasured ([22b20c3](http://gitea:3000/10boring/research-kit/commit/22b20c3b9facf57da9cfa5e43bbaa5bd7be3640e))
* the desktop client gets a phase-button strip for running a case's next step ([91e5106](http://gitea:3000/10boring/research-kit/commit/91e5106ce79ba7f1933644e2698a09b75f83451b))
* the Dissemination phase writes a case report that discloses what is unsettled ([b602c6c](http://gitea:3000/10boring/research-kit/commit/b602c6cb1fd15a848565a2b4be7504be9b2a9933))
* the drafter plans the collection, and a case's documents are searchable ([e8726dc](http://gitea:3000/10boring/research-kit/commit/e8726dc53baf703fd9e29afe7e791f09c12c831f))
* the fetch judge is measured like every other prompt, and renders from its case ([a59a5aa](http://gitea:3000/10boring/research-kit/commit/a59a5aab787c148fd25951532bd561bdff25a02d))
* the large tier defaults to claude-opus-5-5 ([4f59105](http://gitea:3000/10boring/research-kit/commit/4f59105a7d41f3075e0a77109f9cb0356a752d7d))
* the operator can report not-found, a verdict only a live browser can confirm ([3b29181](http://gitea:3000/10boring/research-kit/commit/3b291816e34deb30effdb0661753a18eb84ad31e))
* the operator interview is a conversation, not a form ([18c3caa](http://gitea:3000/10boring/research-kit/commit/18c3caa1ee4476b99ea85bdad7c1ca3dc900e412))
* the operator interview runs on Small ([fd79cc9](http://gitea:3000/10boring/research-kit/commit/fd79cc9c92692022a056aa874273f237f3d8f06b))
* the operator-browser rung asks the operator directly instead of the automated judge ([41139f3](http://gitea:3000/10boring/research-kit/commit/41139f332e6d5d6b1597c15def730d4e531876d2))
* the ribbon renders the Research catalog group ([9a5015c](http://gitea:3000/10boring/research-kit/commit/9a5015c346c9e88f20fcab0b8ed5da958a24cbfe))
* the run transcript records the whole request, effort and thinking included, not five fields of it ([69e6c2c](http://gitea:3000/10boring/research-kit/commit/69e6c2c317eb6d2cb1848d6e282dc0922bf1c1e8))
* the search prompt names its site so the followability gates can see it ([e14eb8a](http://gitea:3000/10boring/research-kit/commit/e14eb8abbad366724f5896d0966a97c5af84e7cd))
* the skeptic pass runs at the Large tier and folds its challenges into synthesis.md ([0e763be](http://gitea:3000/10boring/research-kit/commit/0e763be2921e1ba2797d3e4cc7956a77aa2c1408))
* the source ceiling is dealt round-robin across open angles, with the attempt guard counted separately ([589075e](http://gitea:3000/10boring/research-kit/commit/589075ebbf2c4b4169d7e6a04436b94441dd0832))
* the web-research result reports no-bearing sources, angle outcomes, depth and rounds ([a9bf0d8](http://gitea:3000/10boring/research-kit/commit/a9bf0d896ef67a7ffa47d39c00f11d256da720c1))
* tool support across the llm adapters, with per-tier llm config ([81d7b5f](http://gitea:3000/10boring/research-kit/commit/81d7b5ff9e27c93cb6d4751a177e5c46da28c4f7))
* tools reachable from any command, via the cwd the CLI already carries ([414f0e9](http://gitea:3000/10boring/research-kit/commit/414f0e9af96410951b100f997ccffdf2854fc138))
* true end-to-end suite driving the built rk binary against a frozen fixture corpus ([1810fa8](http://gitea:3000/10boring/research-kit/commit/1810fa884992b1f757738927f38aee67f1f5dcc0))
* web-research --continue resumes a stopped run ([a3f7bea](http://gitea:3000/10boring/research-kit/commit/a3f7bea1cac460e3b1aff5785adb08869118e8b5))
* web-research angle gate becomes a chat loop with a file-edit escape hatch ([9a25095](http://gitea:3000/10boring/research-kit/commit/9a2509522d986de14a0d0c82d43b7d419ea88a47))
* web-research angles close as answered or unanswered via per-angle gap-assessment ([24275f4](http://gitea:3000/10boring/research-kit/commit/24275f4dd27b6a20e4ba3b35025cc093060af73b))
* web-research asks case routing up front ([381d777](http://gitea:3000/10boring/research-kit/commit/381d7775d886723ee7919657c761224bf8c65b98))
* web-research asks output mode up front ([ff2f186](http://gitea:3000/10boring/research-kit/commit/ff2f186f620f319832ed827957e3f253785524a4))
* web-research emits progress before the search fan-out and the selection call ([8aa9e75](http://gitea:3000/10boring/research-kit/commit/8aa9e756bec75e697f79162a14544f67ab06e035))
* web-research fetches and distills a round's URLs concurrently via the async services ([d619fb8](http://gitea:3000/10boring/research-kit/commit/d619fb8d595a070e950c723202ef4172b480e437))
* web-research gains a --continue flag and run selection ([91c081a](http://gitea:3000/10boring/research-kit/commit/91c081ac7ad4ebc49de11a95e88d1ad4392f02e4))
* web-research handler ([b10abea](http://gitea:3000/10boring/research-kit/commit/b10abea27923f87a16e92f41682dbfd14a7f2547))
* web-research loops round-outer with angles in parallel, so no angle can starve ([53e164a](http://gitea:3000/10boring/research-kit/commit/53e164a91827a6513dc3bf756e2b64aa499999d4))
* web-research on retrieval behind settings.Features.WebResearchV2 ([56d2b4c](http://gitea:3000/10boring/research-kit/commit/56d2b4c1fb984b836887b04c8a3e9547390ff4da))
* web-research PLAN.md round-trips full run state ([c78d677](http://gitea:3000/10boring/research-kit/commit/c78d677a46feac50f925695562d1e837df446a70))
* web-research promotes cross-angle agreement and caps per-host fetches ([5b6603f](http://gitea:3000/10boring/research-kit/commit/5b6603f46c5203589e67519779a10a3e8b127b16))
* web-research report writer respects length and files-only mode ([a81b87a](http://gitea:3000/10boring/research-kit/commit/a81b87a3e7cd362a5f510c67a32b52f05f46e3ea))
* web-research reports a running retrieved-count alongside rung narration ([6781958](http://gitea:3000/10boring/research-kit/commit/678195845b78e3fe0b327d2b6557fdeacc4816aa))
* web-research saves the candidates it did not fetch, and a continuation works through them ([70a7da3](http://gitea:3000/10boring/research-kit/commit/70a7da361ce149ab8c3cad5a92b18b42ce2c051f))
* web-research searches once per angle and writes its report from retrieved passages ([821a83d](http://gitea:3000/10boring/research-kit/commit/821a83dcb77432d9e8c07da42636c7f12d7b9cf4))
* web-research skeptic pass ([49123c2](http://gitea:3000/10boring/research-kit/commit/49123c21f3f42d421dde72efd6119d12e069223c))
* web-research tracks retrieved-but-no-bearing documents separately ([f4020a8](http://gitea:3000/10boring/research-kit/commit/f4020a81bfa1e931a0151ed237eb73f48bf6f023))
* web-research writes an ingest-manifest.json the real bundle validator accepts ([346df16](http://gitea:3000/10boring/research-kit/commit/346df16990685ece009b18b9f9a340be2389ba46))
* web-research writes reach-log.jsonl verbatim and folds unreached.md from it ([d3a320e](http://gitea:3000/10boring/research-kit/commit/d3a320e3ad5501d872922900d84a1567652bc698))
* web-research writes report.md with angle-derived sections and a handler-rendered source list ([7c0a7cf](http://gitea:3000/10boring/research-kit/commit/7c0a7cf1df1ba6f90fb0b883d1ee6b3b650289e5))
* webresearch.angles forces its reply shape at the sampler ([092b00e](http://gitea:3000/10boring/research-kit/commit/092b00e7870c8c1a5c91f101fc1e3a86ea15b017))
* **webresearch:** new report skeleton, tool-readable sources, and fixed disclaimer ([b4e15f5](http://gitea:3000/10boring/research-kit/commit/b4e15f5ab4ea0a5dee5f24ab1a793bd2dc332f35))
* wire create, show and migrate commands into the rk CLI ([c6c201e](http://gitea:3000/10boring/research-kit/commit/c6c201eef982352207dd0dc3a1e8a8623bee0cd4))
* wire localllm.Adapter.Generate to gollama.cpp ([c82b57e](http://gitea:3000/10boring/research-kit/commit/c82b57e6ca9e4e3646e99e7a5038989d3e522152))
* wire protocol types and normative protocol doc ([5009a95](http://gitea:3000/10boring/research-kit/commit/5009a95600d3fbd4ac79aaa8bc564a6a8ad0412c))
* wire rk case direction to the case-direction handler ([4f01975](http://gitea:3000/10boring/research-kit/commit/4f01975129770cfab369348a1eb8b07c2392e867))
* wire rk reach <url> into the CLI ([8c9836b](http://gitea:3000/10boring/research-kit/commit/8c9836bf0e8110f1842d64ca045f016d5d99fa50))
* wire the case-direction flow end to end with approval and persistence ([72663bf](http://gitea:3000/10boring/research-kit/commit/72663bf18974240f8c9ebcc416d6c5fedb897df9))


### Performance Improvements

* raise web-research fetch concurrency from 5 to 20 ([5556166](http://gitea:3000/10boring/research-kit/commit/55561664025f9d8f3e852f216288174053c554f5))

# [0.44.0](http://gitea:3000/10boring/research-kit/compare/v0.43.4...v0.44.0) (2026-08-13)


### Features

* the KB records sources, not our own output, plus semantic retrieval ([e5cb39f](http://gitea:3000/10boring/research-kit/commit/e5cb39fd8f9ff909119209e5b760b6d29b8a9cb0))

## [0.43.4](http://gitea:3000/10boring/research-kit/compare/v0.43.3...v0.43.4) (2026-08-09)


### Bug Fixes

* reach-it asks both gates in one message, opsec-check pastes its report, and the archive rung is testable offline ([84cc363](http://gitea:3000/10boring/research-kit/commit/84cc363dee5e14dbc035231aa238a590bbcea257))

## [0.43.3](http://gitea:3000/10boring/research-kit/compare/v0.43.2...v0.43.3) (2026-08-09)


### Bug Fixes

* normalize dates in golden JSON fixtures so they don't break on the next calendar day ([485d34f](http://gitea:3000/10boring/research-kit/commit/485d34f59dbd6d689a7dfd62e391383bfcf8ff48))
* pin trafilatura to 2.1.0, avoiding a 2.2.0 extraction regression on sibling-block CMS pages ([113191a](http://gitea:3000/10boring/research-kit/commit/113191a8cb352b0711cdc4a36b6f160cce1fbcc4))
* reach stops escalating retrieved PDFs and waits for headless JS to settle before reading ([959958f](http://gitea:3000/10boring/research-kit/commit/959958f85f5965841205d749fa8e2f02fa99482e))
* skip the unwritable-marker migration test under root, which ignores permission bits ([41286b5](http://gitea:3000/10boring/research-kit/commit/41286b58ab385d08f13a5508b9f3a41510e7e724))
* sound update nudge (semver + cache refresh), rk upgrade -> rk migrate, reach --version ([0396664](http://gitea:3000/10boring/research-kit/commit/03966642651488e8b9de62af7e7d8a24d48c48bc))
* stop dropping structured-claim and document-gate fields on KB write ([84d41c9](http://gitea:3000/10boring/research-kit/commit/84d41c9343861b2ab50a8db0aba302d8693d07ae))

## [0.43.2](http://gitea:3000/10boring/research-kit/compare/v0.43.1...v0.43.2) (2026-08-08)


### Bug Fixes

* version i reach ([728edc2](http://gitea:3000/10boring/research-kit/commit/728edc29c94c806068bd528fbad506a15dd9deb6))

## [0.43.1](http://gitea:3000/10boring/research-kit/compare/v0.43.0...v0.43.1) (2026-08-08)


### Bug Fixes

* self-heal a corrupted tools/fetch venv by removing and retrying uv once ([e6faa4f](http://gitea:3000/10boring/research-kit/commit/e6faa4fd7a7e63ecff87ee04bc24f868917b3aa7))

# [0.43.0](http://gitea:3000/10boring/research-kit/compare/v0.42.0...v0.43.0) (2026-08-08)


### Bug Fixes

* fix rk calls ([cee794c](http://gitea:3000/10boring/research-kit/commit/cee794c87458033f2a0a89e5e0354e37961beb08))
* make the curl|sh installer work against real GitHub releases, and harden rk install/update ([3309bfe](http://gitea:3000/10boring/research-kit/commit/3309bfe41197b496d42d2be5fa3c5becb6ca2ecb))
* reach resolves rk from PATH and tools from HOME, and skilltest builds only into its sealed home ([bd15155](http://gitea:3000/10boring/research-kit/commit/bd151551bc555649605a5d72e8e70557a1f842e4))
* remove old caller ([b0567f4](http://gitea:3000/10boring/research-kit/commit/b0567f4e94c25bc76ac0e5e49f434fc3dc5be698))


### Features

* auto-install pdftotext, exiftool, tesseract and docker via rk install; add rk doctor ([3e397ba](http://gitea:3000/10boring/research-kit/commit/3e397ba49769d8ac1416e3244bce7f426e4cd2fe))
* register rk install's Codex skills as a local plugin, fully seal the skilltest sandbox, and retire dist-tree ([8b27840](http://gitea:3000/10boring/research-kit/commit/8b2784012bfa5a8f4ff4408a8d59504533c8b1a9))

# [0.42.0](http://gitea:3000/10boring/research-kit/compare/v0.41.1...v0.42.0) (2026-08-07)


### Bug Fixes

* derive install_test.sh's fixture platform dynamically instead of hardcoding darwin-arm64 ([d167c97](http://gitea:3000/10boring/research-kit/commit/d167c97d24d20efb68581eb032ac642d2ecc8035))
* drop redundant Write(tools/skilltest/*) permission rule ([2574f82](http://gitea:3000/10boring/research-kit/commit/2574f82e0804f878b63dbfc2cacb7083a6bc8ed8))
* gate the skilltest ci regression to main pushes, set IS_SANDBOX=1 for the root runner ([c39db15](http://gitea:3000/10boring/research-kit/commit/c39db15d50fded2e0fa558d2edc6db8776ef7a80))
* give opsec-check's headed browser panel a bespoke note instead of a blank one ([ae38a86](http://gitea:3000/10boring/research-kit/commit/ae38a869120abdd9e2dfbce8c387eb2cf534bf54))
* reach-it opt ([1a0d82e](http://gitea:3000/10boring/research-kit/commit/1a0d82e26bbb4f3040528d3f2a0c7df7e3b13f13))
* render opsec-check's full report in reach -selftest, not skill prose ([7b3e839](http://gitea:3000/10boring/research-kit/commit/7b3e8393980e6cbc73e7fe119aea1b093ee0c3f2))


### Features

* add opsec-check, an operator-invoked exposure self-test ([2bcf5c4](http://gitea:3000/10boring/research-kit/commit/2bcf5c4e36cc3a328528fd8eebcc823ac6e1b9ec))
* add partially-supported verdict token, rewrite README skill list for discoverability ([e35bb9d](http://gitea:3000/10boring/research-kit/commit/e35bb9da2be1827926b74bbb39de65cb9cac4b1f))
* curate opsec-check's rendered report to a documented field set ([266d4a3](http://gitea:3000/10boring/research-kit/commit/266d4a3fe0de60cded4b4e561be41c988dc33ab8))
* self-install rk/reach via curl|sh, with host detection and uv dependency handling ([cc24fe6](http://gitea:3000/10boring/research-kit/commit/cc24fe62a9d7006c48e0530938a2766952aee0b2))

## [0.41.1](http://gitea:3000/10boring/research-kit/compare/v0.41.0...v0.41.1) (2026-08-05)


### Bug Fixes

* base infra-failure detection on returncode, not absent score ([8551dad](http://gitea:3000/10boring/research-kit/commit/8551dadb2dc2452a8b2ab9e8053932b4a86e1a32))
* flag a failed judge call as an infra fault, not a silent generic FAIL ([e8eb8f4](http://gitea:3000/10boring/research-kit/commit/e8eb8f4cb3cb96a4209db0451dbda57b70d95369))
* isolate judge calls from the operator's real environment ([2484eba](http://gitea:3000/10boring/research-kit/commit/2484eba9da01985ae1e1471e606b6848b13e9f52))

# [0.41.0](http://gitea:3000/10boring/research-kit/compare/v0.40.0...v0.41.0) (2026-08-05)


### Bug Fixes

* fixing search model behaviour ([d51643e](http://gitea:3000/10boring/research-kit/commit/d51643ef0e506bb2d478a686d1431deceb31f102))
* scope skilltest grading to one case, tighten search final-reply rule ([81332be](http://gitea:3000/10boring/research-kit/commit/81332bec00749960f222be7ab0f2a0f2513bc60c))


### Features

* add rk project resolve-kb, a single call for KB resolution ([82d8916](http://gitea:3000/10boring/research-kit/commit/82d89166b8ece745917f5a9d586a480e32bba8bb))
* give every skill its own rk/reach launcher, drop the upward-relative hop ([528f3fa](http://gitea:3000/10boring/research-kit/commit/528f3fad3e3cdb68ed0a169613922be7a311918d))
* named skilltest environments, tighten search final-reply rule ([4b4e2b5](http://gitea:3000/10boring/research-kit/commit/4b4e2b578c521adb0fb6368b938a7b19819a66ee))
* refine skilltest model routing ([9aeb230](http://gitea:3000/10boring/research-kit/commit/9aeb230b264f4216bb4293029d8ec1f7c14b57bc))
* skilltest shell subcommand supports interactive agent sessions ([c28e955](http://gitea:3000/10boring/research-kit/commit/c28e9556bbbcbf6d20d9717999fe81005a441da3))

# [0.40.0](http://gitea:3000/10boring/research-kit/compare/v0.39.0...v0.40.0) (2026-08-03)


### Bug Fixes

* repair skilltest entrypoint ([66d2588](http://gitea:3000/10boring/research-kit/commit/66d2588817dce51d5e14063c099ff0d79e3a6242))


### Features

* an operator can correct a false wall call, and the review's defects across reach, capture, ingest and the skills are fixed ([2ac2b86](http://gitea:3000/10boring/research-kit/commit/2ac2b86e2ebc59a1b746ea9638782035051a95b5))
* improve skilltest judge diagnostics ([8accfc9](http://gitea:3000/10boring/research-kit/commit/8accfc92cfac7b9273c22c5e0a3cbce6be443d9b))
* skills are tested by running them, with graders that are themselves calibrated ([5019b31](http://gitea:3000/10boring/research-kit/commit/5019b3120241e4d5b577d1dc511a4e8aba26eb5f))

# [0.39.0](http://gitea:3000/10boring/research-kit/compare/v0.38.0...v0.39.0) (2026-07-28)


### Features

* every web-research source is fetched by reach and lands as a hashed capture, so the report cites bytes we hold ([4590db5](http://gitea:3000/10boring/research-kit/commit/4590db53beda05fc576397f59d54f0c05246b2bd))

# [0.38.0](http://gitea:3000/10boring/research-kit/compare/v0.37.0...v0.38.0) (2026-07-26)


### Features

* **case-report:** compose the Report in a pinned fresh writer subagent ([6214708](http://gitea:3000/10boring/research-kit/commit/6214708af5b068c7b49a77578a6c7e8275abdb39))

# [0.37.0](http://gitea:3000/10boring/research-kit/compare/v0.36.0...v0.37.0) (2026-07-25)


### Features

* **web-research:** compose the report in a pinned fresh writer subagent ([3a5ff34](http://gitea:3000/10boring/research-kit/commit/3a5ff34499275d1aa33cbaf10121179aa66c3d9f))

# [0.36.0](http://gitea:3000/10boring/research-kit/compare/v0.35.1...v0.36.0) (2026-07-25)


### Features

* project-level document split (status.md dashboard, log.md, v7-v8 migration) ([a68631a](http://gitea:3000/10boring/research-kit/commit/a68631abacfbd20e336aaef4149104b19f208f77))

## [0.35.1](http://gitea:3000/10boring/research-kit/compare/v0.35.0...v0.35.1) (2026-07-08)


### Bug Fixes

* keep v2-v3 migration re-runnable after step-8 failure; create-subproject honors --world/--language ([9d4488e](http://gitea:3000/10boring/research-kit/commit/9d4488e44e76f25bd93514060ed10fe5668f2791))

# [0.35.0](http://gitea:3000/10boring/research-kit/compare/v0.34.1...v0.35.0) (2026-07-08)


### Features

* harden intelligence-cycle gates, KB write integrity, and skill contracts (full-review fix batch) ([3a7f4c3](http://gitea:3000/10boring/research-kit/commit/3a7f4c315fc3758d13754994b5e3fc84d0a00cee))

## [0.34.1](http://gitea:3000/10boring/research-kit/compare/v0.34.0...v0.34.1) (2026-07-08)


### Bug Fixes

* validation errors echo the accepted enum values (no round-trip to discover valid tokens) ([630d8b4](http://gitea:3000/10boring/research-kit/commit/630d8b45e6dad0cf82f06c2d23762af4b42a0140))
* write-claim --batch is atomic (validate whole batch before writing, no partial-write duplicates on re-run) ([4ba942c](http://gitea:3000/10boring/research-kit/commit/4ba942c84f203493edf81f06c8086af5c215e9c5))

# [0.34.0](http://gitea:3000/10boring/research-kit/compare/v0.33.1...v0.34.0) (2026-07-06)


### Bug Fixes

* case position verifies a report draft exists before reporting the cycle complete ([e1f23a2](http://gitea:3000/10boring/research-kit/commit/e1f23a2ee85f66122164106e72ae47d18daa6da9))


### Features

* document-class ownership model, KB v7 (case split into case.md/plan.md/log.md/_meta, marker + vocabulary move, dated drafts, change detection) ([a016760](http://gitea:3000/10boring/research-kit/commit/a0167601a280d5714503d7650c6d52acf114553b))

## [0.33.1](http://gitea:3000/10boring/research-kit/compare/v0.33.0...v0.33.1) (2026-07-05)


### Bug Fixes

* rename internal "landing note" term to project home page ([1a8b5d3](http://gitea:3000/10boring/research-kit/commit/1a8b5d3987af56e6b5ab118aac260ef2a4b962f8))

# [0.33.0](http://gitea:3000/10boring/research-kit/compare/v0.32.1...v0.33.0) (2026-07-05)


### Features

* project landing note (rk project render + skill hooks) ([dce2f6e](http://gitea:3000/10boring/research-kit/commit/dce2f6e08e074429cbac76a8944624309ce7c159))

## [0.32.1](http://gitea:3000/10boring/research-kit/compare/v0.32.0...v0.32.1) (2026-07-05)


### Bug Fixes

* log Evaluation only after the status snapshot is written ([f07d31c](http://gitea:3000/10boring/research-kit/commit/f07d31ce4266db6d938b063120703f3214716e42))

# [0.32.0](http://gitea:3000/10boring/research-kit/compare/v0.31.0...v0.32.0) (2026-07-04)


### Features

* skeptical coordinator + front-door hardening (rule 10, stale signal) ([d48db34](http://gitea:3000/10boring/research-kit/commit/d48db34c9fa1970704c6103b9d12f4bc9e83dedd))

# [0.31.0](http://gitea:3000/10boring/research-kit/compare/v0.30.2...v0.31.0) (2026-07-04)


### Features

* rk integrity check + repair, log slot allowlist, rk launcher collapse ([09c1b55](http://gitea:3000/10boring/research-kit/commit/09c1b55f770942f1839bee2b2ca49e73401b6a90))

## [0.30.2](http://gitea:3000/10boring/research-kit/compare/v0.30.1...v0.30.2) (2026-07-04)


### Bug Fixes

* make Telegram release failures double-ping with a run link, successes single-ping ([c3a1ba9](http://gitea:3000/10boring/research-kit/commit/c3a1ba939fc2802dbd0a088640281ee43280ae86))

## [0.30.1](http://gitea:3000/10boring/research-kit/compare/v0.30.0...v0.30.1) (2026-07-04)


### Bug Fixes

* precondition for upgrade ([cad9281](http://gitea:3000/10boring/research-kit/commit/cad92812a70ec43250f64819052718a68549c094))
* trim knowledge-graph-upgrade SKILL.md under the 5000-token skill-lint budget ([0fd1a14](http://gitea:3000/10boring/research-kit/commit/0fd1a14fa01c24050a22376b38920bda5bd25d79))

# [0.30.0](http://gitea:3000/10boring/research-kit/compare/v0.29.5...v0.30.0) (2026-07-04)


### Features

* improved ux ([bd345b1](http://gitea:3000/10boring/research-kit/commit/bd345b165ec1d2a2b8216f1600c5401c93db7d76))

## [0.29.5](http://gitea:3000/10boring/research-kit/compare/v0.29.4...v0.29.5) (2026-07-04)


### Bug Fixes

* review findings — fidelity persists to sources, sensitivity carried in templated reports, gate and contract docs aligned ([1af3154](http://gitea:3000/10boring/research-kit/commit/1af3154b872bd07311a3b0665226f30c50afb5eb))

## [0.29.4](http://gitea:3000/10boring/research-kit/compare/v0.29.3...v0.29.4) (2026-07-04)


### Bug Fixes

* givens carry fidelity grade, ACH calibrates variance by it, reports require a sensitivity section ([df3857b](http://gitea:3000/10boring/research-kit/commit/df3857be21a77b331a6d17313a50d9b7beb62503))

## [0.29.3](http://gitea:3000/10boring/research-kit/compare/v0.29.2...v0.29.3) (2026-07-04)


### Bug Fixes

* later-phase plan steps no longer pin rk case position at collection ([5806fb8](http://gitea:3000/10boring/research-kit/commit/5806fb87542516fbfce7752cf2395d2306e9f390))

## [0.29.2](http://gitea:3000/10boring/research-kit/compare/v0.29.1...v0.29.2) (2026-07-03)


### Bug Fixes

* store source + backlog and doc of spike ([8e76f1e](http://gitea:3000/10boring/research-kit/commit/8e76f1ee47465ee3bbf36ba483930a199fdf9eb7))

## [0.29.1](http://gitea:3000/10boring/research-kit/compare/v0.29.0...v0.29.1) (2026-07-03)


### Bug Fixes

* capture truth, universal landing, and operator givens (coordinator hardening phase 2) ([b4f6a49](http://gitea:3000/10boring/research-kit/commit/b4f6a4955174abbc489308b92bbfd7d6da7d6b99))

# [0.29.0](http://gitea:3000/10boring/research-kit/compare/v0.28.1...v0.29.0) (2026-07-03)


### Bug Fixes

* seed source/claim slug from name (canonical), add --slug pin ([2c41ae7](http://gitea:3000/10boring/research-kit/commit/2c41ae70938404285833e0d8a012f42cf4c40172))


### Features

* coordinator-hardening phase 1 - engine-enforced capture_status, verdicts store, machine report gate ([627045f](http://gitea:3000/10boring/research-kit/commit/627045f1c179884f310b310331572874a618f9f6))

## [0.28.1](http://gitea:3000/10boring/research-kit/compare/v0.28.0...v0.28.1) (2026-07-02)


### Bug Fixes

* pin hard cycle steps to a durable Opus-class model (Codex-aware), never a promo model like Fable ([ebe316b](http://gitea:3000/10boring/research-kit/commit/ebe316ba667a47e0822cad59ee6e544b8fe5fd2c))
* skill-usage trace logs only research-kit skills, not every skill in the session ([3c142de](http://gitea:3000/10boring/research-kit/commit/3c142de965e834a2bff6d612c4894ec9afb55810))

# [0.28.0](http://gitea:3000/10boring/research-kit/compare/v0.27.0...v0.28.0) (2026-07-02)


### Bug Fixes

* add rk kb amend-claim so a claim's body can be corrected in place ([5fa6122](http://gitea:3000/10boring/research-kit/commit/5fa6122c83dbea20a017d10aa73301333cb1d710))
* case position no longer stuck on collection when only Processing plan steps remain ([cd6f11a](http://gitea:3000/10boring/research-kit/commit/cd6f11a0876e721886deb14396a3b612cd76576e))
* case-direction offers acceptance criteria on replan and puts the decision in the user's hands ([075cf31](http://gitea:3000/10boring/research-kit/commit/075cf310235237977e76f103b9f6649193b653fc))


### Features

* search via rk (FTS5 kb search command + search skill) ([c74fe07](http://gitea:3000/10boring/research-kit/commit/c74fe07cb28c60c2c93aba65ab462fd53bfb3580))

# [0.27.0](http://gitea:3000/10boring/research-kit/compare/v0.26.0...v0.27.0) (2026-07-02)


### Features

* rkc engine logging (INFO level, RK_LOG_LEVEL threshold, event instrumentation) ([f123119](http://gitea:3000/10boring/research-kit/commit/f1231198a50f44fc767b645ca6ba8b5da3947a1f))

# [0.26.0](http://gitea:3000/10boring/research-kit/compare/v0.25.1...v0.26.0) (2026-07-02)


### Bug Fixes

* rkc failed commands exit non-zero and normalize ledger unexamined arg order ([19170a6](http://gitea:3000/10boring/research-kit/commit/19170a6af2cd7a64dfe08c674919a0069f473e8c))


### Features

* RQ terms-of-reference (acceptance criteria + candidate scorecard) ([c9c0c11](http://gitea:3000/10boring/research-kit/commit/c9c0c111315996ef26f66e978ee4722619b757e1))
* serve kb contradictions/gaps/index/reindex --check from the index with scan fallback ([1c9a569](http://gitea:3000/10boring/research-kit/commit/1c9a569ee7f5f81a1fe82800f8ec43f4d5fdb172))

## [0.25.1](http://gitea:3000/10boring/research-kit/compare/v0.25.0...v0.25.1) (2026-07-02)


### Bug Fixes

* notify telegram on release success or pipeline failure ([6e5842a](http://gitea:3000/10boring/research-kit/commit/6e5842a869076f5d5a40eae02b1188c252de1888))
* stop shipping repo-authoring CLAUDE.md/AGENTS.md in the published dist ([05d6831](http://gitea:3000/10boring/research-kit/commit/05d68318185c80917283866d7ff1da5f7a6d6463))

# [0.25.0](http://gitea:3000/10boring/research-kit/compare/v0.24.0...v0.25.0) (2026-07-02)


### Features

* basic db support ([476deea](http://gitea:3000/10boring/research-kit/commit/476deeaf54a167b4e1e5dfaf295d8e7d2660559f))

# [0.24.0](http://gitea:3000/10boring/research-kit/compare/v0.23.0...v0.24.0) (2026-07-01)


### Bug Fixes

* build error ([702bd7b](http://gitea:3000/10boring/research-kit/commit/702bd7b0dfad2d767c9ff6163056f97fefdcb678))


### Features

* rk case finding-sources plus fresh-subagent case-analysis (ACH judge + writer, no challenger) ([a6d087c](http://gitea:3000/10boring/research-kit/commit/a6d087c21496d0981cf37beccebba5d753f62f00))

# [0.23.0](http://gitea:3000/10boring/research-kit/compare/v0.22.0...v0.23.0) (2026-07-01)


### Features

* guide is the single case-next gate; no phase auto-advances the cycle ([cb0b7a0](http://gitea:3000/10boring/research-kit/commit/cb0b7a0331b17a5067c4c318f47f0f68aed3ea9f))
* report-readiness gate stops dissemination on an unready assessment ([dd1e0a3](http://gitea:3000/10boring/research-kit/commit/dd1e0a30a141c26138f0d9ec5b0e5aa350325ecd))

# [0.22.0](http://gitea:3000/10boring/research-kit/compare/v0.21.0...v0.22.0) (2026-07-01)


### Bug Fixes

* case-status reports evidential state with verdict read-only; case-process writes descriptive Findings only ([4fd6c5b](http://gitea:3000/10boring/research-kit/commit/4fd6c5bfc813aeab3d7853804e1507be869927e2))
* case-views renders the verdict read-only from the Assessment, never authors it ([94effa4](http://gitea:3000/10boring/research-kit/commit/94effa44941ae722b0ed97c4ff7fffb0a7aac59c))
* compact knowledge-graph data-model section under the skill-lint token budget ([f5b4df9](http://gitea:3000/10boring/research-kit/commit/f5b4df9c1b0f190ad25421eea9b0f6fa2785a5f6))
* conform skill intros to the contract (phases not gates; correct Does/Must-not/operator roles; DATA-MODEL path); fold in skill-review fixes ([fc9a24d](http://gitea:3000/10boring/research-kit/commit/fc9a24d1fad2ea78686d8a238f2b4d53db37314c))
* contract-review findings (Direction/Collection boundaries, DATA-MODEL verdict+view-kinds, case/report template); drop stale consequences note ([a4d6bc9](http://gitea:3000/10boring/research-kit/commit/a4d6bc91f03b238c25dbcb208c5f14ca8f209e1b))
* drop the invented compound "cross-Finding" (use "synthesis across the Findings"); fix cross-cutting in DATA-MODEL ([e35ae12](http://gitea:3000/10boring/research-kit/commit/e35ae12242e2ffad279901bd9a7ca0ef0119bd19))
* guide reads "status" not Assessment at Evaluation, drop dangling backlog ref; contract stage→phase ([946a818](http://gitea:3000/10boring/research-kit/commit/946a81870a627bf847247bce444831bfe7624c69))
* ingest-bundle dedupes the report by run id (idempotent re-runs); skip a missing companion note ([6654667](http://gitea:3000/10boring/research-kit/commit/66546670072565137a48350dd85d5320819bd379))
* project DATA-MODEL path; case drops Goals residue (research question, not goal) ([4951633](http://gitea:3000/10boring/research-kit/commit/495163306e97d80ec484b0ea2a51cf3db550c7be))
* skill-review findings on the bundle ingestion (dedupe branch executable, reach-it capture, basis rule, capture_status reaches authoring) ([274d2d0](http://gitea:3000/10boring/research-kit/commit/274d2d06db88ed68143788cd98491f2a354f3135))
* storm takeaway into web research ([9e8538a](http://gitea:3000/10boring/research-kit/commit/9e8538ab8cb45c02b60bfc39d2b5545743ff8f1e))
* terms/wording conformance — per-question bottom line, cross-cutting, Reporter→Dissemination, em dashes→ASCII ([9e12dc1](http://gitea:3000/10boring/research-kit/commit/9e12dc1a7ab9ea05ed38d19619583e6b88903d5f))
* use "phase" not "stage" for the defined cycle phases across the case skills and guide ([6d55dba](http://gitea:3000/10boring/research-kit/commit/6d55dba6fd84399e16bdff086d6e45f81dd96873))
* use the defined Term "case question" (per-case-question) in skills and the contract, not "per-question" ([dfa37ac](http://gitea:3000/10boring/research-kit/commit/dfa37ac265303442193921325c644791d5b6f238))
* WriteSource surfaces archive copy failures so no Source claims a missing asset ([8a28969](http://gitea:3000/10boring/research-kit/commit/8a28969b77b9b0d1177e69bd33365f3f5719ed38))


### Features

* canonical URL normalization for source dedupe ([a680fc9](http://gitea:3000/10boring/research-kit/commit/a680fc9c34924c9154a7db4c8082a15902fc3002))
* case-analysis authors hypothesis verdicts; rename Verdict section to Report readiness ([eb288c1](http://gitea:3000/10boring/research-kit/commit/eb288c116b489d7cdfc6db6b84efb82c96fcf7f9))
* case-collection lands web-research bundles via the ingestor, source-only ([c5ba79d](http://gitea:3000/10boring/research-kit/commit/c5ba79df322c9bf8bf43fd3bcf1e1b3e40f750dd))
* case-process honors capture_status when forming claims ([ffcd41c](http://gitea:3000/10boring/research-kit/commit/ffcd41c659a370f7e1614846607b52d727fd92fc))
* drop Goals from the case skills; case-plan points verdict to Analysis; case-report reads Report readiness and carries verdicts ([4dc261d](http://gitea:3000/10boring/research-kit/commit/4dc261d80887f45f91d724de0a4e4dd5c783931c))
* find-source returns all matched keys + stored dedupe facts; ingestor branches from one call ([7ed51d2](http://gitea:3000/10boring/research-kit/commit/7ed51d20ba985c89d9ac0031cae3f99d52814758))
* knowledge-graph ingests research-run bundles source-only, with find-source dedupe ([a90b5ca](http://gitea:3000/10boring/research-kit/commit/a90b5caed2e0cb41bf0f12c6eab19ba15f0083f2))
* rk case verdict reads a hypothesis verdict from the Assessment ([b341427](http://gitea:3000/10boring/research-kit/commit/b341427dd5bf5847b6d952d6ff61630c3d0c364f))
* rk kb find-source dedupe lookup + write-source stores source_url_normalized ([8b7ea13](http://gitea:3000/10boring/research-kit/commit/8b7ea13c2361c7699e0464b769e73079539b65c9))
* rk kb ingest-bundle engine orchestrator (source-only, deduped) ([d4199a2](http://gitea:3000/10boring/research-kit/commit/d4199a293ba9f34f3394c977d6fb414e4d8a9d68))
* rk upgrade v4-v5 migrates cases (rq→cq, drop Goals) at project scope; bump model_version to 5 ([acc7454](http://gitea:3000/10boring/research-kit/commit/acc7454ad64346afbb2c7f7e23409d9a767435c1))
* route kb.md through rk write-config and gate the kb/ guard on the .knowledge-graph marker ([3092f91](http://gitea:3000/10boring/research-kit/commit/3092f9119d9da590b8edaf2e5a2b783ee5660cc3))
* validate capture_status (full|partial) on Source frontmatter ([e254cb0](http://gitea:3000/10boring/research-kit/commit/e254cb09d774f413db4f8aa1f864170db51afafb))
* web-research emits a research-run bundle instead of writing the KB ([3470c1d](http://gitea:3000/10boring/research-kit/commit/3470c1da7dc7484c2f3bdd254c6be332cc95cc78))
* wire rk kb ingest-bundle command ([25c8b1a](http://gitea:3000/10boring/research-kit/commit/25c8b1a5269db071cd4fe64a13bbc5add62a124b))

# [0.21.0](http://gitea:3000/10boring/research-kit/compare/v0.20.1...v0.21.0) (2026-06-30)


### Bug Fixes

* keep log entries out of the generated Materials fence in case.md ([d5796c8](http://gitea:3000/10boring/research-kit/commit/d5796c84875e5264040b6048852eb2d4e6e54390))


### Features

* plan-stage competing hypotheses as always-resolved views to break recognition bias ([63cf01a](http://gitea:3000/10boring/research-kit/commit/63cf01a8b1168706a7c35b2f8359a6b4a11ee3f8))

## [0.20.1](http://gitea:3000/10boring/research-kit/compare/v0.20.0...v0.20.1) (2026-06-30)


### Bug Fixes

* codex marketplace was not visible ([bd84f37](http://gitea:3000/10boring/research-kit/commit/bd84f379b61bcb437de14ac9e396a83207feaaf3))

# [0.20.0](http://gitea:3000/10boring/research-kit/compare/v0.19.0...v0.20.0) (2026-06-30)


### Bug Fixes

* keep knowledge-graph Source section under the skill-lint token gate ([e13e8bf](http://gitea:3000/10boring/research-kit/commit/e13e8bf79a11f0073e93759bfb45a3de4ca21e3d))
* lead Source frontmatter with label (slug seed), mark id as derived ([0e351fd](http://gitea:3000/10boring/research-kit/commit/0e351fd9fcc24ab0554067aa779169683d1a8571))
* reject source write with empty label instead of degenerate -2 slug ([d8faea5](http://gitea:3000/10boring/research-kit/commit/d8faea5d079b0704de1e32fc13b513d3f1c42575))


### Features

* codex port (metadata, dist, apply_patch hook guard, portable skill refs, runtime-aware opsec) ([b88fdf7](http://gitea:3000/10boring/research-kit/commit/b88fdf720c139fe8bb7fd27a48cb6e8497ad1e83))

# [0.19.0](http://gitea:3000/10boring/research-kit/compare/v0.18.0...v0.19.0) (2026-06-30)


### Features

* uniform source schema, seat-enforced KB writes, analysis challenger gate ([3134b45](http://gitea:3000/10boring/research-kit/commit/3134b458353cb9d3e90e0510e703e57d511f80c5))

# [0.18.0](http://gitea:3000/10boring/research-kit/compare/v0.17.1...v0.18.0) (2026-06-29)


### Features

* skill-usage trace via plugin hooks + rkc log hook/bundle ([9c64498](http://gitea:3000/10boring/research-kit/commit/9c6449833a5106045fe8ccbdef5d3775dce70560))

## [0.17.1](http://gitea:3000/10boring/research-kit/compare/v0.17.0...v0.17.1) (2026-06-29)


### Bug Fixes

* **web-research:** enforce reach-it per blocked source; forbid 'covered' label on unread sources ([6c1d62b](http://gitea:3000/10boring/research-kit/commit/6c1d62b96a21f16cc73633270aca9c76d716a593))

# [0.17.0](http://gitea:3000/10boring/research-kit/compare/v0.16.2...v0.17.0) (2026-06-29)


### Bug Fixes

* report/assessment apply TONE voice + KB language; ship and surface the PDF renderer ([7a51057](http://gitea:3000/10boring/research-kit/commit/7a5105766d9914a21d4241618e88001a0aca9bc2))


### Features

* ACH analysis, claim re-scoring, and report-readiness verdict loop ([98dba9c](http://gitea:3000/10boring/research-kit/commit/98dba9c7d5e02d320553d4e9d8042c0e8550be35))
* **opsec:** unified opsec layer across the kit (truth, gating, hygiene) ([ddf3ecc](http://gitea:3000/10boring/research-kit/commit/ddf3ecc7e0cbcfbfb5a2650e3031fbe012541bb7))

## [0.16.2](http://gitea:3000/10boring/research-kit/compare/v0.16.1...v0.16.2) (2026-06-29)


### Bug Fixes

* **case-views:** RQ views populate via bearing, not entity anchors ([0cd7233](http://gitea:3000/10boring/research-kit/commit/0cd7233047c8b2d90a119076d61e7d30d728fb65))
* **reach-it:** render rung-6 input path as a clickable link ([ddd7cd7](http://gitea:3000/10boring/research-kit/commit/ddd7cd780b02030da4d5babe8005f1d5b71510a8))
* remove mid-description colons that broke strict YAML parsing ([75ed874](http://gitea:3000/10boring/research-kit/commit/75ed8748038ec7a17afd77b5ef168d993d0929c8))

## [0.16.1](http://gitea:3000/10boring/research-kit/compare/v0.16.0...v0.16.1) (2026-06-29)


### Bug Fixes

* **views:** distinguish unbound claims from empty KB in RQ view ([b13b10e](http://gitea:3000/10boring/research-kit/commit/b13b10ed31f686c0741f16ad8473c558ad2b0a48))

# [0.16.0](http://gitea:3000/10boring/research-kit/compare/v0.15.0...v0.16.0) (2026-06-29)


### Features

* **reach-it:** single-URL fetch escalation skill + web-research delegation ([61ba3fe](http://gitea:3000/10boring/research-kit/commit/61ba3fea209d23632db4d0d8963e02a8aeec9fad))

# [0.15.0](http://gitea:3000/10boring/research-kit/compare/v0.14.0...v0.15.0) (2026-06-29)


### Bug Fixes

* **case-report:** offer to render the report to a branded deliverable via tools/render ([90ce7e0](http://gitea:3000/10boring/research-kit/commit/90ce7e03e248df52b97394905d16ba75abe08285))


### Features

* add tools/render, a dockerized branded report generator (pandoc + Eisvogel, per-customer themes) ([3d18c6b](http://gitea:3000/10boring/research-kit/commit/3d18c6b42d9734e55440ff6cd26d9442e9ccf316))

# [0.14.0](http://gitea:3000/10boring/research-kit/compare/v0.13.2...v0.14.0) (2026-06-29)


### Bug Fixes

* guard KB writes on pre-v3 model and gate case-collection web egress ([f6ba9c4](http://gitea:3000/10boring/research-kit/commit/f6ba9c40794449f3d0a2ce6b70a3ef1e54979b1d))
* **knowledge-graph:** resolve exiftool via osint container before degrading ([fad6bed](http://gitea:3000/10boring/research-kit/commit/fad6bedb65f490608947fcd48b010ac0b403a8dc))
* model version control ([58ffe42](http://gitea:3000/10boring/research-kit/commit/58ffe429d064e63fc3499847398b7e824aaef221))
* **rk:** future-proof the write guard against a single CurrentModelVersion ([43701b5](http://gitea:3000/10boring/research-kit/commit/43701b571d76748a97adc3ddfd6e90e868d19303))


### Features

* right-hand intelligence cycle (Findings, rk-built views, bearing, examination ledger, sub-RQ hierarchy, Analysis/Report stages) ([b3c5f9f](http://gitea:3000/10boring/research-kit/commit/b3c5f9f735f9ce617f5310e8498cca7aba08fb04))

## [0.13.2](http://gitea:3000/10boring/research-kit/compare/v0.13.1...v0.13.2) (2026-06-28)


### Bug Fixes

* publish LICENSE in the distributed plugin ([0d35ffb](http://gitea:3000/10boring/research-kit/commit/0d35ffb431a91651fd9cfe329b928be8058ae4bb))

## [0.13.1](http://gitea:3000/10boring/research-kit/compare/v0.13.0...v0.13.1) (2026-06-28)


### Bug Fixes

* force build ([750b1ad](http://gitea:3000/10boring/research-kit/commit/750b1ad65024969a9c2b24acc669e65bc1ef7bcf))

# [0.13.0](http://gitea:3000/10boring/research-kit/compare/v0.12.2...v0.13.0) (2026-06-28)


### Bug Fixes

* **case-plan:** add self-review, turn-sizing and no-vague-steps rules ([bc5473e](http://gitea:3000/10boring/research-kit/commit/bc5473ee73a002b3bfad812dbe7afd027ef2b255))
* scrub real email and handle from osint examples ([bba3d03](http://gitea:3000/10boring/research-kit/commit/bba3d038ba86fbc490c2e5c04229927b7939684c))


### Features

* v3 KB file-storage layout ([23838f3](http://gitea:3000/10boring/research-kit/commit/23838f352c583e5f549d8acb626ed620f48628cf))

## [0.12.2](http://gitea:3000/10boring/research-kit/compare/v0.12.1...v0.12.2) (2026-06-28)


### Bug Fixes

* log version in each entry ([f216ddd](http://gitea:3000/10boring/research-kit/commit/f216dddc4573bce8037456947b72f3952b7697ef))

## [0.12.1](http://gitea:3000/10boring/research-kit/compare/v0.12.0...v0.12.1) (2026-06-28)


### Bug Fixes

* better logging ([46f65d5](http://gitea:3000/10boring/research-kit/commit/46f65d5336be627f8caf2a0e3ae5e8df70fbeac4))
* error handling ([3282b09](http://gitea:3000/10boring/research-kit/commit/3282b09b4e9d79ed0cc5bc5932bfff56e0c09930))

# [0.12.0](http://gitea:3000/10boring/research-kit/compare/v0.11.2...v0.12.0) (2026-06-27)


### Bug Fixes

* build error ([f621ca3](http://gitea:3000/10boring/research-kit/commit/f621ca39b78390ebea9c87d1b0871de6afb84b8e))
* test error ([ee41ab2](http://gitea:3000/10boring/research-kit/commit/ee41ab2e0ceb36c37f77c306e710a8cebb3c74cd))
* to sron escape rule ([4ae39de](http://gitea:3000/10boring/research-kit/commit/4ae39de731865734b4095223c938646de95d7d19))


### Features

* rk in go (rkc) ([e583527](http://gitea:3000/10boring/research-kit/commit/e583527eff054ef5695af1af54f94c276d8c0636))

## [0.11.2](http://gitea:3000/10boring/research-kit/compare/v0.11.1...v0.11.2) (2026-06-27)


### Bug Fixes

* better project/case start ([29ad996](http://gitea:3000/10boring/research-kit/commit/29ad9968e915e8b4cee0ccf32f1dbcae877403c2))

## [0.11.1](http://gitea:3000/10boring/research-kit/compare/v0.11.0...v0.11.1) (2026-06-27)


### Bug Fixes

* no more gork, and a laucher ([15581e2](http://gitea:3000/10boring/research-kit/commit/15581e2a96fd227cd74e42ebd5c6a5afd2cd80e6))

# [0.11.0](http://gitea:3000/10boring/research-kit/compare/v0.10.0...v0.11.0) (2026-06-27)


### Features

* bump version for new delivery system ([68ffd1f](http://gitea:3000/10boring/research-kit/commit/68ffd1f7309b4a5c5e3189cc3a0eeeef3d74875c))

# Changelog

## v0.10.0 (2026-06-26)

## [0.10.0](https://github.com/jorgen-k/research-kit/compare/v0.9.0...v0.10.0) (2026-06-26)


### Features

* sharpen driver-seat contract + demo-surfaced fixes ([1eab823](https://github.com/jorgen-k/research-kit/commit/1eab823a1cf3430f144a1ac4da80817259bb66b4))


### Bug Fixes

* **osint:** rebuild image when the baked-in build context changed ([04a9e39](https://github.com/jorgen-k/research-kit/commit/04a9e3985e0c9b09e221955b8698189edb4a78c0))




## v0.9.0 (2026-06-26)

## [0.9.0](https://github.com/jorgen-k/research-kit/compare/v0.8.1...v0.9.0) (2026-06-26)


### Features

* **rk:** uniform what/where write reporting via receipts and the CLI link seam ([1973404](https://github.com/jorgen-k/research-kit/commit/19734047e6bb6e9e0b1ba9bd1dde8973014727ca))


### Code Refactoring

* **rk:** consolidate Python into lib/rk package + single parser, all skills call rk ([7dbcae8](https://github.com/jorgen-k/research-kit/commit/7dbcae8cef2eaf8a65776f5e78b49404a19b1d33))




## v0.8.1 (2026-06-26)

### [0.8.1](https://github.com/jorgen-k/research-kit/compare/v0.8.0...v0.8.1) (2026-06-26)


### Bug Fixes

* **case-plan:** gate Goals/RQ/Plan behind user approval before writing ([c684b5e](https://github.com/jorgen-k/research-kit/commit/c684b5ee70a165b780fa40599e303303cd2d3948))
* rename case-report to case-process and make Feedback an explicit stop ([253292b](https://github.com/jorgen-k/research-kit/commit/253292bb40f4cbef39d68ca91d98f626364c0748))




## v0.8.0 (2026-06-26)

## [0.8.0](https://github.com/jorgen-k/research-kit/compare/v0.7.0...v0.8.0) (2026-06-26)


### Features

* **case-collection:** Collection stage lands Sources into the project KB ([407ad55](https://github.com/jorgen-k/research-kit/commit/407ad55cdba94b8ce283aa9aad5395a344a9b6b6))
* **case-plan:** Direction-gate planning skill + 5-section case.md + live feedback signal ([b90d65e](https://github.com/jorgen-k/research-kit/commit/b90d65e2a716d43a1f9e7153adb62411639d7598))
* **case-report:** combined Processing/Analysis/Reporter stage ([9e0f3eb](https://github.com/jorgen-k/research-kit/commit/9e0f3eb8e9c6fc852f81bf748f8c7d03dfeedf97))
* **case-status:** Feedback stage writes per-RQ status into case.md ([a084f29](https://github.com/jorgen-k/research-kit/commit/a084f2956f3b02d1f6bed82f26fb81c56aa766cc))
* **case-views:** view subsystem (define + regenerate views, approval gate) ([849ee7f](https://github.com/jorgen-k/research-kit/commit/849ee7f1eb069437b18be7662217ac96dcb38b35))
* **e1a:** cross-KB up-tree link resolution + per-KB inbox/ ([d7ece28](https://github.com/jorgen-k/research-kit/commit/d7ece28c41a9873836337c5062087373343950df))
* **e1b:** three epistemic axes on claims (status grounding, likelihood, confidence); remove alias stubs ([0ac4308](https://github.com/jorgen-k/research-kit/commit/0ac4308aac93a510141c389d12fb94e002eb6334))
* **e1c:** kb_lib deterministic derivation + shared-lib relocation (Wave 1) ([1b095f3](https://github.com/jorgen-k/research-kit/commit/1b095f3ace3891759de4c42b3248ac6ca7f822f8))
* **e1c:** mutation/lifecycle operations + script-derives wiring (Wave 2) ([b27ae12](https://github.com/jorgen-k/research-kit/commit/b27ae124aeae2ddfa6a107b985d553e40784eccd))
* **e2a:** case_lib create_case + case.md writer ([245b354](https://github.com/jorgen-k/research-kit/commit/245b354be30057eb6bfe4a54dfe75ebb33d41954))
* **e2a:** case_lib project setup (slug, find_project, init_project) ([95e2feb](https://github.com/jorgen-k/research-kit/commit/95e2febfd8608d0cd4c51a2c442ba504bff1ac5b))
* **e2a:** case_lib read side (find_case, list_cases, read_case) ([ed0969b](https://github.com/jorgen-k/research-kit/commit/ed0969bb2806db61e64b6d86ff63d7b67c1ad64c))
* **e2a:** define Case object in DATA-MODEL.md (Layers 1-3) ([6347a4a](https://github.com/jorgen-k/research-kit/commit/6347a4a774c922a3c3f680f8aa814a286a56216c))
* **e2a:** project / case / case-status skills (replace research-setup/status) ([9c3738b](https://github.com/jorgen-k/research-kit/commit/9c3738bb552a2a45676be55722fda99a3cf54a2f))
* **e2a:** project as a directory wrapping a KB + cases + subprojects ([75bc41e](https://github.com/jorgen-k/research-kit/commit/75bc41eb8742e73667420d08eeb00f9141cbe03a))
* **e2a:** project_lib for project/kb/cases layout (rename from case_lib) ([81ff05e](https://github.com/jorgen-k/research-kit/commit/81ff05e9ee4fdf5937d2159691ddc68a8c3aa0c4))
* **e2a:** research-setup skill (create projects + cases) ([96792f5](https://github.com/jorgen-k/research-kit/commit/96792f5fec7f5fe45686b633ef9827a596c5fd3c))
* **e2a:** research-status skill (read-only case view) ([50860ea](https://github.com/jorgen-k/research-kit/commit/50860ea6a3f8ed6a268641f9e099a184c9a8155b))
* **knowledge-graph:** rewrite onto Wikidata-derived data model (SP1) ([82d8a27](https://github.com/jorgen-k/research-kit/commit/82d8a276f62a1ad4dafa12174b6afa856acb4518))
* **knowledge-graph-upgrade:** minimal-structural KB upgrade skill (SP2) ([3b98771](https://github.com/jorgen-k/research-kit/commit/3b9877109c2df46d60677be1a0b172f895e8f548))
* guide ([4a80472](https://github.com/jorgen-k/research-kit/commit/4a8047246562598bd2e51e129434cacff6bdbcb7))


### Bug Fixes

* update improvment ([7dd4eb4](https://github.com/jorgen-k/research-kit/commit/7dd4eb487e7e61f04cb0b82ab7d687f91012f950))
* **e2a:** promoting a standalone KB migrates it into kb/ ([10f49f5](https://github.com/jorgen-k/research-kit/commit/10f49f57b5d2ea14c7fbc0d09ac998c5ee3aafea))
* **knowledge-graph:** generate clickable Relations body mirror alongside Evidence ([476476b](https://github.com/jorgen-k/research-kit/commit/476476bf9f600e60dc8b601949e19d79781131b6))


### Code Refactoring

* drop orphaned kb_summary + dedup case.md section regex ([1b94c6f](https://github.com/jorgen-k/research-kit/commit/1b94c6fd6828bab6f2c3803e13d2a1f780ff413b))


### Styles

* **e2a:** drop em-dashes from authored prose ([dcb9d0f](https://github.com/jorgen-k/research-kit/commit/dcb9d0fea375d7907eb388459d6d49524459b362))


### Documentation

* surface the file/image metadata (EXIF/GPS) use case for osint-footprint ([13a11d8](https://github.com/jorgen-k/research-kit/commit/13a11d87ba72f187eb19d958a900c291176d67ff))
* **e2a:** list research-setup and research-status skills in README ([e2b9b0b](https://github.com/jorgen-k/research-kit/commit/e2b9b0be113d896d06cb7b61c95b668ee78f2b88))




## v0.7.0 (2026-06-24)

## [0.7.0](https://github.com/jorgen-k/research-kit/compare/v0.6.0...v0.7.0) (2026-06-24)


### Features

* rename deep-dive->web-research, claim-keeper->knowledge-graph; add metadata trigger ([5eb8929](https://github.com/jorgen-k/research-kit/commit/5eb8929a75bb29fef92510e354f61e4ea57cfec2))


### Documentation

* list claim-keeper's host extraction tools (exiftool, OCR) in requirements ([0fae6cf](https://github.com/jorgen-k/research-kit/commit/0fae6cf22ed816161cafbfe602c4c51b3189b1a2))




## v0.6.0 (2026-06-24)

## [0.6.0](https://github.com/jorgen-k/research-kit/compare/v0.5.0...v0.6.0) (2026-06-24)


### Features

* exiftool metadata in the osint toolbox and on claim-keeper image ingest ([f596349](https://github.com/jorgen-k/research-kit/commit/f596349f79012a1225c497e8ee429285aee64475))


### Bug Fixes

* wire retrieval to distill-on-use so queries crystallize raw sources ([a9e6075](https://github.com/jorgen-k/research-kit/commit/a9e60759adff1471f85e83eb04dc874a8d8bcc62))




## v0.5.0 (2026-06-23)

## [0.5.0](https://github.com/jorgen-k/research-kit/compare/v0.4.0...v0.5.0) (2026-06-23)


### Features

* claim-keeper offers distillation at ingest and OCRs scanned sources ([7c3747b](https://github.com/jorgen-k/research-kit/commit/7c3747be02395f2366666a80486e4ea77fbb7b5c))




## v0.4.0 (2026-06-23)

## [0.4.0](https://github.com/jorgen-k/research-kit/compare/v0.3.0...v0.4.0) (2026-06-23)


### Features

* claim-keeper can move an original into the KB (copy by default, move on request) ([0ec92e8](https://github.com/jorgen-k/research-kit/commit/0ec92e8f9dff065f7c19dde244731d50f4105cce))
* claim-keeper preserves original source artifacts for traceability ([c558c5c](https://github.com/jorgen-k/research-kit/commit/c558c5cf483f36cefff5b7cf0ee773ba767e2c1f))


### Bug Fixes

* links was wrong ([9f597d2](https://github.com/jorgen-k/research-kit/commit/9f597d2552feab2b157c12560b9de35ede80d1cc))




## v0.3.0 (2026-06-23)

## [0.3.0](https://github.com/jorgen-k/research-kit/compare/v0.2.1...v0.3.0) (2026-06-23)


### Features

* add 'osint upgrade' to rebuild the image without cache ([87f464c](https://github.com/jorgen-k/research-kit/commit/87f464ca95a7be517769adfd8541f9f8aed364b6))
* add osint-footprint skill ([f24b0de](https://github.com/jorgen-k/research-kit/commit/f24b0de70ffaf55bd326d52498fb0b2eaea3ca53))
* osint-footprint writes a footprint report and offers claim-keeper ingestion ([3cca20c](https://github.com/jorgen-k/research-kit/commit/3cca20cd5249c4aa9fbfe32c401eb563d84d233c))


### Documentation

* document the osint-footprint skill in the README ([582aeff](https://github.com/jorgen-k/research-kit/commit/582aeffd5b4cda510b12b6dd7cfbb053c58c8b1b))
* polish osint-footprint description and output notes ([bcaa744](https://github.com/jorgen-k/research-kit/commit/bcaa7441f1fda3d2aefff28454480ea23ac0b3aa))


### Code Refactoring

* move osint toolbox into skills/osint-footprint/ ([8061acc](https://github.com/jorgen-k/research-kit/commit/8061accdc1ec0b83688b3dc65fad247bd1df52c3))




## v0.2.1 (2026-06-23)

### [0.2.1](https://github.com/jorgen-k/research-kit/compare/v0.2.0...v0.2.1) (2026-06-23)


### Bug Fixes

* make deep-dive reach for Playwright immediately on a block ([ebbbeb6](https://github.com/jorgen-k/research-kit/commit/ebbbeb67aa1afbd32ed4103f4af4986ae398ddcf))




## v0.2.0 (2026-06-23)

## [0.2.0](https://github.com/jorgen-k/research-kit/compare/v0.1.0...v0.2.0) (2026-06-23)


### Features

* package as a private Claude Code plugin with release-please ([4f795d8](https://github.com/jorgen-k/research-kit/commit/4f795d8137aefcae7cf348997ca55026eadea8b3))
