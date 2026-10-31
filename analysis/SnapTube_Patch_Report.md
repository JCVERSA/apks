# SnapTube patched APK — revision 2

**Status: build and static verification PASS. Device/runtime behavior remains unverified.**

Revision 2 keeps the ad and forced-update changes from revision 1 and adds explicit suppression of the built-in **“Please Install the Official Snaptube” / “Update to official version”** warning paths that can interrupt video downloading.

## Current download

- **APK:** https://github.com/JCVERSA/apks/releases/download/snaptube-patched-41163398772/SnapTube-7.52.0.75250210-adfree-noforce-no-official-popup.apk
- **Release:** https://github.com/JCVERSA/apks/releases/tag/snaptube-patched-41163398772
- **Filename:** `SnapTube-7.52.0.75250210-adfree-noforce-no-official-popup.apk`
- **Size:** 51,708,139 bytes
- **SHA-256:** `009a66c5631d6899c1286353eef9015f53edf3ae2717c89f86d4bae356da7014`
- **Successful GitHub Actions run:** `41163398772`

GitHub's release-asset SHA-256 digest matches the build report. This release supersedes revision 1 (`snaptube-patched-41160993577`).

## What changed for the official-app screen

### 1. Video-extraction boundary

`ExtractorWrapper.extract(...)` calls `OfficialWarningDialog.h(Context)`. A true result sends execution to `buildForbiddenResult(...)` instead of the normal site extractor.

Revision 2 makes `OfficialWarningDialog.h(Context)` return false. The normal `findSite(...)` / `extract(...)` path remains unchanged; `ExtractorWrapper.smali` itself was not modified.

The known helper that constructs and calls `show()` on the “Please Install the Official Snaptube” dialog was also made a no-op.

### 2. Upgrade-screen warning branch

`BaseUpgradeActivity.onCreate(...)` previously conditionally constructed `PiraticalApkWarningDialogFragment`, which displays “Update to official version” and instructions to download/uninstall/reinstall.

Revision 2 changes only that conditional branch to skip the warning and continue to the existing `K1()` call. The rest of the method is preserved. The separate About-screen warning was not changed.

### Important diagnostic limitation

The input APK already contained an early false return in a nested extractor-warning helper. Therefore, static analysis alone cannot prove that this built-in helper was the exact screen seen at runtime. Revision 2 explicitly guards both the extractor boundary and the known display path, plus the upgrade-screen warning branch. A screenshot or device test would be needed to confirm a remaining screen supplied by a website or dynamically loaded extractor plugin.

The app's `xi7` certificate detection/reporting was **not** globally disabled or spoofed.

## Retained revision 1 changes

| Area | Targets | Effect |
|---|---|---|
| Forced update | `AppForceUpdateHelper.r(...)`, `o(...)` | Return false; block the forced-update launch/activity-finishing path. |
| Splash ads | `SplashAdActivity.i1(...)`, `l1(...)`, `m1(...)` | Return false for normal, cached, and clean-screen splash paths. |
| Hot splash | `HotSplashAdManager.e()`, `g()` | Disable the gate and make the trigger a no-op. |
| Download ads | `StartDownloadAdViewModel.z(...)`, `w(...)` | Stop post-download ad preload/show eligibility. |
| Placement switches | `od.v(...)`, `od.c(...)` | Disable per-placement enable/preload gates. |
| Native ad engine | `w25.h()` | Return the existing no-op dummy engine. |
| Global ad gate | `Config.P2()` | Return false at the global enable-ad gate. |

Total: **16 patched methods across 10 Smali class files**. No VIP/payment/license state was forged, no SDK classes were deleted, and no package identity, permissions, or native libraries were changed.

## Verification

All tooling ran on GitHub Actions; no APK tools were installed in the local workspace.

- Original APK hash verified before and after: **PASS**
- Fresh Apktool 3.0.3 decode and rebuild: **PASS**
- Only the 10 intended Smali class files changed: **PASS**
- Patched APK ZIP integrity: **PASS**
- 4-byte ZIP alignment: **PASS**
- 16 KB page alignment: **PASS**
- APK signatures v1, v2, v3: **PASS**
- Package, versionCode, versionName, minSdk, targetSdk, permissions, ABIs unchanged: **PASS**
- Re-decoded patched APK: **16/16 patch checks PASS**
- Upgrade-warning check verified actual control flow after Smali label renumbering, not just text replacement.
- No device install, uninstall, or runtime test was performed.

Package remains `com.snaptube.premium`, version `7.52.0.75250210` / code `75250210`, minSdk 21, targetSdk 35, ABIs `arm64-v8a` and `armeabi-v7a`.

## Original preserved

- Path: `google_drive/SnapTube.apk`
- Size: 51,708,137 bytes
- SHA-256: `34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3`

## Installation warning

This build uses a **new ephemeral signing key**, different from both the original APK and revision 1. Android will not install it over either differently signed installation. Uninstalling an existing copy first may erase its local data. Back up anything important before making that choice.

Do not use the old revision 1 APK when testing this change.

## Evidence

- Build report: `analysis/remote/patch-41163398772/build-report.json`
- Patch inventory: `analysis/remote/patch-41163398772/patches.json`
- Exact diffs: `analysis/remote/patch-41163398772/patches/`
- Round-trip checks: `analysis/remote/patch-41163398772/roundtrip-checks.json`
- Signature and alignment logs: `analysis/remote/patch-41163398772/logs/`
- Official-warning trace: `analysis/remote/official-warning-41162699822/`
- Initial static analysis: `analysis/SnapTube_Static_Analysis_Report.md`
- Build workflow: `.github/workflows/apk-patch-build.yml`
- Patch implementation: `.github/scripts/patch_apk.py`
