# APK install

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java:243 (apk_install; file score 54)

```java
   237:                                     } else if (entry.getValue() instanceof String) {
   238:                                         editorEdit.putString((String) entry.getKey(), (String) entry.getValue());
   239:                                     } else if (entry.getValue() instanceof Integer) {
   240:                                         editorEdit.putInt((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
   241:                                     }
   242:                                 }
   243:                                 i2 = !editorEdit.commit() ? 1 : 0;
   244:                             } catch (Exception unused) {
   245:                                 z2 = true;
   246:                                 c2 = z2 ? (char) 1 : (char) 2;
   247:                                 n0.e.d(objectInputStream);
   248:                                 n0.e.d(inputStream);
   249:                                 i2 = c2;
   250:                             }
   251:                         } else {
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:867 (apk_install; file score 48)

```java
   861:     .line 44
   862:     :cond_1
   863:     const/4 v0, 0x0
   864: 
   865:     .line 45
   866:     :goto_0
   867:     const-string v1, ".activity.InstallApksDlg"
   868: 
   869:     .line 46
   870:     .line 47
   871:     invoke-static {p0, v1, v0}, La0/c;->h(Landroid/content/Context;Ljava/lang/String;Z)V
   872: 
   873:     .line 48
   874:     .line 49
   875:     .line 50
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:201 (apk_install; file score 48)

```java
   195:         f1434c = this;
   196:         this.f1439a = new Handler(Looper.getMainLooper());
   197:         f1437f = getContentResolver();
   198:         String processName = getProcessName();
   199:         if (processName == null || processName.indexOf(58) == -1) {
   200:             boolean z2 = Build.VERSION.SDK_INT >= 26;
   201:             a0.c.h(this, ".activity.InstallApksDlg", z2);
   202:             a0.c.h(this, ".provider.PluginFileProvider", z2);
   203:             t0.b.m(this, true, null);
   204:         }
   205:         if (Build.VERSION.SDK_INT >= 23 && !f1438g) {
   206:             ShizukuProvider.a(this);
   207:         }
   208:         super.onCreate();
   209:     }
```

## decoded/smali/ru/zdevs/zarchiver/a.smali:174 (apk_install; file score 39)

```java
   168:     .line 36
   169:     .line 37
   170:     move-result-object v2
   171: 
   172:     .line 38
   173:     :goto_0
   174:     const-string v3, "application/vnd.android.package-archive"
   175: 
   176:     .line 39
   177:     .line 40
   178:     invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
   179: 
   180:     .line 41
   181:     .line 42
   182:     .line 43
```

## jadx/sources/ru/zdevs/zarchiver/a.java:464 (apk_install; file score 39)

```java
   458:     public static void d(ZArchiver zArchiver, h hVar, h hVar2, String[] strArr) {
   459:         String strE;
   460:         if (hVar != null) {
   461:             if (a0.c.E(hVar.f1108c) == 6) {
   462:                 Intent intent = new Intent("android.intent.action.VIEW");
   463:                 intent.addCategory("android.intent.category.DEFAULT");
   464:                 intent.setDataAndType(n0.a.f1232a ? KitKatExtSD.c(hVar) : SAF.h(zArchiver, hVar, false), "application/vnd.android.package-archive");
   465:                 intent.setFlags(268435457);
   466:                 if (v0.e.h(zArchiver, intent) == 0) {
   467:                     return;
   468:                 }
   469:             }
   470:             strE = hVar.e();
   471:         } else if (hVar2 == null) {
   472:             return;
```

## decoded/AndroidManifest.xml:27 (apk_install; file score 25)

```java
    21:     <uses-permission android:maxSdkVersion="29" android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    22:     <uses-permission android:maxSdkVersion="29" android:name="android.permission.WRITE_MEDIA_STORAGE"/>
    23:     <uses-permission android:name="android.permission.WAKE_LOCK"/>
    24:     <uses-permission android:name="android.permission.ACCESS_SUPERUSER"/>
    25:     <uses-permission android:minSdkVersion="28" android:name="android.permission.FOREGROUND_SERVICE"/>
    26:     <uses-permission android:minSdkVersion="34" android:name="android.permission.FOREGROUND_SERVICE_DATA_SYNC"/>
    27:     <uses-permission-sdk-23 android:name="android.permission.REQUEST_INSTALL_PACKAGES"/>
    28:     <uses-permission-sdk-23 android:minSdkVersion="30" android:name="android.permission.MANAGE_EXTERNAL_STORAGE"/>
    29:     <uses-permission-sdk-23 android:minSdkVersion="33" android:name="android.permission.POST_NOTIFICATIONS"/>
    30:     <uses-permission android:name="ru.zdevs.zarchiver.permission.PLUGIN.CLOUD"/>
    31:     <uses-permission android:name="ru.zdevs.zarchiver.permission.PLUGIN.USB"/>
    32:     <uses-feature android:name="android.hardware.touchscreen" android:required="false"/>
    33:     <uses-feature android:name="android.hardware.type.pc" android:required="false"/>
    34:     <uses-feature android:name="android.software.leanback" android:required="false"/>
    35:     <supports-screens android:anyDensity="true" android:largeScreens="true" android:normalScreens="true" android:resizeable="true" android:smallScreens="true" android:xlargeScreens="true"/>
```

## decoded/AndroidManifest.xml:604 (apk_install; file score 25)

```java
   598:                 <data android:mimeType="*/*"/>
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
```

