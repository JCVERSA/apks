# SnapTube.apk — Complete Static Analysis Report

Status: **ANALYSIS COMPLETE — NO APK MODIFICATION PERFORMED**  
Original APK: `google_drive/SnapTube.apk`  
Branch: `arena/7234f8d6-apks`  
Repository: `JCVERSA/apks` (public, with user consent)  
Authorization: user confirmed they are authorized to modify this app copy.  
Tooling constraint: no APK tools installed in the workspace; decoding/decompilation/evidence extraction ran on GitHub Actions runners.

---

## 1. Executive summary

### Confirmed

- The input is a standalone Android APK for `com.snaptube.premium`, label `Snaptube`, version `7.52.0.75250210` / versionCode `75250210`, minSdk 21, target/compileSdk 35.
- The APK is already **re-signed by a third party**, not by the certificate fingerprint the app itself treats as “official”.
  - Actual signer: `CN="rockz5555 OU=Droid Freedom Unit O=Droid Freedom Inc L=Unknown S=Unknown C=LK"`.
  - Actual cert SHA-1: `60c2ca515229da14caa5527a7b8aa86de3bee73c`.
  - App’s expected “official” SHA-1: `be135353437d704f3a37e2b413d040a5ddff4f19`.
  - `o/xi7.c(Context, boolean)` returns `true` when the current signature is not that expected fingerprint.
- The APK contains a large advertising stack: Pangle/ByteDance, Mintegral/MBridge, Vungle, PubNative mediation, Google IMA, plus SnapTube’s own ad orchestration, frequency control, preload, splash, reward, clean/boost, browser, feed, and download-ad code.
- The APK contains a forced-update/self-upgrade subsystem:
  - cold-start upgrade fetch,
  - activity-lifecycle force-update checks,
  - `UpgradeConfig.isStrongUpdate()` / `isStrictForceUpdate()`,
  - `AppForceUpdateHelper.o()` / `r()` / `m()`,
  - `ForceUpdateActivity`,
  - activity-finishing behavior that can close the app if the user cannot proceed.
- **Important manifest finding:** the decoded manifest does **not** declare `ForceUpdateActivity`, `NormalUpdateActivity`, `BaseUpgradeActivity`, or `CheckSelfUpgradeReceiver` under `com.snaptube.premium.selfupgrade`. The code still exists and still calls launch helpers. `NavigationManager.n1()` catches launch exceptions, but `AppForceUpdateHelper.m()` then calls `i()`, which finishes non-`ForceUpdateActivity` activities. This means the force-update path may already be partially broken by the repackaging, while still capable of closing/blocking the app.
- The app has multiple ad enable/preload gates, but **no single confirmed universal “remove all ads” switch** was found. A minimal, justified patch set can target the highest-confidence display/request gates; residual ad surfaces must be checked afterward.
- VIP/paid no-ad entitlement code exists. This report does **not** recommend forging VIP, payment, license, or paid entitlement state.

### Likely

- The user-visible “force update” / “update to official version” behavior is likely caused by a combination of:
  1. server-driven upgrade config (`STRONG` priority and/or `meta.isForceUpdate`),
  2. the app’s non-official signature check,
  3. the repackaged manifest missing the upgrade activities, causing launch failure plus activity-finishing fallback.
- Ad removal is feasible at the client orchestration layer, but “100% no ads forever” cannot be guaranteed statically because server config, WebView/site ads, reward flows, and future remote config can change behavior.

### Unknown / not tested

- Runtime behavior on a device.
- Actual server upgrade response for this device/version/signature.
- Actual ad fill/display frequency.
- Whether every reward-gated download can proceed safely without showing a rewarded ad.
- Native-code semantics beyond ELF metadata.
- Complete source recovery: JADX exited with code 3 and reported 86 errors; decompiled Java is derived evidence, so critical gates were cross-checked in Smali.

### Recommendation

Proceed only after approval with a **minimal Smali patch plan**:

1. Neutralize the forced-update blocking path at `AppForceUpdateHelper.r()` and optionally `o()`.
2. Disable the highest-confidence ad display/request gates:
   - splash ad launch,
   - hot-splash gate,
   - start-download interstitial preload/show path,
   - per-position enabled/preload prefs,
   - native-ad mediation engine selector fallback to the built-in dummy engine.
3. Do **not** unlock VIP/paid features, do **not** forge payment/license state, and do **not** broadly delete SDK classes unless a later verification pass proves that is necessary.
4. Rebuild, align, sign with a new local/test key on GitHub Actions, then run static verification. Device installation/testing requires separate explicit approval.

---

## 2. Input integrity and provenance

| Item | Value |
|---|---|
| Source | Google Drive file `1VrzmP6TB0EkgJ9IHWpsiyCe2DsjEV1XV` |
| Local original | `google_drive/SnapTube.apk` |
| Size | `51,708,137` bytes |
| MD5 | `4775129d7574cff2beef962b3bea2d0e` |
| SHA-256 | `34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3` |
| ZIP integrity | PASS |
| ZIP members | `3924` |
| Original preserved | Yes; file mode `444`; hash re-verified after analysis |
| APK modified so far | **No** |

Evidence:

- `analysis/input-inventory.json`
- `analysis/remote/41155692929/report/reports/input-hashes.txt`
- `analysis/remote/41155692929/report/reports/input-verification.json`
- `analysis/remote/41155692929/report/logs/input-sha256.log`

