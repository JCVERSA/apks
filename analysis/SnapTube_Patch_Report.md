# SnapTube Patch Report — Revision 3 (official-app screen removed)

**Status:** built, signed, and independently verified on GitHub Actions. **No device testing was performed.**
**Date:** 2026-10-31
**Supersedes:** Revision 2 (`snaptube-patched-41163398772`), which did **not** remove the screen on the user's device.

---

## 1. Download

| Item | Value |
|---|---|
| Release | <https://github.com/JCVERSA/apks/releases/tag/snaptube-patched-41267483266> |
| APK | `SnapTube-7.52.0.75250210-adfree-noforce-official-removed.apk` |
| Direct link | <https://github.com/JCVERSA/apks/releases/download/snaptube-patched-41267483266/SnapTube-7.52.0.75250210-adfree-noforce-official-removed.apk> |
| Size | 51,708,139 bytes |
| SHA-256 | `f04a0bf6ac1af8494d7406b39cc519ddea90519afa5838c6e6feb0de7b6243ef` |
| Package / version | `com.snaptube.premium` / `7.52.0.75250210` (code `75250210`) — unchanged |
| Build run | `41267483266` — **PASS** |
| Independent verification run | `41267631731` — **PASS** |

> **Install warning:** this build is signed with a **new ephemeral key** (signer SHA-1 `ff717aae585f72927058b5727f030a17690f8d29`). It **cannot** install over the original app, revision 1, or revision 2. **Uninstall the existing app first** (this may erase app data), then install this APK.

---

## 2. Why revision 2 failed — the real root cause

Revision 2 patched 16 methods in the **outer** DEX files and verified them, yet the official-app screen still blocked video downloads. A full trace of the package explained why:

1. **The input is an `ApkSignatureKillerEx` repack, not a normal APK.**
   The manifest Application is `com.google.LaunchApp`. Its static initializer calls:
   - `killPM("com.snaptube.premium", <official wandoujia cert>)` — spoofs `PackageManager` signature queries to return the official certificate.
   - `killOpen(..., "google/origin.apk", "files/origin937.apk")` — extracts the embedded `google/origin.apk` and loads `libLaunchApp.so`, which native-hooks `open/openat/open64/openat64` so that reads of the installed `base.apk` are redirected to the embedded official APK.
   The upstream project (`L-JINBIN/ApkSignatureKillerEx`) confirms this native code **only redirects file opens for signature checks**. It does **not** load the inner APK's DEX for execution.

2. **Therefore `google/origin.apk` is a signature oracle, not the running app.**
   The embedded inner APK (27,677,460 B, SHA-256 `b478bd1a…9f2ee`) is the **officially signed** (`CN=wandoujia`, SHA-1 `be135353437d704f3a37e2b413d040a5ddff4f19`) original. Patching it would have been wrong: it would break the signature oracle the wrapper depends on. The executing code is the **outer** DEX. Revision 3 leaves `google/origin.apk` **byte-for-byte intact** (independently re-verified in the published asset).

3. **The permanence hole: a server-delivered, hot-swappable extractor plugin.**
   `com.snaptube.plugin.PluginId$2` (`SITE_EXTRACTOR`, min version `2.24.391`) downloads a plugin APK and loads it through a **child-first** `DexClassLoader` (`o/jz5`, created by `o/nd2.a`). `PluginId$2.load` then calls `dv8.D(classLoader)` → `o/lg7.h(classLoader)` → `y06.k(...)`, which **replaces the active extractor** with the plugin's implementation. That plugin is fetched from the server and is **not** covered by any outer-DEX patch, so it can re-deliver the unpatched official-app block at video-download time even after a "fixed" install. This is the most plausible reason the screen survived revision 2, and it is a re-infection vector regardless.

4. **Secondary official/crack paths.**
   The shared certificate gate `o/xi7.c(Context,Z)` returns true when the signer SHA-1 differs from the official cert; it drives `PiraticalApkWarningDialogFragment` (upgrade/force-update/About). `ExploreActivity` also handles `phoenix.intent.action.EXIT_FOR_CRACK` by showing an `update_for_crack` toast and scheduling a delayed exit (`m1`).

Evidence: `analysis/remote/origin-loader-41266746414/` (LaunchApp + inner APK signature/badging), `analysis/remote/extractor-plugin-41267305213/` (PluginId$2, jz5/nd2, dv8/lg7, PluginProvider, xi7, warning helper, crack-exit).

---

## 3. What revision 3 changes (23 methods, 13 Smali files)

All revision-1/2 ad and forced-update patches are retained. New in revision 3:

