# HA Tunnel Plus 1.7.1 — static analysis inventory

**Scope:** inspection only. No APK modification, installation, execution, or device mutation.
**Boundary:** comprehensive static inventory does not mean proof of all runtime behavior or complete security.

## Input integrity

- Original SHA-256: `741e283ba3ee4b04b6988d5842d38491a51fa0bddfaf52d9c6bca9e6245ad051`
- Matches expected input: **True**
- Working copy matches original: **True**
- Size: 25014133 bytes

## Package facts

| Property | Value |
|---|---|
| package | com.hatunnel.plus |
| resolved_default_label | HA Tunnel Plus |
| version_name | UNKNOWN |
| version_code | UNKNOWN |
| min_sdk | UNKNOWN |
| target_sdk | UNKNOWN |
| compile_sdk_version | 36 |
| DEX files | 5 |
| Native ABIs | arm64-v8a, armeabi-v7a, x86_64 |
| Declared uses-permissions | 34 |
| Manifest components | 52 |

## Tool outcomes

| Stage | Exit code |
|---|---|
| java_version | 0 |
| python_version | 0 |
| apktool_version | 0 |
| jadx_version | 0 |
| apksigner_version | 0 |
| original_signature | 0 |
| zipalign_4byte_check | 0 |
| zipalign_16kb_page_check | 0 |
| aapt_badging | 0 |
| apkanalyzer_version | 0 |
| apkanalyzer_summary | 0 |
| apkanalyzer_manifest | 0 |
| apkanalyzer_permissions | 0 |
| apkanalyzer_dex_packages | 0 |
| apktool_decode | 0 |
| jadx_decompile | 3 |

## Coverage and limits

```json
{
  "jadx_exit_code": "3",
  "jadx_log_error_lines": 1,
  "jadx_source_error_warning_markers": 9384,
  "apktool_exit_code": "0",
  "decoded_smali_files": 25408,
  "decompiled_java_files": 17939,
  "runtime_execution": "NOT TESTED",
  "server_response_behavior": "UNKNOWN; no app-server requests made",
  "native_code_semantics": "PARTIAL; ELF metadata and bounded strings only, no native disassembly",
  "complete_source_recovery": "NOT CLAIMED; decompilation is derived and may be incomplete, especially with DexProtector"
}
```

## Declared permissions

- `android.permission.INTERNET`
- `android.permission.FOREGROUND_SERVICE`
- `android.permission.FOREGROUND_SERVICE_SPECIAL_USE`
- `android.permission.ACCESS_NETWORK_STATE`
- `android.permission.VIBRATE`
- `android.permission.READ_EXTERNAL_STORAGE`
- `android.permission.WRITE_EXTERNAL_STORAGE`
- `android.permission.ACCESS_MEDIA_LOCATION`
- `com.google.android.gms.permission.AD_ID`
- `android.permission.ACCESS_ADSERVICES_AD_ID`
- `android.permission.ACCESS_ADSERVICES_ATTRIBUTION`
- `android.permission.ACCESS_ADSERVICES_TOPICS`
- `com.hatunnel.plus.permission.C2D_MESSAGE`
- `android.permission.POST_NOTIFICATIONS`
- `android.permission.WAKE_LOCK`
- `com.google.android.c2dm.permission.RECEIVE`
- `com.sec.android.provider.badge.permission.READ`
- `com.sec.android.provider.badge.permission.WRITE`
- `com.htc.launcher.permission.READ_SETTINGS`
- `com.htc.launcher.permission.UPDATE_SHORTCUT`
- `com.sonyericsson.home.permission.BROADCAST_BADGE`
- `com.sonymobile.home.permission.PROVIDER_INSERT_BADGE`
- `com.anddoes.launcher.permission.UPDATE_COUNT`
- `com.majeur.launcher.permission.UPDATE_BADGE`
- `com.huawei.android.launcher.permission.CHANGE_BADGE`
- `com.huawei.android.launcher.permission.READ_SETTINGS`
- `com.huawei.android.launcher.permission.WRITE_SETTINGS`
- `android.permission.READ_APP_BADGE`
- `com.oppo.launcher.permission.READ_SETTINGS`
- `com.oppo.launcher.permission.WRITE_SETTINGS`
- `me.everything.badger.permission.BADGE_COUNT_READ`
- `me.everything.badger.permission.BADGE_COUNT_WRITE`
- `com.android.vending.BILLING`
- `com.hatunnel.plus.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`