---

## 3. Package facts

| Property | Value | Evidence |
|---|---:|---|
| Package | `com.snaptube.premium` | `logs/aapt_badging.log:1` |
| Label | `Snaptube` | `logs/aapt_badging.log` |
| versionCode | `75250210` | `logs/aapt_badging.log:1` |
| versionName | `7.52.0.75250210` | `logs/aapt_badging.log:1` |
| minSdk | `21` | `logs/aapt_badging.log` |
| targetSdk | `35` | `logs/aapt_badging.log` |
| compileSdk | `35` | `logs/aapt_badging.log:1`, `reports/apktool.yml` |
| Launcher | `com.snaptube.premium.activity.ExploreActivity` | `logs/aapt_badging.log`, `manifest-summary.json` |
| Application class | `com.snaptube.premium.app.PhoenixApplication` | `manifest-summary.json` |
| DEX files | `5` | `reports/inventory.json`, `reports/analysis-summary.md` |
| Native ABIs | `arm64-v8a`, `armeabi-v7a` | `logs/aapt_badging.log`, `native-library-inventory.json` |
| Declared permissions | `17` | `logs/aapt_badging.log`, `manifest-summary.json` |
| Manifest components | `129` | `manifest-summary.json`, `components.tsv` |
| Smali files decoded | `43,100` | `reports/coverage.json` |
| JADX Java files | `26,707` | `reports/coverage.json` |

Component counts:

| Kind | Count |
|---|---:|
| activity | 84 |
| activity-alias | 1 |
| service | 16 |
| receiver | 20 |
| provider | 8 |

Exported attribute counts:

| `android:exported` | Count |
|---|---:|
| `true` | 29 |
| `false` | 39 |
| unspecified | 61 |

Evidence:

- `analysis/remote/targeted-41157059752/manifest-summary.json`
- `analysis/remote/targeted-41157059752/components.tsv`
- `analysis/remote/gates-41157962851/manifest/AndroidManifest.xml`

Note: the earlier `static_inventory.py` manifest parser reported version/min/target as UNKNOWN. Those values are **not** used here. The authoritative package facts above come from `aapt badging` and `apktool.yml`.

---

## 4. Signature and “official version” gate

### 4.1 Actual APK signature

`apksigner verify` passed for v1/v2/v3:

```text
Verified using v1 scheme (JAR signing): true
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): true
Number of signers: 1
certificate DN: CN="rockz5555 OU=Droid Freedom Unit O=Droid Freedom Inc L=Unknown S=Unknown C=LK"
certificate SHA-256: 0cfb4663831a0fb8d6973aad44e221a8ba78f7f684bd0b17d3b44bec82316484
certificate SHA-1: 60c2ca515229da14caa5527a7b8aa86de3bee73c
key algorithm: RSA
key size: 2048
```

Warnings: three `META-INF/services/` entries are not protected by the JAR signature:

- `com.sensorsdata.analytics.android.sdk.core.mediator.protocol.SAModuleProtocol`
- `o.r61`
- `o.rh4`

Evidence:

- `analysis/remote/41155692929/report/logs/original_signature.log`

### 4.2 App’s own official-signature check

Confirmed Java:

```java
// analysis/remote/targeted-41157059752/jadx/o/xi7.java:59-65
public static boolean c(Context context, boolean z) {
    String strB = b(context, z);
    if (TextUtils.isEmpty(strB) || TextUtils.equals(strB, "unknown")) {
        return false;
    }
    return !"be135353437d704f3a37e2b413d040a5ddff4f19".equalsIgnoreCase(strB);
}
```

Confirmed Smali:

- `analysis/remote/targeted-41157059752/smali-methods/o/xi7/c_Landroid_content_Context_Z_Z.smali:25-33`
  - loads `be135353437d704f3a37e2b413d040a5ddff4f19`,
  - calls `equalsIgnoreCase`,
  - XORs with `1`,
  - returns `true` when the signature does **not** match.

Callers:

| Caller | Evidence |
|---|---|
| `BaseUpgradeActivity.onCreate()` | `xrefs-official_signature_check.tsv`; `jadx/.../BaseUpgradeActivity.java:496-504` |
| `ForceUpdateActivity.d2()` | `jadx/.../ForceUpdateActivity.java:99-100` |
| `incremental_upgrade/b$f.run()` | `gates-41157962851/official_signature_xi7.tsv` |
| `MeAboutActivity.onCreate()` | `gates-41157962851/official_signature_xi7.tsv` |

`BaseUpgradeActivity` shows `PiraticalApkWarningDialogFragment` when `xi7.c()` is true. That dialog tells the user to download the official version, uninstall the current app, and reinstall. Its back handler can call `AppForceUpdateHelper.h()` when the source is `compulsory_upgrade`.

Evidence:

- `analysis/remote/targeted-41157059752/jadx/com/snaptube/premium/selfupgrade/BaseUpgradeActivity.java:494-505`
- `analysis/remote/targeted-41157059752/jadx/com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment.java:75-78,103-115,141-157`
- `analysis/remote/gates-41157962851/force_helper_finish_h_i.tsv`

### 4.3 Interpretation