## decoded/AndroidManifest.xml:669 (apk_install; file score 25)

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

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApkDlg.smali:1 (apk_install; file score 12)

```java
     1: .class public Lru/zdevs/zarchiver/activity/InstallApkDlg;
     2: .super Landroid/app/Activity;
     3: .source "SourceFile"
     4: 
     5: 
     6: # direct methods
     7: .method public constructor <init>()V
     8:     .locals 0
     9: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApkDlg.smali:170 (apk_install; file score 12)

```java
   164:     .line 29
   165:     .line 30
   166:     goto :goto_0
   167: 
   168:     .line 31
   169:     :catchall_0
   170:     invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/InstallApkDlg;->finishAndRemoveTask()V
   171: 
   172:     .line 32
   173:     .line 33
   174:     .line 34
   175:     :goto_0
   176:     return-void
   177: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:1 (apk_install; file score 12)

```java
     1: .class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$a;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:11 (apk_install; file score 12)

```java
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onCreate(Landroid/os/Bundle;)V
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:23 (apk_install; file score 12)

```java
    17: .end annotation
    18: 
    19: 
    20: # instance fields
    21: .field public final synthetic a:Landroid/content/Intent;
    22: 
    23: .field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    24: 
    25: 
    26: # direct methods
    27: .method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Landroid/content/Intent;)V
    28:     .locals 0
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:35 (apk_install; file score 12)

```java
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
    32:         }
    33:     .end annotation
    34: 
    35:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    36: 
    37:     iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->a:Landroid/content/Intent;
    38: 
    39:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    40: 
    41:     return-void
    42: .end method
    43: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:50 (apk_install; file score 12)

```java
    44: 
    45: # virtual methods
    46: .method public final run()V
    47:     .locals 5
    48: 
    49:     .line 1
    50:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->a:Landroid/content/Intent;
    51: 
    52:     .line 2
    53:     .line 3
    54:     invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    55: 
    56:     .line 4
    57:     .line 5
    58:     .line 6
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:62 (apk_install; file score 12)

```java
    56:     .line 4
    57:     .line 5
    58:     .line 6
    59:     move-result-object v0
    60: 
    61:     .line 7
    62:     iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    63: 
    64:     .line 8
    65:     .line 9
    66:     invoke-static {v1, v0}, Lv0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    67: 
    68:     .line 10
    69:     .line 11
    70:     .line 12
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:99 (apk_install; file score 12)

```java
    93:     .line 22
    94:     invoke-direct {v4, v0}, Lh0/h;-><init>(Ljava/lang/String;)V
    95: 
    96:     .line 23
    97:     .line 24
    98:     .line 25
    99:     const-class v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;
   100: 
   101:     .line 26
   102:     .line 27
   103:     invoke-static {v4, v0}, Lq0/a;->j(Lh0/h;Ljava/lang/Class;)Z
   104: 
   105:     .line 28
   106:     .line 29
   107:     .line 30
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:115 (apk_install; file score 12)

```java
   109: 
   110:     .line 31
   111:     if-nez v0, :cond_1
   112: 
   113:     .line 32
   114:     .line 33
   115:     sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I
   116: 
   117:     .line 34
   118:     .line 35
   119:     invoke-virtual {v1, v3, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   120:     :try_end_0
   121:     .catch Lq0/a$b; {:try_start_0 .. :try_end_0} :catch_0
   122: 
   123:     .line 36
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$a.smali:150 (apk_install; file score 12)

```java
   144:     .line 46
   145:     .line 47
   146:     goto :goto_0
   147: 
   148:     .line 48
   149:     :cond_0
   150:     sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I
   151: 
   152:     .line 49
   153:     .line 50
   154:     const-string v0, "Failed to get path to the APKS/XAPK file"
   155: 
   156:     .line 51
   157:     .line 52
   158:     invoke-virtual {v1, v0, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:1 (apk_install; file score 12)

```java
     1: .class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$b;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:11 (apk_install; file score 12)

```java
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onNewIntent(Landroid/content/Intent;)V
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:23 (apk_install; file score 12)

```java
    17: .end annotation
    18: 
    19: 
    20: # instance fields
    21: .field public final synthetic a:Ljava/lang/String;
    22: 
    23: .field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    24: 
    25: 
    26: # direct methods
    27: .method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;)V
    28:     .locals 0
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:35 (apk_install; file score 12)

```java
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
    32:         }
    33:     .end annotation
    34: 
    35:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    36: 
    37:     iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->a:Ljava/lang/String;
    38: 
    39:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    40: 
    41:     return-void
    42: .end method
    43: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:50 (apk_install; file score 12)

```java
    44: 
    45: # virtual methods
    46: .method public final run()V
    47:     .locals 3
    48: 
    49:     .line 1
    50:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    51: 
    52:     .line 2
    53:     .line 3
    54:     invoke-static {v0}, Lq0/a;->a(Landroid/content/Context;)V
    55: 
    56:     .line 4
    57:     .line 5
    58:     .line 6
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:63 (apk_install; file score 12)

```java
    57:     .line 5
    58:     .line 6
    59:     sget v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I
    60: 
    61:     .line 7
    62:     .line 8
    63:     iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->a:Ljava/lang/String;
    64: 
    65:     .line 9
    66:     .line 10
    67:     const/4 v2, 0x0
    68: 
    69:     .line 11
    70:     invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    71: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$b.smali:70 (apk_install; file score 12)

```java
    64: 
    65:     .line 9
    66:     .line 10
    67:     const/4 v2, 0x0
    68: 
    69:     .line 11
    70:     invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    71: 
    72:     .line 12
    73:     .line 13
    74:     .line 14
    75:     return-void
    76: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:1 (apk_install; file score 12)

