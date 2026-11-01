# Storage and root

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/ru/zdevs/zarchiver/R.java:1109 (root_shizuku; file score 54)

```java
  1103:         public static final int MES_REMOUNT_SUCESSFUL = 0x7f0c00f9;
  1104:         public static final int MES_REMOVE_FILE = 0x7f0c00fa;
  1105:         public static final int MES_RENAME_FILE_PROCESS = 0x7f0c00fb;
  1106:         public static final int MES_SELECT_DESTINATION = 0x7f0c00fc;
  1107:         public static final int MES_SELECT_FILES = 0x7f0c00fd;
  1108:         public static final int MES_SELECT_HELP = 0x7f0c00fe;
  1109:         public static final int MES_SHIZUKU_IS_NOT_RUNNING = 0x7f0c00ff;
  1110:         public static final int MES_SUCESSFUL_ADD_FILE = 0x7f0c0100;
  1111:         public static final int MES_SUCESSFUL_COMPRESS = 0x7f0c0101;
  1112:         public static final int MES_SUCESSFUL_DECOMPRESS = 0x7f0c0102;
  1113:         public static final int MES_SUCESSFUL_DEL_FILE = 0x7f0c0103;
  1114:         public static final int MES_SUCESSFUL_END = 0x7f0c0104;
  1115:         public static final int MES_SUCESSFUL_TEST = 0x7f0c0105;
  1116:         public static final int MES_SUCESSFUL_TESTS = 0x7f0c0106;
  1117:         public static final int MES_SUPPORT_ONLY_ASCII_PWD = 0x7f0c0107;
```

## jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java:310 (storage_saf; file score 54)

```java
   304:             return;
   305:         }
   306:         Uri data = intent != null ? intent.getData() : null;
   307:         try {
   308:             if (i2 == 400 && data != null) {
   309:                 data.toString();
   310:                 new b(getContentResolver().openOutputStream(data)).g(null, null);
   311:             } else {
   312:                 if (i2 != 401 || data == null) {
   313:                     return;
   314:                 }
   315:                 data.toString();
   316:                 new c(getContentResolver().openInputStream(data)).g(null, null);
   317:             }
   318:         } catch (Exception unused) {
```

## jadx/sources/ru/zdevs/zarchiver/activity/SettingsDlg.java:408 (root_shizuku; file score 54)

```java
   402:             if (o0.a.g(iI0)) {
   403:                 z2 = false;
   404:             } else {
   405:                 if (iI0 == 1) {
   406:                     ZApp.i(R.string.OPT_ROOT_NOT_FOUND);
   407:                 } else if (iI0 == 2) {
   408:                     ZApp.j("Shizuku v11+ / SUI not found!");
   409:                 }
   410:                 z2 = true;
   411:             }
   412:             if (z2) {
   413:                 sharedPreferences.edit().putBoolean(str, false).apply();
   414:                 Bundle bundle = new Bundle();
   415:                 bundle.putString("settings", "root");
   416:                 switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle);
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:13 (storage_saf; file score 48)

```java
     7: .field public static volatile c:Lru/zdevs/zarchiver/ZApp;
     8: 
     9: .field public static final d:Ljava/lang/Object;
    10: 
    11: .field public static e:Landroid/widget/Toast;
    12: 
    13: .field public static f:Landroid/content/ContentResolver;
    14: 
    15: .field public static final g:Z
    16: 
    17: 
    18: # instance fields
    19: .field public a:Landroid/os/Handler;
    20: 
    21: .field public b:Landroid/app/PendingIntent;
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:124 (root_shizuku; file score 48)

```java
   118:     :cond_1
   119:     :goto_0
   120:     const/4 v0, 0x1
   121: 
   122:     .line 44
   123:     :goto_1
   124:     sget-boolean v2, Lrikka/shizuku/ShizukuProvider;->a:Z
   125: 
   126:     .line 45
   127:     .line 46
   128:     new-instance v2, Ljava/lang/StringBuilder;
   129: 
   130:     .line 47
   131:     .line 48
   132:     const-string v3, "Enable built-in multi-process support (from "
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:180 (root_shizuku; file score 48)

```java
   174:     .line 69
   175:     .line 70
   176:     .line 71
   177:     move-result-object v2
   178: 
   179:     .line 72
   180:     const-string v3, "ShizukuProvider"
   181: 
   182:     .line 73
   183:     .line 74
   184:     invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
   185: 
   186:     .line 75
   187:     .line 76
   188:     .line 77
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:193 (root_shizuku; file score 48)

```java
   187:     .line 76
   188:     .line 77
   189:     sput-boolean v0, Lrikka/shizuku/ShizukuProvider;->b:Z
   190: 
   191:     .line 78
   192:     .line 79
   193:     sput-boolean v1, Lrikka/shizuku/ShizukuProvider;->a:Z
   194: 
   195:     .line 80
   196:     .line 81
   197:     :cond_3
   198:     return-void
   199: .end method
   200: 
   201: .method public constructor <init>()V
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:209 (storage_saf; file score 48)

```java
   203: 
   204:     invoke-direct {p0}, Landroid/app/Application;-><init>()V
   205: 
   206:     return-void
   207: .end method
   208: 
   209: .method public static a()Landroid/content/ContentResolver;
   210:     .locals 2
   211: 
   212:     .line 1
   213:     sget-object v0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   214: 
   215:     .line 2
   216:     .line 3
   217:     if-eqz v0, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:213 (storage_saf; file score 48)

```java
   207: .end method
   208: 
   209: .method public static a()Landroid/content/ContentResolver;
   210:     .locals 2
   211: 
   212:     .line 1
   213:     sget-object v0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   214: 
   215:     .line 2
   216:     .line 3
   217:     if-eqz v0, :cond_0
   218: 
   219:     .line 4
   220:     .line 5
   221:     return-object v0
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:229 (storage_saf; file score 48)

```java
   223:     .line 6
   224:     :cond_0
   225:     new-instance v0, Ljava/lang/RuntimeException;
   226: 
   227:     .line 7
   228:     .line 8
   229:     const-string v1, "ContentResolver is NULL"
   230: 
   231:     .line 9
   232:     .line 10
   233:     invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
   234: 
   235:     .line 11
   236:     .line 12
   237:     .line 13
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:241 (storage_saf; file score 48)

```java
   235:     .line 11
   236:     .line 12
   237:     .line 13
   238:     throw v0
   239: .end method
   240: 
   241: .method public static b(Landroid/content/Context;)Landroid/content/ContentResolver;
   242:     .locals 1
   243: 
   244:     .line 1
   245:     sget-object v0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   246: 
   247:     .line 2
   248:     .line 3
   249:     if-nez v0, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:261 (storage_saf; file score 48)

```java
   255:     .line 6
   256:     .line 7
   257:     .line 8
   258:     move-result-object p0
   259: 
   260:     .line 9
   261:     invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
   262: 
   263:     .line 10
   264:     .line 11
   265:     .line 12
   266:     move-result-object p0
   267: 
   268:     .line 13
   269:     sput-object p0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:274 (storage_saf; file score 48)