Confirmed: this APK is not signed with the fingerprint the app treats as official.  
Likely: this contributes to “not official version” / forced-official-update messaging.  
Unknown: whether the current server also forces upgrade based on version/signature/device profile.

---

## 5. Manifest and security posture

### 5.1 Application attributes

From `manifest-summary.json` and decoded manifest line 72:

| Attribute | Value |
|---|---|
| `android:name` | `com.snaptube.premium.app.PhoenixApplication` |
| `android:allowBackup` | `false` |
| `android:usesCleartextTraffic` | `true` |
| `android:networkSecurityConfig` | `@xml/network_security_config` |
| `android:requestLegacyExternalStorage` | `true` |
| `android:preserveLegacyExternalStorage` | `true` |
| `android:persistent` | `true` |
| `android:testOnly` | `false` |
| `android:debuggable` | not set / null in summary |

Evidence:

- `analysis/remote/targeted-41157059752/manifest-summary.json`
- `analysis/remote/gates-41157962851/manifest/AndroidManifest.xml:72`

### 5.2 Network security config

Release config:

```xml
<!-- analysis/remote/gates-41157962851/manifest/network_security_config_release.xml -->
<network-security-config>
    <base-config cleartextTrafficPermitted="true">
        <trust-anchors>
            <certificates src="system" />
        </trust-anchors>
    </base-config>
</network-security-config>
```

Debug config also trusts user certificates:

```xml
<!-- analysis/remote/gates-41157962851/manifest/network_security_config_debug.xml -->
<certificates src="system" />
<certificates src="user" />
```

Confirmed: cleartext HTTP is permitted by base config.  
Confirmed: release config trusts system CAs only; debug config also trusts user CAs.  
Unknown: which exact resource alias is active at runtime without device/resource-resolution testing, but the manifest references `@xml/network_security_config` and both debug/release variants were recovered.

### 5.3 Permissions

Declared permissions:

- `ACCESS_NETWORK_STATE`
- `ACCESS_WIFI_STATE`
- `INTERNET`
- `REORDER_TASKS`
- `WAKE_LOCK`
- `WRITE_EXTERNAL_STORAGE` maxSdk 32
- `READ_EXTERNAL_STORAGE` maxSdk 32
- `SYSTEM_ALERT_WINDOW`
- `GET_PACKAGE_SIZE`
- `KILL_BACKGROUND_PROCESSES`
- `MANAGE_EXTERNAL_STORAGE`
- `FOREGROUND_SERVICE`
- `FOREGROUND_SERVICE_DATA_SYNC`
- `FOREGROUND_SERVICE_MEDIA_PLAYBACK`
- `FOREGROUND_SERVICE_SPECIAL_USE`
- `POST_NOTIFICATIONS`
- `com.snaptube.premium.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

Evidence:

- `analysis/remote/41155692929/report/logs/aapt_badging.log`
- `analysis/remote/41155692929/report/reports/analysis-summary.md`

### 5.4 Exported components of note

| Component | Kind | Exported | Permission | Note |
|---|---|---:|---|---|
| `com.snaptube.premium.provider.SnaptubeExportedProvider` | provider | true | none | authorities include `SnaptubeExportedProvider`, `GuideExportedProvider` |
| `com.dywx.premium.core.udid.impl.UDIDProvider` | provider | true | none | authorities include `UDIDProvider`, `GuideExportedProvider` |
| `com.snaptube.ads.infomobi.receiver.ReceiverDelegate` | receiver | true | none | package/user/download/power events |
| `com.snaptube.ads.infomobi.receiver.InitReceiver` | receiver | false | none | `com.snaptube.ads.infomobi.TRY_INIT` |
| `com.snaptube.ads.activity.SplashAdActivity` | activity | false | none | splash ad UI |
| `com.snaptube.premium.ads.splash.RewardSplashAdActivity` | activity | false | none | reward splash UI |

Evidence:

- `analysis/remote/targeted-41157059752/manifest-summary.json`
- `analysis/remote/targeted-41157059752/components.tsv`
- `analysis/remote/gates-41157962851/manifest-findings.json`

This is an observation, not a full vulnerability assessment.

---

## 6. Advertising architecture

### 6.1 SDK / package inventory

Java-file counts from JADX output are presence indicators, not proof of runtime display:

| Package | Java files | Interpretation |
|---|---:|---|
| `com/bytedance` | 1947 | Pangle/ByteDance ad SDK |
| `com/mbridge` | 1643 | Mintegral/MBridge ad SDK |
| `com/google/ads` | 965 | Google IMA |
| `com/vungle` | 380 | Vungle ads |
| `net/pubnative` | 238 | PubNative mediation |
| `com/snaptube/ads` | 216 | SnapTube ad UI/orchestration |
| `com/snaptube/ad` | 167 | frequency/guardian/mediation/preload/tracker |
| `com/snaptube/premium/ads` | 23 | premium splash/MRAID/utils |
| `com/snaptube/ads_log_v2` | 19 | ad impression/logging |

Evidence:

- `analysis/remote/targeted-41157059752/ad-sdk-inventory.json`

### 6.2 Ad placements

`AdsPos` defines 17 placements:

| Enum | Position string |
|---|---|
| `BANNER_VIDEO_INFO` | `banner_video_info` |
| `INTERSTITIAL_LAUNCH` | `interstitial_launch` |
| `PHONE_BOOST_INTERSTITIAL` | `phone_boost_interstitial` |
| `CLEAN_INTERSTITIAL` | `clean_interstitial` |
| `BATTERY_SAVER_INTERSTITIAL` | `battery_saver_interstitial` |
| `NATIVE_MYFILE_ALL_PLAY_LIST` | `play_list` |
| `NATIVE_BROWSER_BANNER` | `browser_banner` |
| `SEARCH_VIDEO_RESULT` | `search_video_result` |
| `NATIVE_YOUTUBE_FEEDSTREAM` | `youtube_feedstream` |
| `NATIVE_YOUTUBE_DETAILS_TOP_BANNER` | `youtube_details_top_banner` |
| `NATIVE_YOUTUBE_DETAILS_BANNER` | `youtube_details_banner` |
| `MY_FILE_TASK` | `my_file_task` |
| `DOWNLOAD_OUTSIDE_REWARD` | `download_outside_reward` |
| `AUDIO_PREVIEW` | `audio_preview` |
| `BATCH_DOWNLOAD_REWARD` | `batch_download_reward` |
| `START_DOWNLOAD_INTERSTITIAL` | `start_download_interstitial` |
| `HOT_SPLASH` | `hot_splash` |

Evidence:

- `analysis/remote/targeted-41157059752/jadx/com/snaptube/ads/base/AdsPos.java:6-23`

`assets/ads_guide.json` maps many of these placements to guide/native/APK cross-promotion resources, including Lark Player (`com.dywx.larkplayer`) APK download/install guide behavior.

Evidence:

- `analysis/remote/targeted-41157059752/decoded/assets/ads_guide.json`

### 6.3 Ad config sources

Confirmed strings/endpoints:

- `DomainKey.AD_CONFIG("config.ad.falconnet.app", "key.ad_config")`
- `https://config.ad.falconnet.app/v2/config?configName=android_ads_for_mediation_merge.json`
- `AdsConfigV2.fb_config` / `AdsOnlineConfig.AdsGroup.fb_config`