```java
     1: .class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$c;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:11 (apk_install; file score 12)

```java
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onActivityResult(IILandroid/content/Intent;)V
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:23 (apk_install; file score 12)

```java
    17: .end annotation
    18: 
    19: 
    20: # instance fields
    21: .field public final synthetic a:Lh0/h;
    22: 
    23: .field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    24: 
    25: 
    26: # direct methods
    27: .method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lh0/h;)V
    28:     .locals 0
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:35 (apk_install; file score 12)

```java
    29:     .annotation system Ldalvik/annotation/Signature;
    30:         value = {
    31:             "()V"
    32:         }
    33:     .end annotation
    34: 
    35:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    36: 
    37:     iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->a:Lh0/h;
    38: 
    39:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    40: 
    41:     return-void
    42: .end method
    43: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:51 (apk_install; file score 12)

```java
    45: # virtual methods
    46: .method public final run()V
    47:     .locals 3
    48: 
    49:     .line 1
    50:     :try_start_0
    51:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->a:Lh0/h;
    52: 
    53:     .line 2
    54:     .line 3
    55:     const-class v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;
    56: 
    57:     .line 4
    58:     .line 5
    59:     invoke-static {v0, v1}, Lq0/a;->j(Lh0/h;Ljava/lang/Class;)Z
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:70 (apk_install; file score 12)

```java
    64:     .line 7
    65:     .line 8
    66:     goto :goto_0
    67: 
    68:     .line 9
    69:     :catch_0
    70:     sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I
    71: 
    72:     .line 10
    73:     .line 11
    74:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    75: 
    76:     .line 12
    77:     .line 13
    78:     const/4 v1, 0x0
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$c.smali:84 (apk_install; file score 12)

```java
    78:     const/4 v1, 0x0
    79: 
    80:     .line 14
    81:     const/4 v2, 0x0
    82: 
    83:     .line 15
    84:     invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    85: 
    86:     .line 16
    87:     .line 17
    88:     .line 18
    89:     :goto_0
    90:     return-void
    91: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:1 (apk_install; file score 12)

```java
     1: .class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$d;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:11 (apk_install; file score 12)

```java
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:25 (apk_install; file score 12)

```java
    19: 
    20: # instance fields
    21: .field public final synthetic a:Ljava/lang/String;
    22: 
    23: .field public final synthetic b:Z
    24: 
    25: .field public final synthetic c:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    26: 
    27: 
    28: # direct methods
    29: .method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;Z)V
    30:     .locals 0
    31:     .annotation system Ldalvik/annotation/Signature;
    32:         value = {
    33:             "()V"
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:37 (apk_install; file score 12)

```java
    31:     .annotation system Ldalvik/annotation/Signature;
    32:         value = {
    33:             "()V"
    34:         }
    35:     .end annotation
    36: 
    37:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    38: 
    39:     iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->a:Ljava/lang/String;
    40: 
    41:     iput-boolean p3, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->b:Z
    42: 
    43:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    44: 
    45:     return-void
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:41 (apk_install; file score 12)

```java
    35:     .end annotation
    36: 
    37:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    38: 
    39:     iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->a:Ljava/lang/String;
    40: 
    41:     iput-boolean p3, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->b:Z
    42: 
    43:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    44: 
    45:     return-void
    46: .end method
    47: 
    48: 
    49: # virtual methods
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:54 (apk_install; file score 12)

```java
    48: 
    49: # virtual methods
    50: .method public final run()V
    51:     .locals 3
    52: 
    53:     .line 1
    54:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    55: 
    56:     .line 2
    57:     .line 3
    58:     iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->a:Ljava/lang/String;
    59: 
    60:     .line 4
    61:     .line 5
    62:     if-nez v1, :cond_1
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:66 (apk_install; file score 12)

```java
    60:     .line 4
    61:     .line 5
    62:     if-nez v1, :cond_1
    63: 
    64:     .line 6
    65:     .line 7
    66:     iget-boolean v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->b:Z
    67: 
    68:     .line 8
    69:     .line 9
    70:     if-eqz v1, :cond_0
    71: 
    72:     .line 10
    73:     .line 11
    74:     const v1, 0x7f0c00ee
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$d.smali:119 (apk_install; file score 12)

```java
   113:     invoke-virtual {v1}, Landroid/widget/Toast;->show()V
   114: 
   115:     .line 30
   116:     .line 31
   117:     .line 32
   118:     :cond_2
   119:     invoke-virtual {v0}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->finishAndRemoveTask()V
   120: 
   121:     .line 33
   122:     .line 34
   123:     .line 35
   124:     return-void
   125: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:1 (apk_install; file score 12)

```java
     1: .class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
     2: .super Ljava/lang/Object;
     3: .source "SourceFile"
     4: 
     5: # interfaces
     6: .implements Landroid/content/ServiceConnection;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:11 (apk_install; file score 12)

```java
     5: # interfaces
     6: .implements Landroid/content/ServiceConnection;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingClass;
    11:     value = Lru/zdevs/zarchiver/activity/InstallApksDlg;
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:21 (apk_install; file score 12)

```java
    15:     accessFlags = 0x1
    16:     name = null
    17: .end annotation
    18: 
    19: 
    20: # instance fields
    21: .field public final synthetic a:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    22: 
    23: 
    24: # direct methods
    25: .method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;)V
    26:     .locals 0
    27: 
    28:     iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;->a:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    29: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:44 (apk_install; file score 12)

