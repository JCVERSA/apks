# Update and security

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/ru/zdevs/zarchiver/R.java:984 (update; file score 54)

```java
   978:         public static final int FSD_ACCESS_FILES_DENIED = 0x7f0c007c;
   979:         public static final int FSD_ACCESS_TO_ALL_STORAGE = 0x7f0c007d;
   980:         public static final int FSD_ACCESS_TO_OBB_FOLDER = 0x7f0c007e;
   981:         public static final int FSD_ALLOW_ACCESS_TO_EXT_SD = 0x7f0c007f;
   982:         public static final int FSD_DONT_SHOW = 0x7f0c0080;
   983:         public static final int FSD_INCORRECT_PATH = 0x7f0c0081;
   984:         public static final int FSD_REMOVE_FILES_UPDATE = 0x7f0c0082;
   985:         public static final int FSD_SELECT_PATH_TO_EXT_SD = 0x7f0c0083;
   986:         public static final int FSD_TTL_FIX_SD = 0x7f0c0084;
   987:         public static final int FSD_USE_ROOT = 0x7f0c0085;
   988:         public static final int FSD_WARNING_TEXT = 0x7f0c0086;
   989:         public static final int FVR_ARCHIVE = 0x7f0c0087;
   990:         public static final int FVR_DEVICE = 0x7f0c0088;
   991:         public static final int FVR_DOCUMENTS = 0x7f0c0089;
   992:         public static final int FVR_DOWNLOAD = 0x7f0c008a;
```

## jadx/sources/ru/zdevs/zarchiver/R.java:1120 (update; file score 54)

```java
  1114:         public static final int MES_SUCESSFUL_END = 0x7f0c0104;
  1115:         public static final int MES_SUCESSFUL_TEST = 0x7f0c0105;
  1116:         public static final int MES_SUCESSFUL_TESTS = 0x7f0c0106;
  1117:         public static final int MES_SUPPORT_ONLY_ASCII_PWD = 0x7f0c0107;
  1118:         public static final int MES_TEST_FILE_PROCESS = 0x7f0c0108;
  1119:         public static final int MES_WHITE_START_SERVICE = 0x7f0c0109;
  1120:         public static final int MOD_UPDATE_FILE = 0x7f0c010a;
  1121:         public static final int NF_ENTER_FILE_NAME = 0x7f0c010b;
  1122:         public static final int NF_ENTER_FOLDER_NAME = 0x7f0c010c;
  1123:         public static final int NF_TTL_NEW_FILE = 0x7f0c010d;
  1124:         public static final int NF_TTL_NEW_FOLDER = 0x7f0c010e;
  1125:         public static final int NTF_ADD_FILES_TO_ARC = 0x7f0c010f;
  1126:         public static final int NTF_COMPRESS = 0x7f0c0110;
  1127:         public static final int NTF_COPY_FILE = 0x7f0c0111;
  1128:         public static final int NTF_DEL_FILES_FROM_ARC = 0x7f0c0112;
```

## jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java:271 (update; file score 33)

```java
   265: 
   266:     @Override
   267:     public final void shutdown() {
   268:     }
   269: 
   270:     @Override
   271:     public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
   272:         throw new UnsupportedOperationException("No support updates");
   273:     }
   274: }
```

## jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java:28 (update; file score 33)

```java
    22:     public static String a(Uri uri) {
    23:         return e.h() + '/' + uri.getFragment();
    24:     }
    25: 
    26:     @Override
    27:     public final int delete(Uri uri, String str, String[] strArr) {
    28:         throw new UnsupportedOperationException("No support updates");
    29:     }
    30: 
    31:     @Override
    32:     public final String getType(Uri uri) {
    33:         String mimeTypeFromExtension;
    34:         String strS = c.s(uri.getFragment());
    35:         return (!h.e(strS) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    36:     }
```

## jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java:184 (update; file score 33)

```java
   178: 
   179:     @Override
   180:     public final void shutdown() {
   181:     }
   182: 
   183:     @Override
   184:     public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
   185:         throw new UnsupportedOperationException("No support updates");
   186:     }
   187: }
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:2054 (update; file score 27)

```java
  2048: .method public final shutdown()V
  2049:     .locals 0
  2050: 
  2051:     return-void
  2052: .end method
  2053: 
  2054: .method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
  2055:     .locals 0
  2056: 
  2057:     new-instance p1, Ljava/lang/UnsupportedOperationException;
  2058: 
  2059:     const-string p2, "No support updates"
  2060: 
  2061:     invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
  2062: 
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:96 (update; file score 27)

```java
    90: # virtual methods
    91: .method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    92:     .locals 0
    93: 
    94:     new-instance p1, Ljava/lang/UnsupportedOperationException;
    95: 
    96:     const-string p2, "No support updates"
    97: 
    98:     invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    99: 
   100:     throw p1
   101: .end method
   102: 
   103: .method public final getType(Landroid/net/Uri;)Ljava/lang/String;
   104:     .locals 1
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:1021 (update; file score 27)

```java
  1015: .method public final shutdown()V
  1016:     .locals 0
  1017: 
  1018:     return-void
  1019: .end method
  1020: 
  1021: .method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
  1022:     .locals 0
  1023: 
  1024:     new-instance p1, Ljava/lang/UnsupportedOperationException;
  1025: 
  1026:     const-string p2, "No support updates"
  1027: 
  1028:     invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
  1029: 
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:44 (update; file score 27)

