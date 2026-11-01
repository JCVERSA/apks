# ZArchiver base.apk — static analysis inventory

**Scope:** inspection only. No APK modification, installation, execution, or device mutation.
**Boundary:** comprehensive static inventory does not mean proof of all runtime behavior or complete security.

## Input integrity

- Original SHA-256: `aab078d2ea7b80e7199d2bb988772128131848c4df078ea8c55b19df7dfc16fd`
- Matches expected input: **True**
- Working copy matches original: **True**
- Size: 4864570 bytes

## Package facts

| Property | Value |
|---|---|
| package | ru.zdevs.zarchiver |
| resolved_default_label | ZArchiver |
| version_name | UNKNOWN |
| version_code | UNKNOWN |
| min_sdk | UNKNOWN |
| target_sdk | UNKNOWN |
| compile_sdk_version | 34 |
| DEX files | 1 |
| Native ABIs | armeabi-v7a |
| Declared uses-permissions | 13 |
| Manifest components | 16 |

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
| jadx_decompile | 0 |

## Coverage and limits

```json
{
  "jadx_exit_code": "0",
  "jadx_log_error_lines": 0,
  "jadx_source_error_warning_markers": 871,
  "apktool_exit_code": "0",
  "decoded_smali_files": 800,
  "decompiled_java_files": 472,
  "runtime_execution": "NOT TESTED",
  "server_response_behavior": "UNKNOWN; no app-server requests made",
  "native_code_semantics": "PARTIAL; ELF metadata, exported symbols, and bounded strings only, no native disassembly",
  "complete_source_recovery": "NOT CLAIMED; decompilation is derived and may be incomplete"
}
```

## Declared permissions

- `android.permission.READ_EXTERNAL_STORAGE` (maxSdkVersion=32)
- `android.permission.WRITE_EXTERNAL_STORAGE` (maxSdkVersion=29)
- `android.permission.WRITE_MEDIA_STORAGE` (maxSdkVersion=29)
- `android.permission.WAKE_LOCK`
- `android.permission.ACCESS_SUPERUSER`
- `android.permission.FOREGROUND_SERVICE`
- `android.permission.FOREGROUND_SERVICE_DATA_SYNC`
- `ru.zdevs.zarchiver.permission.PLUGIN.CLOUD`
- `ru.zdevs.zarchiver.permission.PLUGIN.USB`
- `moe.shizuku.manager.permission.API_V23`
- `android.permission.REQUEST_INSTALL_PACKAGES`
- `android.permission.MANAGE_EXTERNAL_STORAGE`
- `android.permission.POST_NOTIFICATIONS`

## Declared custom permissions


## Highest-ranked storage/root candidates

- `jadx/sources/ru/zdevs/zarchiver/R.java` — score 54; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "archive_native": 1, "ads_billing_license": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java` — score 54; categories {"root_shizuku": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZApp.java` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/ZApp.smali` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `jadx/sources/ru/zdevs/zarchiver/a.java` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/a.smali` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali` — score 36; categories {"plugin_system": 1, "storage_saf": 1, "root_shizuku": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZImageViewer.java` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/AndroidManifest.xml` — score 25; categories {"root_shizuku": 1, "update": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "security_config": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZArchiver.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/smali/ru/zdevs/zarchiver/ZImageViewer.smali` — score 21; categories {"plugin_system": 1, "storage_saf": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/res/values/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ar/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-az/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-cs/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-de/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-es/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hu/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-in/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-it/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ja/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ka-rGE/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ko/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-lt/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pl/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pt-rBR/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ru/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}

## Highest-ranked archive/plugin candidates

- `jadx/sources/ru/zdevs/zarchiver/R.java` — score 54; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "archive_native": 1, "ads_billing_license": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java` — score 54; categories {"root_shizuku": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZApp.java` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/ZApp.smali` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `jadx/sources/ru/zdevs/zarchiver/a.java` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/a.smali` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali` — score 36; categories {"plugin_system": 1, "storage_saf": 1, "root_shizuku": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZImageViewer.java` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/AndroidManifest.xml` — score 25; categories {"root_shizuku": 1, "update": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "security_config": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZArchiver.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/smali/ru/zdevs/zarchiver/ZImageViewer.smali` — score 21; categories {"plugin_system": 1, "storage_saf": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/res/values/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ar/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-az/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-cs/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-de/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-es/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hu/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-in/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-it/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ja/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ka-rGE/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ko/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-lt/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pl/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pt-rBR/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ru/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}