```java
    38:     .locals 3
    39: 
    40:     .line 1
    41:     const/4 p1, 0x1
    42: 
    43:     .line 2
    44:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;->a:Lru/zdevs/zarchiver/activity/InstallApksDlg;
    45: 
    46:     .line 3
    47:     .line 4
    48:     iput-boolean p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->c:Z
    49: 
    50:     .line 5
    51:     .line 6
    52:     const/4 p1, 0x0
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:55 (apk_install; file score 12)

```java
    49: 
    50:     .line 5
    51:     .line 6
    52:     const/4 p1, 0x0
    53: 
    54:     .line 7
    55:     iput-object p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;
    56: 
    57:     .line 8
    58:     .line 9
    59:     invoke-static {p2}, Lru/zdevs/zarchiver/service/c$a;->asInterface(Landroid/os/IBinder;)Lru/zdevs/zarchiver/service/c;
    60: 
    61:     .line 10
    62:     .line 11
    63:     .line 12
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:114 (apk_install; file score 12)

```java
   108:     .line 33
   109:     .line 34
   110:     iput-object v1, p2, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;
   111: 
   112:     .line 35
   113:     .line 36
   114:     iget-object p1, v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->d:Lh0/h;
   115: 
   116:     .line 37
   117:     .line 38
   118:     sget-object v1, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;
   119: 
   120:     .line 39
   121:     .line 40
   122:     new-instance v2, Lb0/d;
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg$e.smali:126 (apk_install; file score 12)

```java
   120:     .line 39
   121:     .line 40
   122:     new-instance v2, Lb0/d;
   123: 
   124:     .line 41
   125:     .line 42
   126:     invoke-direct {v2, v0, p2, p1}, Lb0/d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lru/zdevs/zarchiver/c;Lh0/h;)V
   127: 
   128:     .line 43
   129:     .line 44
   130:     .line 45
   131:     invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
   132: 
   133:     .line 46
   134:     .line 47
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:1 (apk_install; file score 12)

```java
     1: .class public Lru/zdevs/zarchiver/activity/InstallApksDlg;
     2: .super Landroid/app/Activity;
     3: .source "SourceFile"
     4: 
     5: 
     6: # static fields
     7: .field public static final synthetic f:I
     8: 
     9: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:19 (apk_install; file score 12)

```java
    13: .field public b:Lg0/y;
    14: 
    15: .field public c:Z
    16: 
    17: .field public d:Lh0/h;
    18: 
    19: .field public final e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
    20: 
    21: 
    22: # direct methods
    23: .method public constructor <init>()V
    24:     .locals 1
    25: 
    26:     .line 1
    27:     invoke-direct {p0}, Landroid/app/Activity;-><init>()V
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:32 (apk_install; file score 12)

```java
    26:     .line 1
    27:     invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    28: 
    29:     .line 2
    30:     .line 3
    31:     .line 4
    32:     new-instance v0, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
    33: 
    34:     .line 5
    35:     .line 6
    36:     invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;)V
    37: 
    38:     .line 7
    39:     .line 8
    40:     .line 9
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:41 (apk_install; file score 12)

```java
    35:     .line 6
    36:     invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/InstallApksDlg$e;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;)V
    37: 
    38:     .line 7
    39:     .line 8
    40:     .line 9
    41:     iput-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
    42: 
    43:     .line 10
    44:     .line 11
    45:     return-void
    46: .end method
    47: 
    48: 
    49: # virtual methods
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:53 (apk_install; file score 12)

```java
    47: 
    48: 
    49: # virtual methods
    50: .method public final a(Ljava/lang/String;Z)V
    51:     .locals 1
    52: 
    53:     new-instance v0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;
    54: 
    55:     invoke-direct {v0, p0, p1, p2}, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;Z)V
    56: 
    57:     invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    58: 
    59:     return-void
    60: .end method
    61: 
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:66 (apk_install; file score 12)

```java
    60: .end method
    61: 
    62: .method public final finishAndRemoveTask()V
    63:     .locals 2
    64: 
    65:     .line 1
    66:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;
    67: 
    68:     .line 2
    69:     .line 3
    70:     if-eqz v0, :cond_0
    71: 
    72:     .line 4
    73:     .line 5
    74:     invoke-virtual {v0}, Lg0/y;->e()V
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:161 (apk_install; file score 12)

```java
   155:     .line 21
   156:     :cond_0
   157:     sget-object p2, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;
   158: 
   159:     .line 22
   160:     .line 23
   161:     new-instance p3, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;
   162: 
   163:     .line 24
   164:     .line 25
   165:     invoke-direct {p3, p0, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lh0/h;)V
   166: 
   167:     .line 26
   168:     .line 27
   169:     .line 28
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:186 (apk_install; file score 12)

```java
   180:     const/4 p1, 0x0
   181: 
   182:     .line 33
   183:     const/4 p2, 0x0
   184: 
   185:     .line 34
   186:     invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   187: 
   188:     .line 35
   189:     .line 36
   190:     .line 37
   191:     :cond_2
   192:     :goto_1
   193:     return-void
   194: .end method
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:217 (apk_install; file score 12)