```java
    38:         ActionBar actionBar;
    39:         e.o(this, false);
    40:         e.k(this, b.f2084e);
    41:         super.onCreate(bundle);
    42:         StringBuilder sb = new StringBuilder("1.0.10 (GP ");
    43:         try {
    44:             i2 = getPackageManager().getPackageInfo("ru.zdevs.zarchiver", 0).versionCode;
    45:         } catch (Exception unused) {
    46:             i2 = 101036;
    47:         }
    48:         sb.append(i2);
    49:         sb.append(")");
    50:         String string = sb.toString();
    51:         if (!e.d(this) && (actionBar = getActionBar()) != null) {
    52:             actionBar.setDisplayHomeAsUpEnabled(true);
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:109 (update; file score 27)

```java
   103:             finishAndRemoveTask();
   104:             return true;
   105:         }
   106:         int itemId = menuItem.getItemId();
   107:         if (itemId == R.id.bRatingApp) {
   108:             intentCreateChooser = new Intent("android.intent.action.VIEW");
   109:             intentCreateChooser.setData(Uri.parse("market://details?id=ru.zdevs.zarchiver"));
   110:         } else if (itemId == R.id.bFeedback) {
   111:             int i2 = Build.VERSION.SDK_INT;
   112:             String str = i2 < 29 ? "\n<br>" : "\n";
   113:             StringBuilder sb = new StringBuilder("mailto:support@zdevs.ru?subject=");
   114:             sb.append(Uri.encode(getString(R.string.app_name) + " 1.0.10 feedback"));
   115:             sb.append("&body=");
   116:             sb.append(Uri.encode("[Write message/problem here]"));
   117:             sb.append(str);
```

## jadx/sources/ru/zdevs/zarchiver/activity/AboutDlg.java:143 (update; file score 27)

```java
   137:             intent.setData(Uri.parse(string));
   138:             intentCreateChooser = Intent.createChooser(intent, getResources().getString(R.string.MENU_FEEDBACK));
   139:         } else if (itemId == R.id.bShare) {
   140:             Intent intent2 = new Intent("android.intent.action.SEND");
   141:             intent2.setType("text/plain");
   142:             intent2.putExtra("android.intent.extra.SUBJECT", "Check out ZArchiver");
   143:             intent2.putExtra("android.intent.extra.TEXT", "ZArchiver is fast and simple archive and file manager. Get it on https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver");
   144:             intentCreateChooser = Intent.createChooser(intent2, getResources().getString(R.string.MENU_SHARE_APP));
   145:         } else {
   146:             intentCreateChooser = null;
   147:         }
   148:         if (intentCreateChooser != null) {
   149:             h.e(this, intentCreateChooser);
   150:             z2 = true;
   151:         } else {
```

## decoded/AndroidManifest.xml:2 (update; file score 25)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <manifest xmlns:android="http://schemas.android.com/apk/res/android" android:compileSdkVersion="34" android:compileSdkVersionCodename="14" android:installLocation="auto" package="ru.zdevs.zarchiver" platformBuildVersionCode="34" platformBuildVersionName="14">
     3:     <queries>
     4:         <intent>
     5:             <action android:name="ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"/>
     6:         </intent>
     7:         <intent>
     8:             <action android:name="android.intent.action.VIEW"/>
     9:             <data android:mimeType="*/*" android:scheme="content"/>
    10:         </intent>
```

## decoded/AndroidManifest.xml:38 (security_config; file score 25)

```java
    32:     <uses-feature android:name="android.hardware.touchscreen" android:required="false"/>
    33:     <uses-feature android:name="android.hardware.type.pc" android:required="false"/>
    34:     <uses-feature android:name="android.software.leanback" android:required="false"/>
    35:     <supports-screens android:anyDensity="true" android:largeScreens="true" android:normalScreens="true" android:resizeable="true" android:smallScreens="true" android:xlargeScreens="true"/>
    36:     <uses-permission android:name="moe.shizuku.manager.permission.API_V23"/>
    37:     <application android:allowBackup="true" android:appCategory="productivity" android:banner="@drawable/ic_tvbanner" android:extractNativeLibs="true" android:hardwareAccelerated="true" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:largeHeap="true" android:localeConfig="@xml/locales_config" android:name="ru.zdevs.zarchiver.ZApp" android:requestLegacyExternalStorage="true" android:requestRawExternalStorageAccess="true" android:restoreAnyVersion="true" android:roundIcon="@mipmap/ic_launcher_round" android:supportsRtl="true" android:theme="@style/AppTheme.Dark">
    38:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:exported="true" android:launchMode="singleTask" android:name="ru.zdevs.zarchiver.ZArchiver" android:resizeableActivity="true" android:theme="@style/AppTheme.Dark" android:windowSoftInputMode="adjustPan">
    39:             <intent-filter>
    40:                 <action android:name="android.intent.action.MAIN"/>
    41:                 <category android:name="android.intent.category.LAUNCHER"/>
    42:             </intent-filter>
    43:             <intent-filter>
    44:                 <action android:name="android.intent.action.VIEW"/>
    45:                 <category android:name="android.intent.category.DEFAULT"/>
    46:                 <category android:name="android.intent.category.BROWSABLE"/>
```

## decoded/AndroidManifest.xml:605 (security_config; file score 25)

```java
   599:             </intent-filter>
   600:         </activity>
   601:         <activity android:label="@string/OPT_TTL_SETTINGS" android:name="ru.zdevs.zarchiver.activity.SettingsDlg" android:resizeableActivity="true" android:theme="@style/AppTheme.Dark"/>
   602:         <activity android:label="@string/ABT_TTL_ABOUT" android:name="ru.zdevs.zarchiver.activity.AboutDlg" android:resizeableActivity="true" android:theme="@style/AppTheme.Dark"/>
   603:         <activity android:name="ru.zdevs.zarchiver.activity.OpenAsDlg" android:resizeableActivity="true" android:theme="@style/Theme.Transparent"/>
   604:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:name="ru.zdevs.zarchiver.activity.InstallApkDlg" android:resizeableActivity="true" android:theme="@style/AppTheme.Dark"/>
   605:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:excludeFromRecents="true" android:exported="true" android:launchMode="singleTop" android:name="ru.zdevs.zarchiver.ZSelectFile" android:theme="@style/AppTheme.Dark" android:windowSoftInputMode="adjustPan">
   606:             <intent-filter>
   607:                 <action android:name="android.intent.action.GET_CONTENT"/>
   608:                 <data android:mimeType="*/*"/>
   609:                 <category android:name="android.intent.category.DEFAULT"/>
   610:                 <category android:name="android.intent.category.OPENABLE"/>
   611:             </intent-filter>
   612:             <intent-filter>
   613:                 <action android:name="android.intent.action.OPEN_DOCUMENT"/>
```

## decoded/AndroidManifest.xml:619 (security_config; file score 25)

```java
   613:                 <action android:name="android.intent.action.OPEN_DOCUMENT"/>
   614:                 <data android:mimeType="*/*"/>
   615:                 <category android:name="android.intent.category.DEFAULT"/>
   616:                 <category android:name="android.intent.category.OPENABLE"/>
   617:             </intent-filter>
   618:         </activity>
   619:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:exported="true" android:label="@string/MENU_EXTRACT_TO_DIR" android:launchMode="singleTask" android:name="ru.zdevs.zarchiver.activity.ExtractDlg" android:resizeableActivity="true" android:theme="@style/Theme.Transparent">
   620:             <intent-filter>
   621:                 <action android:name="android.intent.action.VIEW"/>
   622:                 <category android:name="android.intent.category.DEFAULT"/>
   623:                 <category android:name="android.intent.category.BROWSABLE"/>
   624:                 <data android:host="*"/>
   625:                 <data android:scheme="file"/>
   626:                 <data android:scheme="content"/>
   627:                 <data android:mimeType="application/zstd"/>
```

## decoded/AndroidManifest.xml:669 (security_config; file score 25)

```java
   663:                 <data android:mimeType="application/zipx"/>
   664:                 <data android:mimeType="application/lza"/>
   665:                 <data android:mimeType="application/lzx"/>
   666:                 <data android:mimeType="application/lzma"/>
   667:             </intent-filter>
   668:         </activity>
   669:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:exported="true" android:label="@string/MENU_INSTALL" android:launchMode="singleTask" android:name="ru.zdevs.zarchiver.activity.InstallApksDlg" android:resizeableActivity="true" android:theme="@style/Theme.Transparent">
   670:             <intent-filter>
   671:                 <action android:name="android.intent.action.VIEW"/>
   672:                 <category android:name="android.intent.category.DEFAULT"/>
   673:                 <category android:name="android.intent.category.BROWSABLE"/>
   674:                 <data android:host="*"/>
   675:                 <data android:scheme="file"/>
   676:                 <data android:scheme="content"/>
   677:                 <data android:mimeType="application/apks"/>
```

## decoded/AndroidManifest.xml:700 (security_config; file score 25)

```java
   694:                 <data android:pathPattern=".*apkm"/>
   695:                 <data android:pathPattern=".*APKS"/>
   696:                 <data android:pathPattern=".*XAPK"/>
   697:                 <data android:pathPattern=".*APKM"/>
   698:             </intent-filter>
   699:         </activity>
   700:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:exported="true" android:icon="@mipmap/ic_launcher_image" android:label="@string/app_image_viewer_name" android:launchMode="singleTask" android:name="ru.zdevs.zarchiver.ZImageViewer">
   701:             <intent-filter>
   702:                 <action android:name="android.intent.action.VIEW"/>
   703:                 <category android:name="android.intent.category.DEFAULT"/>
   704:                 <category android:name="android.intent.category.BROWSABLE"/>
   705:                 <data android:host="*"/>
   706:                 <data android:scheme="file"/>
   707:                 <data android:scheme="content"/>
   708:                 <data android:mimeType="image/*"/>
```

## decoded/AndroidManifest.xml:711 (security_config; file score 25)

```java
   705:                 <data android:host="*"/>
   706:                 <data android:scheme="file"/>
   707:                 <data android:scheme="content"/>
   708:                 <data android:mimeType="image/*"/>
   709:             </intent-filter>
   710:         </activity>
   711:         <activity android:configChanges="orientation|screenLayout|screenSize|smallestScreenSize" android:exported="true" android:icon="@mipmap/ic_launcher_text" android:label="@string/app_text_editor_name" android:name="ru.zdevs.zarchiver.ZTextEditor" android:process=":text" android:windowSoftInputMode="stateHidden|adjustResize">
   712:             <intent-filter>
   713:                 <action android:name="android.intent.action.VIEW"/>
   714:                 <category android:name="android.intent.category.DEFAULT"/>
   715:                 <category android:name="android.intent.category.BROWSABLE"/>
   716:                 <data android:host="*"/>
   717:                 <data android:scheme="file"/>
   718:                 <data android:scheme="content"/>
   719:                 <data android:mimeType="text/*"/>
```

## decoded/AndroidManifest.xml:727 (security_config; file score 25)

```java
   721:                 <data android:mimeType="application/json"/>
   722:                 <data android:mimeType="application/javascript"/>
   723:             </intent-filter>
   724:         </activity>
   725:         <service android:enabled="true" android:foregroundServiceType="dataSync" android:name="ru.zdevs.zarchiver.service.ZArchiverService" android:process=":service" android:singleUser="false" android:stopWithTask="false"/>
   726:         <service android:enabled="true" android:foregroundServiceType="dataSync" android:name="ru.zdevs.zarchiver.service.ZArchiverClearTemp" android:singleUser="false"/>
   727:         <provider android:authorities="ru.zdevs.zarchiver.external" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.FileProvider"/>
   728:         <provider android:authorities="ru.zdevs.zarchiver.archive" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.ArchiveFileProvider" android:process=":archive"/>
   729:         <provider android:authorities="ru.zdevs.zarchiver.plugin" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.PluginFileProvider" android:process=":plugin"/>
   730:         <provider android:authorities="ru.zdevs.zarchiver.shizuku" android:enabled="true" android:exported="true" android:multiprocess="false" android:name="rikka.shizuku.ShizukuProvider" android:permission="android.permission.INTERACT_ACROSS_USERS_FULL"/>
   731:         <meta-data android:name="moe.shizuku.client.V3_SUPPORT" android:value="true"/>
   732:     </application>
   733: </manifest>
```

## decoded/AndroidManifest.xml:730 (security_config; file score 25)

```java
   724:         </activity>
   725:         <service android:enabled="true" android:foregroundServiceType="dataSync" android:name="ru.zdevs.zarchiver.service.ZArchiverService" android:process=":service" android:singleUser="false" android:stopWithTask="false"/>
   726:         <service android:enabled="true" android:foregroundServiceType="dataSync" android:name="ru.zdevs.zarchiver.service.ZArchiverClearTemp" android:singleUser="false"/>
   727:         <provider android:authorities="ru.zdevs.zarchiver.external" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.FileProvider"/>
   728:         <provider android:authorities="ru.zdevs.zarchiver.archive" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.ArchiveFileProvider" android:process=":archive"/>
   729:         <provider android:authorities="ru.zdevs.zarchiver.plugin" android:exported="false" android:grantUriPermissions="true" android:name="ru.zdevs.zarchiver.provider.PluginFileProvider" android:process=":plugin"/>
   730:         <provider android:authorities="ru.zdevs.zarchiver.shizuku" android:enabled="true" android:exported="true" android:multiprocess="false" android:name="rikka.shizuku.ShizukuProvider" android:permission="android.permission.INTERACT_ACROSS_USERS_FULL"/>
   731:         <meta-data android:name="moe.shizuku.client.V3_SUPPORT" android:value="true"/>
   732:     </application>
   733: </manifest>
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:914 (update; file score 21)

```java
   908: 
   909: .method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
   910:     .locals 0
   911: 
   912:     new-instance p1, Ljava/lang/UnsupportedOperationException;
   913: 
   914:     const-string p2, "No support updates"
   915: 
   916:     invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
   917: 
   918:     throw p1
   919: .end method
   920: 
   921: .method public final getType(Landroid/net/Uri;)Ljava/lang/String;
   922:     .locals 1
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1931 (update; file score 21)

```java
  1925: .method public final shutdown()V
  1926:     .locals 0
  1927: 
  1928:     return-void
  1929: .end method
  1930: 
  1931: .method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
  1932:     .locals 0
  1933: 
  1934:     new-instance p1, Ljava/lang/UnsupportedOperationException;
  1935: 
  1936:     const-string p2, "No support updates"
  1937: 
  1938:     invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
  1939: 
```

## jadx/sources/ru/zdevs/zarchiver/ZArchiver.java:1955 (update; file score 21)

```java
  1949:             switch (iA) {
  1950:                 case 0:
  1951:                     i();
  1952:                     return;
  1953:                 case 1:
  1954:                     for (File file : ((s) bVar).f101a) {
  1955:                         w wVar = new w(1, this, getString(R.string.MOD_UPDATE_FILE).replace("%1", file.getName()), dVar);
  1956:                         wVar.r(15);
  1957:                         ru.zdevs.zarchiver.a aVar = dVar.f1683c;
  1958:                         wVar.f961b = aVar;
  1959:                         wVar.f960a = aVar;
  1960:                         wVar.o(0, file.getAbsolutePath());
  1961:                         wVar.t();
  1962:                     }
  1963:                     return;
```

## jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java:169 (update; file score 21)

```java
   163:         }
   164:         throw new IllegalStateException("No Context attached");
   165:     }
   166: 
   167:     @Override
   168:     public final int delete(Uri uri, String str, String[] strArr) {
   169:         throw new UnsupportedOperationException("No support updates");
   170:     }
   171: 
   172:     @Override
   173:     public final String getType(Uri uri) {
   174:         String mimeTypeFromExtension;
   175:         String strS = c.s(c(uri).f1706a.f1110e);
   176:         return (!v0.h.e(strS) || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strS)) == null) ? "application/octet-stream" : mimeTypeFromExtension;
   177:     }
```

## jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java:309 (update; file score 21)

```java
   303: 
   304:     @Override
   305:     public final void shutdown() {
   306:     }
   307: 
   308:     @Override
   309:     public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
   310:         throw new UnsupportedOperationException("No support updates");
   311:     }
   312: }
```

## jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java:310 (update; file score 21)

```java
   304:     @Override
   305:     public final void shutdown() {
   306:     }
   307: 
   308:     @Override
   309:     public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
   310:         throw new UnsupportedOperationException("No support updates");
   311:     }
   312: }
```

## decoded/res/values-ar/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">لا يدعم إصدار ملف التطبيق منح الوصول إلى المجلدات.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">يحتاج تطبيق ZArchiver إلى الإذن لقراءة الملفات وتعديلها وحذفها للوصول إلى ملفات هاتفك.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">يحتاج تطبيق ZArchiver إلى الإذن لتثبيت الحزم للوصول إلى مجلد Android / OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">لكتابة البيانات إلى بطاقة الذاكرة الخارجية (SD) %1 يجب السماح بالوصول اليها.</string>
   108:     <string name="FSD_DONT_SHOW">لا تظهر مرة أخرى</string>
   109:     <string name="FSD_INCORRECT_PATH">تحديد مسار غير صحيح إلى %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">يمكنك إلغاء تثبيت هذا التحديث.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">لكتابة البيانات إلى %1 يجب اختيار مسار إلى دليلها.</string>
   112:     <string name="FSD_TTL_FIX_SD">تحذير!</string>
   113:     <string name="FSD_USE_ROOT">يمكنك استخدام صلاحيات الجذر أو شيزوكو.</string>
   114:     <string name="FSD_WARNING_TEXT">يعمل نظام التشغيل أندرويد على تقييد تطبيقات الجهات الخارجية (غير المثبتة مسبقاً على الجهاز) للوصول إلى وظيفة الكتابة عبر الذاكرة الفلاشية أو بطاقة الذاكرة الخارجية (SD).</string>
   115:     <string name="FVR_ARCHIVE">الأرشيف</string>
   116:     <string name="FVR_DEVICE">القرص %1</string>
   117:     <string name="FVR_DOCUMENTS">مستندات</string>
   118:     <string name="FVR_DOWNLOAD">تحميل</string>
```

## decoded/res/values-ar/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">اكتملت العملية بنجاح</string>
   245:     <string name="MES_SUCESSFUL_TEST">الأرشيف لا يحتوي علي أخطاء</string>
   246:     <string name="MES_SUCESSFUL_TESTS">الأرشيفات لا تحتوي علي أخطاء</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">يدعم (ZipCrypto) كلمات المرور باللغة الإنجليزية فقط!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">جارٍ الإختبار:</string>
   249:     <string name="MES_WHITE_START_SERVICE">جارٍ التحضير لفتح الأرشيف</string>
   250:     <string name="MOD_UPDATE_FILE">"تم تعديل الملف %1 .
   251: هل تريد تحديثه في الأرشيف؟"</string>
   252:     <string name="NF_ENTER_FILE_NAME">اسم الملف الجديد:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">إسم المجلد الجديد:</string>
   254:     <string name="NF_TTL_NEW_FILE">ملف جديد</string>
   255:     <string name="NF_TTL_NEW_FOLDER">مجلد جديد</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">جارٍ إضافة الملفات إلى الأرشيف %1</string>
   257:     <string name="NTF_COMPRESS">جارٍ إنشاء الأرشيف: %1</string>
   258:     <string name="NTF_COPY_FILE">جارٍ نسخ الملفات</string>
```

## decoded/res/values-az/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Fayl tətbiqi versiyası qovluqlara giriş icazəsini dəstəkləmir.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver telefonunuzun sənədlərinə daxil olmaq üçün sənədləri oxumaq, dəyişdirmək və silmək üçün icazəyə ehtiyac duyur.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">"ZArchiver'in Android/OBB qovluğuna daxil olmaq üçün paketlərin quraşdırılması üçün icazəyə ehtiyac duyur."</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Xarici SD karta %1 data yazmağa icazə verməlisiniz.</string>
   108:     <string name="FSD_DONT_SHOW">Yenidən göstərmə</string>
   109:     <string name="FSD_INCORRECT_PATH">%1 üçün yanlış yol seçilməsi!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Siz bu yeniləməni silə bilərsiniz.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">%1 data yazmaq üçün öz, qovluğunuza yol seçməlisiniz.</string>
   112:     <string name="FSD_TTL_FIX_SD">Xəbərdarlıq!</string>
   113:     <string name="FSD_USE_ROOT">Root girişi və ya Shizuku istifadə edə bilərsiniz.</string>
   114:     <string name="FSD_WARNING_TEXT">Android sistemi yazma funksiyasına xarici USB yaddaşa və ya SD karta daxil olmaq üçün 3-cü tərəf proqramlarını (cihazda öncədən quraşdırılmış) məhdudlaşdırır.</string>
   115:     <string name="FVR_ARCHIVE">Arxivlər</string>
   116:     <string name="FVR_DEVICE">Disk %1</string>
   117:     <string name="FVR_DOCUMENTS">Sənədlər</string>
   118:     <string name="FVR_DOWNLOAD">Yüklənən</string>
```

## decoded/res/values-az/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Proses uğurla başa çatdı</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arxivdə səhv yoxdur</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arxivlərdə səhvlər yoxdur</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto yalnız İngilis parollarını dəstəkləyir!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Test edilir:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Arxivi açmağa hazırlaşır</string>
   250:     <string name="MOD_UPDATE_FILE">%1 faylı dəyişdirildi. Arxivdə yeniləmə istəyirsinizmi?</string>
   251:     <string name="NF_ENTER_FILE_NAME">Yeni fayl adı:</string>
   252:     <string name="NF_ENTER_FOLDER_NAME">Yeni qovluq adı:</string>
   253:     <string name="NF_TTL_NEW_FILE">Yeni fayl</string>
   254:     <string name="NF_TTL_NEW_FOLDER">Yeni qovluq</string>
   255:     <string name="NTF_ADD_FILES_TO_ARC">Fayllar %1 arxivinə əlavə olunur</string>
   256:     <string name="NTF_COMPRESS">Arxiv yaradılır: %1</string>
   257:     <string name="NTF_COPY_FILE">Fayllar kopyalanır</string>
   258:     <string name="NTF_DEL_FILES_FROM_ARC">%1 arxivindən fayllar silinir</string>
```

## decoded/res/values-cs/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Verze aplikace Soubory nepodporuje udělení přístupu ke složkám.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver potřebuje oprávnění ke čtení, úpravám a mazání souborů pro přístup k souborům vašeho telefonu.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver potřebuje povolení k instalaci balíčků pro přístup do složky Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Pro zápis dat na externí SD kartu %1 musíte povolit pøístup k této kartì.</string>
   108:     <string name="FSD_DONT_SHOW">Příště nezobrazovat</string>
   109:     <string name="FSD_INCORRECT_PATH">Byla vybrána nesprávná cesta k %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Tuto aktualizaci můžete odinstalovat.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Pro zápis dat na %1 musíte zvolit cestu ke koøenovému adresáøi.</string>
   112:     <string name="FSD_TTL_FIX_SD">Varování!</string>
   113:     <string name="FSD_USE_ROOT">Můžete použít root přístup nebo Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">OS Android omezuje aplikacím třetích stran (které nejsou v zařízení nainstalovány) přístup k externímu USB flash disku nebo k zapisování na SD karty.</string>
   115:     <string name="FVR_ARCHIVE">Archivy</string>
   116:     <string name="FVR_DEVICE">Disk %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumenty</string>
   118:     <string name="FVR_DOWNLOAD">Stažené položky</string>
```

## decoded/res/values-cs/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operace byla úspěšně dokončena</string>
   245:     <string name="MES_SUCESSFUL_TEST">Archiv neobsahuje žádné chyby</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Archiv neobsahuje žádné chyby</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto podporuje pouze hesla s anglickými znaky!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Testování:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Příprava na otevření archivu</string>
   250:     <string name="MOD_UPDATE_FILE">"Soubor %1 byl upraven.
   251: Chcete ho aktualizovat v archivu?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Název nového souboru:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Zadejte název složky:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nový soubor</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nová složka</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Přidávání souborů do archivu %1</string>
   257:     <string name="NTF_COMPRESS">Vytváření archivu: %1</string>
   258:     <string name="NTF_COPY_FILE">Kopírování souborů</string>
```

## decoded/res/values-de/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Die Datei-App-Version unterstützt keinen Zugriff auf Ordner.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Um auf die Dateien auf Ihrem Telefon zugreifen zu können, muss die Anwendung Dateiberechtigungen lesen, ändern und löschen.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Für den Zugriff auf den Android/OBB-Ordner benötigt eine App App-Installationsberechtigungen.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Für das Schreiben von Daten auf die externe SD-Karte %1, müssen Sie Zugriff darauf haben.</string>
   108:     <string name="FSD_DONT_SHOW">Nicht mehr anzeigen</string>
   109:     <string name="FSD_INCORRECT_PATH">Falscher Auswahlpfad zu %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Sie können dieses Update deinstallieren.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Um Daten in %1 zu schreiben, müssen Sie einen Pfad zu seinem Verzeichnis wählen.</string>
   112:     <string name="FSD_TTL_FIX_SD">Warnung!</string>
   113:     <string name="FSD_USE_ROOT">Sie können Root-Zugriff oder Shizuku verwenden.</string>
   114:     <string name="FSD_WARNING_TEXT">Android begrenzt die Anwendungen von Drittanbietern (nicht auf jedem Gerat vorinstalliert) den Zugriff auf die Schreibfunktion vom externen USB-Stick oder SD-Karte.</string>
   115:     <string name="FVR_ARCHIVE">Archive</string>
   116:     <string name="FVR_DEVICE">Gerät %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumentation</string>
   118:     <string name="FVR_DOWNLOAD">Download</string>
```

## decoded/res/values-de/strings.xml:249 (update; file score 20)

```java
   243:     <string name="MES_SUCESSFUL_END">Erfolgreich durchgeführt</string>
   244:     <string name="MES_SUCESSFUL_TEST">Das Archiv ist fehlerfrei</string>
   245:     <string name="MES_SUCESSFUL_TESTS">Die Archive sind fehlerfrei</string>
   246:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto unterstützt ausschließlich englische Passwörter!</string>
   247:     <string name="MES_TEST_FILE_PROCESS">Testen:</string>
   248:     <string name="MES_WHITE_START_SERVICE">Vorbereitung für das Öffnen des Archivs</string>
   249:     <string name="MOD_UPDATE_FILE">"Die Datei %1 wurde geändert.
   250: Möchten Sie es im Archiv aktualisieren?"</string>
   251:     <string name="NF_ENTER_FILE_NAME">Neuer Dateiname:</string>
   252:     <string name="NF_ENTER_FOLDER_NAME">Name des neuen Ordners:</string>
   253:     <string name="NF_TTL_NEW_FILE">Neue Datei</string>
   254:     <string name="NF_TTL_NEW_FOLDER">Neuer Ordner</string>
   255:     <string name="NTF_ADD_FILES_TO_ARC">Dateien zum Archiv %1 hinzufügen</string>
   256:     <string name="NTF_COMPRESS">Erstelle: %1</string>
   257:     <string name="NTF_COPY_FILE">Kopiere Dateien</string>
```

## decoded/res/values-es/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">La versión de la aplicación Archivo no admite otorgar acceso a carpetas.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver necesita permiso para leer, modificar y borrar ficheros para acceder a los ficheros de tu teléfono.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver necesita permiso para instalar paquetes para poder acceder a la carpeta Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Para poder escribir datos en la SD externa %1 debes darle acceso.</string>
   108:     <string name="FSD_DONT_SHOW">No volver a mostrar</string>
   109:     <string name="FSD_INCORRECT_PATH">¡Ruta incorrecta a %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Es posible que desinstale esta actualización.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Para escribir en una %1 debe seleccionar la ruta a su directorio.</string>
   112:     <string name="FSD_TTL_FIX_SD">¡Aviso!</string>
   113:     <string name="FSD_USE_ROOT">Puede usar acceso root o Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">In la versión de Android 4.4+ el sistema operativo limita el acceso, a los discos USB externos o a la escritura de tarjetas SD, a las aplicaciones de terceros (las no pre-instaladas en el dispositivo) .</string>
   115:     <string name="FVR_ARCHIVE">Archivos comprimidos</string>
   116:     <string name="FVR_DEVICE">Disco %1</string>
   117:     <string name="FVR_DOCUMENTS">Documentos</string>
   118:     <string name="FVR_DOWNLOAD">Descargas</string>
```

## decoded/res/values-es/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operación completada correctamente</string>
   245:     <string name="MES_SUCESSFUL_TEST">El archivo comprimido no contiene errores</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Los archivos comprimidos no contienen errores</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">¡ZipCrypto únicamente soporta contraseñas en inglés!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Comprobando:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Preparándose para abrir el archivo comprimido</string>
   250:     <string name="MOD_UPDATE_FILE">"El fichero %1 fue modificado.
   251: ¿Desea actualizarlo en el archivo comprimido?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nombre del nuevo archivo:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Nombre de la nueva carpeta:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nuevo archivo</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nueva carpeta</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Añadiendo ficheros al archivo comprimido %1</string>
   257:     <string name="NTF_COMPRESS">Creando archivo comprimido: %1</string>
   258:     <string name="NTF_COPY_FILE">Copiando ficheros</string>
```

## decoded/res/values-hi/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">फ़ाइल ऐप संस्करण फ़ोल्डरों तक पहुंच प्रदान करने का समर्थन नहीं करता है।</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver को उपकरण की फाइल को पढ़ने और सुधार करने या मिटाने के लिए अनुमति चाहिए |</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver को Android/OBB फोल्डर में प्रवेश करने के लिए अनुमति चाहिए |</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">बाह्य उपकरण पर सामग्री को लिखने के लिए %1 आपको अनुमति देनी होगी |</string>
   108:     <string name="FSD_DONT_SHOW">दोबारा न दिखाए</string>
   109:     <string name="FSD_INCORRECT_PATH">गलत रास्ता चुना गया !</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">आपको इस अपडेट को अनइंस्टॉल करना पड़ सकता है |</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">बाह्य उपकरण पर सामग्री को लिखने के लिए %1 आपको उसका रास्ता मूल से चुनना होगा |</string>
   112:     <string name="FSD_TTL_FIX_SD">चेतावनी!</string>
   113:     <string name="FSD_USE_ROOT">आप रूट एक्सेस या शिज़ुकु का उपयोग कर सकते हैं।</string>
   114:     <string name="FSD_WARNING_TEXT">Android OS तीसरे पक्ष के अनुप्रयोग (जो उपकरण में पहले से उपस्थित न हो) को फाइल को प्राप्त करने या लिखने को सीमित करता है |</string>
   115:     <string name="FVR_ARCHIVE">आर्चिव</string>
   116:     <string name="FVR_DEVICE">डिस्क %1</string>
   117:     <string name="FVR_DOCUMENTS">दस्तावेज</string>
   118:     <string name="FVR_DOWNLOAD">डाउनलोड</string>
```

## decoded/res/values-hi/strings.xml:249 (update; file score 20)

```java
   243:     <string name="MES_SUCESSFUL_END">संचालन पुरा हुआ</string>
   244:     <string name="MES_SUCESSFUL_TEST">आर्चिव मे त्रुटी नही पाई गई</string>
   245:     <string name="MES_SUCESSFUL_TESTS">आर्चिव मे त्रुटी नही पाई गई</string>
   246:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto support english passwords only!</string>
   247:     <string name="MES_TEST_FILE_PROCESS">जाँच रहा है:</string>
   248:     <string name="MES_WHITE_START_SERVICE">आर्चिव खोलने की तैयारी हो रही है</string>
   249:     <string name="MOD_UPDATE_FILE">"फाइल %1 मे सुधार किया गया है.
   250:  क्या आर्चिव मे इसे अद्दतन करना चाहते?"</string>
   251:     <string name="NF_ENTER_FILE_NAME">नया फ़ाइल नाम:</string>
   252:     <string name="NF_ENTER_FOLDER_NAME">नए फोल्डर का नाम:</string>
   253:     <string name="NF_TTL_NEW_FILE">नई फ़ाइल</string>
   254:     <string name="NF_TTL_NEW_FOLDER">नया फोल्डर</string>
   255:     <string name="NTF_ADD_FILES_TO_ARC">आर्चिव मे फाइल जोड़ रहा है %1</string>
   256:     <string name="NTF_COMPRESS">आर्चिव बना रहा है: %1</string>
   257:     <string name="NTF_COPY_FILE">फाइले प्रतिलिपि कर रहा है</string>
```

## decoded/res/values-hr/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Verzija aplikacije File ne podržava dozvolu do mapa.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver treba dozvolu za čitanje, izmjenu i brisanje datoteka da bi pristupio datotekama na uređaju.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver treba dozvolu za instaliranje paketa za pristup Android/OBB mapi.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Za upis podataka na vanjsku SD karticu %1 morate odobriti pristup kartici.</string>
   108:     <string name="FSD_DONT_SHOW">Ne prikazuj ponovo</string>
   109:     <string name="FSD_INCORRECT_PATH">Neispravna putanja do %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Možete deinstalirati ovo ažuriranje.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Za upis podataka na %1 morate odabrati putanju do njenog direktorija.</string>
   112:     <string name="FSD_TTL_FIX_SD">Upozorenje!</string>
   113:     <string name="FSD_USE_ROOT">Možete koristiti root ili Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">Operativni sustav Android ograničava aplikacijama trećih strana (koje nisu predinstalirane na uređaju) pristup funkciji pisanja na vanjsku USB memoriju ili SD karticu.</string>
   115:     <string name="FVR_ARCHIVE">Arhive</string>
   116:     <string name="FVR_DEVICE">Disk %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumenti</string>
   118:     <string name="FVR_DOWNLOAD">Preuzimanja</string>
```

## decoded/res/values-hr/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operacija uspješno završena</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arhiva ne sadrži greške</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arhive ne sadrže greške</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto podržava lozinke samo u engleskom alfabetu!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Testiranje:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Priprema za otvaranje arhive</string>
   250:     <string name="MOD_UPDATE_FILE">"Datoteka %1 je izmjenjena.
   251: Želite li je ažurirati u arhivi?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Naziv nove datoteke:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Naziv nove mape:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nova datoteka</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nova mapa</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Dodavanje datoteka u arhivu %1</string>
   257:     <string name="NTF_COMPRESS">Kreiranje arhive: %1</string>
   258:     <string name="NTF_COPY_FILE">Kopiranje datoteka</string>
```

## decoded/res/values-hu/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">A fájl alkalmazás verziója nem támogatja a mappákhoz való hozzáférés megadását.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">A ZArchiver engedélyt igényel a fájlok olvasásához, módosításához és törléséhez, hogy hozzáférhessen a telefon fájljaihoz.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">A ZArchiver engedélyeket igényel a csomagok telepítéséhez, hogy hozzáférhessen az Android/OBB mappához.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Az adatok külső %1 SD-kártyára írásához, engedélyeznie kell a hozzáférést.</string>
   108:     <string name="FSD_DONT_SHOW">Ne jelenjen meg többé</string>
   109:     <string name="FSD_INCORRECT_PATH">Hibásan választotta ki a(z) %1 elérési útvonalát!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Eltávolíthatja ezt a frissítést.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">A(z) %1 adatok írásához, ki kell választania a könyvtár elérési útvonalát.</string>
   112:     <string name="FSD_TTL_FIX_SD">Figyelem!</string>
   113:     <string name="FSD_USE_ROOT">Használhatja a root hozzáférést vagy a Shizuku-t.</string>
   114:     <string name="FSD_WARNING_TEXT">Az Android operációs rendszere korlátozza a 3. féltől származó (nem előtelepített) alkalmazások hozzáférését a külső USB flash vagy SD-kártya írási funkciójához.</string>
   115:     <string name="FVR_ARCHIVE">Archívumok</string>
   116:     <string name="FVR_DEVICE">%1 lemez</string>
   117:     <string name="FVR_DOCUMENTS">Dokumentumok</string>
   118:     <string name="FVR_DOWNLOAD">Letöltés</string>
```

## decoded/res/values-hu/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">A művelet sikeresen befejeződött</string>
   245:     <string name="MES_SUCESSFUL_TEST">Az archívum nem tartalmaz hibákat</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Az archívumok nem tartalmaznak hibákat</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">A ZipCrypto csak az angol jelszavakat támogatja!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Tesztelés:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Felkészülés az archívum megnyitására</string>
   250:     <string name="MOD_UPDATE_FILE">"A(z) %1 fájl módosítva lett.
   251: Szeretné frissíteni az archívumban?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Új fájl neve:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Új mappa neve:</string>
   254:     <string name="NF_TTL_NEW_FILE">Új fájl</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Új mappa</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Fájlok hozzáadása a(z) %1 archívumhoz</string>
   257:     <string name="NTF_COMPRESS">Archívum létrehozása: %1</string>
   258:     <string name="NTF_COPY_FILE">Fájlok másolása</string>
```

## decoded/res/values-in/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Versi aplikasi File tidak mendukung pemberian akses ke folder.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Zarchiver membutuhkan izin untuk membaca, memodifikasi, dan menghapus file untuk mengakses file/Telepon Anda.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver membutuhan izin untuk menginstal paket untuk mengakses folder Android/obb.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Untuk menulis data ke kartu SD eksternal %1 Anda harus mengizinkan akses ke sana.</string>
   108:     <string name="FSD_DONT_SHOW">Jangan Tampilkan lagi</string>
   109:     <string name="FSD_INCORRECT_PATH">Pilih jalur yang salah ke %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Anda dapat menghapus instalasi pembaruan ini.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Untuk menulis data ke %1 Anda harus memilih jalur ke direktorinya.</string>
   112:     <string name="FSD_TTL_FIX_SD">PERINGATAN!</string>
   113:     <string name="FSD_USE_ROOT">Anda dapat menggunakan akses root atau Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">OS Android membatasi aplikasi pihak ke-3 (belum terinstal pada perangkat) untuk mengakses flash eksternal atau fungsi menulis kartu SD.</string>
   115:     <string name="FVR_ARCHIVE">Arsip</string>
   116:     <string name="FVR_DEVICE">Diska %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumen</string>
   118:     <string name="FVR_DOWNLOAD">Unduh</string>
```

## decoded/res/values-in/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operasi selesai dengan sukses</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arsip tidak mengandung kesalahan</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arsip tidak mengandung kesalahan</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto hanya mendukung kata sandi bahasa inggris!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Pengujian:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Mempersiapkan untuk membuka arsip</string>
   250:     <string name="MOD_UPDATE_FILE">"Berkas %1 telah dimodifikasi.
   251:  Anda yakin ingin memperbaruinya?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nama berkas baru:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Nama Folder baru:</string>
   254:     <string name="NF_TTL_NEW_FILE">Berkas baru</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Folder Baru</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Menambahkan file ke arsip %1</string>
   257:     <string name="NTF_COMPRESS">Membuat arsip: %1</string>
   258:     <string name="NTF_COPY_FILE">Menyalin File</string>
```

## decoded/res/values-it/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">"La versione dell'app File non supporta l'accesso alle cartelle."</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver richiede i permessi per leggere, modificare e eliminare i file sul telefono.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver richiede i permessi per installare i pacchetti per accedere alla cartella Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">"Per scrivere sulla SD esterna %1 devi permetterne l'accesso."</string>
   108:     <string name="FSD_DONT_SHOW">Non mostrare nuovamente</string>
   109:     <string name="FSD_INCORRECT_PATH">Percorso non corretto per %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Puoi disinstallare questo aggiornamento.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Per scrivere sulla %1, devi puntare alla sua cartella principale.</string>
   112:     <string name="FSD_TTL_FIX_SD">Attenzione!</string>
   113:     <string name="FSD_USE_ROOT">"Puoi utilizzare l'accesso di root o Shizuku."</string>
   114:     <string name="FSD_WARNING_TEXT">"Nelle versioni più recenti di Android (4.4+), il sistema operativo limita le app di terze parti (non preinstallate sul dispositivo) all'accesso in scrittura alla memoria flash USB e alle memorie SD."</string>
   115:     <string name="FVR_ARCHIVE">Archivi</string>
   116:     <string name="FVR_DEVICE">Disco %1</string>
   117:     <string name="FVR_DOCUMENTS">Documenti</string>
   118:     <string name="FVR_DOWNLOAD">Download</string>
```

## decoded/res/values-it/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operazione completata correttamente</string>
   245:     <string name="MES_SUCESSFUL_TEST">"L'archivio non presenta errori"</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Gli archivi non presentano errori</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto supporta solo password in caratteri latini!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Verifica in corso:</string>
   249:     <string name="MES_WHITE_START_SERVICE">"Preparazione all'apertura dell'archivio"</string>
   250:     <string name="MOD_UPDATE_FILE">"Il file %1 и stato modificato.
   251: Vuoi aggiornarlo nell'archivio?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nome nuovo file:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Inserisci il nome della nuova cartella:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nuovo file</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nuova cartella</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">"Aggiungi file all'archivio %1"</string>
   257:     <string name="NTF_COMPRESS">Creazione archivio: %1</string>
   258:     <string name="NTF_COPY_FILE">Copia file</string>
```

## decoded/res/values-ja/strings.xml:246 (update; file score 20)

```java
   240:     <string name="MES_SUCESSFUL_END">処理に成功しました</string>
   241:     <string name="MES_SUCESSFUL_TEST">アーカイブに問題はありません</string>
   242:     <string name="MES_SUCESSFUL_TESTS">アーカイブに問題はありません</string>
   243:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto は ASCII 文字のパスワードのみに対応しています!</string>
   244:     <string name="MES_TEST_FILE_PROCESS">テスト中:</string>
   245:     <string name="MES_WHITE_START_SERVICE">アーカイブを開く準備をしています</string>
   246:     <string name="MOD_UPDATE_FILE">"ファイル %1 は変更されました
   247: アーカイブ内のファイルを更新しますか?"</string>
   248:     <string name="NF_ENTER_FILE_NAME">ファイル名:</string>
   249:     <string name="NF_ENTER_FOLDER_NAME">フォルダ名:</string>
   250:     <string name="NF_TTL_NEW_FILE">ファイルの作成</string>
   251:     <string name="NF_TTL_NEW_FOLDER">フォルダの作成</string>
   252:     <string name="NTF_ADD_FILES_TO_ARC">アーカイブ %1 にファイルを追加しています</string>
   253:     <string name="NTF_COMPRESS">アーカイブ %1 を作成しています</string>
   254:     <string name="NTF_COPY_FILE">ファイルをコピーしています</string>
```

## decoded/res/values-ka-rGE/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">„ფაილების“ აპლიკაციის ვერსია არ იძლევა საქაღალდეებზე წვდომის უფლებას</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver-ს ესაჭიროება ფაილებზე წვდომის ნებართვა, რომ წაიკითხოს, შეცვალოს ან წაშალოს ფაილები თქვენს ტელეფონზე.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver-ს სჭირდება აპლიკაციების დაინსტალირების ნებართვა, რომ ჰქონდეს წვდომა Android/OBB საქაღალდეზე.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">%1 SD მეხსიერების ბარათზე ინფორმაციის ჩასაწერად, თქვენ უნდადაგვრთოთ ნება.</string>
   108:     <string name="FSD_DONT_SHOW">აღარ მიჩვენო ეს</string>
   109:     <string name="FSD_INCORRECT_PATH">არჩეულია მცდარი გზა (საქაღალდე) %1-სთვის!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">თქვენ უნდა წაშალოთ ეს განახლება.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">%1-ზე ინფორმაციის ჩასაწერად, თქვენ უნდა აირჩიოთ სასურველი საქაღალდე.</string>
   112:     <string name="FSD_TTL_FIX_SD">გაფრთხილება!</string>
   113:     <string name="FSD_USE_ROOT">თქვენ უნდა გამოიყენოთ „root“ ან „შიზუკუ“.</string>
   114:     <string name="FSD_WARNING_TEXT">ანდროიდ სისტემა, მესამე მხარის აპლიკაციებს (რომლებიც თავიდანვე ჩაწერილი არ ყოფილა მოწყობილობაზე), უკრძალავს ინფორმაციის ჩაწერას ფლეშკებზე და ჩიპებზე.</string>
   115:     <string name="FVR_ARCHIVE">არქივები</string>
   116:     <string name="FVR_DEVICE">დისკი %1</string>
   117:     <string name="FVR_DOCUMENTS">საბუთები</string>
   118:     <string name="FVR_DOWNLOAD">ჩამოტვირთული ფაილები</string>
```

## decoded/res/values-ka-rGE/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">ოპერაცია დასრულდა წარმატებით</string>
   245:     <string name="MES_SUCESSFUL_TEST">არქივს არ აქვს ხარვეზი</string>
   246:     <string name="MES_SUCESSFUL_TESTS">არქივებს არ აქვთ ხარვეზები</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto-ს შემთხვევაში მხოლოდ ლათინური ასოების მქონე პაროლების ჩაწერა შეგიძლიათ!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">შემოწმება:</string>
   249:     <string name="MES_WHITE_START_SERVICE">მიმდინარეობს მზადება არქივის გახსნისათვის</string>
   250:     <string name="MOD_UPDATE_FILE">"ეს ფაილი (%1) შეცვლილია.
   251: გინდათ, რომ ფაილი არქივშიც შეიცვალოს?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">ახალი ფაილის სახელი:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">ახალი საქაღალდის სახელი:</string>
   254:     <string name="NF_TTL_NEW_FILE">ახალი ფაილი</string>
   255:     <string name="NF_TTL_NEW_FOLDER">ახალი საქაღალდე</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">მიმდინარეობს %1 არქივისთვის ფაილების დამატება</string>
   257:     <string name="NTF_COMPRESS">იქმნება %1 არქივი</string>
   258:     <string name="NTF_COPY_FILE">მიმდინარეობს ფაილების კოპირება</string>
```

## decoded/res/values-ko/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">파일 앱 버전은 폴더에 대한 액세스 권한 부여를 지원하지 않습니다.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver는 휴대폰의 파일에 액세스하기 위해 파일을 읽고 수정하고 삭제할 수 있는 권한이 필요합니다.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver는 Android/OBB 폴더에 액세스하기 위해 패키지를 설치할 수 있는 권한이 필요합니다.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">외장 SD카드 %1에 데이터를 쓰기 위해선 접근을 허용해야 합니다.</string>
   108:     <string name="FSD_DONT_SHOW">다시 보지 않기</string>
   109:     <string name="FSD_INCORRECT_PATH">경로를 잘못 선택했습니다!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">이 업데이트를 제거할 수 있습니다.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">%1에 데이터를 쓰기 위해선 루트 디렉터리 경로를 선택해야 합니다.</string>
   112:     <string name="FSD_TTL_FIX_SD">경고!</string>
   113:     <string name="FSD_USE_ROOT">루트 액세스 또는 시즈쿠(Shizuku)를 사용할 수 있습니다.</string>
   114:     <string name="FSD_WARNING_TEXT">최신 안드로이드 (4.4+)에서는 OS가 서드파티 앱 (기기에 사전 설치되지 않은 앱) 들이 외장 USB나 SD 카드의 쓰기 기능에 접근하는 것을 제한합니다.</string>
   115:     <string name="FVR_ARCHIVE">압축파일</string>
   116:     <string name="FVR_DEVICE">디스크 %1</string>
   117:     <string name="FVR_DOCUMENTS">문서</string>
   118:     <string name="FVR_DOWNLOAD">다운로드</string>
```

## decoded/res/values-ko/strings.xml:244 (update; file score 20)

```java
   238:     <string name="MES_SUCESSFUL_END">작업이 성공적으로 완료되었습니다</string>
   239:     <string name="MES_SUCESSFUL_TEST">압축파일에 오류가 없습니다</string>
   240:     <string name="MES_SUCESSFUL_TESTS">압축파일들에 오류가 없습니다</string>
   241:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto는 영문 비밀번호만 지원합니다!</string>
   242:     <string name="MES_TEST_FILE_PROCESS">테스트 중:</string>
   243:     <string name="MES_WHITE_START_SERVICE">압축 파일을 열기 위해 준비 중</string>
   244:     <string name="MOD_UPDATE_FILE">"파일 %1 가 수정되었습니다.
   245: 압축파일에 적용하시겠습니까?"</string>
   246:     <string name="NF_ENTER_FILE_NAME">새파일 이름:</string>
   247:     <string name="NF_ENTER_FOLDER_NAME">새 폴더명:</string>
   248:     <string name="NF_TTL_NEW_FILE">새 파일</string>
   249:     <string name="NF_TTL_NEW_FOLDER">새 폴더</string>
   250:     <string name="NTF_ADD_FILES_TO_ARC">%1에 파일을 추가하는 중</string>
   251:     <string name="NTF_COMPRESS">압축 중: %1</string>
   252:     <string name="NTF_COPY_FILE">파일 복사 중</string>
```

## decoded/res/values-lt/strings.xml:231 (update; file score 20)

```java
   225:     <string name="MES_SUCESSFUL_END">Veiksmas sėkmingai pabaigtas</string>
   226:     <string name="MES_SUCESSFUL_TEST">Archyvas neturi jokių klaidų</string>
   227:     <string name="MES_SUCESSFUL_TESTS">Archyvai neturi jokių klaidų</string>
   228:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto palaiko tik angliškus slaptažodžius!</string>
   229:     <string name="MES_TEST_FILE_PROCESS">Tikrinama:</string>
   230:     <string name="MES_WHITE_START_SERVICE">Ruošiamasi atidaryti archyvą</string>
   231:     <string name="MOD_UPDATE_FILE">"Failas %1 buvo redaguotas.
   232: Ar norite jį atnaujinti archyve?"</string>
   233:     <string name="NF_ENTER_FOLDER_NAME">Naujo aplanko pavadinimas:</string>
   234:     <string name="NF_TTL_NEW_FOLDER">Naujas aplankas</string>
   235:     <string name="NTF_ADD_FILES_TO_ARC">Pridedami failai į archyvą %1</string>
   236:     <string name="NTF_COMPRESS">Kuriamas archyvas: %1</string>
   237:     <string name="NTF_COPY_FILE">Kopijuojami failai</string>
   238:     <string name="NTF_DEL_FILES_FROM_ARC">Pašalinami failai iš archyvo %1</string>
   239:     <string name="NTF_EXTRACT">Išskleidžiama: %1</string>
```

## decoded/res/values-pl/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Wersja aplikacji \"Pliki\" nie obsługuje przyznawania dostępu do folderów.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver potrzebuje uprawnień do odczytu, modyfikacji i usuwania plików, aby uzyskać dostęp do plików na Twoim urządzeniu.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver potrzebuje uprawnień do instalacji pakietów, aby uzyskać dostęp do katalogu Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Aby zapisywać dane na zewnętrznej karcie SD %1, przyznaj prawa dostępu do niej.</string>
   108:     <string name="FSD_DONT_SHOW">Nie pokazuj ponownie tej informacji</string>
   109:     <string name="FSD_INCORRECT_PATH">Nieprawidłowa ścieżka dostępu do %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Możesz odinstalować tę aktualizację.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Aby korzystać z funkcji zapisu na %1 podaj ścieżkę dostępu do jej katalogu.</string>
   112:     <string name="FSD_TTL_FIX_SD">Uwaga!</string>
   113:     <string name="FSD_USE_ROOT">Możesz użyć dostępu roota lub Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">System operacyjny Android ogranicza dostęp aplikacji firm trzecich (niezainstalowanych fabrycznie na urządzeniu) do zapisu na zewnętrznych dyskach flash USB i kartach SD.</string>
   115:     <string name="FVR_ARCHIVE">Archiwa</string>
   116:     <string name="FVR_DEVICE">Dysk %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumenty</string>
   118:     <string name="FVR_DOWNLOAD">Pobrane</string>
```

## decoded/res/values-pl/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operacja zakończona pomyślnie</string>
   245:     <string name="MES_SUCESSFUL_TEST">Archiwum nie zawiera błędów</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Archiwa nie zawierają błędów</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto obsługuje tylko hasła w ASCII (bez znaków diakrytycznych)!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Testowanie:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Przygotowania do otwarcia archiwum</string>
   250:     <string name="MOD_UPDATE_FILE">"Plik %1 został zmieniony.
   251: Czy chcesz uaktualnić go w archiwum?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nowy plik:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Wprowadź nazwę nowego katalogu:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nowy plik</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nowy katalog</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Dodawanie plików do archiwum %1</string>
   257:     <string name="NTF_COMPRESS">Tworzenie archiwum: %1</string>
   258:     <string name="NTF_COPY_FILE">Kopiowanie plików</string>
```

## decoded/res/values-pt-rBR/strings.xml:109 (update; file score 20)

```java
   103:     <string name="FREE_LIMIT_HELP">Apenas para usuários da versão Pro</string>
   104:     <string name="FSD_ACCESS_TO_ALL_STORAGE">O ZArchiver precisa de permissão para ler, modificar e excluir arquivos em seu telefone.</string>
   105:     <string name="FSD_ACCESS_TO_OBB_FOLDER">O ZArchiver precisa de permissão para instalar pacotes e para acessar à pasta Android/OBB.</string>
   106:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Para modificar arquivos no cartão SD %1 você deve permitir o acesso.</string>
   107:     <string name="FSD_DONT_SHOW">Não mostrar novamente</string>
   108:     <string name="FSD_INCORRECT_PATH">Caminho incorreto, selecione o %1!</string>
   109:     <string name="FSD_REMOVE_FILES_UPDATE">Você pode desinstalar esta atualização.</string>
   110:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Para modificar o %1 você deve escolher um caminho para seu diretório.</string>
   111:     <string name="FSD_TTL_FIX_SD">Aviso!</string>
   112:     <string name="FSD_USE_ROOT">Você deve utilizar acesso root ou Shizuku.</string>
   113:     <string name="FSD_WARNING_TEXT">Android OS limites de aplicações 3rd party (não pré-instalado no dispositivo) para acesso externo, unidade USB ou um cartão SD escrever a função.</string>
   114:     <string name="FVR_ARCHIVE">Arquivos</string>
   115:     <string name="FVR_DEVICE">Disco %1</string>
   116:     <string name="FVR_DOCUMENTS">Documentos</string>
   117:     <string name="FVR_DOWNLOAD">Download</string>
```

## decoded/res/values-pt-rBR/strings.xml:249 (update; file score 20)

```java
   243:     <string name="MES_SUCESSFUL_END">Operação completada com sucesso</string>
   244:     <string name="MES_SUCESSFUL_TEST">Arquivo não contém erros</string>
   245:     <string name="MES_SUCESSFUL_TESTS">Arquivos não contêm erros</string>
   246:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto support english passwords only!</string>
   247:     <string name="MES_TEST_FILE_PROCESS">Testando:</string>
   248:     <string name="MES_WHITE_START_SERVICE">Preparando para abrir o arquivo</string>
   249:     <string name="MOD_UPDATE_FILE">Arquivo %1 foi modificado. Deseja atualizá-lo no arquivo compactado?</string>
   250:     <string name="NF_ENTER_FILE_NAME">Novo nome do arquivo:</string>
   251:     <string name="NF_ENTER_FOLDER_NAME">Digite o nome da pasta:</string>
   252:     <string name="NF_TTL_NEW_FILE">Novo arquivo</string>
   253:     <string name="NF_TTL_NEW_FOLDER">Nova pasta</string>
   254:     <string name="NTF_ADD_FILES_TO_ARC">Adicionando items para o arquivo %1</string>
   255:     <string name="NTF_COMPRESS">Criando arquivo: %1</string>
   256:     <string name="NTF_COPY_FILE">Copiando arquivos</string>
   257:     <string name="NTF_DEL_FILES_FROM_ARC">Deletando items do arquivo %1</string>
```

## decoded/res/values-ru/strings.xml:111 (update; file score 20)

```java
   105:     <string name="FSD_ACCESS_FILES_DENIED">Версия приложения \"Файл\" не поддерживает предоставление доступа к папкам.</string>
   106:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Для доступа к файлам телефона приложению необходимы разрешения на чтение, модификацию и удаление файлов.</string>
   107:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Для доступа к папке Android/OBB приложению необходимы разрешения на установку приложений.</string>
   108:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Для возможности записи данных на внешнюю SD-карту %1 необходимо разрешить доступ к ней.</string>
   109:     <string name="FSD_DONT_SHOW">Больше не выводить это сообщение</string>
   110:     <string name="FSD_INCORRECT_PATH">Путь до %1 выбран неверно!</string>
   111:     <string name="FSD_REMOVE_FILES_UPDATE">Необходимо удалить обновление этого приложения.</string>
   112:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Для возможности записи данных на %1 необходимо выбрать путь до её каталога.</string>
   113:     <string name="FSD_TTL_FIX_SD">Внимание!</string>
   114:     <string name="FSD_USE_ROOT">Вы можете использовать root-доступ или Shizuku.</string>
   115:     <string name="FSD_WARNING_TEXT">Операционная система Android ограничивает сторонние приложения (те приложения, которые не были установлены производителем) в записи данных на внешние USB- и SD-карты.</string>
   116:     <string name="FVR_ARCHIVE">Архивы</string>
   117:     <string name="FVR_DEVICE">Диск %1</string>
   118:     <string name="FVR_DOCUMENTS">Документы</string>
   119:     <string name="FVR_DOWNLOAD">Загрузки</string>
```

## decoded/res/values-ru/strings.xml:251 (update; file score 20)

```java
   245:     <string name="MES_SUCESSFUL_END">Операция успешно завершена</string>
   246:     <string name="MES_SUCESSFUL_TEST">Архив не содержит ошибок</string>
   247:     <string name="MES_SUCESSFUL_TESTS">Архивы не содержат ошибок</string>
   248:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto поддерживает только латинские пароли!</string>
   249:     <string name="MES_TEST_FILE_PROCESS">Проверка:</string>
   250:     <string name="MES_WHITE_START_SERVICE">Подготовка к открытию архива</string>
   251:     <string name="MOD_UPDATE_FILE">"Файл %1 был изменён.
   252: Вы хотите обновить его в архиве?"</string>
   253:     <string name="NF_ENTER_FILE_NAME">Введите название нового файла:</string>
   254:     <string name="NF_ENTER_FOLDER_NAME">Введите название новой папки:</string>
   255:     <string name="NF_TTL_NEW_FILE">Новый файл</string>
   256:     <string name="NF_TTL_NEW_FOLDER">Новая папка</string>
   257:     <string name="NTF_ADD_FILES_TO_ARC">Добавление файлов в архив %1</string>
   258:     <string name="NTF_COMPRESS">Создание архива: %1</string>
   259:     <string name="NTF_COPY_FILE">Копирование файлов</string>
```

## decoded/res/values-sk/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Verzia aplikácie Súbory nepodporuje udelenie prístupu k priečinkom.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver potrebuje povolenie na čítanie, úpravu a odstraňovanie súborov, aby mohol pristupovať k súborom vášho telefónu.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver potrebuje povolenie na inštaláciu balíkov na prístup k priečinku Android/OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Ak chcete zapisovať údaje na externú kartu SD %1, musíte k nej povoliť prístup.</string>
   108:     <string name="FSD_DONT_SHOW">Nezobrazovať znovu</string>
   109:     <string name="FSD_INCORRECT_PATH">Vybrali ste nesprávnu cestu k %1!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Túto aktualizáciu môžete odinštalovať.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Pre zápis dát na %1 musíte zvoliť cestu k jej adresáru.</string>
   112:     <string name="FSD_TTL_FIX_SD">Varovanie!</string>
   113:     <string name="FSD_USE_ROOT">Môžete použiť root prístup alebo Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">Android obmedzuje prístup aplikáciám tretích strán (aplikácie, ktoré nie sú predinštalované v zariadení) k externým USB diskom alebo funkciu pre zápis na kartu SD.</string>
   115:     <string name="FVR_ARCHIVE">Archívy</string>
   116:     <string name="FVR_DEVICE">Disk %1</string>
   117:     <string name="FVR_DOCUMENTS">Dokumenty</string>
   118:     <string name="FVR_DOWNLOAD">Sťahovania</string>
```

## decoded/res/values-sk/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">Operácia bola úspešne dokončená</string>
   245:     <string name="MES_SUCESSFUL_TEST">Archív neobsahuje chyby</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Archívy neobsahujú chyby</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto podporuje iba heslá s anglickými znakmi!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Testovanie:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Príprava na otvorenie archívu</string>
   250:     <string name="MOD_UPDATE_FILE">"Súbor %1 bol upravený.
   251: Chcete ho aktualizovať v archíve?"</string>
   252:     <string name="NF_ENTER_FILE_NAME">Nový názov súboru:</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">Zadajte názov priečinka:</string>
   254:     <string name="NF_TTL_NEW_FILE">Nový súbor</string>
   255:     <string name="NF_TTL_NEW_FOLDER">Nový priečinok</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">Pridávanie súborov do archívu %1</string>
   257:     <string name="NTF_COMPRESS">Vytváranie archívu: %1</string>
   258:     <string name="NTF_COPY_FILE">Kopírovanie súborov</string>
```

## decoded/res/values-sr/strings.xml:218 (update; file score 20)

```java
   212:     <string name="MES_SUCESSFUL_END">Operacija uspešno izvršena</string>
   213:     <string name="MES_SUCESSFUL_TEST">Arhiva ne sadrži greške</string>
   214:     <string name="MES_SUCESSFUL_TESTS">Arhive ne sadrže greške</string>
   215:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto podržava lozinke samo u engleskom alfabetu!</string>
   216:     <string name="MES_TEST_FILE_PROCESS">Testiranje:</string>
   217:     <string name="MES_WHITE_START_SERVICE">Priprema za otvaranje arhive</string>
   218:     <string name="MOD_UPDATE_FILE">"Fajl %1 je modifikovan.
   219: Da li želite da uneste njegove izmene u arhivu?"</string>
   220:     <string name="NF_ENTER_FOLDER_NAME">Unesite ime novog foldera:</string>
   221:     <string name="NF_TTL_NEW_FOLDER">Novi folder</string>
   222:     <string name="NTF_ADD_FILES_TO_ARC">Dodavanje fajlova u arhivu %1</string>
   223:     <string name="NTF_COMPRESS">Pravljenje arhive: %1</string>
   224:     <string name="NTF_COPY_FILE">Kopiranje fajlova</string>
   225:     <string name="NTF_DEL_FILES_FROM_ARC">Brisanje fajlova iz arhive %1</string>
   226:     <string name="NTF_EXTRACT">Raspakivanje: %1</string>
```

## decoded/res/values-th-rTH/strings.xml:109 (update; file score 20)

```java
   103:     <string name="FSD_ACCESS_FILES_DENIED">เวอร์ชันแอป File ไม่รองรับการให้สิทธิ์การเข้าถึงโฟลเดอร์</string>
   104:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver ต้องการสิทธิ์ในการอ่าน แก้ไข และลบไฟล์เพื่อเข้าถึงไฟล์ในโทรศัพท์ของคุณ</string>
   105:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver ต้องการสิทธิ์ในการติดตั้งแพ็คเกจเพื่อเข้าถึงโฟลเดอร์ Android/OBB</string>
   106:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">สำหรับการเขียนข้อมูลไปยังการ์ด SD ภายนอก %1 คุณต้องอนุญาตให้เข้าถึงได้</string>
   107:     <string name="FSD_DONT_SHOW">ไม่ต้องแสดงอีก</string>
   108:     <string name="FSD_INCORRECT_PATH">เส้นทางไปยัง %1 ไม่ถูกต้อง!</string>
   109:     <string name="FSD_REMOVE_FILES_UPDATE">คุณอาจถอนการติดตั้งโปรแกรมปรับปรุงนี้</string>
   110:     <string name="FSD_SELECT_PATH_TO_EXT_SD">สำหรับการเขียนข้อมูลไปยัง %1 คุณต้องเลือกเส้นทางไปยังโฟลเดอร์</string>
   111:     <string name="FSD_TTL_FIX_SD">คำเตือน!</string>
   112:     <string name="FSD_USE_ROOT">คุณอาจจะต้องใช้การเข้าถึงรูทหรือ Shizuku</string>
   113:     <string name="FSD_WARNING_TEXT">ระบบปฏิบัติการ Android จำกัดการเข้าถึงการเขียนของแอพของบุคคลที่สาม (ไม่ได้ติดตั้งไว้ล่วงหน้าในอุปกรณ์) ไปยังแฟลชไดรฟ์ USB ภายนอกและการ์ด SD</string>
   114:     <string name="FVR_ARCHIVE">Archives</string>
   115:     <string name="FVR_DEVICE">ดิสก์ %1</string>
   116:     <string name="FVR_DOCUMENTS">เอกสาร</string>
   117:     <string name="FVR_DOWNLOAD">ดาวน์โหลด</string>
```

## decoded/res/values-th-rTH/strings.xml:248 (update; file score 20)

```java
   242:     <string name="MES_SUCESSFUL_END">การดำเนินการเสร็จสมบูรณ์</string>
   243:     <string name="MES_SUCESSFUL_TEST">Archive ไม่มีข้อผิดพลาด</string>
   244:     <string name="MES_SUCESSFUL_TESTS">Archives ไม่มีข้อผิดพลาด</string>
   245:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto รองรับรหัสผ่านที่ประกอบด้วยตัวอักษรภาษาอังกฤษเท่านั้น!</string>
   246:     <string name="MES_TEST_FILE_PROCESS">กำลังทดสอบ:</string>
   247:     <string name="MES_WHITE_START_SERVICE">กำลังเตรียมเปิดไฟล์ archive</string>
   248:     <string name="MOD_UPDATE_FILE">"ไฟล์ %1 ถูกแก้ไข
   249: คุณต้องการอัปเดตในไฟล์ archive หรือไม่"</string>
   250:     <string name="NF_ENTER_FILE_NAME">ชื่อไฟล์ใหม่:</string>
   251:     <string name="NF_ENTER_FOLDER_NAME">ชื่อโฟลเดอร์ใหม่:</string>
   252:     <string name="NF_TTL_NEW_FILE">ไฟล์ใหม่</string>
   253:     <string name="NF_TTL_NEW_FOLDER">โฟลเดอร์ใหม่</string>
   254:     <string name="NTF_ADD_FILES_TO_ARC">การเพิ่มไฟล์ไปที่ archive %1</string>
   255:     <string name="NTF_COMPRESS">กำลังสร้างไฟล์ archive: %1</string>
   256:     <string name="NTF_COPY_FILE">กำลังคัดลอกไฟล์</string>
```

## decoded/res/values-tr/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Dosyalar uygulaması sürümü, klasörlere erişim izni vermeyi desteklemiyor.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">"ZArchiver'ın telefonunuzun dosyalarına erişmek için dosyaları okumak, değiştirmek ve silmek için izne ihtiyacı var."</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">"ZArchiver'ın Android/OBB klasörüne erişmek için paketleri yüklemek için izne ihtiyacı var."</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Harici SD karta %1 veri yazmak için ona erişim izni vermelisiniz.</string>
   108:     <string name="FSD_DONT_SHOW">Tekrar gösterme</string>
   109:     <string name="FSD_INCORRECT_PATH">"%1'e giden hatalı seçim yolu!"</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Bu güncellemeyi kaldırmanız gerekebilir.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">"%1 'e veri yazmak için dizinine giden bir yol seçmelisiniz."</string>
   112:     <string name="FSD_TTL_FIX_SD">Uyarı!</string>
   113:     <string name="FSD_USE_ROOT">Root erişimi ya da Shizuku kullanabilirsiniz.</string>
   114:     <string name="FSD_WARNING_TEXT">Android sistemi, harici USB belleğe veya SD karta yazma işlevine erişmek için 3. taraf uygulamalarını (cihazda önceden kurulu olmayan) sınırlar.</string>
   115:     <string name="FVR_ARCHIVE">Arşivler</string>
   116:     <string name="FVR_DEVICE">Disk %1</string>
   117:     <string name="FVR_DOCUMENTS">Belgeler</string>
   118:     <string name="FVR_DOWNLOAD">İndirilen</string>
```

## decoded/res/values-tr/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">İşlem başarıyla tamamlandı</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arşiv hata içermiyor</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arşivler hata içermiyor</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto yalnızca ingilizce parolaları destekliyor!</string>
   248:     <string name="MES_TEST_FILE_PROCESS">Test ediliyor:</string>
   249:     <string name="MES_WHITE_START_SERVICE">Arşivi açmaya hazırlanıyor</string>
   250:     <string name="MOD_UPDATE_FILE">%1 dosyası değiştirildi. Arşivde güncellemek ister misiniz?</string>
   251:     <string name="NF_ENTER_FILE_NAME">Yeni dosya adı:</string>
   252:     <string name="NF_ENTER_FOLDER_NAME">Yeni klasör adı:</string>
   253:     <string name="NF_TTL_NEW_FILE">Yeni dosya</string>
   254:     <string name="NF_TTL_NEW_FOLDER">Yeni klasör</string>
   255:     <string name="NTF_ADD_FILES_TO_ARC">Dosyalar %1 arşivine ekleniyor</string>
   256:     <string name="NTF_COMPRESS">Arşiv oluşturuluyor: %1</string>
   257:     <string name="NTF_COPY_FILE">Dosyalar kopyalanıyor</string>
   258:     <string name="NTF_DEL_FILES_FROM_ARC">%1 arşivinden dosyalar kaldırılıyor</string>
```

## decoded/res/values-vi/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">Phiên bản ứng dụng Tệp không hỗ trợ cấp quyền truy cập vào thư mục.</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">Zarchiver cần sự cho phép để đọc, sửa đổi và xóa các tệp để truy cập các tệp của điện thoại của bạn.</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">Zarchiver cần sự cho phép để cài đặt các gói để truy cập thư mục Android / OBB.</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">Để ghi dữ liệu vào thẻ SD bên ngoài %1, bạn cần phải cho phép truy cập vào nó.</string>
   108:     <string name="FSD_DONT_SHOW">Không hiển thị lại</string>
   109:     <string name="FSD_INCORRECT_PATH">Đường dẫn %1 không hợp lệ!</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">Bạn có thể gỡ cài đặt bản cập nhật này.</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">Để ghi dữ liệu thành %1 bạn phải chọn một đường dẫn đế thư mục đó.</string>
   112:     <string name="FSD_TTL_FIX_SD">Cảnh báo!</string>
   113:     <string name="FSD_USE_ROOT">Bạn có thể sử dụng quyền truy cập root hoặc Shizuku.</string>
   114:     <string name="FSD_WARNING_TEXT">Android OS giới hạn ứng dụng bên thứ 3rd (không cài đặt trước trên thiết bị) để truy cập vào USB flash hoặc thẻ SD viết hàm.</string>
   115:     <string name="FVR_ARCHIVE">Tệp lưu trữ</string>
   116:     <string name="FVR_DEVICE">Đĩa %1</string>
   117:     <string name="FVR_DOCUMENTS">Tài liệu</string>
   118:     <string name="FVR_DOWNLOAD">Tải về</string>
```

## decoded/res/values-vi/strings.xml:248 (update; file score 20)

```java
   242:     <string name="MES_SUCESSFUL_END">Thao tác hoàn thành thành công</string>
   243:     <string name="MES_SUCESSFUL_TEST">Lưu trữ không có lỗi</string>
   244:     <string name="MES_SUCESSFUL_TESTS">Lưu trữ không có lỗi</string>
   245:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto chỉ hỗ trợ mật khẩu tiếng anh!</string>
   246:     <string name="MES_TEST_FILE_PROCESS">Đang kiểm tra:</string>
   247:     <string name="MES_WHITE_START_SERVICE">Đang chuẩn bị mở lưu trữ</string>
   248:     <string name="MOD_UPDATE_FILE">"Tệp %1 đã bị sửa.
   249: Bạn có muốn cập nhật tệp lưu trữ?"</string>
   250:     <string name="NF_ENTER_FILE_NAME">Tên tập tin mới:</string>
   251:     <string name="NF_ENTER_FOLDER_NAME">Tên thư mục mới:</string>
   252:     <string name="NF_TTL_NEW_FILE">Tập tin mới</string>
   253:     <string name="NF_TTL_NEW_FOLDER">Thư mục mới</string>
   254:     <string name="NTF_ADD_FILES_TO_ARC">Thêm tệp vào kho lưu trữ %1</string>
   255:     <string name="NTF_COMPRESS">Tạo lưu trữ: %1</string>
   256:     <string name="NTF_COPY_FILE">Sao chép tập tin</string>
```

## decoded/res/values-zh-rCN/strings.xml:110 (update; file score 20)

```java
   104:     <string name="FSD_ACCESS_FILES_DENIED">文件应用版本不支持授予文件夹权限。</string>
   105:     <string name="FSD_ACCESS_TO_ALL_STORAGE">ZArchiver 需要读写手机存储权限以便进行读取、修改和删除等操作</string>
   106:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver 需要安装应用包权限以便访问 Android/OBB 文件夹</string>
   107:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">为了读写外部 SD 卡 %1 你必须授予权限</string>
   108:     <string name="FSD_DONT_SHOW">不再显示</string>
   109:     <string name="FSD_INCORRECT_PATH">%1的路径选择不正确！</string>
   110:     <string name="FSD_REMOVE_FILES_UPDATE">您可以卸载此更新。</string>
   111:     <string name="FSD_SELECT_PATH_TO_EXT_SD">要把数据写到 %1，你必须选择一个路径到其目录。</string>
   112:     <string name="FSD_TTL_FIX_SD">警告！</string>
   113:     <string name="FSD_USE_ROOT">您可以使用 root 权限或 Shizuku。</string>
   114:     <string name="FSD_WARNING_TEXT">Android 4.4+，系统限制第三方应用 (非预置应用) 对外部USB存储或SD卡写操作</string>
   115:     <string name="FVR_ARCHIVE">压缩文件</string>
   116:     <string name="FVR_DEVICE">磁盘 %1</string>
   117:     <string name="FVR_DOCUMENTS">文档</string>
   118:     <string name="FVR_DOWNLOAD">下载</string>
```

## decoded/res/values-zh-rCN/strings.xml:250 (update; file score 20)

```java
   244:     <string name="MES_SUCESSFUL_END">操作成功</string>
   245:     <string name="MES_SUCESSFUL_TEST">压缩文件无错误</string>
   246:     <string name="MES_SUCESSFUL_TESTS">压缩文件无错误</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto 仅支持英文密码！</string>
   248:     <string name="MES_TEST_FILE_PROCESS">测试：</string>
   249:     <string name="MES_WHITE_START_SERVICE">正在准备打开压缩文件</string>
   250:     <string name="MOD_UPDATE_FILE">"文件 %1 已修改。
   251: 你想更新压缩文件？"</string>
   252:     <string name="NF_ENTER_FILE_NAME">新的文件名：</string>
   253:     <string name="NF_ENTER_FOLDER_NAME">新文件夹名称：</string>
   254:     <string name="NF_TTL_NEW_FILE">新建文件</string>
   255:     <string name="NF_TTL_NEW_FOLDER">新建文件夹</string>
   256:     <string name="NTF_ADD_FILES_TO_ARC">正在添加文件到压缩文件 %1</string>
   257:     <string name="NTF_COMPRESS">正在创建压缩文件：%1</string>
   258:     <string name="NTF_COPY_FILE">正在复制文件</string>
```

## decoded/res/values/strings.xml:220 (update; file score 20)

```java
   214:     <string name="FSD_ACCESS_FILES_DENIED">The File app version does not support grant access to folders.</string>
   215:     <string name="FSD_ACCESS_TO_ALL_STORAGE">"ZArchiver needs permission to read, modify, and delete files to access your phone's files."</string>
   216:     <string name="FSD_ACCESS_TO_OBB_FOLDER">ZArchiver needs permission to install packages to access the Android/OBB folder.</string>
   217:     <string name="FSD_ALLOW_ACCESS_TO_EXT_SD">To write data to the external SD card %1, you must allow access to it.</string>
   218:     <string name="FSD_DONT_SHOW">Do not show again</string>
   219:     <string name="FSD_INCORRECT_PATH">Wrong path to %1 was selected!</string>
   220:     <string name="FSD_REMOVE_FILES_UPDATE">You may to uninstall this update.</string>
   221:     <string name="FSD_SELECT_PATH_TO_EXT_SD">You must choose a path to %1 to write to it.</string>
   222:     <string name="FSD_TTL_FIX_SD">Warning!</string>
   223:     <string name="FSD_USE_ROOT">You may use root access or Shizuku.</string>
   224:     <string name="FSD_WARNING_TEXT">Android OS restricts write access of third-party apps (not preinstalled on the device) to external USB flash drives and SD cards.</string>
   225:     <string name="FVR_ARCHIVE">Archives</string>
   226:     <string name="FVR_DEVICE">Disk %1</string>
   227:     <string name="FVR_DOCUMENTS">Documents</string>
   228:     <string name="FVR_DOWNLOAD">Download</string>
```

## decoded/res/values/strings.xml:360 (update; file score 20)

```java
   354:     <string name="MES_SUCESSFUL_END">Operation completed successfully</string>
   355:     <string name="MES_SUCESSFUL_TEST">Archive contains no errors</string>
   356:     <string name="MES_SUCESSFUL_TESTS">Archives contain no errors</string>
   357:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto supports passwords consisting only of Latin characters!</string>
   358:     <string name="MES_TEST_FILE_PROCESS">Testing:</string>
   359:     <string name="MES_WHITE_START_SERVICE">Preparing to open archive</string>
   360:     <string name="MOD_UPDATE_FILE">"File %1 was modified.
   361: Do you want to update it in the archive?"</string>
   362:     <string name="NF_ENTER_FILE_NAME">New file name:</string>
   363:     <string name="NF_ENTER_FOLDER_NAME">New folder name:</string>
   364:     <string name="NF_TTL_NEW_FILE">New file</string>
   365:     <string name="NF_TTL_NEW_FOLDER">New folder</string>
   366:     <string name="NTF_ADD_FILES_TO_ARC">Adding files to archive %1</string>
   367:     <string name="NTF_COMPRESS">Creating archive: %1</string>
   368:     <string name="NTF_COPY_FILE">Copying files</string>
```

## decoded/res/values/public.xml:947 (update; file score 18)

```java
   941:     <public type="string" name="FSD_ACCESS_FILES_DENIED" id="0x7f0c007c" />
   942:     <public type="string" name="FSD_ACCESS_TO_ALL_STORAGE" id="0x7f0c007d" />
   943:     <public type="string" name="FSD_ACCESS_TO_OBB_FOLDER" id="0x7f0c007e" />
   944:     <public type="string" name="FSD_ALLOW_ACCESS_TO_EXT_SD" id="0x7f0c007f" />
   945:     <public type="string" name="FSD_DONT_SHOW" id="0x7f0c0080" />
   946:     <public type="string" name="FSD_INCORRECT_PATH" id="0x7f0c0081" />
   947:     <public type="string" name="FSD_REMOVE_FILES_UPDATE" id="0x7f0c0082" />
   948:     <public type="string" name="FSD_SELECT_PATH_TO_EXT_SD" id="0x7f0c0083" />
   949:     <public type="string" name="FSD_TTL_FIX_SD" id="0x7f0c0084" />
   950:     <public type="string" name="FSD_USE_ROOT" id="0x7f0c0085" />
   951:     <public type="string" name="FSD_WARNING_TEXT" id="0x7f0c0086" />
   952:     <public type="string" name="FVR_ARCHIVE" id="0x7f0c0087" />
   953:     <public type="string" name="FVR_DEVICE" id="0x7f0c0088" />
   954:     <public type="string" name="FVR_DOCUMENTS" id="0x7f0c0089" />
   955:     <public type="string" name="FVR_DOWNLOAD" id="0x7f0c008a" />
```

## decoded/res/values/public.xml:1083 (update; file score 18)

```java
  1077:     <public type="string" name="MES_SUCESSFUL_END" id="0x7f0c0104" />
  1078:     <public type="string" name="MES_SUCESSFUL_TEST" id="0x7f0c0105" />
  1079:     <public type="string" name="MES_SUCESSFUL_TESTS" id="0x7f0c0106" />
  1080:     <public type="string" name="MES_SUPPORT_ONLY_ASCII_PWD" id="0x7f0c0107" />
  1081:     <public type="string" name="MES_TEST_FILE_PROCESS" id="0x7f0c0108" />
  1082:     <public type="string" name="MES_WHITE_START_SERVICE" id="0x7f0c0109" />
  1083:     <public type="string" name="MOD_UPDATE_FILE" id="0x7f0c010a" />
  1084:     <public type="string" name="NF_ENTER_FILE_NAME" id="0x7f0c010b" />
  1085:     <public type="string" name="NF_ENTER_FOLDER_NAME" id="0x7f0c010c" />
  1086:     <public type="string" name="NF_TTL_NEW_FILE" id="0x7f0c010d" />
  1087:     <public type="string" name="NF_TTL_NEW_FOLDER" id="0x7f0c010e" />
  1088:     <public type="string" name="NTF_ADD_FILES_TO_ARC" id="0x7f0c010f" />
  1089:     <public type="string" name="NTF_COMPRESS" id="0x7f0c0110" />
  1090:     <public type="string" name="NTF_COPY_FILE" id="0x7f0c0111" />
  1091:     <public type="string" name="NTF_DEL_FILES_FROM_ARC" id="0x7f0c0112" />
```

## jadx/sources/ru/zdevs/zarchiver/activity/OpenAsDlg.java:94 (update; file score 18)

```java
    88:                     ContentValues contentValues = new ContentValues();
    89:                     contentValues.put("EXT", bVar.f2174a);
    90:                     contentValues.put("PKG", bVar.f2175b);
    91:                     contentValues.put("CLS", bVar.f2176c);
    92:                     contentValues.put("SCHEME", Integer.valueOf(bVar.f2177d));
    93:                     contentValues.put("TYPE", Integer.valueOf(bVar.f2178e));
    94:                     if (readableDatabase.update("FA", contentValues, "EXT = ? AND TYPE = ?", new String[]{bVar.f2174a, String.valueOf(bVar.f2178e)}) == 0) {
    95:                         readableDatabase.insert("FA", null, contentValues);
    96:                     }
    97:                 } finally {
    98:                     n0.e.d(readableDatabase);
    99:                 }
   100:             }
   101:         }
   102: 
```

## decoded/res/values-bg/strings.xml:236 (update; file score 15)

```java
   230:     <string name="MES_SUCESSFUL_END">Операцията завърши успешно</string>
   231:     <string name="MES_SUCESSFUL_TEST">Архива не съдържа грешки</string>
   232:     <string name="MES_SUCESSFUL_TESTS">Архивите не съдържат грешки</string>
   233:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto поддържа само латински пароли!</string>
   234:     <string name="MES_TEST_FILE_PROCESS">Проверка:</string>
   235:     <string name="MES_WHITE_START_SERVICE">Подготовка за отваряне на архива</string>
   236:     <string name="MOD_UPDATE_FILE">"Файла %1 е модифициран.
   237: Да се обнови ли в архива?"</string>
   238:     <string name="NF_ENTER_FOLDER_NAME">Име:</string>
   239:     <string name="NF_TTL_NEW_FOLDER">Нова папка</string>
   240:     <string name="NTF_ADD_FILES_TO_ARC">Добавяне на файлове към архив %1</string>
   241:     <string name="NTF_COMPRESS">Създаване на архив: %1</string>
   242:     <string name="NTF_COPY_FILE">Копиране на файл</string>
   243:     <string name="NTF_DEL_FILES_FROM_ARC">Изтриване на файлове от архив %1</string>
   244:     <string name="NTF_EXTRACT">Разархивиране: %1</string>
```

## decoded/res/values-da/strings.xml:231 (update; file score 15)

```java
   225:     <string name="MES_SUCESSFUL_END">Handlingen fuldført</string>
   226:     <string name="MES_SUCESSFUL_TEST">Arkiv indeholder ingen fejl</string>
   227:     <string name="MES_SUCESSFUL_TESTS">Arkiver indeholder ingen fejl</string>
   228:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto understøtter kun adgangskodetegn fra det engelske alfabet!</string>
   229:     <string name="MES_TEST_FILE_PROCESS">Tester:</string>
   230:     <string name="MES_WHITE_START_SERVICE">Gør klar til at åbne arkiv</string>
   231:     <string name="MOD_UPDATE_FILE">"Filen %1 er ændret.
   232: Opdatér den i archivet?"</string>
   233:     <string name="NF_ENTER_FOLDER_NAME">Nyt mappenavn:</string>
   234:     <string name="NF_TTL_NEW_FOLDER">Ny mappe</string>
   235:     <string name="NTF_ADD_FILES_TO_ARC">Føjer filer til arkivet %1</string>
   236:     <string name="NTF_COMPRESS">Opretter arkiv: %1</string>
   237:     <string name="NTF_COPY_FILE">Kopierer filer</string>
   238:     <string name="NTF_DEL_FILES_FROM_ARC">Fjerner filer fra arkivet %1</string>
   239:     <string name="NTF_EXTRACT">Udpakker: %1</string>
```

## decoded/res/values-el/strings.xml:232 (update; file score 15)

```java
   226:     <string name="MES_SUCESSFUL_END">Η λειτουργία ολοκληρώθηκε με επιτυχία</string>
   227:     <string name="MES_SUCESSFUL_TEST">Η αρχειοθήκη δεν περιέχει σφάλματα</string>
   228:     <string name="MES_SUCESSFUL_TESTS">Οι αρχειοθήκες δεν περιέχουν σφάλματα</string>
   229:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">Η κρυπτογράφηση Zip υποστηρίζει μόνο κωδικούς με λατινικούς χαρακτήρες!</string>
   230:     <string name="MES_TEST_FILE_PROCESS">Δοκιμή:</string>
   231:     <string name="MES_WHITE_START_SERVICE">Προετοιμασία για άνοιγμα της αρχειοθήκης</string>
   232:     <string name="MOD_UPDATE_FILE">"Το αρχείο %1 έχει τροποποιηθεί.
   233: Θέλετε να ενημερωθεί η αρθειοθήκη;"</string>
   234:     <string name="NF_ENTER_FOLDER_NAME">Νέο όνομα φακέλου:</string>
   235:     <string name="NF_TTL_NEW_FILE">Νέο αρχείο</string>
   236:     <string name="NF_TTL_NEW_FOLDER">Νέος φάκελος</string>
   237:     <string name="NTF_ADD_FILES_TO_ARC">Προσθήκη αρχείων στην αρχειοθήκη %1</string>
   238:     <string name="NTF_COMPRESS">Δημιουργία αρχειοθήκης: %1</string>
   239:     <string name="NTF_COPY_FILE">Αντιγραφή αρχείων</string>
   240:     <string name="NTF_DEL_FILES_FROM_ARC">Αφαίρεση αρχείων από την αρχειοθήκη %1</string>
```

## decoded/res/values-fa/strings.xml:219 (update; file score 15)

```java
   213:     <string name="MES_SUCESSFUL_COMPRESS">آرشیو با موفقیت ایجاد شد</string>
   214:     <string name="MES_SUCESSFUL_DECOMPRESS">آرشیو با موفقیت استخراج شد</string>
   215:     <string name="MES_SUCESSFUL_DEL_FILE">فایل با موفقیت از آرشیو حذف شد</string>
   216:     <string name="MES_SUCESSFUL_END">عملیات موفقیت آمیز بود</string>
   217:     <string name="MES_TEST_FILE_PROCESS">آزمایش کردن:</string>
   218:     <string name="MES_WHITE_START_SERVICE">آماده کردن برای بازکردن آرشیو</string>
   219:     <string name="MOD_UPDATE_FILE">%1فایل تغییر یافت. آیا می خواهید در آرشیو بروزرسانی گردد؟</string>
   220:     <string name="NF_ENTER_FILE_NAME">نام فایل جدید:</string>
   221:     <string name="NF_ENTER_FOLDER_NAME">:نام پوشه جدید</string>
   222:     <string name="NF_TTL_NEW_FILE">فایل جدید</string>
   223:     <string name="NF_TTL_NEW_FOLDER">پوشه جدید</string>
   224:     <string name="NTF_ADD_FILES_TO_ARC">اضافه کردن فایل به آرشیو %1</string>
   225:     <string name="NTF_COMPRESS">ایجاد آرشیو: %1</string>
   226:     <string name="NTF_COPY_FILE">کپی کردن فایل</string>
   227:     <string name="NTF_DEL_FILES_FROM_ARC">حذف فایل از آرشیو %1</string>
```

## decoded/res/values-fr/strings.xml:225 (update; file score 15)

```java
   219:     <string name="MES_SUCESSFUL_END">Opération terminée avec succès</string>
   220:     <string name="MES_SUCESSFUL_TEST">"L'archive ne contient pas d'erreurs"</string>
   221:     <string name="MES_SUCESSFUL_TESTS">"Les archives ne contiennent pas d'erreurs"</string>
   222:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto soutien les mots de passe en anglais seulement!</string>
   223:     <string name="MES_TEST_FILE_PROCESS">Essai:</string>
   224:     <string name="MES_WHITE_START_SERVICE">"Préparation pour l'ouverture de l'archive"</string>
   225:     <string name="MOD_UPDATE_FILE">"Le fichier %1 a été modifié.
   226: Voulez-vous le mettre à jour dans l'archive ?"</string>
   227:     <string name="NF_ENTER_FOLDER_NAME">Nom du dossier :</string>
   228:     <string name="NF_TTL_NEW_FOLDER">Nouveau dossier</string>
   229:     <string name="NTF_ADD_FILES_TO_ARC">"Ajout de fichiers à l'archive %1"</string>
   230:     <string name="NTF_COMPRESS">"Création de l'archive : %1"</string>
   231:     <string name="NTF_COPY_FILE">Copie de fichiers</string>
   232:     <string name="NTF_DEL_FILES_FROM_ARC">"Suppression des fichiers de l'archive %1"</string>
   233:     <string name="NTF_EXTRACT">Extraction : %1</string>
```

## decoded/res/values-ky/strings.xml:189 (update; file score 15)

```java
   183:     <string name="MES_SUCESSFUL_END">ىشتۅۅ جەڭىشتۉۉ</string>
   184:     <string name="MES_SUCESSFUL_TEST">قىسىلعان ۅجۅت قاتاالىعى ەمەس</string>
   185:     <string name="MES_SUCESSFUL_TESTS">قىسىلعان ۅجۅت قاتاالىعى ەمەس</string>
   186:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto ەنگىلىزچە سىر سۅز قولدويت !</string>
   187:     <string name="MES_TEST_FILE_PROCESS">تەكشەرۉۉ:</string>
   188:     <string name="MES_WHITE_START_SERVICE">ازىر قىسىلعان ۅجۅتتۉ اچۇۇعا دايىندانىپ جاتات</string>
   189:     <string name="MOD_UPDATE_FILE">"ۅجۅت %1 ۅزكۅرتۉلگۅن。
   190:  قىسىلعان ۅجۅتتۉ جاڭىلايسىزبى؟ "</string>
   191:     <string name="NF_ENTER_FOLDER_NAME">جاڭى ۅجۅت قۇرجۇن اتى:</string>
   192:     <string name="NF_TTL_NEW_FOLDER">جاڭى ۅجۅت قۇرجۇن قۇرۇۇ</string>
   193:     <string name="NTF_ADD_FILES_TO_ARC">ازىر قىسىلعان ۅجۅتكۅ ۅجۅت قوشۇلۇپ جاتات :%1</string>
   194:     <string name="NTF_COMPRESS">ازىر قىسىلعان ۅجۅت قۇرۇلۇۇدا：%1</string>
   195:     <string name="NTF_COPY_FILE">ازىر ۅجۅت كۅچۉرۉۉدۅ</string>
   196:     <string name="NTF_DEL_FILES_FROM_ARC">ازىر قىسىلعان ۅجۅتتۅن %1 ۅچۉرۉلۉۉدۅ</string>
   197:     <string name="NTF_EXTRACT">ازىر چەچۉۉدۅ：%1</string>
```

## decoded/res/values-ug/strings.xml:184 (update; file score 15)

```java
   178:     <string name="MES_SUCESSFUL_END">مەشغۇلات تامام</string>
   179:     <string name="MES_SUCESSFUL_TEST">پرېس ھۆججىتىدە خاتالىق يوق</string>
   180:     <string name="MES_SUCESSFUL_TESTS">پرېس ھۆججىتىدە خاتالىق يوق</string>
   181:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">‏ZipCrypto پەقەتلا ئىنگلىزچە پارولنى قوللايدۇ !</string>
   182:     <string name="MES_TEST_FILE_PROCESS">سىناش :</string>
   183:     <string name="MES_WHITE_START_SERVICE">پرېس ھۆججىتىنى تەييارلاۋاتىدۇ</string>
   184:     <string name="MOD_UPDATE_FILE">بۇ %1 ھۆججىتى مەۋجۇت ئىكەن پرېس ھۆججىتىنى يېڭىلامسىز؟</string>
   185:     <string name="NF_ENTER_FOLDER_NAME">يېڭى ھۆججەت قىسقۇچنىڭ نامى:</string>
   186:     <string name="NF_TTL_NEW_FOLDER">ھۆججەت قىسقۇچ قۇرۇش</string>
   187:     <string name="NTF_ADD_FILES_TO_ARC">بۇ پرېس ھۆججىتىگە ھۆججەت قوشۇۋاتىدۇ %1</string>
   188:     <string name="NTF_COMPRESS">پرېس ھۆججىتىنى قۇرۇۋاتىدۇ ：%1</string>
   189:     <string name="NTF_COPY_FILE">ھۆججەتنى كۆچۈرۈۋاتىدۇ</string>
   190:     <string name="NTF_DEL_FILES_FROM_ARC">بۇ %1 پرېس ھۆججىتىدىن ھۆججەت ئۆچۈرىۋاتىدۇ</string>
   191:     <string name="NTF_EXTRACT">يېشىۋاتىدۇ：%1</string>
   192:     <string name="NTF_MOVE_FILE">ھۆججەتنى يۆتكەۋاتىدۇ</string>
```

## decoded/res/values-uk/strings.xml:243 (update; file score 15)

```java
   237:     <string name="MES_SUCESSFUL_END">Операція успішно завершена</string>
   238:     <string name="MES_SUCESSFUL_TEST">Архів не містять помилок</string>
   239:     <string name="MES_SUCESSFUL_TESTS">Архіви не містять помилок</string>
   240:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto підтримує паролі тільки латиницею!</string>
   241:     <string name="MES_TEST_FILE_PROCESS">Перевірка:</string>
   242:     <string name="MES_WHITE_START_SERVICE">Підготовка до відкривання архіву</string>
   243:     <string name="MOD_UPDATE_FILE">"Файл %1 було змінено.
   244: Ви бажаєте оновити його в архіві?"</string>
   245:     <string name="NF_ENTER_FILE_NAME">Нова назва файлу:</string>
   246:     <string name="NF_ENTER_FOLDER_NAME">Введіть назву нової теки:</string>
   247:     <string name="NF_TTL_NEW_FILE">Новий файл</string>
   248:     <string name="NF_TTL_NEW_FOLDER">Нова тека</string>
   249:     <string name="NTF_ADD_FILES_TO_ARC">Додавання файлів в архів %1</string>
   250:     <string name="NTF_COMPRESS">Cтворення архіву: %1</string>
   251:     <string name="NTF_COPY_FILE">Копіювання файлів</string>
```

## decoded/res/values-uz/strings.xml:243 (update; file score 15)

```java
   237:     <string name="MES_SUCESSFUL_END">Jarayon muvaffaqiyatli bajarildi</string>
   238:     <string name="MES_SUCESSFUL_TEST">Arxivda xatoliklar yoʻq</string>
   239:     <string name="MES_SUCESSFUL_TESTS">Arxivlarda xatoliklar yoʻq</string>
   240:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto faqat lotin alifbosini qoʻllaydi!</string>
   241:     <string name="MES_TEST_FILE_PROCESS">Tekshirish:</string>
   242:     <string name="MES_WHITE_START_SERVICE">Arxivni ochishga tayyorlov</string>
   243:     <string name="MOD_UPDATE_FILE">"%1 fayli oʻzgartirildi.
   244: Arxivda uni yangilashni xohlaysizmi?"</string>
   245:     <string name="NF_ENTER_FILE_NAME">Yangi jild nomi:</string>
   246:     <string name="NF_ENTER_FOLDER_NAME">Yangi papka nomini kiriting:</string>
   247:     <string name="NF_TTL_NEW_FILE">Yangi fayl</string>
   248:     <string name="NF_TTL_NEW_FOLDER">Yangi papka</string>
   249:     <string name="NTF_ADD_FILES_TO_ARC">Fayllarni %1 arxiviga qoʻshish</string>
   250:     <string name="NTF_COMPRESS">%1 arxivini tuzish</string>
   251:     <string name="NTF_COPY_FILE">Faylni nusxalash</string>
```

## decoded/res/values-zh-rTW/strings.xml:242 (update; file score 15)

```java
   236:     <string name="MES_SUCESSFUL_END">操作成功完成！</string>
   237:     <string name="MES_SUCESSFUL_TEST">檔案正常</string>
   238:     <string name="MES_SUCESSFUL_TESTS">檔案正常</string>
   239:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto 加密只支援英文密碼!</string>
   240:     <string name="MES_TEST_FILE_PROCESS">正在測試:</string>
   241:     <string name="MES_WHITE_START_SERVICE">正在開啟壓縮檔案</string>
   242:     <string name="MOD_UPDATE_FILE">"檔案 %1 已被修改.
   243: 是否想要更新檔案?"</string>
   244:     <string name="NF_ENTER_FILE_NAME">新檔案名稱：</string>
   245:     <string name="NF_ENTER_FOLDER_NAME">輸入資料夾名稱:</string>
   246:     <string name="NF_TTL_NEW_FILE">新檔案</string>
   247:     <string name="NF_TTL_NEW_FOLDER">建立資料夾</string>
   248:     <string name="NTF_ADD_FILES_TO_ARC">新增檔案至 %1</string>
   249:     <string name="NTF_COMPRESS">正在建立壓縮檔案: %1</string>
   250:     <string name="NTF_COPY_FILE">正在複製檔案</string>
```

## decoded/smali/ru/zdevs/zarchiver/archiver/C2JBridge.smali:479 (security_config; file score 15)

```java
   473:     .line 1
   474:     :try_start_0
   475:     const-string v0, "handler"
   476: 
   477:     .line 2
   478:     .line 3
   479:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
   480: 
   481:     .line 4
   482:     .line 5
   483:     .line 6
   484:     const-string v0, "mime"
   485: 
   486:     .line 7
   487:     .line 8
```

## decoded/smali/ru/zdevs/zarchiver/archiver/C2JBridge.smali:488 (security_config; file score 15)

```java
   482:     .line 5
   483:     .line 6
   484:     const-string v0, "mime"
   485: 
   486:     .line 7
   487:     .line 8
   488:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
   489: 
   490:     .line 9
   491:     .line 10
   492:     .line 11
   493:     const-string v0, "control"
   494: 
   495:     .line 12
   496:     .line 13
```

## decoded/smali/ru/zdevs/zarchiver/archiver/C2JBridge.smali:497 (security_config; file score 15)

```java
   491:     .line 10
   492:     .line 11
   493:     const-string v0, "control"
   494: 
   495:     .line 12
   496:     .line 13
   497:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
   498: 
   499:     .line 14
   500:     .line 15
   501:     .line 16
   502:     const-string v0, "iconv"
   503: 
   504:     .line 17
   505:     .line 18
```

## decoded/smali/ru/zdevs/zarchiver/archiver/C2JBridge.smali:506 (security_config; file score 15)

```java
   500:     .line 15
   501:     .line 16
   502:     const-string v0, "iconv"
   503: 
   504:     .line 17
   505:     .line 18
   506:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
   507: 
   508:     .line 19
   509:     .line 20
   510:     .line 21
   511:     const/4 v0, 0x1
   512: 
   513:     .line 22
   514:     sput-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z
```

## decoded/smali/ru/zdevs/zarchiver/media/MimeLib.smali:16 (security_config; file score 15)

```java
    10:     .line 1
    11:     :try_start_0
    12:     const-string v0, "mime"
    13: 
    14:     .line 2
    15:     .line 3
    16:     invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    17:     :try_end_0
    18:     .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    19: 
    20:     .line 4
    21:     .line 5
    22:     .line 6
    23:     :catch_0
    24:     return-void
```

## jadx/sources/rikka/shizuku/ShizukuProvider.java:73 (security_config; file score 15)

```java
    67:     public final void attachInfo(Context context, ProviderInfo providerInfo) {
    68:         super.attachInfo(context, providerInfo);
    69:         if (providerInfo.multiprocess) {
    70:             throw new IllegalStateException("android:multiprocess must be false");
    71:         }
    72:         if (!providerInfo.exported) {
    73:             throw new IllegalStateException("android:exported must be true");
    74:         }
    75:         f1432b = true;
    76:     }
    77: 
    78:     @Override
    79:     public final Bundle call(String str, String str2, Bundle bundle) {
    80:         IBinder iBinder;
    81:         if (bundle == null) {
```

## jadx/sources/rikka/shizuku/ShizukuProvider.java:147 (update; file score 15)

```java
   141:     @Override
   142:     public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
   143:         return null;
   144:     }
   145: 
   146:     @Override
   147:     public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
   148:         return 0;
   149:     }
   150: }
```

## jadx/sources/ru/zdevs/zarchiver/archiver/C2JBridge.java:137 (security_config; file score 15)

```java
   131:         f1623m[i2] = null;
   132:         f1624n[i2] = null;
   133:     }
   134: 
   135:     public static boolean e() {
   136:         try {
   137:             System.loadLibrary("handler");
   138:             System.loadLibrary("mime");
   139:             System.loadLibrary("control");
   140:             System.loadLibrary("iconv");
   141:             f1613c = true;
   142:         } catch (UnsatisfiedLinkError unused) {
   143:             f1613c = false;
   144:         }
   145:         return f1613c;
```

## jadx/sources/ru/zdevs/zarchiver/archiver/C2JBridge.java:140 (security_config; file score 15)

```java
   134: 
   135:     public static boolean e() {
   136:         try {
   137:             System.loadLibrary("handler");
   138:             System.loadLibrary("mime");
   139:             System.loadLibrary("control");
   140:             System.loadLibrary("iconv");
   141:             f1613c = true;
   142:         } catch (UnsatisfiedLinkError unused) {
   143:             f1613c = false;
   144:         }
   145:         return f1613c;
   146:     }
   147: 
   148:     public static int jAddFileToList(int i2, String str, int i3, long j2, int i4, int i5) {
```

## jadx/sources/ru/zdevs/zarchiver/media/MimeLib.java:6 (security_config; file score 15)

```java
     1: package ru.zdevs.zarchiver.media;
     2: 
     3: public class MimeLib {
     4:     static {
     5:         try {
     6:             System.loadLibrary("mime");
     7:         } catch (UnsatisfiedLinkError unused) {
     8:         }
     9:     }
    10: 
    11:     public static native int cGetType(String str);
    12: }
```

## decoded/smali/rikka/shizuku/ShizukuProvider.smali:322 (security_config; file score 13)

```java
   316:     .line 16
   317:     :cond_0
   318:     new-instance p1, Ljava/lang/IllegalStateException;
   319: 
   320:     .line 17
   321:     .line 18
   322:     const-string p2, "android:exported must be true"
   323: 
   324:     .line 19
   325:     .line 20
   326:     invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
   327: 
   328:     .line 21
   329:     .line 22
   330:     .line 23
```

## decoded/smali/rikka/shizuku/ShizukuProvider.smali:792 (update; file score 13)

```java
   786: 
   787:     const/4 p1, 0x0
   788: 
   789:     return-object p1
   790: .end method
   791: 
   792: .method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
   793:     .locals 0
   794: 
   795:     const/4 p1, 0x0
   796: 
   797:     return p1
   798: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/AboutDlg.smali:151 (update; file score 12)

```java
   145:     .line 27
   146:     .line 28
   147:     .line 29
   148:     move-result-object v1
   149: 
   150:     .line 30
   151:     iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
   152:     :try_end_0
   153:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   154: 
   155:     .line 31
   156:     .line 32
   157:     goto :goto_0
   158: 
   159:     .line 33
```

## decoded/smali/ru/zdevs/zarchiver/activity/AboutDlg.smali:631 (update; file score 12)

```java
   625:     .line 28
   626:     invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
   627: 
   628:     .line 29
   629:     .line 30
   630:     .line 31
   631:     const-string v1, "market://details?id=ru.zdevs.zarchiver"
   632: 
   633:     .line 32
   634:     .line 33
   635:     invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
   636: 
   637:     .line 34
   638:     .line 35
   639:     .line 36
```

## decoded/smali/ru/zdevs/zarchiver/activity/AboutDlg.smali:1099 (update; file score 12)

```java
  1093:     .line 274
  1094:     .line 275
  1095:     const-string v1, "android.intent.extra.TEXT"
  1096: 
  1097:     .line 276
  1098:     .line 277
  1099:     const-string v3, "ZArchiver is fast and simple archive and file manager. Get it on https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver"
  1100: 
  1101:     .line 278
  1102:     .line 279
  1103:     invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
  1104: 
  1105:     .line 280
  1106:     .line 281
  1107:     .line 282
```

## decoded/smali/o0/a.smali:263 (update; file score 7)

```java
   257:     .line 49
   258:     :goto_0
   259:     if-eqz v3, :cond_3
   260: 
   261:     .line 50
   262:     .line 51
   263:     iget p0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
   264: 
   265:     .line 52
   266:     .line 53
   267:     const/16 v3, 0x1f6
   268: 
   269:     .line 54
   270:     .line 55
   271:     if-lt p0, v3, :cond_3
```

Snippets shown: 100. Complete bounded hit indexes are in the corresponding TSV files.