## Highest-ranked advertising candidates

SDK presence alone does not prove an ad is displayed.

- `jadx/sources/app/fast/ssh/R.java` — score 24; categories {"tunnel_vpn": 1, "update_strong": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/HomeFragment.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/MainActivity.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/HomeFragment.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/MainActivity.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/google/android/gms/ads/MobileAds.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzbym.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/RewardedAdSyncController.java` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/AndroidManifest.xml` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/HomeFragment$13.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/RewardedAdSyncController.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/client/VersionInfoParcel.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzeod.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzfms.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "ad_lifecycle": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/zzs.java` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "ad_lifecycle": 1}
- `decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/app/fast/ssh/ExportActivity.java` — score 11; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/google/android/gms/ads/internal/ClientApi.java` — score 11; categories {"ad_sdk": 1, "update_strong": 1}
- `jadx/sources/com/google/android/gms/ads/internal/client/zzay.java` — score 11; categories {"ad_sdk": 1, "update_strong": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/client/zzy.java` — score 11; categories {"ad_sdk": 1, "update_strong": 1}
- `decoded/smali/app/fast/ssh/ExportActivity.smali` — score 11; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/AppOpenAdManager.java` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/FastSSH.java` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/VoucherActivity.java` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/ads/internal/overlay/zzm.java` — score 10; categories {"billing_license": 1, "ad_lifecycle": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzbkl.java` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/AppOpenAdManager.smali` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/FastSSH.smali` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "tunnel_vpn": 1, "ad_sdk": 1}
- `decoded/smali/app/fast/ssh/MainActivity$2.smali` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "tunnel_vpn": 1, "ad_sdk": 1}
- `decoded/smali/app/fast/ssh/VoucherActivity.smali` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/com/google/android/gms/ads/internal/overlay/zzm.smali` — score 10; categories {"billing_license": 1, "ad_lifecycle": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/com/google/android/gms/ads/nonagon/signalgeneration/zzj.smali` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}

## Highest-ranked billing/license candidates

These are search leads for purchase/entitlement flow, not a bypass plan.