```java
   211: 
   212:     .line 8
   213:     if-nez p1, :cond_0
   214: 
   215:     .line 9
   216:     .line 10
   217:     invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->finishAndRemoveTask()V
   218: 
   219:     .line 11
   220:     .line 12
   221:     .line 13
   222:     return-void
   223: 
   224:     .line 14
   225:     :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:246 (apk_install; file score 12)

```java
   240:     .line 21
   241:     invoke-direct {v0, v2, p0, v3, v1}, Lg0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V
   242: 
   243:     .line 22
   244:     .line 23
   245:     .line 24
   246:     iput-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;
   247: 
   248:     .line 25
   249:     .line 26
   250:     invoke-virtual {v0}, Lg0/y;->t()V
   251: 
   252:     .line 27
   253:     .line 28
   254:     .line 29
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:259 (apk_install; file score 12)

```java
   253:     .line 28
   254:     .line 29
   255:     sget-object v0, Lw0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;
   256: 
   257:     .line 30
   258:     .line 31
   259:     new-instance v1, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;
   260: 
   261:     .line 32
   262:     .line 33
   263:     invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Landroid/content/Intent;)V
   264: 
   265:     .line 34
   266:     .line 35
   267:     .line 36
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:263 (apk_install; file score 12)

```java
   257:     .line 30
   258:     .line 31
   259:     new-instance v1, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;
   260: 
   261:     .line 32
   262:     .line 33
   263:     invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Landroid/content/Intent;)V
   264: 
   265:     .line 34
   266:     .line 35
   267:     .line 36
   268:     invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
   269: 
   270:     .line 37
   271:     .line 38
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:469 (apk_install; file score 12)

```java
   463:     .line 85
   464:     .line 86
   465:     new-instance v0, Lb0/d;
   466: 
   467:     .line 87
   468:     .line 88
   469:     invoke-direct {v0, p0, v4, v5}, Lb0/d;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lru/zdevs/zarchiver/c;Lh0/h;)V
   470: 
   471:     .line 89
   472:     .line 90
   473:     .line 91
   474:     invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
   475: 
   476:     .line 92
   477:     .line 93
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:487 (apk_install; file score 12)

```java
   481:     .line 95
   482:     :cond_4
   483:     if-eq v1, v2, :cond_5
   484: 
   485:     .line 96
   486:     .line 97
   487:     iget-object v5, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->b:Lg0/y;
   488: 
   489:     .line 98
   490:     .line 99
   491:     if-eqz v5, :cond_5
   492: 
   493:     .line 100
   494:     .line 101
   495:     invoke-virtual {v5}, Lg0/y;->e()V
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:516 (apk_install; file score 12)

```java
   510:     .line 108
   511:     .line 109
   512:     if-eq v1, v5, :cond_6
   513: 
   514:     .line 110
   515:     .line 111
   516:     new-instance p1, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;
   517: 
   518:     .line 112
   519:     .line 113
   520:     invoke-direct {p1, p0, v3}, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;)V
   521: 
   522:     .line 114
   523:     .line 115
   524:     .line 116
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:520 (apk_install; file score 12)

```java
   514:     .line 110
   515:     .line 111
   516:     new-instance p1, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;
   517: 
   518:     .line 112
   519:     .line 113
   520:     invoke-direct {p1, p0, v3}, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;-><init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;)V
   521: 
   522:     .line 114
   523:     .line 115
   524:     .line 116
   525:     invoke-static {p1}, Lw0/c;->h(Ljava/lang/Runnable;)V
   526: 
   527:     .line 117
   528:     .line 118
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:534 (apk_install; file score 12)

```java
   528:     .line 118
   529:     .line 119
   530:     goto :goto_2
   531: 
   532:     .line 120
   533:     :cond_6
   534:     invoke-virtual {p0, v4, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   535: 
   536:     .line 121
   537:     .line 122
   538:     .line 123
   539:     goto :goto_2
   540: 
   541:     .line 124
   542:     :cond_7
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:543 (apk_install; file score 12)

```java
   537:     .line 122
   538:     .line 123
   539:     goto :goto_2
   540: 
   541:     .line 124
   542:     :cond_7
   543:     invoke-virtual {p0, v4, v6}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   544: 
   545:     .line 125
   546:     .line 126
   547:     .line 127
   548:     goto :goto_2
   549: 
   550:     .line 128
   551:     :cond_8
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:645 (apk_install; file score 12)

```java
   639:     .line 171
   640:     if-eqz v1, :cond_b
   641: 
   642:     .line 172
   643:     .line 173
   644:     :cond_a
   645:     invoke-virtual {p0, v2, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   646: 
   647:     .line 174
   648:     .line 175
   649:     .line 176
   650:     goto :goto_2
   651: 
   652:     .line 177
   653:     :cond_b
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:674 (apk_install; file score 12)

```java
   668: 
   669:     .line 185
   670:     if-eqz v1, :cond_c
   671: 
   672:     .line 186
   673:     .line 187
   674:     invoke-virtual {p0, v2, p1}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
   675: 
   676:     .line 188
   677:     .line 189
   678:     .line 190
   679:     goto :goto_2
   680: 
   681:     .line 191
   682:     :cond_c
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:715 (apk_install; file score 12)

