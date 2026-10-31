# SnapTube APK — static analysis inventory

**Scope:** inspection only. No APK modification, installation, execution, or device mutation.
**Boundary:** comprehensive static inventory does not mean proof of all runtime behavior or complete security.

## Input integrity

- Original SHA-256: `34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3`
- Matches expected input: **True**
- Working copy matches original: **True**
- Size: 51708137 bytes

## Package facts

| Property | Value |
|---|---|
| package | com.snaptube.premium |
| resolved_default_label | Snaptube |
| version_name | UNKNOWN |
| version_code | UNKNOWN |
| min_sdk | UNKNOWN |
| target_sdk | UNKNOWN |
| compile_sdk_version | 35 |
| DEX files | 5 |
| Native ABIs | arm64-v8a, armeabi-v7a |
| Declared uses-permissions | 17 |
| Manifest components | 129 |

## Tool outcomes

| Stage | Exit code |
|---|---|
| java_version | 0 |
| python_version | 0 |
| apktool_version | 0 |
| jadx_version | 0 |
| jadx_help | 0 |
| apksigner_version | 0 |
| original_signature | 0 |
| zipalign_4byte_check | 0 |
| zipalign_16kb_page_check | 0 |
| aapt_badging | 0 |
| aapt2_version | 0 |
| apkanalyzer_version | 0 |
| apkanalyzer_summary | 0 |
| apkanalyzer_manifest | 0 |
| apkanalyzer_permissions | 0 |
| apkanalyzer_files | 0 |
| apkanalyzer_dex_packages | 0 |
| apktool_decode | 0 |
| jadx_decompile | 3 |

## Coverage and limits

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

## Declared permissions