- `jadx/sources/app/fast/ssh/R.java` — score 24; categories {"tunnel_vpn": 1, "update_strong": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java` — score 18; categories {"update_general": 1, "update_strong": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali` — score 18; categories {"update_general": 1, "tunnel_vpn": 1, "billing_license": 1, "update_strong": 1}
- `jadx/sources/app/fast/ssh/HomeFragment.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/MainActivity.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/HomeFragment.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/MainActivity.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/RewardedAdSyncController.java` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/AndroidManifest.xml` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/HomeFragment$13.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/RewardedAdSyncController.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/zzs.java` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/com/google/android/gms/gcm/zzd.java` — score 11; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/AppOpenAdManager.java` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/BillingManager.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/FastSSH.java` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/PrefsSubscriptionStore.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/android/billingclient/api/zzda.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/google/android/gms/ads/internal/overlay/zzm.java` — score 10; categories {"billing_license": 1, "ad_lifecycle": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/play_billing/zzdp.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/google/firebase/messaging/WithinAppServiceConnection.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/core/internal/database/impl/OneSignalDbContract.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/Trigger.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsController.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/user/internal/backend/impl/JSONConverter.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/AppOpenAdManager.smali` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `decoded/smali/app/fast/ssh/BillingManager.smali` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `decoded/smali/app/fast/ssh/FastSSH.smali` — score 10; categories {"ad_lifecycle": 1, "billing_license": 1, "tunnel_vpn": 1, "ad_sdk": 1}

## Highest-ranked time-limit candidates

These are search leads for session/time behavior.

- `jadx/sources/app/fast/ssh/R.java` — score 24; categories {"tunnel_vpn": 1, "update_strong": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/HomeFragment.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/MainActivity.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/HomeFragment.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/MainActivity.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/R$id.smali` — score 16; categories {"update_strong": 1, "time_limit": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/RewardedAdSyncController.java` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/HomeFragment$13.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/RewardedAdSyncController.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali` — score 12; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "ad_lifecycle": 1}
- `jadx/sources/app/fast/ssh/ExportActivity.java` — score 11; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/google/android/gms/gcm/zzd.java` — score 11; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/ExportActivity.smali` — score 11; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/BillingManager.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/PrefsSubscriptionStore.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/VoucherActivity.java` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/android/billingclient/api/zzda.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzbkl.java` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/play_billing/zzdp.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/google/firebase/messaging/WithinAppServiceConnection.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/core/internal/database/impl/OneSignalDbContract.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/Trigger.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer.java` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsController.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/user/internal/backend/impl/JSONConverter.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `jadx/sources/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.java` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `decoded/smali/app/fast/ssh/BillingManager.smali` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `decoded/smali/app/fast/ssh/HomeFragment$15.smali` — score 10; categories {"time_limit": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/PrefsSubscriptionStore.smali` — score 10; categories {"time_limit": 1, "tunnel_vpn": 1, "billing_license": 1}
- `decoded/smali/app/fast/ssh/VoucherActivity.smali` — score 10; categories {"ad_lifecycle": 1, "time_limit": 1, "ad_sdk": 1, "tunnel_vpn": 1}

## Highest-ranked tunnel/VPN candidates

- `jadx/sources/app/fast/ssh/R.java` — score 24; categories {"tunnel_vpn": 1, "update_strong": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java` — score 18; categories {"update_general": 1, "update_strong": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali` — score 18; categories {"update_general": 1, "tunnel_vpn": 1, "billing_license": 1, "update_strong": 1}
- `jadx/sources/app/fast/ssh/HomeFragment.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/MainActivity.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/HomeFragment.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/MainActivity.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/google/android/gms/ads/MobileAds.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzbym.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/R$id.smali` — score 16; categories {"update_strong": 1, "time_limit": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.java` — score 15; categories {"update_general": 1, "config_crypto": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/org/conscrypt/Conscrypt.java` — score 15; categories {"config_crypto": 1, "update_strong": 1, "security_config": 1, "tunnel_vpn": 1}
- `decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.smali` — score 15; categories {"update_general": 1, "config_crypto": 1, "tunnel_vpn": 1, "update_strong": 1}
- `jadx/sources/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/AutoClosingRoomOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/QueryInterceptorDatabase.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/RoomOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/SupportSQLiteDatabase.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/SupportSQLiteOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/app/fast/ssh/RewardedAdSyncController.java` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/AndroidManifest.xml` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/QueryInterceptorDatabase.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/RoomOpenHelper.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/sqlite/db/SupportSQLiteOpenHelper$Callback.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/app/fast/ssh/HomeFragment$13.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/app/fast/ssh/RewardedAdSyncController.smali` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/client/VersionInfoParcel.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzeod.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzfms.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}

## Highest-ranked update candidates

- `jadx/sources/app/fast/ssh/R.java` — score 24; categories {"tunnel_vpn": 1, "update_strong": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java` — score 18; categories {"update_general": 1, "update_strong": 1, "billing_license": 1, "tunnel_vpn": 1}
- `decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali` — score 18; categories {"update_general": 1, "tunnel_vpn": 1, "billing_license": 1, "update_strong": 1}
- `jadx/sources/app/fast/ssh/HomeFragment.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/app/fast/ssh/MainActivity.java` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/HomeFragment.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `decoded/smali/app/fast/ssh/MainActivity.smali` — score 17; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "time_limit": 1, "billing_license": 1, "ad_lifecycle": 1, "config_crypto": 1}
- `jadx/sources/com/google/android/gms/ads/MobileAds.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzbym.java` — score 16; categories {"ad_lifecycle": 1, "update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `decoded/smali/app/fast/ssh/R$id.smali` — score 16; categories {"update_strong": 1, "time_limit": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.java` — score 15; categories {"update_general": 1, "config_crypto": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/org/conscrypt/Conscrypt.java` — score 15; categories {"config_crypto": 1, "update_strong": 1, "security_config": 1, "tunnel_vpn": 1}
- `decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.smali` — score 15; categories {"update_general": 1, "config_crypto": 1, "tunnel_vpn": 1, "update_strong": 1}
- `jadx/sources/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/AutoClosingRoomOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/QueryInterceptorDatabase.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/RoomOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/SupportSQLiteDatabase.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/SupportSQLiteOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java` — score 14; categories {"update_general": 1, "update_strong": 1, "tunnel_vpn": 1}
- `decoded/AndroidManifest.xml` — score 14; categories {"ad_sdk": 1, "tunnel_vpn": 1, "update_general": 1, "security_config": 1, "billing_license": 1, "ad_lifecycle": 1}
- `decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/QueryInterceptorDatabase.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/RoomOpenHelper.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/sqlite/db/SupportSQLiteOpenHelper$Callback.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper.smali` — score 14; categories {"update_general": 1, "tunnel_vpn": 1, "update_strong": 1}
- `jadx/sources/com/google/android/gms/ads/internal/util/client/VersionInfoParcel.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzeod.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/com/google/android/gms/internal/ads/zzfms.java` — score 13; categories {"update_strong": 1, "ad_sdk": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/room/InvalidationTracker$refreshRunnable$1.java` — score 12; categories {"update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/versionedparcelable/ParcelUtils.java` — score 12; categories {"update_strong": 1, "tunnel_vpn": 1}
- `jadx/sources/androidx/versionedparcelable/VersionedParcelParcel.java` — score 12; categories {"update_strong": 1, "tunnel_vpn": 1}

## Application manifest metadata

```json
[
  {
    "name": "com.google.android.gms.ads.APPLICATION_ID",
    "value": "ca-app-pub-5640609611628446~7168947344",
    "resource": null
  },
  {
    "name": "com.google.android.gms.ads.flag.OPTIMIZE_AD_LOADING",
    "value": "true",
    "resource": null
  },
  {
    "name": "com.google.android.gms.ads.flag.OPTIMIZE_INITIALIZATION",
    "value": "true",
    "resource": null
  },
  {
    "name": "com.google.android.play.billingclient.version",
    "value": "9.1.0",
    "resource": null
  },
  {
    "name": "com.google.android.gms.version",
    "value": "@integer/APKTOOL_RENAMED_0x7f0a0008",
    "resource": null
  }
]
```

## Asset protection observations

- 9/9 assets appear non-textual or high-entropy in the first 4 KiB.
  - `assets/PublicSuffixDatabase.list` size=42476 entropy=7.9552 printable=0.3811
  - `assets/assets.dat` size=2605171 entropy=7.9507 printable=0.377
  - `assets/dexopt/baseline.prof` size=5246 entropy=7.9054 printable=0.3657
  - `assets/dexopt/baseline.profm` size=573 entropy=7.628 printable=0.3857
  - `assets/resources/allowed_apps.json` size=579 entropy=7.6139 printable=0.4024
  - `assets/resources/customs.json` size=192 entropy=7.0014 printable=0.4062
  - `assets/resources/methods.json` size=279 entropy=7.1846 printable=0.4194
  - `assets/resources/servers.json` size=434 entropy=7.4502 printable=0.4009
  - `assets/resources/whatsnew.json` size=309 entropy=7.2396 printable=0.3916

## Next review

1. Trace ad SDK initialization, placement selection, load/show calls, and app-owned mediation wrappers.
2. Trace billing/purchase and time/session state to understand legitimate entitlement flow; do not forge paid entitlements.
3. Trace VPN/tunnel startup, SSH/SOCKS proxy, .hat config import/export, and native hev-socks5 integration.
4. Cross-check important Java findings against exact Smali methods and resource IDs.
5. Report the smallest change candidates and regression risks; do not edit until the inspection report is delivered.

## Explicitly not established

- Runtime ad display frequency, billing/time enforcement, update-server responses, or behavior on any Android device.
- That every ad path, billing path, or time-limit path has been found.
- That a proposed change preserves VPN, SSH, config import/export, login, notification, or native-library behavior.
- Any malware/safety verdict or complete security assessment.