```java
   709:     .line 1
   710:     invoke-super {p0}, Landroid/app/Activity;->onStop()V
   711: 
   712:     .line 2
   713:     .line 3
   714:     .line 4
   715:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;
   716: 
   717:     .line 5
   718:     .line 6
   719:     if-eqz v0, :cond_0
   720: 
   721:     .line 7
   722:     .line 8
   723:     const/4 v1, 0x0
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:731 (apk_install; file score 12)

```java
   725:     .line 9
   726:     invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
   727: 
   728:     .line 10
   729:     .line 11
   730:     .line 12
   731:     iput-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;
   732: 
   733:     .line 13
   734:     .line 14
   735:     :cond_0
   736:     :try_start_0
   737:     iget-boolean v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->c:Z
   738: 
   739:     .line 15
```

## decoded/smali/ru/zdevs/zarchiver/activity/InstallApksDlg.smali:745 (apk_install; file score 12)

```java
   739:     .line 15
   740:     .line 16
   741:     if-eqz v0, :cond_1
   742: 
   743:     .line 17
   744:     .line 18
   745:     iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;
   746: 
   747:     .line 19
   748:     .line 20
   749:     invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
   750:     :try_end_0
   751:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   752: 
   753:     .line 21
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg$c.smali:374 (apk_install; file score 12)