- `android.permission.ACCESS_NETWORK_STATE`
- `android.permission.ACCESS_WIFI_STATE`
- `android.permission.INTERNET`
- `android.permission.REORDER_TASKS`
- `android.permission.WAKE_LOCK`
- `android.permission.WRITE_EXTERNAL_STORAGE` (maxSdkVersion=32)
- `android.permission.READ_EXTERNAL_STORAGE` (maxSdkVersion=32)
- `android.permission.SYSTEM_ALERT_WINDOW`
- `android.permission.GET_PACKAGE_SIZE`
- `android.permission.KILL_BACKGROUND_PROCESSES`
- `android.permission.MANAGE_EXTERNAL_STORAGE`
- `android.permission.FOREGROUND_SERVICE`
- `android.permission.FOREGROUND_SERVICE_DATA_SYNC`
- `android.permission.FOREGROUND_SERVICE_MEDIA_PLAYBACK`
- `android.permission.FOREGROUND_SERVICE_SPECIAL_USE`
- `android.permission.POST_NOTIFICATIONS`
- `com.snaptube.premium.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

## Highest-ranked update candidates

These are search leads, not confirmed update gates.

- `jadx/sources/com/snaptube/premium/R.java` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/configs/Config.java` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes4/com/snaptube/premium/configs/Config.smali` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/activity/ExploreActivity.java` — score 56; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java` — score 52; categories {"update_general": 1, "update_strong": 1, "ad_sdk": 1}
- `decoded/smali_classes2/com/snaptube/premium/R$id.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes2/com/snaptube/premium/R$layout.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes4/com/snaptube/premium/activity/ExploreActivity.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.java` — score 48; categories {"update_general": 1, "update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.java` — score 48; categories {"update_general": 1, "update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/a.java` — score 48; categories {"update_general": 1, "update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/incremental_upgrade/b.java` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes2/com/snaptube/premium/R$drawable.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes4/com/snaptube/premium/dialog/UpgradeDialog.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes4/com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/a.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `decoded/smali_classes4/com/snaptube/premium/selfupgrade/incremental_upgrade/b.smali` — score 48; categories {"update_general": 1, "update_strong": 1}
- `jadx/sources/com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/BaseUpgradeActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/normal/NormalUpdateActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/activity/LandingActivity.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/CheckSelfUpgradeReceiver.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity$initView$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/normal/NormalUpdateActivity$initView$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdateAppInfo$$inlined$backgroundLaunch$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdateAppInfo$1$1$onCallback$$inlined$backgroundLaunch$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdateAppInfo$1$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdateJunkInfo$$inlined$backgroundLaunch$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdatePhotoInfo$$inlined$backgroundLaunch$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel$forceUpdateWASizeInfo$$inlined$backgroundLaunch$1.java` — score 40; categories {"update_strong": 1}
- `jadx/sources/com/snaptube/premium/settings/clean/HomeSettingsCleanViewModel.java` — score 40; categories {"update_strong": 1}

## Highest-ranked advertising candidates

SDK presence alone does not prove an ad is displayed.

- `jadx/sources/com/snaptube/premium/R.java` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/configs/Config.java` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes4/com/snaptube/premium/configs/Config.smali` — score 60; categories {"update_general": 1, "update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/activity/ExploreActivity.java` — score 56; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/dialog/UpgradeDialog.java` — score 52; categories {"update_general": 1, "update_strong": 1, "ad_sdk": 1}
- `decoded/smali_classes2/com/snaptube/premium/R$id.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes2/com/snaptube/premium/R$layout.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `decoded/smali_classes4/com/snaptube/premium/activity/ExploreActivity.smali` — score 52; categories {"update_strong": 1, "ad_lifecycle": 1}
- `jadx/sources/com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/BaseUpgradeActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/force/ForceUpdateActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/selfupgrade/normal/NormalUpdateActivity.java` — score 44; categories {"update_strong": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/NavigationManager.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/activity/DownloadDialogWrapperActivity.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/activity/YtbPlaylistFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/activity/YtbPlaylistTabFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/ads/SplashAdManager.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/ads/a.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/dialog/choose_format/ChooseFormatAdViewHolder.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/FilesViewModel.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$coverSize$2.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/binder/viewholder/ApkAdViewHolder$defaultOtherDrawable$2.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/binder/viewholder/ApkAdViewHolder.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/downloaded/DownloadedTaskViewModel.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/downloading/DownloadingTaskFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/files/downloading/DownloadingViewModel.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/fragment/VideoWebViewFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/fragment/youtube/YtbUserFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/home/SearchTabNavigationFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/localplay/download/BackgroundDownloadService.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/log/LaunchLogger.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/mything/MyThingItem.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/playback/detail/VideoPlaybackFragment.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}
- `jadx/sources/com/snaptube/premium/preview/audio/AudioPreviewAdController.java` — score 16; categories {"ad_lifecycle": 1, "ad_sdk": 1}

## Application manifest metadata

```json
[
  {
    "name": "is_shorts_supported",
    "value": "@bool/base_true",
    "resource": null
  },
  {
    "name": "is_ins_multi_format_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_hls_query_bug_fixed",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_ytb_post_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "com.sensorsdata.analytics.android.VTrack",
    "value": "false",
    "resource": null
  },
  {
    "name": "com.sensorsdata.analytics.android.AutoTrack",
    "value": "true",
    "resource": null
  },
  {
    "name": "android.max_aspect",
    "value": "2.4",
    "resource": null
  },
  {
    "name": "minFrameworkVersion",
    "value": "4",
    "resource": null
  },
  {
    "name": "is_tiktok_url_spacial_char_fixed",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_photo_music_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_photo_video_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_ytb_sabr_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_fb_more_format_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_ins_mock_mp3_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_tt_mock_mp3_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_ytb_live_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_ytb_living_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_youtube_js_inject_fix_csp",
    "value": "true",
    "resource": null
  },
  {
    "name": "is_tt_photo_alias_remove_index",
    "value": "true",
    "resource": null
  },
  {
    "name": "android.notch_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "notch.config",
    "value": "portrait|landscape",
    "resource": null
  },
  {
    "name": "is_cronet_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "com.facebook.sdk.ApplicationId",
    "value": "@string/facebook_app_id",
    "resource": null
  },
  {
    "name": "com.facebook.sdk.ClientToken",
    "value": "@string/facebook_client_token",
    "resource": null
  },
  {
    "name": "com.facebook.sdk.AutoLogAppEventsEnabled",
    "value": "false",
    "resource": null
  },
  {
    "name": "is_meta_search_support",
    "value": "true",
    "resource": null
  },
  {
    "name": "youtube_content_type_version",
    "value": "0",
    "resource": null
  },
  {
    "name": "com.sensorsdata.analytics.android.MainProcessName",
    "value": "com.snaptube.premium",
    "resource": null
  },
  {
    "name": "com.sensorsdata.analytics.android.version",
    "value": "unspecified",
    "resource": null
  }
]
```

## Next review

1. Trace update strings/resources to dialog construction, version comparison, remote-config/API response handling, and startup callers.
2. Trace ad SDK initialization, placement selection, load/show calls, and app-owned mediation wrappers.
3. Cross-check important Java findings against exact Smali methods and resource IDs.
4. Report the smallest change candidates and regression risks; do not edit until the inspection report is delivered.

## Explicitly not established

- Runtime ad display frequency, update-server responses, or behavior on any Android device.
- That every ad path or update path has been found.
- That a proposed change preserves all download, login, notification, or native-library behavior.
- Any malware/safety verdict or complete security assessment.