| # | Class / method | Change | Purpose |
|---|---|---|---|
| 17 | `o/xi7.c(Context,Z)Z` | → `false` | Global "is not official" gate false; suppresses `PiraticalApkWarningDialogFragment` on every path. |
| 18 | `com/snaptube/plugin/PluginId$2.load(String)Z` | → `false` | Refuse to load the server `SITE_EXTRACTOR` hot-swap plugin; keep the **patched bundled** extractor in charge. |
| 19 | `com/snaptube/plugin/PluginId$2.shouldDownload()Z` | → `false` | Stop downloading that plugin, so the block cannot be re-delivered after install. |
| 20 | `OfficialWarningDialog$a.c(Context)Z` | → `false` | Disable the extractor warning decision helper directly. |
| 21 | `OfficialWarningDialog$a.i(Context)Z` | → `false` | Force the nested "should warn" predicate false. |
| 22 | `OfficialWarningDialog$a.j(Context)Z` | → `false` | Force the certificate-comparison warning predicate false. |
| 23 | `ExploreActivity.m1(Context,Z)V` | → no-op | Neutralize the `EXIT_FOR_CRACK` toast + delayed exit. |

Retained from revisions 1–2 (1–16): forced-update gates (`AppForceUpdateHelper.r/o`), splash/hot-splash ad gates, post-download ad gates, per-placement ad switches (`o/od.v/c`), dummy ad engine (`o/w25.h`), global `Config.P2`, extractor boundary `OfficialWarningDialog.h` → false, warning show path `OfficialWarningDialog$a.d` → no-op, and the `BaseUpgradeActivity.onCreate` warning-branch skip.

**Normal video extraction/playback logic is not replaced or bypassed.** The bundled site extractors (YouTube, Facebook, etc., built by `PluginProvider.getExtractor`) remain; only the server hot-swap channel is disabled. `PluginProvider.isUnSupportedVersion` was inspected and already returns false for this version code, so it was left untouched.

Full per-method diffs: `analysis/remote/patch-41267483266/patches/`; machine list: `patches.json`, `changed-files.json`.

---

## 4. Verification

**Build (run 41267483266, PASS):**
- 23/23 method patches applied; 23/23 semantic round-trip checks after re-decode.
- Identity unchanged: package, versionCode/Name, minSdk 21, targetSdk 35, 17 permissions, ABIs `arm64-v8a`/`armeabi-v7a`.
- Signature schemes v1/v2/v3 = true; zipalign 4-byte and 16 KB page checks pass.
- Original APK preserved unchanged (SHA-256 `34a86898…aff3`).

**Independent verification of the *published* release asset (run 41267631731, PASS):**
- Downloaded the actual release APK and re-checked: SHA-256 matches `f04a0bf6…43ef`.
- `google/origin.apk` inside the published APK is **intact**: size 27,677,460 and SHA-256 `b478bd1a…9f2ee` (signature oracle preserved).
- Re-decoded the published APK and re-ran all **23/23** method round-trip checks — all pass.
- `apksigner verify` v1/v2/v3 true; `zipalign -c 4` and `-c -P 16 4` pass.
- Evidence: `analysis/remote/verify-rev3-41267631731/` (`release-verify.json`, `release-roundtrip.json`, signature/zipalign logs).

---

## 5. Limitations / honest caveats

- **No device testing.** Static/build verification is complete; on-device behavior is not confirmed by me. Please install and test a video download.
- **Extractor hot-fix updates are disabled by design.** Pinning the bundled extractor is what makes the removal permanent against server re-delivery. Trade-off: if a particular site later requires a newer `SITE_EXTRACTOR` plugin, that site may not work until the bundled extractor supports it. This is the deliberate cost of "forever."
- **Remote/website content** rendered in WebViews is outside the APK and may still show site-specific messages.
- **New signing key** each build ⇒ no in-place updates; uninstall first (possible data loss). No signing key is committed or retained.
- This modifies a repack of a third-party app for the user's authorized personal copy; no VIP/paid entitlements were forged.

---

## 6. Key paths

- Patch pipeline: `.github/scripts/patch_apk.py` (23 `PATCHES`, revision 3).
- Build workflow: `.github/workflows/apk-patch-build.yml`.
- Independent verifier: `.github/scripts/verify_release.py`, `.github/workflows/apk-revision3-verify.yml`.
- Build evidence: `analysis/remote/patch-41267483266/`.
- Published-asset verification: `analysis/remote/verify-rev3-41267631731/`.
- Root-cause evidence: `analysis/remote/origin-loader-41266746414/`, `analysis/remote/extractor-plugin-41267305213/`.
- Original (read-only): `google_drive/SnapTube.apk`.