```java
   268:     .line 13
   269:     sput-object p0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   270: 
   271:     .line 14
   272:     .line 15
   273:     :cond_0
   274:     sget-object p0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   275: 
   276:     .line 16
   277:     .line 17
   278:     return-object p0
   279: .end method
   280: 
   281: .method public static c(Landroid/content/Context;)Landroid/content/Context;
   282:     .locals 1
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:797 (storage_saf; file score 48)

```java
   791:     .line 11
   792:     .line 12
   793:     iput-object v0, p0, Lru/zdevs/zarchiver/ZApp;->a:Landroid/os/Handler;
   794: 
   795:     .line 13
   796:     .line 14
   797:     invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
   798: 
   799:     .line 15
   800:     .line 16
   801:     .line 17
   802:     move-result-object v0
   803: 
   804:     .line 18
   805:     sput-object v0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:805 (storage_saf; file score 48)

```java
   799:     .line 15
   800:     .line 16
   801:     .line 17
   802:     move-result-object v0
   803: 
   804:     .line 18
   805:     sput-object v0, Lru/zdevs/zarchiver/ZApp;->f:Landroid/content/ContentResolver;
   806: 
   807:     .line 19
   808:     .line 20
   809:     invoke-static {}, Lru/zdevs/zarchiver/ZApp;->getProcessName()Ljava/lang/String;
   810: 
   811:     .line 21
   812:     .line 22
   813:     .line 23
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:876 (storage_saf; file score 48)

```java
   870:     .line 47
   871:     invoke-static {p0, v1, v0}, La0/c;->h(Landroid/content/Context;Ljava/lang/String;Z)V
   872: 
   873:     .line 48
   874:     .line 49
   875:     .line 50
   876:     const-string v1, ".provider.PluginFileProvider"
   877: 
   878:     .line 51
   879:     .line 52
   880:     invoke-static {p0, v1, v0}, La0/c;->h(Landroid/content/Context;Ljava/lang/String;Z)V
   881: 
   882:     .line 53
   883:     .line 54
   884:     .line 55
```

## decoded/smali/ru/zdevs/zarchiver/ZApp.smali:914 (root_shizuku; file score 48)

```java
   908:     .line 66
   909:     .line 67
   910:     if-nez v0, :cond_3
   911: 
   912:     .line 68
   913:     .line 69
   914:     invoke-static {p0}, Lrikka/shizuku/ShizukuProvider;->a(Landroid/content/Context;)V
   915: 
   916:     .line 70
   917:     .line 71
   918:     .line 72
   919:     :cond_3
   920:     invoke-super {p0}, Landroid/app/Application;->onCreate()V
   921: 
   922:     .line 73
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:6 (storage_saf; file score 48)

```java
     1: package ru.zdevs.zarchiver;
     2: 
     3: import android.app.AlarmManager;
     4: import android.app.Application;
     5: import android.app.PendingIntent;
     6: import android.content.ContentResolver;
     7: import android.content.Context;
     8: import android.content.Intent;
     9: import android.os.Build;
    10: import android.os.Handler;
    11: import android.os.Looper;
    12: import android.util.Log;
    13: import android.widget.Toast;
    14: import java.io.InvalidObjectException;
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:15 (root_shizuku; file score 48)

```java
     9: import android.os.Build;
    10: import android.os.Handler;
    11: import android.os.Looper;
    12: import android.util.Log;
    13: import android.widget.Toast;
    14: import java.io.InvalidObjectException;
    15: import rikka.shizuku.ShizukuProvider;
    16: import ru.zdevs.zarchiver.service.ZArchiverClearTemp;
    17: import v0.h;
    18: 
    19: public class ZApp extends Application {
    20: 
    21:     public static volatile ZApp f1434c;
    22: 
    23:     public static final Object f1435d = new Object();
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:27 (storage_saf; file score 48)

```java
    21:     public static volatile ZApp f1434c;
    22: 
    23:     public static final Object f1435d = new Object();
    24: 
    25:     public static Toast f1436e;
    26: 
    27:     public static ContentResolver f1437f;
    28: 
    29:     public static final boolean f1438g;
    30: 
    31:     public Handler f1439a;
    32: 
    33:     public PendingIntent f1440b;
    34: 
    35:     public class a implements Runnable {
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:84 (root_shizuku; file score 48)

```java
    78:             f1438g = zF;
    79:             if (zF) {
    80:                 return;
    81:             }
    82:             String processName = getProcessName();
    83:             boolean z2 = processName == null || processName.indexOf(58) == -1;
    84:             boolean z3 = ShizukuProvider.f1431a;
    85:             StringBuilder sb = new StringBuilder("Enable built-in multi-process support (from ");
    86:             sb.append(z2 ? "provider process" : "non-provider process");
    87:             sb.append(")");
    88:             Log.d("ShizukuProvider", sb.toString());
    89:             ShizukuProvider.f1432b = z2;
    90:             ShizukuProvider.f1431a = true;
    91:         }
    92:     }
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:90 (root_shizuku; file score 48)