## Highest-ranked APK-install candidates

- `jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java` — score 54; categories {"root_shizuku": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZApp.java` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/ZApp.smali` — score 48; categories {"storage_saf": 1, "root_shizuku": 1, "plugin_system": 1, "apk_install": 1}
- `jadx/sources/ru/zdevs/zarchiver/a.java` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/a.smali` — score 39; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "apk_install": 1}
- `decoded/AndroidManifest.xml` — score 25; categories {"root_shizuku": 1, "update": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "security_config": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/InstallApkDlg.java` — score 12; categories {"apk_install": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApkDlg.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali` — score 12; categories {"apk_install": 1}
- `decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg$c.smali` — score 12; categories {"apk_install": 1}
- `jadx/sources/q0/a.java` — score 6; categories {"archive_native": 1, "apk_install": 1}
- `decoded/smali/q0/a.smali` — score 6; categories {"archive_native": 1, "apk_install": 1}
- `jadx/sources/b0/d.java` — score 4; categories {"apk_install": 1}
- `decoded/smali/b0/d.smali` — score 4; categories {"apk_install": 1}

## Highest-ranked network/ads/license candidates

- `jadx/sources/ru/zdevs/zarchiver/R.java` — score 54; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "archive_native": 1, "ads_billing_license": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java` — score 27; categories {"update": 1, "ads_billing_license": 1, "network": 1}
- `decoded/AndroidManifest.xml` — score 25; categories {"root_shizuku": 1, "update": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "security_config": 1}
- `decoded/res/values/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ar/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-az/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-cs/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-de/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-es/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hu/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-in/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-it/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ja/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ka-rGE/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ko/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-lt/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pl/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pt-rBR/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ru/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-sk/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-sr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-th-rTH/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-tr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-vi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-zh-rCN/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values/public.xml` — score 18; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-bg/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-da/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-el/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-fa/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-fr/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ky/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ug/strings.xml` — score 15; categories {"update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}

## Highest-ranked update/security candidates

- `jadx/sources/ru/zdevs/zarchiver/R.java` — score 54; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "archive_native": 1, "ads_billing_license": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java` — score 33; categories {"storage_saf": 1, "plugin_system": 1, "archive_native": 1, "update": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java` — score 27; categories {"update": 1, "ads_billing_license": 1, "network": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali` — score 27; categories {"storage_saf": 1, "plugin_system": 1, "update": 1}
- `decoded/AndroidManifest.xml` — score 25; categories {"root_shizuku": 1, "update": 1, "storage_saf": 1, "apk_install": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "security_config": 1}
- `jadx/sources/ru/zdevs/zarchiver/ZArchiver.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali` — score 21; categories {"storage_saf": 1, "update": 1, "archive_native": 1}
- `decoded/res/values/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ar/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-az/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-cs/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-de/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-es/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-hu/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-in/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-it/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ja/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ka-rGE/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ko/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-lt/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pl/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-pt-rBR/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-ru/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-sk/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-sr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-th-rTH/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-tr/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-vi/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `decoded/res/values-zh-rCN/strings.xml` — score 20; categories {"root_shizuku": 1, "update": 1, "plugin_system": 1, "network": 1, "archive_native": 1, "ads_billing_license": 1}
- `jadx/sources/ru/zdevs/zarchiver/activity/OpenAsDlg.java` — score 18; categories {"plugin_system": 1, "update": 1}

## Application manifest metadata

```json
[
  {
    "name": "moe.shizuku.client.V3_SUPPORT",
    "value": "true",
    "resource": null
  }
]
```

## Assets

- `assets/tree` size=3469 entropy=4.2785 printable=1.0 likely_text=True

## Explicitly not established

- Runtime behavior on any Android device, including root/Shizuku flows, SAF grants, archive extraction, or APK installation.
- That every native code path has been understood; native libraries were not disassembled.
- Any malware/safety verdict or complete security assessment.
- Ownership or authorization to modify; this report is static analysis only.