Evidence:

- `analysis/remote/41155692929/report/reports/hits-ad_lifecycle.tsv:5823,8066-8067`
- `analysis/remote/41155692929/report/reports/urls.tsv:60`
- `analysis/remote/targeted-41157059752/jadx/com/snaptube/premium/ads/AdsConfigV2.java:8`
- `analysis/remote/targeted-41157059752/jadx/com/snaptube/premium/ads/AdsOnlineConfig.java:15`

### 6.4 Global and per-position ad gates

#### `Config.P2()` — `key.enable_ad`

```java
// jadx/com/snaptube/premium/configs/Config.java:676-678
public static boolean P2() {
    return b0().getBoolean("key.enable_ad", true);
}
```

Smali:

- `smali-methods/com/snaptube/premium/configs/Config/P2_Z.smali:1-17`

Exact caller found:

- `decoded/smali_classes4/o/be.smali:102` inside `o/be.h()Z`.

`o/be.h()` also checks VIP/time-related config before returning `Config.P2()`:

- `gates-41157962851/methods/o/be/h_Z.smali:1-55`

Interpretation: `P2()` is an ad-enable gate, but the exact xref scan found only one direct caller. It is **not confirmed to be a universal kill switch for every ad surface**.

#### `Config.w3(boolean)` — hot splash

```java
// Config.java:1975-1977
public static boolean w3(boolean z) {
    return i1().getBoolean("key.is_hot_splash_ads_enabled", z);
}
```

Caller:

- `HotSplashAdManager.e()Z`
- `gates-41157962851/config_hot_splash_w3.tsv`
- `gates-41157962851/methods/com/snaptube/premium/ads/splash/HotSplashAdManager/e_Z.smali`

#### `Config.R6(String)` — new-install switches

Maps prefixes to:

- `key.upgrade_switch_new_install_enable`
- `key.guide_switch_new_install_enable`
- `key.ad_switch_new_install_enable`

Default: `false`.

Evidence:

- `Config.java:775-779`
- `smali-methods/.../Config/R6_Ljava_lang_String_Z.smali`
- `gates-41157962851/config_new_install_R6.tsv`

#### `o/od.v(String)` — per-position enabled

```java
// jadx/o/od.java:139-141
public static boolean v(String str) {
    return p().getBoolean(a("enabled", str), true);
}
```

Default: `true`.

Exact callers found:

- `SplashAdManager.c0()`
- `HotSplashAdManager.g()`

Evidence:

- `gates-41157962851/od_position_enabled_v.tsv`
- `smali-methods/o/od/v_Ljava_lang_String_Z.smali`

Interpretation: confirmed for splash/hot-splash paths; not confirmed as a universal gate for all 17 placements.

#### `o/od.c(String)` — preload switch

```java
// jadx/o/od.java:33-38
public static boolean c(String str) {
    if (TextUtils.isEmpty(str)) return false;
    return p().getBoolean("/preload_switch/" + str, false);
}
```

Default: `false`.

Callers include:

- `o/nr3.d()`
- `ExploreActivity.a2()` multiple times
- `VideoPlaybackFragment.s4()`

Evidence:

- `gates-41157962851/od_preload_switch_c.tsv`
- `smali-methods/o/od/c_Ljava_lang_String_Z.smali`

#### `o/y6` — `key.enable_ad_block`

Smali confirms:

- `y6.b()` reads `pref.switches` / `key.enable_ad_block`, default `true`.
- `y6.a()` combines `b()` with another SharedPreferences boolean, default `true`.

Callers include:

- `o/vm8.b(String)`
- `o/z6.a(String)`

Evidence:

- `gates-41157962851/ad_block_y6.tsv`
- `gates-41157962851/methods/o/y6/a_Z.smali`
- `gates-41157962851/methods/o/y6/b_Z.smali`

Interpretation: there is an existing “ad block” preference path, but its full effect across all ad surfaces is not yet proven.

### 6.5 Native ad engine selector and built-in dummy engine

`o/w25.h()` selects a native ad engine:

- reads `/native_ad_engine`, default `pubnative_mediation`;
- if value is not `pubnative_mediation`, or lazy mediation engine is unavailable, selects built-in dummy `w25$a`;
- dummy `w25$a.a(String)` returns `false`;
- dummy load/show methods are no-ops.

Evidence:

- `jadx/o/w25.java:22-53,95-122`
- `gates-41157962851/methods/o/w25/h_Lo_ne3_.smali:13-64`
- `gates-41157962851/methods/o/w25/a_Ljava_lang_String_Z.smali`

This is a strong candidate for disabling native mediation ads without deleting SDK code.

### 6.6 Cold-launch / hot-splash interstitial path

Confirmed chain:

1. `SplashAdManager$c.run()` calls:
   - `SplashAdActivity.g1(context, "cold_launch", AdsPos.INTERSTITIAL_LAUNCH.pos(), map)`
2. `SplashAdActivity.g1()` calls `h1(context, false, ...)`.
3. `SplashAdActivity.h1()` calls `i1(context, false, ..., true, map)`.
4. `SplashAdActivity.i1()` resolves `ISplashAdsManager` and calls `vh3.d(...)`.

Hot splash:

- `HotSplashAdManager.e()` checks `Config.w3(...)`.
- `HotSplashAdManager.g()` checks `e()`, `od.v(HOT_SPLASH)`, frequency control, then requests ads.
- `SplashAdManager.u0()` can call `SplashAdActivity.h1(..., true, "hot_launch", HOT_SPLASH, ...)`.

Evidence:

- `jadx/com/snaptube/premium/ads/SplashAdManager.java:150-162,718-724`
- `smali-methods/com/snaptube/ads/activity/SplashAdActivity/g1_Landroid_content_Context_Ljava_lang_String_Ljava_lang_String_Ljava_util_Map_Z.smali`
- `gates-41157962851/methods/com/snaptube/ads/activity/SplashAdActivity/h1_...smali`
- `gates-41157962851/methods/com/snaptube/ads/activity/SplashAdActivity/i1_...smali`
- `gates-41157962851/methods/com/snaptube/premium/ads/splash/HotSplashAdManager/e_Z.smali`
- `gates-41157962851/methods/com/snaptube/premium/ads/splash/HotSplashAdManager/g_V.smali`
- `gates-41157962851/methods/com/snaptube/premium/ads/SplashAdManager/u0_V.smali`
- `gates-41157962851/splash_g1_h1.tsv`

### 6.7 Start-download interstitial path

Confirmed chain:

- `ExploreActivity.a2()` calls `StartDownloadAdViewModel.A(scene)`.
- `VideoPlaybackFragment.onCreate()` calls `StartDownloadAdViewModel.B(...)`.
- `A()` calls `B(null, scene, 1, null)`.
- `B()` calls `z(bundle, scene)`.
- `z()` checks `w(bundle)`, frequency control, then requests/preloads `START_DOWNLOAD_INTERSTITIAL`.
- `K()` can show/use cached start-download ads and may call `B(..., "no_cache", ...)`.

Evidence:

- `gates-41157962851/start_download_A_B.tsv`
- `smali-methods/com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel/A_Ljava_lang_String_V.smali`
- `gates-41157962851/methods/.../StartDownloadAdViewModel/B_...smali`
- `gates-41157962851/methods/.../StartDownloadAdViewModel/z_...smali`
- `gates-41157962851/methods/.../StartDownloadAdViewModel/w_...smali`
- `gates-41157962851/methods/.../StartDownloadAdViewModel/K_...smali`

Risk: reward/download gating must be preserved. Disabling an ad should not accidentally block legitimate downloads or forge reward entitlement.

### 6.8 Ad-related manifest components

Confirmed ad-related components include:

- `SimpleInterstitialAdActivity`
- `RewardSplashAdActivity`
- `CleanAdRedirectActivity`
- `CleanSplashAdActivity`
- `SocialGuideAdActivity`
- `com.snaptube.ads.activity.SplashAdActivity`
- `com.snaptube.ads.infomobi.receiver.ReceiverDelegate`
- `com.snaptube.ads.infomobi.receiver.InitReceiver`

Evidence:

- `analysis/remote/gates-41157962851/manifest-findings.json`
- `analysis/remote/gates-41157962851/manifest/AndroidManifest.xml:78,160,928-929,1018,1044,1051,1064-1066`

### 6.9 VIP / paid no-ad boundary

Confirmed strings:

```text
vip_licence_message: Congratulations for successfully applied VIP Premium...
- Permanently remove app ads
vip_note: Note: we cannot block the embedded ads from public websites.
```

Confirmed config keys include:

- `key.vip_no_ad_success_time_millis`
- `key.vip_switch_max_no_ad_buffer_seconds`

Evidence:

- `analysis/remote/41155692929/report/reports/resource-candidates.json`
- `analysis/remote/targeted-41157059752/jadx/com/snaptube/premium/configs/Config.java:1546,1584,2089`

Boundary: ad-removal patches should target ad display/request orchestration, not VIP purchase/license entitlement forging.

---

## 7. Forced-update / self-upgrade architecture

### 7.1 Cold-start fetch

`o/pi2` is tagged `FetchUpgradeTask`:

```java
// jadx/o/pi2.java:29-33
public void run() {
    CheckSelfUpgradeManager.ConfigFetcher.UPGRADE
        .fetchUpgradeConfig(true, false, "cold_start")
        .Y(sh.c())
        .x0(new a());
    com.snaptube.premium.selfupgrade.incremental_upgrade.b.y();
}
```

Callback:

```java
// jadx/o/pi2.java:18-26
public void d(UpgradeConfig upgradeConfig) {
    if (upgradeConfig == null || s5.d() == null) return;
    AppForceUpdateHelper.a.r(PhoenixApplication.z(), upgradeConfig, "cold_start");
}
```

Evidence:

- `analysis/remote/targeted-41157059752/jadx/o/pi2.java:18-33`
- `analysis/remote/gates-41157962851/force_helper_show_r.tsv`

### 7.2 Upgrade enable switch

`CheckSelfUpgradeManager$e.a()` checks:

```java
if (!Config.v4()) {
    return rx.c.Q(UpgradeConfig.NEWEST);
}
```

`Config.v4()`:

```java
// Config.java:1945-1947
public static boolean v4() {
    return i1().getBoolean("key.is_upgrade_enabled", true);
}
```

Evidence:

- `jadx/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:345-353`
- `gates-41157962851/methods/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager$e/a_Ljava_lang_String_Lrx_c_.smali:8-20`
- `smali-methods/com/snaptube/premium/configs/Config/v4_Z.smali`
- `gates-41157962851/config_upgrade_enabled_v4.tsv`

Interpretation: `Config.v4() == false` short-circuits the upgrade fetch to `UpgradeConfig.NEWEST`. This can disable self-upgrade fetching, but it is broader than only forced-update blocking.

### 7.3 Lifecycle registration

`o/r24.run()` registers the force-update helper:

```smali
# gates-41157962851/methods/o/r24/run_V.smali
sget-object v1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:...
invoke-virtual {v1, v0}, ...AppForceUpdateHelper;->k(Landroid/app/Application;)V
```

`AppForceUpdateHelper.k()` registers activity lifecycle callbacks.

`onActivityResumed()` can trigger async force-update checking.

Evidence:

- `gates-41157962851/force_helper_register_k.tsv`
- `gates-41157962851/methods/o/r24/run_V.smali`
- `jadx/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:141-144`
- `jadx/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$a.java:52-58`

### 7.4 Force-update decision gate

Confirmed Smali for `AppForceUpdateHelper.o(UpgradeConfig, String)`:

Logic:

1. If `rh8.b(config)` is true, return false.
   - `rh8.b` is a version-compare helper; server version must be newer than installed.
2. If `sq5.c()` is false, return false.
   - storage permission helper: `WRITE_EXTERNAL_STORAGE` or `MANAGE_EXTERNAL_STORAGE`.
3. If `config.isStrongUpdate()` is false, return false.
4. If `config.isStrictForceUpdate()` is true, return true.
5. Otherwise check downloaded APK existence/MD5/backoff and `f(config)`.

Evidence:

- `smali-methods/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper/o_Lcom_snaptube_premium_selfupgrade_incremental_upgrade_UpgradeConfig_Ljava_lang_String_Z.smali:1-75`
- `jadx/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:161-185`

`UpgradeConfig` gates:

```java
public boolean isStrongUpdate() {
    return getPriority() == UpdatePriority.STRONG;
}

public boolean isStrictForceUpdate() {
    UpgradeMeta upgradeMeta = this.meta;
    return upgradeMeta != null && upgradeMeta.isForceUpdate;
}
```

Evidence:

- `jadx/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java:216-223`
- `smali-methods/.../UpgradeConfig/isStrongUpdate_Z.smali`
- `smali-methods/.../UpgradeConfig/isStrictForceUpdate_Z.smali`

### 7.5 Force-update show/finish path

`AppForceUpdateHelper.r(Context, UpgradeConfig, String)`:

1. If config is null, return false.
2. Call `o(config, scene)`.
3. If true and `f(config)` is true, use scene `any_page_visible_force`.
4. Call `m(context, config, scene)`.
5. Return true.

`m()`:

```java
// AppForceUpdateHelper.java:151-154
public final void m(Context context, UpgradeConfig upgradeConfig, String str) {
    ForceUpdateActivity.INSTANCE.a(context, upgradeConfig, str);
    i();
}
```

`i()` finishes all tracked activities except `ForceUpdateActivity`.

`h()` finishes all tracked activities.

`ForceUpdateActivity.onBackPressed()` requires double-back within 2 seconds, then calls `h()`.

Evidence:

- `smali-methods/.../AppForceUpdateHelper/r_Landroid_content_Context_Lcom_snaptube_premium_selfupgrade_incremental_upgrade_UpgradeConfig_Ljava_lang_String_Z.smali:1-52`
- `jadx/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java:116-135,151-154,187-202`
- `jadx/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java:50-55,95-97,140-148`
- `gates-41157962851/force_helper_launch_m.tsv`
- `gates-41157962851/force_helper_finish_h_i.tsv`

### 7.6 Manifest omission and likely runtime consequence

Confirmed: decoded manifest contains no `selfupgrade` activity/receiver/service declarations:

- no `ForceUpdateActivity`
- no `NormalUpdateActivity`
- no `BaseUpgradeActivity`
- no `CheckSelfUpgradeReceiver`

Evidence:

- `analysis/remote/gates-41157962851/manifest/AndroidManifest.xml`
- `analysis/remote/gates-41157962851/manifest-findings.json`
- `analysis/remote/targeted-41157059752/components.tsv`

`ForceUpdateActivity.INSTANCE.a()` builds an explicit intent to `ForceUpdateActivity.class` and calls `NavigationManager.l1()`.

`NavigationManager.l1()` → `m1()` → `n1()`:

```java
// candidate-sources/com/snaptube/premium/NavigationManager.java:1185-1205
try {
    context.startActivity(intent, bundle);
    return true;
} catch (Exception e2) {
    ProductionEnv.logException(..., e2);
}
return false;
```

But `AppForceUpdateHelper.m()` does not check the launch result before calling `i()`.

Likely consequence: if the force-update path triggers, the activity launch may fail because the activity is not declared, then `i()` may still finish other activities. This can look like forced exit/blocking even without a visible force-update screen.

Unknown: exact device runtime behavior, because no device test was performed.

### 7.7 Normal update / dialog paths

`ExploreActivity` handles:

- `phoenix.intent.action.ACTION_SELF_UPDATE_AVAILABLE`
  - calls `CheckSelfUpgradeManager.S("notification", true)`
  - calls `CheckSelfUpgradeManager.q(this, "click_notification_upgrade")`
- `snaptube.intent.action.SHOW_UPGRADE_DIALOG`
  - calls `x2(...)`, which shows `UpgradeDialog`
- `k2()` calls `incremental_upgrade.b.y()`

`UpgradeDialog` is non-cancelable in `onStart()` and has an “Update now” path calling `CheckSelfUpgradeManager.S(...)` and `q(...)`.

Evidence:

- `jadx/com/snaptube/premium/activity/ExploreActivity.java:794-796,1073-1077,1093-1095,1282-1285`
- `jadx/com/snaptube/premium/dialog/UpgradeDialog.java:79-84,104-108`
- `jadx/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java:517-519,763-766`

These are update-prompt paths, not all necessarily “forced update”, but they are relevant to the user’s complaint.

---

## 8. Other notable findings

### 8.1 Telemetry / analytics / performance

Presence confirmed for:

- Sensors Data AutoTrack
- Firebase Performance / Crashlytics / Messaging / Remote Config
- Tencent Matrix
- SnapTube reporting/counter classes

This report does not classify all telemetry as malicious; it is inventory evidence.

### 8.2 Native libraries

18 native-library entries were inventoried across `arm64-v8a` and `armeabi-v7a`.

Notable anomaly:

```text
lib/armeabi-v7a/libvideo_v1_v7a.so
size: 15 bytes
content: ©2025 Snaptube
```

This is not an ELF shared object. It appears to be a text stub/placeholder. Runtime impact is unknown.

Evidence:

- `analysis/remote/targeted-41157059752/native-library-inventory.json`

### 8.3 WebView / site ads

The app contains extensive WebView/ad-bridge code. The VIP note explicitly says embedded ads from public websites cannot be blocked. Therefore client-side ad-removal patches should not be represented as guaranteed removal of all website-embedded ads.

Evidence:

- `xref-counts.json`: `webview_ad_bridge: 563`
- `resource-candidates.json`: `vip_note`

---

## 9. Candidate minimal patch points — NOT YET APPLIED

These are candidates for the next phase. They are intentionally narrow and reversible. Each must be re-verified in Smali before rebuilding.

### 9.1 Forced-update blocking

| Priority | Target | Proposed change | Expected effect | Risk |
|---|---|---|---|---|
| P0 | `AppForceUpdateHelper.r(Context,UpgradeConfig,String)Z` | return `false` immediately | Prevents cold-start/lifecycle force-update show path and prevents `m()` → `i()` activity finishing | Low; targeted |
| P0 backup | `AppForceUpdateHelper.o(UpgradeConfig,String)Z` | return `false` immediately | Neutralizes force decision gate | Low; targeted |
| P1 optional | `Config.v4()Z` | return `false` | Short-circuits upgrade fetch to `NEWEST` | Broader: may disable normal self-upgrade checks |
| P2 only if needed | `xi7.c(Context,Z)Z` | return `false` | Suppresses “not official signature” warning | Higher policy/security relevance; not recommended unless user explicitly approves and it is necessary |

Recommended first patch: `r()` return false. Add `o()` return false only if verification shows another caller can reach `m()`.

Do not patch VIP/payment/license state.

### 9.2 Ad display/request gates