```java
    84:             boolean z3 = ShizukuProvider.f1431a;
    85:             StringBuilder sb = new StringBuilder("Enable built-in multi-process support (from ");
    86:             sb.append(z2 ? "provider process" : "non-provider process");
    87:             sb.append(")");
    88:             Log.d("ShizukuProvider", sb.toString());
    89:             ShizukuProvider.f1432b = z2;
    90:             ShizukuProvider.f1431a = true;
    91:         }
    92:     }
    93: 
    94:     public static ContentResolver a() {
    95:         ContentResolver contentResolver = f1437f;
    96:         if (contentResolver != null) {
    97:             return contentResolver;
    98:         }
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:102 (storage_saf; file score 48)

```java
    96:         if (contentResolver != null) {
    97:             return contentResolver;
    98:         }
    99:         throw new RuntimeException("ContentResolver is NULL");
   100:     }
   101: 
   102:     public static ContentResolver b(Context context) {
   103:         if (f1437f == null) {
   104:             f1437f = context.getApplicationContext().getContentResolver();
   105:         }
   106:         return f1437f;
   107:     }
   108: 
   109:     public static Context c(Context context) {
   110:         return f1434c == null ? context : f1434c;
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:197 (storage_saf; file score 48)

```java
   191:     }
   192: 
   193:     @Override
   194:     public final void onCreate() {
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
```

## jadx/sources/ru/zdevs/zarchiver/ZApp.java:202 (storage_saf; file score 48)

```java
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
   210: 
```

## decoded/smali/ru/zdevs/zarchiver/a.smali:7378 (storage_saf; file score 39)

```java
  7372:         :pswitch_2
  7373:         :pswitch_1
  7374:         :pswitch_0
  7375:     .end packed-switch
  7376: .end method
  7377: 
  7378: .method public final c(Landroid/os/storage/StorageVolume;Z)V
  7379:     .locals 5
  7380: 
  7381:     .line 1
  7382:     const/4 v0, 0x0
  7383: 
  7384:     .line 2
  7385:     const/4 v1, 0x1
  7386: 
```

## decoded/smali/ru/zdevs/zarchiver/a.smali:7423 (storage_saf; file score 39)

```java
  7417:     .line 15
  7418:     .line 16
  7419:     if-eqz p2, :cond_3
  7420: 
  7421:     .line 17
  7422:     .line 18
  7423:     invoke-static {p1}, Lx0/d;->w(Landroid/os/storage/StorageVolume;)Lx0/d$a;
  7424: 
  7425:     .line 19
  7426:     .line 20
  7427:     .line 21
  7428:     move-result-object p1
  7429: 
  7430:     .line 22
  7431:     if-eqz p1, :cond_5
```

## decoded/smali/ru/zdevs/zarchiver/a.smali:7591 (storage_saf; file score 39)

```java
  7585:     .line 97
  7586:     .line 98
  7587:     goto :goto_1
  7588: 
  7589:     .line 99
  7590:     :cond_3
  7591:     invoke-static {p1}, Lx0/d;->d(Landroid/os/storage/StorageVolume;)V
  7592: 
  7593:     .line 100
  7594:     .line 101
  7595:     .line 102
  7596:     :cond_4
  7597:     :goto_3
  7598:     const/4 v2, 0x1
  7599: 
```

## jadx/sources/ru/zdevs/zarchiver/a.java:24 (storage_saf; file score 39)

```java
    18: import android.os.Build;
    19: import android.os.Bundle;
    20: import android.os.DeadObjectException;
    21: import android.os.Parcel;
    22: import android.os.Parcelable;
    23: import android.os.RemoteException;
    24: import android.os.storage.StorageVolume;
    25: import android.preference.PreferenceManager;
    26: import android.util.SparseArray;
    27: import android.widget.Button;
    28: import android.widget.CheckBox;
    29: import android.widget.EditText;
    30: import android.widget.Spinner;
    31: import g0.a0;
    32: import g0.b0;
```

## jadx/sources/ru/zdevs/zarchiver/a.java:1472 (storage_saf; file score 39)

```java
  1466:         } catch (Exception unused2) {
  1467:         }
  1468:     }
  1469: 
  1470:     /* JADX WARN: Code duplicated, block: B:28:0x0067  */
  1471:     @Override
  1472:     public final void c(StorageVolume storageVolume, boolean z2) {
  1473:         ZArchiver zArchiver;
  1474:         boolean z3 = false;
  1475:         boolean z4 = storageVolume == null;
  1476:         if (storageVolume == null || Build.VERSION.SDK_INT < 24) {
  1477:             z3 = true;
  1478:         } else {
  1479:             if (z2) {
  1480:                 x0.d.a aVarW = x0.d.w(storageVolume);
```

## jadx/sources/ru/zdevs/zarchiver/a.java:1480 (storage_saf; file score 39)

```java
  1474:         boolean z3 = false;
  1475:         boolean z4 = storageVolume == null;
  1476:         if (storageVolume == null || Build.VERSION.SDK_INT < 24) {
  1477:             z3 = true;
  1478:         } else {
  1479:             if (z2) {
  1480:                 x0.d.a aVarW = x0.d.w(storageVolume);
  1481:                 if (aVarW != null) {
  1482:                     x0.a.c(1);
  1483:                     if (this.f1550c != null) {
  1484:                         d dVar = this.f1549b;
  1485:                         String strR = dVar.d().r();
  1486:                         String str = aVarW.f2255b;
  1487:                         if (strR.startsWith(str)) {
  1488:                             ru.zdevs.zarchiver.b[] bVarArr = dVar.f1686f;
```

## jadx/sources/ru/zdevs/zarchiver/a.java:1504 (storage_saf; file score 39)

```java
  1498:                         }
  1499:                     }
  1500:                 } else {
  1501:                     z3 = true;
  1502:                 }
  1503:             } else {
  1504:                 x0.d.d(storageVolume);
  1505:             }
  1506:             z4 = true;
  1507:         }
  1508:         if (!z4 || (zArchiver = this.f1550c) == null) {
  1509:             return;
  1510:         }
  1511:         zArchiver.R(z3 ? 1 : 2);
  1512:     }
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali:178 (storage_saf; file score 36)

```java
   172:     .line 22
   173:     .line 23
   174:     new-instance p1, Lru/zdevs/zarchiver/activity/SettingsDlg$b;
   175: 
   176:     .line 24
   177:     .line 25
   178:     invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
   179: 
   180:     .line 26
   181:     .line 27
   182:     .line 28
   183:     move-result-object v0
   184: 
   185:     .line 29
   186:     invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali:186 (storage_saf; file score 36)

```java
   180:     .line 26
   181:     .line 27
   182:     .line 28
   183:     move-result-object v0
   184: 
   185:     .line 29
   186:     invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
   187: 
   188:     .line 30
   189:     .line 31
   190:     .line 32
   191:     move-result-object p3
   192: 
   193:     .line 33
   194:     invoke-direct {p1, p3}, Lru/zdevs/zarchiver/activity/SettingsDlg$b;-><init>(Ljava/io/OutputStream;)V
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali:229 (storage_saf; file score 36)

```java
   223:     .line 48
   224:     .line 49
   225:     new-instance p1, Lru/zdevs/zarchiver/activity/SettingsDlg$c;
   226: 
   227:     .line 50
   228:     .line 51
   229:     invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
   230: 
   231:     .line 52
   232:     .line 53
   233:     .line 54
   234:     move-result-object v0
   235: 
   236:     .line 55
   237:     invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali:237 (storage_saf; file score 36)

```java
   231:     .line 52
   232:     .line 53
   233:     .line 54
   234:     move-result-object v0
   235: 
   236:     .line 55
   237:     invoke-virtual {v0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
   238: 
   239:     .line 56
   240:     .line 57
   241:     .line 58
   242:     move-result-object p3
   243: 
   244:     .line 59
   245:     invoke-direct {p1, p3}, Lru/zdevs/zarchiver/activity/SettingsDlg$c;-><init>(Ljava/io/InputStream;)V
```

## decoded/smali/ru/zdevs/zarchiver/activity/SettingsDlg.smali:903 (root_shizuku; file score 36)

```java
   897: 
   898:     .line 61
   899:     if-ne v1, v9, :cond_3
   900: 
   901:     .line 62
   902:     .line 63
   903:     const-string v1, "Shizuku v11+ / SUI not found!"
   904: 
   905:     .line 64
   906:     .line 65
   907:     invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V
   908: 
   909:     .line 66
   910:     .line 67
   911:     .line 68
```

## jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java:12 (storage_saf; file score 33)

```java
     6: import android.database.MatrixCursor;
     7: import android.net.Uri;
     8: import android.os.Build;
     9: import android.os.Handler;
    10: import android.os.HandlerThread;
    11: import android.os.ParcelFileDescriptor;
    12: import android.os.storage.StorageManager;
    13: import android.webkit.MimeTypeMap;
    14: import h0.f;
    15: import h0.h;
    16: import java.io.File;
    17: import java.io.FileNotFoundException;
    18: import java.io.IOException;
    19: import java.util.InvalidPropertiesFormatException;
    20: import n0.e;
```

## jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java:27 (storage_saf; file score 33)

```java
    21: import o0.c;
    22: import ru.zdevs.zarchiver.ZApp;
    23: import ru.zdevs.zarchiver.io.SAF;
    24: import t0.b;
    25: import v0.d;
    26: 
    27: public final class FileProvider extends ContentProvider {
    28: 
    29:     public static final String[] f1710a = {"_display_name", "_size", "_data"};
    30: 
    31:     public static h b(Uri uri) {
    32:         String strSubstring = uri.getPath().substring(3);
    33:         int iIndexOf = strSubstring.indexOf(47);
    34:         String strSubstring2 = strSubstring.substring(0, iIndexOf);
    35:         int i2 = iIndexOf + 1;
```

## jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java:75 (storage_saf; file score 33)

```java
    69:     }
    70: 
    71:     public final ParcelFileDescriptor e(int i2, String str, long j2, int i3) throws FileNotFoundException {
    72:         try {
    73:             int i4 = 268435456;
    74:             c cVar = new c(i3, str, j2, i2 == 268435456);
    75:             StorageManager storageManager = (StorageManager) getContext().getSystemService("storage");
    76:             if (i2 != 268435456) {
    77:                 i4 = 536870912;
    78:             }
    79:             HandlerThread handlerThread = new HandlerThread("ShellInputCallback");
    80:             cVar.f1303g = handlerThread;
    81:             handlerThread.start();
    82:             return storageManager.openProxyFileDescriptor(i4, cVar, new Handler(cVar.f1303g.getLooper()));
    83:         } catch (IOException e2) {
```

## jadx/sources/ru/zdevs/zarchiver/provider/FileProvider.java:82 (storage_saf; file score 33)

```java
    76:             if (i2 != 268435456) {
    77:                 i4 = 536870912;
    78:             }
    79:             HandlerThread handlerThread = new HandlerThread("ShellInputCallback");
    80:             cVar.f1303g = handlerThread;
    81:             handlerThread.start();
    82:             return storageManager.openProxyFileDescriptor(i4, cVar, new Handler(cVar.f1303g.getLooper()));
    83:         } catch (IOException e2) {
    84:             throw new FileNotFoundException(e2.getMessage());
    85:         }
    86:     }
    87: 
    88:     @Override
    89:     public final String getType(Uri uri) {
    90:         String mimeTypeFromExtension;
```

## jadx/sources/ru/zdevs/zarchiver/provider/PluginFileProvider.java:18 (storage_saf; file score 33)

```java
    12: import java.io.File;
    13: import java.io.FileNotFoundException;
    14: import n0.e;
    15: import ru.zdevs.zarchiver.ZApp;
    16: import v0.h;
    17: 
    18: public class PluginFileProvider extends ContentProvider {
    19: 
    20:     public static final String[] f1711a = {"_display_name", "_size"};
    21: 
    22:     public static String a(Uri uri) {
    23:         return e.h() + '/' + uri.getFragment();
    24:     }
    25: 
    26:     @Override
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1 (storage_saf; file score 27)

```java
     1: .class public final Lru/zdevs/zarchiver/provider/FileProvider;
     2: .super Landroid/content/ContentProvider;
     3: .source "SourceFile"
     4: 
     5: 
     6: # static fields
     7: .field public static final a:[Ljava/lang/String;
     8: 
     9: 
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:55 (storage_saf; file score 27)

```java
    49:     .line 16
    50:     .line 17
    51:     aput-object v2, v0, v1
    52: 
    53:     .line 18
    54:     .line 19
    55:     sput-object v0, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;
    56: 
    57:     .line 20
    58:     .line 21
    59:     return-void
    60: .end method
    61: 
    62: .method public constructor <init>()V
    63:     .locals 0
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:344 (storage_saf; file score 27)

```java
   338: .end method
   339: 
   340: .method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
   341:     .locals 0
   342: 
   343:     .line 1
   344:     invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z
   345: 
   346:     .line 2
   347:     .line 3
   348:     .line 4
   349:     move-result p2
   350: 
   351:     .line 5
   352:     if-eqz p2, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:363 (storage_saf; file score 27)

```java
   357: 
   358:     .line 8
   359:     return p1
   360: 
   361:     .line 9
   362:     :cond_0
   363:     invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;
   364: 
   365:     .line 10
   366:     .line 11
   367:     .line 12
   368:     move-result-object p1
   369: 
   370:     .line 13
   371:     invoke-virtual {p1}, Ljava/io/File;->delete()Z
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:453 (storage_saf; file score 27)

```java
   447:     .line 26
   448:     .line 27
   449:     .line 28
   450:     move-result-object p2
   451: 
   452:     .line 29
   453:     check-cast p2, Landroid/os/storage/StorageManager;
   454: 
   455:     .line 30
   456:     .line 31
   457:     if-ne p1, v7, :cond_1
   458: 
   459:     .line 32
   460:     .line 33
   461:     goto :goto_1
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:513 (storage_saf; file score 27)

```java
   507:     .line 56
   508:     invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
   509: 
   510:     .line 57
   511:     .line 58
   512:     .line 59
   513:     invoke-virtual {p2, v7, v6, p1}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
   514: 
   515:     .line 60
   516:     .line 61
   517:     .line 62
   518:     move-result-object p1
   519:     :try_end_0
   520:     .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
   521: 
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:554 (storage_saf; file score 27)

```java
   548: .end method
   549: 
   550: .method public final getType(Landroid/net/Uri;)Ljava/lang/String;
   551:     .locals 1
   552: 
   553:     .line 1
   554:     invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;
   555: 
   556:     .line 2
   557:     .line 3
   558:     .line 4
   559:     move-result-object p1
   560: 
   561:     .line 5
   562:     invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:653 (storage_saf; file score 27)

```java
   647:     .line 2
   648:     .line 3
   649:     .line 4
   650:     move-result v1
   651: 
   652:     .line 5
   653:     invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z
   654: 
   655:     .line 6
   656:     .line 7
   657:     .line 8
   658:     move-result v0
   659: 
   660:     .line 9
   661:     if-eqz v0, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:665 (storage_saf; file score 27)

```java
   659: 
   660:     .line 9
   661:     if-eqz v0, :cond_0
   662: 
   663:     .line 10
   664:     .line 11
   665:     invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->b(Landroid/net/Uri;)Lh0/h;
   666: 
   667:     .line 12
   668:     .line 13
   669:     .line 14
   670:     move-result-object p1
   671: 
   672:     .line 15
   673:     invoke-static {p1}, Lh0/f;->u(Lh0/h;)Lh0/f;
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:693 (storage_saf; file score 27)

```java
   687: 
   688:     .line 23
   689:     return-object p1
   690: 
   691:     .line 24
   692:     :cond_0
   693:     invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;
   694: 
   695:     .line 25
   696:     .line 26
   697:     .line 27
   698:     move-result-object v0
   699: 
   700:     .line 28
   701:     invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:951 (storage_saf; file score 27)

```java
   945:     move-wide v3, v5
   946: 
   947:     .line 139
   948:     move v5, p1
   949: 
   950:     .line 140
   951:     invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/provider/FileProvider;->e(ILjava/lang/String;JI)Landroid/os/ParcelFileDescriptor;
   952: 
   953:     .line 141
   954:     .line 142
   955:     .line 143
   956:     move-result-object p1
   957: 
   958:     .line 144
   959:     return-object p1
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1021 (storage_saf; file score 27)

```java
  1015:     .line 170
  1016:     .line 171
  1017:     .line 172
  1018:     move-result-object p1
  1019: 
  1020:     .line 173
  1021:     invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;
  1022: 
  1023:     .line 174
  1024:     .line 175
  1025:     .line 176
  1026:     move-result-object p1
  1027: 
  1028:     .line 177
  1029:     :try_start_1
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1040 (storage_saf; file score 27)

```java
  1034:     .line 180
  1035:     move-result-object v0
  1036:     :try_end_1
  1037:     .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_1 .. :try_end_1} :catch_1
  1038: 
  1039:     .line 181
  1040:     invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
  1041: 
  1042:     .line 182
  1043:     .line 183
  1044:     .line 184
  1045:     move-result-object p1
  1046: 
  1047:     .line 185
  1048:     return-object p1
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1131 (storage_saf; file score 27)

```java
  1125: 
  1126:     .line 222
  1127:     .line 223
  1128:     move-object v0, p0
  1129: 
  1130:     .line 224
  1131:     invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/provider/FileProvider;->e(ILjava/lang/String;JI)Landroid/os/ParcelFileDescriptor;
  1132: 
  1133:     .line 225
  1134:     .line 226
  1135:     .line 227
  1136:     move-result-object p1
  1137: 
  1138:     .line 228
  1139:     return-object p1
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1162 (storage_saf; file score 27)

```java
  1156: 
  1157:     .line 1
  1158:     if-nez p2, :cond_0
  1159: 
  1160:     .line 2
  1161:     .line 3
  1162:     sget-object v0, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;
  1163: 
  1164:     .line 4
  1165:     .line 5
  1166:     goto :goto_0
  1167: 
  1168:     .line 6
  1169:     :cond_0
  1170:     move-object/from16 v0, p2
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1189 (storage_saf; file score 27)

```java
  1183: 
  1184:     .line 12
  1185:     new-array v4, v3, [Ljava/lang/Object;
  1186: 
  1187:     .line 13
  1188:     .line 14
  1189:     invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->d(Landroid/net/Uri;)Z
  1190: 
  1191:     .line 15
  1192:     .line 16
  1193:     .line 17
  1194:     move-result v5
  1195: 
  1196:     .line 18
  1197:     const-wide/16 v6, 0x0
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1301 (storage_saf; file score 27)

```java
  1295: 
  1296:     .line 64
  1297:     if-eqz v16, :cond_2
  1298: 
  1299:     .line 65
  1300:     .line 66
  1301:     invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->b(Landroid/net/Uri;)Lh0/h;
  1302: 
  1303:     .line 67
  1304:     .line 68
  1305:     .line 69
  1306:     move-result-object v8
  1307: 
  1308:     .line 70
  1309:     invoke-static {v8, v13}, Lh0/e;->e(Lh0/h;Lv0/d;)Lh0/e$b;
```

## decoded/smali/ru/zdevs/zarchiver/provider/FileProvider.smali:1452 (storage_saf; file score 27)

```java
  1446: 
  1447:     .line 136
  1448:     goto :goto_1
  1449: 
  1450:     .line 137
  1451:     :cond_4
  1452:     invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/provider/FileProvider;->a(Landroid/net/Uri;)Ljava/io/File;
  1453: 
  1454:     .line 138
  1455:     .line 139
  1456:     .line 140
  1457:     move-result-object v5
  1458: 
  1459:     .line 141
  1460:     invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:1 (storage_saf; file score 27)

```java
     1: .class public Lru/zdevs/zarchiver/provider/PluginFileProvider;
     2: .super Landroid/content/ContentProvider;
     3: .source "SourceFile"
     4: 
     5: 
     6: # static fields
     7: .field public static final a:[Ljava/lang/String;
     8: 
     9: 
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:44 (storage_saf; file score 27)

```java
    38:     .line 11
    39:     .line 12
    40:     aput-object v2, v0, v1
    41: 
    42:     .line 13
    43:     .line 14
    44:     sput-object v0, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a:[Ljava/lang/String;
    45: 
    46:     .line 15
    47:     .line 16
    48:     return-void
    49: .end method
    50: 
    51: .method public constructor <init>()V
    52:     .locals 0
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:266 (storage_saf; file score 27)

```java
   260: .end method
   261: 
   262: .method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
   263:     .locals 8
   264: 
   265:     .line 1
   266:     invoke-static {p1}, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;
   267: 
   268:     .line 2
   269:     .line 3
   270:     .line 4
   271:     move-result-object v0
   272: 
   273:     .line 5
   274:     invoke-static {p2}, Lh1/c;->b(Ljava/lang/String;)I
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:765 (storage_saf; file score 27)

```java
   759:     .line 2
   760:     .line 3
   761:     const-string v1, "_display_name"
   762: 
   763:     .line 4
   764:     .line 5
   765:     invoke-static/range {p1 .. p1}, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;
   766: 
   767:     .line 6
   768:     .line 7
   769:     .line 8
   770:     move-result-object v2
   771: 
   772:     .line 9
   773:     if-nez p2, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/provider/PluginFileProvider.smali:777 (storage_saf; file score 27)

```java
   771: 
   772:     .line 9
   773:     if-nez p2, :cond_0
   774: 
   775:     .line 10
   776:     .line 11
   777:     sget-object v3, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a:[Ljava/lang/String;
   778: 
   779:     .line 12
   780:     .line 13
   781:     goto :goto_0
   782: 
   783:     .line 14
   784:     :cond_0
   785:     move-object/from16 v3, p2
```

## jadx/sources/ru/zdevs/zarchiver/ZImageViewer.java:32 (storage_saf; file score 27)

```java
    26: import java.util.ArrayList;
    27: import java.util.Collections;
    28: import java.util.Iterator;
    29: import ru.zdevs.zarchiver.archiver.C2JBridge;
    30: import ru.zdevs.zarchiver.archiver.NArc;
    31: import ru.zdevs.zarchiver.io.SAF;
    32: import ru.zdevs.zarchiver.provider.ArchiveFileProvider;
    33: import x0.g;
    34: 
    35: public class ZImageViewer extends Activity implements w0.a.c, View.OnClickListener, g.d.g {
    36: 
    37:     public ru.zdevs.zarchiver.ui.layout.b f1464a;
    38: 
    39:     public e f1465b;
    40: 
```

## jadx/sources/ru/zdevs/zarchiver/ZImageViewer.java:125 (storage_saf; file score 27)

```java
   119:             h0.c dVar = null;
   120:             if (data != null) {
   121:                 int i2 = -1;
   122:                 if (!"ru.zdevs.zarchiver.archive".equals(data.getAuthority()) || Build.VERSION.SDK_INT < 26) {
   123:                     bVar = null;
   124:                 } else {
   125:                     ArchiveFileProvider.a aVarB = ArchiveFileProvider.b(ZApp.f1434c, data);
   126:                     h hVar = new h(aVarB.f1706a);
   127:                     hVar.c();
   128:                     String str = aVarB.f1707b;
   129:                     f0.a aVarM = f0.a.m();
   130:                     if (aVarM.n(hVar.f1108c)) {
   131:                         if (aVarM.k() != 0) {
   132:                             arrayList = null;
   133:                         } else {
```

## decoded/AndroidManifest.xml:20 (storage_saf; file score 25)

```java
    14:         </intent>
    15:         <intent>
    16:             <action android:name="android.intent.action.MAIN"/>
    17:             <category android:name="android.intent.category.LAUNCHER"/>
    18:         </intent>
    19:     </queries>
    20:     <uses-permission android:maxSdkVersion="32" android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    21:     <uses-permission android:maxSdkVersion="29" android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    22:     <uses-permission android:maxSdkVersion="29" android:name="android.permission.WRITE_MEDIA_STORAGE"/>
    23:     <uses-permission android:name="android.permission.WAKE_LOCK"/>
    24:     <uses-permission android:name="android.permission.ACCESS_SUPERUSER"/>
    25:     <uses-permission android:minSdkVersion="28" android:name="android.permission.FOREGROUND_SERVICE"/>
    26:     <uses-permission android:minSdkVersion="34" android:name="android.permission.FOREGROUND_SERVICE_DATA_SYNC"/>
    27:     <uses-permission-sdk-23 android:name="android.permission.REQUEST_INSTALL_PACKAGES"/>
    28:     <uses-permission-sdk-23 android:minSdkVersion="30" android:name="android.permission.MANAGE_EXTERNAL_STORAGE"/>
```

## decoded/AndroidManifest.xml:36 (root_shizuku; file score 25)

```java
    30:     <uses-permission android:name="ru.zdevs.zarchiver.permission.PLUGIN.CLOUD"/>
    31:     <uses-permission android:name="ru.zdevs.zarchiver.permission.PLUGIN.USB"/>
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
```

## decoded/AndroidManifest.xml:727 (storage_saf; file score 25)

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

## decoded/AndroidManifest.xml:730 (root_shizuku; file score 25)

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

## decoded/smali/ru/zdevs/zarchiver/ZImageViewer.smali:1588 (storage_saf; file score 21)

```java
  1582:     .line 1
  1583:     invoke-super {p0}, Landroid/app/Activity;->onStart()V
  1584: 
  1585:     .line 2
  1586:     .line 3
  1587:     .line 4
  1588:     invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;
  1589: 
  1590:     .line 5
  1591:     .line 6
  1592:     .line 7
  1593:     return-void
  1594: .end method
  1595: 
  1596: .method public final onStop()V
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1 (storage_saf; file score 21)

```java
     1: .class public Lru/zdevs/zarchiver/provider/ArchiveFileProvider;
     2: .super Landroid/content/ContentProvider;
     3: .source "SourceFile"
     4: 
     5: 
     6: # annotations
     7: .annotation system Ldalvik/annotation/MemberClasses;
     8:     value = {
     9:         Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:52 (storage_saf; file score 21)

```java
    46:     .line 11
    47:     .line 12
    48:     aput-object v2, v0, v1
    49: 
    50:     .line 13
    51:     .line 14
    52:     sput-object v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a:[Ljava/lang/String;
    53: 
    54:     .line 15
    55:     .line 16
    56:     return-void
    57: .end method
    58: 
    59: .method public constructor <init>()V
    60:     .locals 0
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:67 (storage_saf; file score 21)

```java
    61: 
    62:     invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
    63: 
    64:     return-void
    65: .end method
    66: 
    67: .method public static b(Landroid/content/Context;Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
    68:     .locals 12
    69: 
    70:     .line 1
    71:     invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    72: 
    73:     .line 2
    74:     .line 3
    75:     .line 4
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:437 (storage_saf; file score 21)

```java
   431:     .line 165
   432:     .line 166
   433:     iput v4, v7, Lh0/h;->f:I
   434: 
   435:     .line 167
   436:     .line 168
   437:     new-instance p0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
   438: 
   439:     .line 169
   440:     .line 170
   441:     move-object v6, p0
   442: 
   443:     .line 171
   444:     invoke-direct/range {v6 .. v11}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;-><init>(Lh0/h;Ljava/lang/String;IJ)V
   445: 
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:444 (storage_saf; file score 21)

```java
   438: 
   439:     .line 169
   440:     .line 170
   441:     move-object v6, p0
   442: 
   443:     .line 171
   444:     invoke-direct/range {v6 .. v11}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;-><init>(Lh0/h;Ljava/lang/String;IJ)V
   445: 
   446:     .line 172
   447:     .line 173
   448:     .line 174
   449:     return-object p0
   450: 
   451:     .line 175
   452:     :cond_9
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:865 (storage_saf; file score 21)

```java
   859:     const/4 v0, 0x0
   860: 
   861:     .line 29
   862:     return-object v0
   863: .end method
   864: 
   865: .method public final c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
   866:     .locals 1
   867: 
   868:     .line 1
   869:     invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;
   870: 
   871:     .line 2
   872:     .line 3
   873:     .line 4
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:881 (storage_saf; file score 21)

```java
   875: 
   876:     .line 5
   877:     if-eqz v0, :cond_0
   878: 
   879:     .line 6
   880:     .line 7
   881:     invoke-static {v0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->b(Landroid/content/Context;Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
   882: 
   883:     .line 8
   884:     .line 9
   885:     .line 10
   886:     move-result-object p1
   887: 
   888:     .line 11
   889:     return-object p1
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:925 (storage_saf; file score 21)

```java
   919: .end method
   920: 
   921: .method public final getType(Landroid/net/Uri;)Ljava/lang/String;
   922:     .locals 1
   923: 
   924:     .line 1
   925:     invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
   926: 
   927:     .line 2
   928:     .line 3
   929:     .line 4
   930:     move-result-object p1
   931: 
   932:     .line 5
   933:     iget-object p1, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:933 (storage_saf; file score 21)

```java
   927:     .line 2
   928:     .line 3
   929:     .line 4
   930:     move-result-object p1
   931: 
   932:     .line 5
   933:     iget-object p1, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;
   934: 
   935:     .line 6
   936:     .line 7
   937:     iget-object p1, p1, Lh0/h;->e:Ljava/lang/String;
   938: 
   939:     .line 8
   940:     .line 9
   941:     invoke-static {p1}, La0/c;->s(Ljava/lang/String;)Ljava/lang/String;
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1008 (storage_saf; file score 21)

```java
  1002: .end method
  1003: 
  1004: .method public final onCreate()Z
  1005:     .locals 1
  1006: 
  1007:     .line 1
  1008:     invoke-virtual {p0}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a()Landroid/content/Context;
  1009: 
  1010:     .line 2
  1011:     .line 3
  1012:     .line 4
  1013:     move-result-object v0
  1014: 
  1015:     .line 5
  1016:     if-eqz v0, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1041 (storage_saf; file score 21)

```java
  1035: .end method
  1036: 
  1037: .method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
  1038:     .locals 10
  1039: 
  1040:     .line 1
  1041:     invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
  1042: 
  1043:     .line 2
  1044:     .line 3
  1045:     .line 4
  1046:     move-result-object p1
  1047: 
  1048:     .line 5
  1049:     iget-object v0, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1121 (storage_saf; file score 21)

```java
  1115:     .line 34
  1116:     .line 35
  1117:     .line 36
  1118:     move-result-object v3
  1119: 
  1120:     .line 37
  1121:     invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;
  1122: 
  1123:     .line 38
  1124:     .line 39
  1125:     .line 40
  1126:     :cond_1
  1127:     sget-boolean v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z
  1128: 
  1129:     .line 41
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1151 (storage_saf; file score 21)

```java
  1145:     .line 49
  1146:     .line 50
  1147:     goto :goto_1
  1148: 
  1149:     .line 51
  1150:     :cond_2
  1151:     iget v3, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->c:I
  1152: 
  1153:     .line 52
  1154:     .line 53
  1155:     shr-int/lit8 v5, v3, 0x10
  1156: 
  1157:     .line 54
  1158:     .line 55
  1159:     invoke-static {v9, v5}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1240 (storage_saf; file score 21)

```java
  1234:     .line 89
  1235:     .line 90
  1236:     iget-object v3, v0, Lh0/h;->b:Ljava/lang/String;
  1237: 
  1238:     .line 91
  1239:     .line 92
  1240:     iget-object p1, p1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->b:Ljava/lang/String;
  1241: 
  1242:     .line 93
  1243:     .line 94
  1244:     invoke-static {v2, v3, p1}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;
  1245: 
  1246:     .line 95
  1247:     .line 96
  1248:     .line 97
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1273 (storage_saf; file score 21)

```java
  1267:     .line 103
  1268:     if-eqz p2, :cond_5
  1269: 
  1270:     .line 104
  1271:     .line 105
  1272:     :try_start_1
  1273:     invoke-virtual {p0}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a()Landroid/content/Context;
  1274: 
  1275:     .line 106
  1276:     .line 107
  1277:     .line 108
  1278:     move-result-object v4
  1279: 
  1280:     .line 109
  1281:     iget-object v6, v0, Lh0/h;->e:Ljava/lang/String;
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1654 (storage_saf; file score 21)

```java
  1648: .end method
  1649: 
  1650: .method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
  1651:     .locals 17
  1652: 
  1653:     .line 1
  1654:     invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->c(Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;
  1655: 
  1656:     .line 2
  1657:     .line 3
  1658:     .line 4
  1659:     move-result-object v0
  1660: 
  1661:     .line 5
  1662:     if-nez p2, :cond_0
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1666 (storage_saf; file score 21)

```java
  1660: 
  1661:     .line 5
  1662:     if-nez p2, :cond_0
  1663: 
  1664:     .line 6
  1665:     .line 7
  1666:     sget-object v1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->a:[Ljava/lang/String;
  1667: 
  1668:     .line 8
  1669:     .line 9
  1670:     goto :goto_0
  1671: 
  1672:     .line 10
  1673:     :cond_0
  1674:     move-object/from16 v1, p2
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1679 (storage_saf; file score 21)

```java
  1673:     :cond_0
  1674:     move-object/from16 v1, p2
  1675: 
  1676:     .line 11
  1677:     .line 12
  1678:     :goto_0
  1679:     iget-object v2, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;
  1680: 
  1681:     .line 13
  1682:     .line 14
  1683:     invoke-virtual {v2}, Lh0/h;->e()Ljava/lang/String;
  1684: 
  1685:     .line 15
  1686:     .line 16
  1687:     .line 17
```

## decoded/smali/ru/zdevs/zarchiver/provider/ArchiveFileProvider.smali:1786 (storage_saf; file score 21)

```java
  1780:     .line 57
  1781:     .line 58
  1782:     const-wide/16 v12, 0x0
  1783: 
  1784:     .line 59
  1785:     .line 60
  1786:     iget-wide v14, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->d:J
  1787: 
  1788:     .line 61
  1789:     .line 62
  1790:     cmp-long v16, v14, v12
  1791: 
  1792:     .line 63
  1793:     .line 64
  1794:     if-lez v16, :cond_2
```

## jadx/sources/ru/zdevs/zarchiver/ZArchiver.java:2379 (storage_saf; file score 21)

```java
  2373:                     }
  2374:                     if (strSubstring == null) {
  2375:                         strSubstring = "SD";
  2376:                     }
  2377:                     ZApp.j(getResources().getString(R.string.FSD_INCORRECT_PATH).replace("%1", strSubstring));
  2378:                 } else {
  2379:                     getApplicationContext().getContentResolver().takePersistableUriPermission(data, 3);
  2380:                     x0.d.b(data);
  2381:                 }
  2382:                 if (c2 == 1) {
  2383:                     M(dVar.f1685e, dVar.d(), null, this.f1448k.getListPosition(), 16);
  2384:                 }
  2385:             }
  2386:         } else if (i2 == 108 || i2 == 109 || i2 == 110) {
  2387:             if (i3 == -1 && (jVar = dVar.f1683c.f1553f) != null && jVar.type() == 2) {
```

## jadx/sources/ru/zdevs/zarchiver/ZArchiver.java:2388 (storage_saf; file score 21)

```java
  2382:                 if (c2 == 1) {
  2383:                     M(dVar.f1685e, dVar.d(), null, this.f1448k.getListPosition(), 16);
  2384:                 }
  2385:             }
  2386:         } else if (i2 == 108 || i2 == 109 || i2 == 110) {
  2387:             if (i3 == -1 && (jVar = dVar.f1683c.f1553f) != null && jVar.type() == 2) {
  2388:                 new ru.zdevs.zarchiver.e(getContentResolver(), (ru.zdevs.zarchiver.a.b) dVar.f1683c.f1553f, i2, dVar.f1685e).g(null, this.f270c);
  2389:             } else {
  2390:                 ZApp.i(R.string.MES_END_WITH_ERROR);
  2391:             }
  2392:         } else if (i2 == 1203) {
  2393:             if (i3 == -1) {
  2394:                 ru.zdevs.zarchiver.a.d(this, (h0.h) intent.getParcelableExtra("apk_path"), (h0.h) intent.getParcelableExtra("dir_path"), intent.getStringArrayExtra("name_list"));
  2395:             }
  2396:         } else if (i2 == 111) {
```

## jadx/sources/ru/zdevs/zarchiver/ZArchiver.java:3654 (storage_saf; file score 21)

```java
  3648:             }
  3649:             requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
  3650:             return;
  3651:         }
  3652:         int i2 = Build.VERSION.SDK_INT;
  3653:         if (i2 < 30 || (i2 < 33 && z0.e.d(this))) {
  3654:             requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"}, 0);
  3655:         } else {
  3656:             g0.s.t(this.f1445h, this, 0, 0, null, 4, null);
  3657:         }
  3658:     }
  3659: 
  3660:     public final boolean x(int i2, String str) {
  3661:         x0.d.a aVarF = x0.g.f(str);
  3662:         if (aVarF != null) {
```

## jadx/sources/ru/zdevs/zarchiver/provider/ArchiveFileProvider.java:25 (storage_saf; file score 21)

```java
    19: import ru.zdevs.zarchiver.R;
    20: import ru.zdevs.zarchiver.ZApp;
    21: import ru.zdevs.zarchiver.archiver.C2JBridge;
    22: import ru.zdevs.zarchiver.archiver.NArc;
    23: import x0.d;
    24: 
    25: public class ArchiveFileProvider extends ContentProvider {
    26: 
    27:     public static final String[] f1705a = {"_display_name", "_size"};
    28: 
    29:     public static class a {
    30: 
    31:         public final h f1706a;
    32: 
    33:         public final String f1707b;
```

## decoded/res/values-ar/strings.xml:239 (root_shizuku; file score 20)

```java
   233:     <string name="MES_REMOUNT_SUCESSFUL" formatted="false">تم إعادة تحميل %1 إلى %2 بنجاح</string>
   234:     <string name="MES_REMOVE_FILE">جارٍ إزالة الملفات</string>
   235:     <string name="MES_RENAME_FILE_PROCESS">إعادة تسمية الملفات:</string>
   236:     <string name="MES_SELECT_DESTINATION">حدد مجلد الوجهة</string>
   237:     <string name="MES_SELECT_FILES">تحديد الملفات المراد أرشفتها</string>
   238:     <string name="MES_SELECT_HELP">تمكين وضع التحديد المتعدد</string>
   239:     <string name="MES_SHIZUKU_IS_NOT_RUNNING">شيزوكو لا يعمل</string>
   240:     <string name="MES_SUCESSFUL_ADD_FILE">تم إضافة الملفات بنجاح إلى الأرشيف</string>
   241:     <string name="MES_SUCESSFUL_COMPRESS">تم إنشاء الأرشيف بنجاح</string>
   242:     <string name="MES_SUCESSFUL_DECOMPRESS">تم فك ضغط الأرشيف بنجاح</string>
   243:     <string name="MES_SUCESSFUL_DEL_FILE">تم حذف الملفات بنجاح من الأرشيف</string>
   244:     <string name="MES_SUCESSFUL_END">اكتملت العملية بنجاح</string>
   245:     <string name="MES_SUCESSFUL_TEST">الأرشيف لا يحتوي علي أخطاء</string>
   246:     <string name="MES_SUCESSFUL_TESTS">الأرشيفات لا تحتوي علي أخطاء</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">يدعم (ZipCrypto) كلمات المرور باللغة الإنجليزية فقط!</string>
```

## decoded/res/values-az/strings.xml:113 (root_shizuku; file score 20)

```java
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
   119:     <string name="FVR_EXTERNAL">SD kart %1</string>
   120:     <string name="FVR_EXTERNAL_USB">USB Flash %1</string>
   121:     <string name="FVR_HOME">Əsas kataloq</string>
```

## decoded/res/values-az/strings.xml:239 (root_shizuku; file score 20)

```java
   233:     <string name="MES_REMOUNT_SUCESSFUL" formatted="false">%1 %2 olaraq uğurla bağlandı</string>
   234:     <string name="MES_REMOVE_FILE">Fayllar silinir</string>
   235:     <string name="MES_RENAME_FILE_PROCESS">Faylların adının dəyişdirilməsi:</string>
   236:     <string name="MES_SELECT_DESTINATION">Təyinat qovluğu seçin</string>
   237:     <string name="MES_SELECT_FILES">Arxivlənəcək faylları seçin</string>
   238:     <string name="MES_SELECT_HELP">Çoxlu-seçmə rejimi aktivdir</string>
   239:     <string name="MES_SHIZUKU_IS_NOT_RUNNING">Shizuku işləmir</string>
   240:     <string name="MES_SUCESSFUL_ADD_FILE">Fayllar arxivə uğurla əlavə edildi</string>
   241:     <string name="MES_SUCESSFUL_COMPRESS">Arxiv uğurla yaradıldı</string>
   242:     <string name="MES_SUCESSFUL_DECOMPRESS">Arxiv uğurla çıxardıldı</string>
   243:     <string name="MES_SUCESSFUL_DEL_FILE">Fayllar arxivdən uğurla silindi</string>
   244:     <string name="MES_SUCESSFUL_END">Proses uğurla başa çatdı</string>
   245:     <string name="MES_SUCESSFUL_TEST">Arxivdə səhv yoxdur</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Arxivlərdə səhvlər yoxdur</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto yalnız İngilis parollarını dəstəkləyir!</string>
```

## decoded/res/values-cs/strings.xml:113 (root_shizuku; file score 20)

```java
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
   119:     <string name="FVR_EXTERNAL">SD karta %1</string>
   120:     <string name="FVR_EXTERNAL_USB">USB Flash disk %1</string>
   121:     <string name="FVR_HOME">Domovská složka</string>
```

## decoded/res/values-cs/strings.xml:239 (root_shizuku; file score 20)

```java
   233:     <string name="MES_REMOUNT_SUCESSFUL" formatted="false">%1 přemístěn úspěšně do %2</string>
   234:     <string name="MES_REMOVE_FILE">Odstraňování souborů</string>
   235:     <string name="MES_RENAME_FILE_PROCESS">Přejmenovávání souborů:</string>
   236:     <string name="MES_SELECT_DESTINATION">Vyberte cílovou složku</string>
   237:     <string name="MES_SELECT_FILES">Vyberte soubory do archivu</string>
   238:     <string name="MES_SELECT_HELP">Režim vícenásobného výběru povolen</string>
   239:     <string name="MES_SHIZUKU_IS_NOT_RUNNING">Šizuku není spuštěno</string>
   240:     <string name="MES_SUCESSFUL_ADD_FILE">Soubory byli úspěšně přidány do archivu</string>
   241:     <string name="MES_SUCESSFUL_COMPRESS">Archiv byl úspěšně vytvořen</string>
   242:     <string name="MES_SUCESSFUL_DECOMPRESS">Archiv byl úspěšně rozbalen</string>
   243:     <string name="MES_SUCESSFUL_DEL_FILE">Soubory byli úspěšně odstraněny z archivu</string>
   244:     <string name="MES_SUCESSFUL_END">Operace byla úspěšně dokončena</string>
   245:     <string name="MES_SUCESSFUL_TEST">Archiv neobsahuje žádné chyby</string>
   246:     <string name="MES_SUCESSFUL_TESTS">Archiv neobsahuje žádné chyby</string>
   247:     <string name="MES_SUPPORT_ONLY_ASCII_PWD">ZipCrypto podporuje pouze hesla s anglickými znaky!</string>
```

Snippets shown: 100. Complete bounded hit indexes are in the corresponding TSV files.