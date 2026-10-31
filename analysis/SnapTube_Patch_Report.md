# SnapTube patch report — ad-free / no forced update

Status: **BUILD + STATIC VERIFICATION PASS** · Runtime/device behavior: **UNVERIFIED** (no install or device testing was performed).

## Deliverable

- **Patched APK (GitHub release asset):**  
  https://github.com/JCVERSA/apks/releases/download/snaptube-patched-41160993577/SnapTube-7.52.0.75250210-adfree-noforce.apk
- **Release page:** https://github.com/JCVERSA/apks/releases/tag/snaptube-patched-41160993577
- **Filename:** `SnapTube-7.52.0.75250210-adfree-noforce.apk`
- **Size:** 51,708,139 bytes
- **SHA-256:** `ccf575e5526b2b3035de26021a62e5d1e7598510a0a4716f972be201d8eb11b3`
- GitHub’s release-asset digest matches the build report SHA-256 exactly.

The original input was preserved unchanged:

- `google_drive/SnapTube.apk`
- Size: 51,708,137 bytes
- SHA-256: `34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3`

## What was patched

13 exact Smali methods across 7 class files. No SDK classes were deleted, no manifest identity was changed, and no VIP/payment/license, core download, or playback logic was modified.

| Area | Class / method | Patch | Intended effect |
|---|---|---|---|
| Forced update | `AppForceUpdateHelper.r(...)` | return `false` | Primary gate: never launch the forced-update flow or finish other activities. |
| Forced update | `AppForceUpdateHelper.o(...)` | return `false` | Backup predicate stays false even if `r()` is bypassed. |
| Splash ads | `SplashAdActivity.i1(...)` | return `false` | Cold/hot splash interstitial load+show returns “not shown”. |
| Splash ads | `SplashAdActivity.l1(...)` | return `false` | Cached-ad splash path returns “not shown” without launching a cached interstitial. |
| Splash ads | `SplashAdActivity.m1(...)` | return `false` | CleanActivity splash interstitial returns “not shown”. |
| Hot splash | `HotSplashAdManager.e()` | return `false` | Hot-launch splash disabled. |
| Hot splash | `HotSplashAdManager.g()` | `return-void` | Hot-launch preload/show trigger is a no-op. |
| Download ads | `StartDownloadAdViewModel.z(...)` | `return-void` | Post-download interstitial preload is a no-op. |
| Download ads | `StartDownloadAdViewModel.w(...)` | return `false` | Post-download show gate short-circuits before `K()/L()`. |
| Placement config | `od.v(pos)` | return `false` | Per-placement `/<pos>/enabled` switch disabled for all placements. |
| Placement config | `od.c(pos)` | return `false` | Per-placement preload switch disabled. |
| Native ad engine | `w25.h()` | return existing dummy `w25$a` | Native ad provider always uses the no-op dummy (`a(pos)=false`, load/show no-ops). |
| Global ad gate | `Config.P2()` | return `false` | Global `enable_ad` gate disabled; sole caller `o/be.h` (`IAdsManager.h`) returns false. |

Reward callback paths were intentionally left intact (`o1(gn7)`, `SplashAdActivity.p/e1`, `jn7` events). The reward loader already has a `NO_FILL` fallback when no valid ad is available, so disabling ad fill is expected to invoke that fallback rather than deadlock the reward flow. This is a static/code-level expectation, not a device-verified result.

The third-party signature gate `o/xi7.c` was **not** patched.

## Verification performed on GitHub Actions

Successful run: **41160993577** (`APK patch build`).

- Fresh Apktool 3.0.3 decode of the original APK.
- Exact-method patches applied; only the 7 intended Smali files changed.
- Apktool rebuild succeeded.
- `zipalign` 4-byte alignment: **PASS**.
- `zipalign -P 16` 16 KB page alignment: **PASS**.
- Signed with a **new ephemeral RSA-2048 key** (private key was not committed).
- `apksigner verify --verbose --print-certs`: **PASS** for v1, v2, and v3 schemes.
- Package identity/metadata comparison against the original: **PASS** for package name, versionCode, versionName, minSdk, targetSdk, permissions, and native ABIs.
- Re-decoded the patched APK and confirmed all 13 patched method bodies survived the round trip: **13/13 PASS**.
- Original APK SHA-256 re-checked after the build: unchanged.
- Patched APK ZIP integrity: PASS.

Package identity remains:

- Package: `com.snaptube.premium`
- versionCode: `75250210`
- versionName: `7.52.0.75250210`
- minSdk: 21 · targetSdk: 35
- ABIs: `arm64-v8a`, `armeabi-v7a`

## Important install warning

The patched APK is signed with a **different key** from the input APK. Android will refuse to install it over an existing SnapTube installation signed with another key. Installing it as an update is therefore not possible without first uninstalling the existing app, and **uninstalling would erase that app’s local data**. No uninstall, install, or other device-changing action was performed.

## Limitations

- No emulator/device runtime testing was performed; ad-free behavior and forced-update blocking are statically verified, not runtime-confirmed.
- Embedded ads inside public websites loaded by the app may still appear; the app itself notes it cannot block those.
- Ad SDK classes remain in the APK; the patch disables the app’s ad gates/engine rather than stripping SDK code.
- Server-side behavior and remote configuration responses were not tested.

## Evidence and reproducibility

- Build report: `analysis/remote/patch-41160993577/build-report.json`
- Per-method diffs: `analysis/remote/patch-41160993577/patches/*.diff`
- Patch inventory: `analysis/remote/patch-41160993577/patches.json`
- Round-trip checks: `analysis/remote/patch-41160993577/roundtrip-checks.json`
- Signature/alignment/badging logs: `analysis/remote/patch-41160993577/logs/`
- Pre-patch safety evidence: `analysis/remote/safety-41160171378/`
- Original static analysis: `analysis/SnapTube_Static_Analysis_Report.md`
- Build workflow: `.github/workflows/apk-patch-build.yml`
- Patch script: `.github/scripts/patch_apk.py`

All tooling ran on disposable GitHub Actions runners; no tools were installed in the local workspace.