| Priority | Target | Proposed change | Expected effect | Risk |
|---|---|---|---|---|
| P0 | `SplashAdActivity.i1(Context,Z,String,String,Z,Map)Z` | return `false` | Blocks cold/hot splash ad launch through `g1/h1/l1` | Low for splash UI; may leave splash wrapper fallback |
| P0 | `HotSplashAdManager.e()Z` | return `false` | Disables hot-splash config gate | Low |
| P0 | `HotSplashAdManager.g()V` | return immediately | Stops hot-splash request path | Low |
| P0 | `StartDownloadAdViewModel.z(Bundle,String)V` | return immediately | Stops start-download interstitial preload/request | Must verify download flow continues |
| P0 | `StartDownloadAdViewModel.w(Bundle)Z` | return `false` | Makes start-download ad eligibility false | Must verify no reward/download deadlock |
| P1 | `od.v(String)Z` | return `false` | Disables per-position enabled gate where used | Confirmed callers: splash/hot-splash only |
| P1 | `od.c(String)Z` | return `false` | Disables preload switches | May reduce ad caching; generally safe |
| P1 | `w25.h()Lo/ne3;` | return built-in dummy `w25$a` | Disables native mediation engine selection | Need to preserve listener transfer/no-op behavior |
| P1 | `Config.P2()Z` | return `false` | Disables `key.enable_ad` gate | Only one direct caller found; not universal |
| P2 | `Config.w3(Z)Z` | return `false` | Disables hot-splash pref | Redundant if `HotSplashAdManager.e()` patched |
| P2 | `Config.R6(String)Z` | return `false` | Disables new-install ad/guide/upgrade switches | Already defaults false; may affect guide/upgrade |

Reward ads, clean/boost ads, browser banners, feed natives, and WebView/site ads require additional verification before claiming complete removal. The first patch should focus on the confirmed high-impact paths above, then run a residual xref/static pass.

### 9.3 What should not be changed in the first patch

- VIP/purchase/license entitlement logic.
- Payment or subscription validation.
- Core download/playback logic unrelated to ads.
- Account/login/security logic.
- Broad SDK deletion.
- Manifest package identity.
- Original APK file.

---

## 10. Verification plan for the modification phase

All tooling remains on GitHub Actions.

1. Create a working copy; never modify `google_drive/SnapTube.apk`.
2. Apply only approved Smali patches.
3. Produce a patch diff and method-level before/after evidence.
4. Rebuild with Apktool.
5. Run `zipalign` checks.
6. Sign with a new local/test keystore generated on the runner.
   - The original private key is not available.
   - The output APK will not upgrade-install over the existing third-party-signed APK unless the same key is used, which we do not have.
   - Installing may require uninstalling the existing app, which would erase app data. That requires explicit approval.
7. Run `apksigner verify --verbose --print-certs`.
8. Re-decode/re-scan the patched APK to confirm:
   - force-update gate returns false,
   - splash/start-download/native gates are disabled,
   - no VIP/payment entitlement was forged,
   - manifest/package identity remains unchanged except signing.
9. Publish hashes, build logs, signature report, alignment report, and patch diff.
10. Device testing only with separate explicit approval. No uninstall/data erase without approval.

---

## 11. Evidence index

### GitHub Actions runs

| Run | Purpose | Result |
|---|---|---|
| `41155692929` | Full static analysis | Analysis/upload steps succeeded; original publish step failed due gitignored path |
| `41156459613` | Publish static evidence | SUCCESS |
| `41157059752` | Targeted method-level evidence | SUCCESS |
| `41157652282` | Exact gate caller xrefs | SUCCESS |
| `41157962851` | Gate callers + manifest/network config + exact methods | SUCCESS |

### Main evidence directories

- `analysis/remote/41155692929/report/`
  - full static inventory, logs, signature, badging, coverage, candidate sources, resource candidates, URL/ad lifecycle hits.
- `analysis/remote/targeted-41157059752/`
  - bounded JADX/Smali targets, 1,238 extracted methods, manifest summary, components, ad SDK inventory, native library inventory, xrefs.
- `analysis/remote/gates-41157652282/`
  - first exact gate-caller pass.
- `analysis/remote/gates-41157962851/`
  - refreshed exact gate-caller pass, decoded manifest, network security configs, exact gate methods.

### Coverage / limits

```json
{
  "jadx_exit_code": "3",
  "jadx_log_error_lines": 1,
  "jadx_source_error_warning_markers": 11140,
  "apktool_exit_code": "0",
  "decoded_smali_files": 43100,
  "decompiled_java_files": 26707,
  "runtime_execution": "NOT TESTED",
  "server_response_behavior": "UNKNOWN; no app-server requests made",
  "native_code_semantics": "PARTIAL; ELF metadata only, no native disassembly",
  "complete_source_recovery": "NOT CLAIMED; decompilation is derived and may be incomplete"
}
```

JADX log final error:

```text
ERROR - finished with errors, count: 86
```

Evidence:

- `analysis/remote/41155692929/report/reports/coverage.json`
- `analysis/remote/41155692929/report/reports/stages.tsv`
- `analysis/remote/41155692929/report/logs/jadx_decompile.log`

---

## 12. Final status

- Original APK hash unchanged: `34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3`.
- No APK patch, rebuild, signing, installation, or device mutation has been performed.
- Static analysis is sufficient to propose a minimal, targeted modification plan.
- Next step requires user approval: proceed with the minimal ad + forced-update patch plan, or adjust scope first.