```java
   368:     .line 155
   369:     .line 156
   370:     goto :goto_0
   371: 
   372:     .line 157
   373:     :cond_4
   374:     invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
   375: 
   376:     .line 158
   377:     .line 159
   378:     .line 160
   379:     move-result v0
   380: 
   381:     .line 161
   382:     xor-int/2addr v0, v3
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApkDlg.java:10 (apk_install; file score 12)

```java
     4: import android.content.Intent;
     5: import android.net.Uri;
     6: import android.os.Build;
     7: import android.os.Bundle;
     8: import h1.h;
     9: 
    10: public class InstallApkDlg extends Activity {
    11:     @Override
    12:     public final void finishAndRemoveTask() {
    13:         if (Build.VERSION.SDK_INT < 21) {
    14:             finish();
    15:         } else {
    16:             super.finishAndRemoveTask();
    17:         }
    18:     }
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:20 (apk_install; file score 12)

```java
    14: import h0.h;
    15: import h1.g;
    16: import java.lang.ref.WeakReference;
    17: import ru.zdevs.zarchiver.R;
    18: import v0.f;
    19: 
    20: public class InstallApksDlg extends Activity {
    21: 
    22:     public static final int f1575f = 0;
    23: 
    24:     public Handler f1576a;
    25: 
    26:     public y f1577b;
    27: 
    28:     public boolean f1578c;
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:45 (apk_install; file score 12)

```java
    39:             this.f1581a = intent;
    40:         }
    41: 
    42:         @Override
    43:         public final void run() {
    44:             Uri data = this.f1581a.getData();
    45:             InstallApksDlg installApksDlg = InstallApksDlg.this;
    46:             String strF = f.f(installApksDlg, data);
    47:             if (strF == null) {
    48:                 int i2 = InstallApksDlg.f1575f;
    49:                 installApksDlg.a("Failed to get path to the APKS/XAPK file", false);
    50:                 return;
    51:             }
    52:             t0.b.m(installApksDlg, false, null);
    53:             try {
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:52 (apk_install; file score 12)

```java
    46:             String strF = f.f(installApksDlg, data);
    47:             if (strF == null) {
    48:                 int i2 = InstallApksDlg.f1575f;
    49:                 installApksDlg.a("Failed to get path to the APKS/XAPK file", false);
    50:                 return;
    51:             }
    52:             t0.b.m(installApksDlg, false, null);
    53:             try {
    54:                 if (q0.a.j(new h(strF), InstallApksDlg.class)) {
    55:                     return;
    56:                 }
    57:                 int i3 = InstallApksDlg.f1575f;
    58:                 installApksDlg.a(null, false);
    59:             } catch (q0.a.b e2) {
    60:                 installApksDlg.startActivityForResult(e2.f1373a, 1203);
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:60 (apk_install; file score 12)

```java
    54:                 if (q0.a.j(new h(strF), InstallApksDlg.class)) {
    55:                     return;
    56:                 }
    57:                 int i3 = InstallApksDlg.f1575f;
    58:                 installApksDlg.a(null, false);
    59:             } catch (q0.a.b e2) {
    60:                 installApksDlg.startActivityForResult(e2.f1373a, 1203);
    61:             }
    62:         }
    63:     }
    64: 
    65:     public class b implements Runnable {
    66: 
    67:         public final String f1583a;
    68: 
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:75 (apk_install; file score 12)

```java
    69:         public b(String str) {
    70:             this.f1583a = str;
    71:         }
    72: 
    73:         @Override
    74:         public final void run() {
    75:             InstallApksDlg installApksDlg = InstallApksDlg.this;
    76:             q0.a.a(installApksDlg);
    77:             int i2 = InstallApksDlg.f1575f;
    78:             installApksDlg.a(this.f1583a, false);
    79:         }
    80:     }
    81: 
    82:     public class c implements Runnable {
    83: 
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:93 (apk_install; file score 12)

```java
    87:             this.f1585a = hVar;
    88:         }
    89: 
    90:         @Override
    91:         public final void run() {
    92:             try {
    93:                 q0.a.j(this.f1585a, InstallApksDlg.class);
    94:             } catch (q0.a.b unused) {
    95:                 int i2 = InstallApksDlg.f1575f;
    96:                 InstallApksDlg.this.a(null, false);
    97:             }
    98:         }
    99:     }
   100: 
   101:     public class d implements Runnable {
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:114 (apk_install; file score 12)

```java
   108:             this.f1587a = str;
   109:             this.f1588b = z2;
   110:         }
   111: 
   112:         @Override
   113:         public final void run() {
   114:             InstallApksDlg installApksDlg = InstallApksDlg.this;
   115:             String string = this.f1587a;
   116:             if (string == null) {
   117:                 string = installApksDlg.getString(this.f1588b ? R.string.MES_INSTALL_APP_DONE : R.string.MES_INSTALL_APP_FAILED);
   118:             }
   119:             if (string != null) {
   120:                 Toast.makeText(installApksDlg, string, 1).show();
   121:             }
   122:             installApksDlg.finishAndRemoveTask();
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:120 (apk_install; file score 12)

```java
   114:             InstallApksDlg installApksDlg = InstallApksDlg.this;
   115:             String string = this.f1587a;
   116:             if (string == null) {
   117:                 string = installApksDlg.getString(this.f1588b ? R.string.MES_INSTALL_APP_DONE : R.string.MES_INSTALL_APP_FAILED);
   118:             }
   119:             if (string != null) {
   120:                 Toast.makeText(installApksDlg, string, 1).show();
   121:             }
   122:             installApksDlg.finishAndRemoveTask();
   123:         }
   124:     }
   125: 
   126:     public class e implements ServiceConnection {
   127:         public e() {
   128:         }
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:132 (apk_install; file score 12)

```java
   126:     public class e implements ServiceConnection {
   127:         public e() {
   128:         }
   129: 
   130:         @Override
   131:         public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
   132:             InstallApksDlg installApksDlg = InstallApksDlg.this;
   133:             installApksDlg.f1578c = true;
   134:             installApksDlg.f1576a = null;
   135:             ru.zdevs.zarchiver.service.c cVarAsInterface = ru.zdevs.zarchiver.service.c.a.asInterface(iBinder);
   136:             try {
   137:                 cVarAsInterface.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
   138:             } catch (Exception unused) {
   139:             }
   140:             ru.zdevs.zarchiver.c cVar = new ru.zdevs.zarchiver.c();
```

## jadx/sources/ru/zdevs/zarchiver/activity/InstallApksDlg.java:142 (apk_install; file score 12)

```java
   136:             try {
   137:                 cVarAsInterface.SetSettings(t0.b.b(), t0.b.f2086g, t0.b.f2084e);
   138:             } catch (Exception unused) {
   139:             }
   140:             ru.zdevs.zarchiver.c cVar = new ru.zdevs.zarchiver.c();
   141:             cVar.f1675a = new WeakReference<>(cVarAsInterface);
   142:             w0.c.f2212d.execute(new b0.d(installApksDlg, cVar, installApksDlg.f1579d));
   143:         }
   144: 
   145:         @Override
   146:         public final void onServiceDisconnected(ComponentName componentName) {
   147:         }
   148:     }
   149: 
   150:     public final void a(String str, boolean z2) {
```

## decoded/smali/q0/a.smali:29 (apk_install; file score 6)

```java
    23:     .line 2
    24:     .line 3
    25:     .line 4
    26:     move-result-object p0
    27: 
    28:     .line 5
    29:     invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;
    30: 
    31:     .line 6
    32:     .line 7
    33:     .line 8
    34:     move-result-object p0
    35: 
    36:     .line 9
    37:     invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;
```

## decoded/smali/q0/a.smali:37 (apk_install; file score 6)

```java
    31:     .line 6
    32:     .line 7
    33:     .line 8
    34:     move-result-object p0
    35: 
    36:     .line 9
    37:     invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;
    38: 
    39:     .line 10
    40:     .line 11
    41:     .line 12
    42:     move-result-object v0
    43: 
    44:     .line 13
    45:     invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
```

## decoded/smali/q0/a.smali:74 (apk_install; file score 6)

```java
    68:     .line 24
    69:     .line 25
    70:     .line 26
    71:     move-result-object v1
    72: 
    73:     .line 27
    74:     check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;
    75: 
    76:     .line 28
    77:     .line 29
    78:     invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I
    79: 
    80:     .line 30
    81:     .line 31
    82:     .line 32
```

## decoded/smali/q0/a.smali:86 (apk_install; file score 6)

```java
    80:     .line 30
    81:     .line 31
    82:     .line 32
    83:     move-result v1
    84: 
    85:     .line 33
    86:     invoke-virtual {p0, v1}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    87:     :try_end_0
    88:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    89: 
    90:     .line 34
    91:     .line 35
    92:     .line 36
    93:     goto :goto_0
    94: 
```

## decoded/smali/q0/a.smali:1183 (apk_install; file score 6)

```java
  1177:     .line 15
  1178:     .line 16
  1179:     sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;
  1180: 
  1181:     .line 17
  1182:     .line 18
  1183:     const-class v2, Lru/zdevs/zarchiver/activity/InstallApkDlg;
  1184: 
  1185:     .line 19
  1186:     .line 20
  1187:     invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  1188: 
  1189:     .line 21
  1190:     .line 22
  1191:     .line 23
```

## decoded/smali/q0/a.smali:1271 (apk_install; file score 6)

```java
  1265:     .line 10
  1266:     .line 11
  1267:     .line 12
  1268:     move-result-object v4
  1269: 
  1270:     .line 13
  1271:     invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;
  1272: 
  1273:     .line 14
  1274:     .line 15
  1275:     .line 16
  1276:     move-result-object v4
  1277:     :try_end_0
  1278:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
  1279: 
```

## decoded/smali/q0/a.smali:1282 (apk_install; file score 6)

```java
  1276:     move-result-object v4
  1277:     :try_end_0
  1278:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
  1279: 
  1280:     .line 17
  1281:     :try_start_1
  1282:     new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;
  1283: 
  1284:     .line 18
  1285:     .line 19
  1286:     const/4 v6, 0x1
  1287: 
  1288:     .line 20
  1289:     invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
  1290: 
```

## decoded/smali/q0/a.smali:1309 (apk_install; file score 6)

```java
  1303: 
  1304:     .line 28
  1305:     .line 29
  1306:     const/4 v8, 0x4
  1307: 
  1308:     .line 30
  1309:     invoke-virtual {v5, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V
  1310: 
  1311:     .line 31
  1312:     .line 32
  1313:     .line 33
  1314:     :cond_0
  1315:     const/16 v8, 0x21
  1316: 
  1317:     .line 34
```

## decoded/smali/q0/a.smali:1326 (apk_install; file score 6)

```java
  1320: 
  1321:     .line 36
  1322:     .line 37
  1323:     const/4 v7, 0x3
  1324: 
  1325:     .line 38
  1326:     invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V
  1327: 
  1328:     .line 39
  1329:     .line 40
  1330:     .line 41
  1331:     :cond_1
  1332:     invoke-virtual {v5, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V
  1333: 
  1334:     .line 42
```

## decoded/smali/q0/a.smali:1332 (apk_install; file score 6)

```java
  1326:     invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V
  1327: 
  1328:     .line 39
  1329:     .line 40
  1330:     .line 41
  1331:     :cond_1
  1332:     invoke-virtual {v5, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V
  1333: 
  1334:     .line 42
  1335:     .line 43
  1336:     .line 44
  1337:     array-length v7, v0
  1338: 
  1339:     .line 45
  1340:     const-wide/16 v8, 0x0
```

## decoded/smali/q0/a.smali:1395 (apk_install; file score 6)

```java
  1389:     .line 67
  1390:     .line 68
  1391:     goto :goto_0
  1392: 
  1393:     .line 69
  1394:     :cond_3
  1395:     invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
  1396: 
  1397:     .line 70
  1398:     .line 71
  1399:     .line 72
  1400:     const/high16 v7, 0x10000
  1401: 
  1402:     .line 73
  1403:     .line 74
```

## decoded/smali/q0/a.smali:1408 (apk_install; file score 6)

```java
  1402:     .line 73
  1403:     .line 74
  1404:     new-array v7, v7, [B
  1405: 
  1406:     .line 75
  1407:     .line 76
  1408:     invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
  1409: 
  1410:     .line 77
  1411:     .line 78
  1412:     .line 79
  1413:     move-result v5
  1414:     :try_end_1
  1415:     .catchall {:try_start_1 .. :try_end_1} :catchall_1
  1416: 
```

## decoded/smali/q0/a.smali:1419 (apk_install; file score 6)

```java
  1413:     move-result v5
  1414:     :try_end_1
  1415:     .catchall {:try_start_1 .. :try_end_1} :catchall_1
  1416: 
  1417:     .line 80
  1418:     :try_start_2
  1419:     invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;
  1420: 
  1421:     .line 81
  1422:     .line 82
  1423:     .line 83
  1424:     move-result-object v2
  1425: 
  1426:     .line 84
  1427:     invoke-static {}, Lru/zdevs/zarchiver/ZApp;->d()Lru/zdevs/zarchiver/ZApp;
```

## decoded/smali/q0/a.smali:1534 (apk_install; file score 6)

```java
  1528:     .line 131
  1529:     .line 132
  1530:     move-wide/from16 v14, v16
  1531: 
  1532:     .line 133
  1533:     .line 134
  1534:     invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
  1535: 
  1536:     .line 135
  1537:     .line 136
  1538:     .line 137
  1539:     move-result-object v10
  1540: 
  1541:     .line 138
  1542:     :goto_2
```

## decoded/smali/q0/a.smali:1564 (apk_install; file score 6)

```java
  1558:     .line 146
  1559:     .line 147
  1560:     goto :goto_2
  1561: 
  1562:     .line 148
  1563:     :cond_6
  1564:     invoke-virtual {v2, v10}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
  1565: 
  1566:     .line 149
  1567:     .line 150
  1568:     .line 151
  1569:     invoke-virtual {v8}, Ljava/io/InputStream;->close()V
  1570: 
  1571:     .line 152
  1572:     .line 153
```

## decoded/smali/q0/a.smali:1639 (apk_install; file score 6)

```java
  1633:     .line 183
  1634:     .line 184
  1635:     .line 185
  1636:     move-result-object v0
  1637: 
  1638:     .line 186
  1639:     invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
  1640:     :try_end_2
  1641:     .catchall {:try_start_2 .. :try_end_2} :catchall_2
  1642: 
  1643:     .line 187
  1644:     .line 188
  1645:     .line 189
  1646:     invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
  1647: 
```

## decoded/smali/q0/a.smali:1646 (apk_install; file score 6)

```java
  1640:     :try_end_2
  1641:     .catchall {:try_start_2 .. :try_end_2} :catchall_2
  1642: 
  1643:     .line 187
  1644:     .line 188
  1645:     .line 189
  1646:     invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V
  1647: 
  1648:     .line 190
  1649:     .line 191
  1650:     .line 192
  1651:     return v6
  1652: 
  1653:     .line 193
  1654:     :catchall_0
```

Snippets shown: 100. Complete bounded hit indexes are in the corresponding TSV files.