# Update candidates

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/app/fast/ssh/R.java:4298 (update_strong; file score 24)

```java
  4292:         public static final int check_id_lock = 0x7f090093;
  4293:         public static final int check_mobile_data = 0x7f090094;
  4294:         public static final int check_password_lock = 0x7f090095;
  4295:         public static final int check_preserve_sni = 0x7f090096;
  4296:         public static final int check_realm_host = 0x7f090097;
  4297:         public static final int check_set_expiry = 0x7f090098;
  4298:         public static final int check_updates = 0x7f090099;
  4299:         public static final int check_use_tcp_payload = 0x7f09009a;
  4300:         public static final int checkbox = 0x7f09009b;
  4301:         public static final int checked = 0x7f09009c;
  4302:         public static final int chronometer = 0x7f09009d;
  4303:         public static final int circle_center = 0x7f09009e;
  4304:         public static final int clear = 0x7f09009f;
  4305:         public static final int clear_text = 0x7f0900a0;
  4306:         public static final int clip_horizontal = 0x7f0900a1;
```

## decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali:50 (update_general; file score 18)

```java
    44:         "values",
    45:         "Landroid/content/ContentValues;",
    46:         "insertOrThrow",
    47:         "internalOnUpgrade",
    48:         "db",
    49:         "oldVersion",
    50:         "newVersion",
    51:         "onCreate",
    52:         "onDowngrade",
    53:         "onUpgrade",
    54:         "query",
    55:         "columns",
    56:         "groupBy",
    57:         "having",
    58:         "orderBy",
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:28 (update_general; file score 18)

```java
    22: import kotlin.io.CloseableKt;
    23: import kotlin.jvm.functions.Function1;
    24: import kotlin.jvm.internal.DefaultConstructorMarker;
    25: import kotlin.jvm.internal.Intrinsics;
    26: import kotlin.text.StringsKt;
    27: 
    28: @Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0010\u0018\u0000 72\u00020\u00012\u00020\u0002:\u00017B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ/\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0010H\u0016¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J$\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0016\u001a\u
    29: public class OSDatabase extends SQLiteOpenHelper implements IDatabase {
    30:     private static final int DB_OPEN_RETRY_BACKOFF = 400;
    31:     private static final int DB_OPEN_RETRY_MAX = 5;
    32:     private static final int DB_VERSION = 9;
    33:     public static final int DEFAULT_TTL_IF_NOT_IN_PAYLOAD = 259200;
    34:     private final OutcomeTableProvider _outcomeTableProvider;
    35:     private static final String DATABASE_NAME = ProtectedFastSSH.s("鰞");
    36:     private static final String SQL_CREATE_IN_APP_MESSAGE_ENTRIES = ProtectedFastSSH.s("鰟");
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:98 (update_general; file score 18)

```java
    92:                 }
    93:             }
    94:         }
    95:         return sQLiteDatabase;
    96:     }
    97: 
    98:     private final synchronized void internalOnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
    99:         if (oldVersion < 2 && newVersion >= 2) {
   100:             try {
   101:                 upgradeToV2(db);
   102:             } catch (Throwable th) {
   103:                 throw th;
   104:             }
   105:         }
   106:         if (oldVersion < 3 && newVersion >= 3) {
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:106 (update_general; file score 18)

```java
   100:             try {
   101:                 upgradeToV2(db);
   102:             } catch (Throwable th) {
   103:                 throw th;
   104:             }
   105:         }
   106:         if (oldVersion < 3 && newVersion >= 3) {
   107:             upgradeToV3(db);
   108:         }
   109:         if (oldVersion < 4 && newVersion >= 4) {
   110:             upgradeToV4(db);
   111:         }
   112:         if (oldVersion < 5 && newVersion >= 5) {
   113:             upgradeToV5(db);
   114:         }
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:112 (update_general; file score 18)

```java
   106:         if (oldVersion < 3 && newVersion >= 3) {
   107:             upgradeToV3(db);
   108:         }
   109:         if (oldVersion < 4 && newVersion >= 4) {
   110:             upgradeToV4(db);
   111:         }
   112:         if (oldVersion < 5 && newVersion >= 5) {
   113:             upgradeToV5(db);
   114:         }
   115:         if (oldVersion == 5 && newVersion >= 6) {
   116:             upgradeFromV5ToV6(db);
   117:         }
   118:         if (oldVersion < 7 && newVersion >= 7) {
   119:             upgradeToV7(db);
   120:         }
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:121 (update_general; file score 18)

```java
   115:         if (oldVersion == 5 && newVersion >= 6) {
   116:             upgradeFromV5ToV6(db);
   117:         }
   118:         if (oldVersion < 7 && newVersion >= 7) {
   119:             upgradeToV7(db);
   120:         }
   121:         if (oldVersion < 8 && newVersion >= 8) {
   122:             upgradeToV8(db);
   123:         }
   124:         if (oldVersion < 9 && newVersion >= 9) {
   125:             upgradeToV9(db);
   126:         }
   127:     }
   128: 
   129:     private final void safeExecSQL(SQLiteDatabase db, String sql) {
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:421 (update_general; file score 18)

```java
   415:         for (String str : SQL_INDEX_ENTRIES) {
   416:             db.execSQL(str);
   417:         }
   418:     }
   419: 
   420:     @Override
   421:     public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) throws IOException {
   422:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("鰿"));
   423:         Logging.warn$default(ProtectedFastSSH.s("鱂"), null, 2, null);
   424:         Cursor cursorRawQuery = db.rawQuery(ProtectedFastSSH.s("鱃"), null);
   425:         try {
   426:             Cursor cursor = cursorRawQuery;
   427:             ArrayList<String> arrayList = new ArrayList(cursor.getCount());
   428:             while (cursor.moveToNext()) {
   429:                 String string = cursor.getString(0);
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:452 (update_general; file score 18)

```java
   446:                 throw th2;
   447:             }
   448:         }
   449:     }
   450: 
   451:     @Override
   452:     public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
   453:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("鰿"));
   454:         Logging.debug$default(ProtectedFastSSH.s("鱇") + oldVersion + ProtectedFastSSH.s("鱈") + newVersion, null, 2, null);
   455:         try {
   456:             internalOnUpgrade(db, oldVersion, newVersion);
   457:         } catch (SQLiteException e) {
   458:             Logging.error(ProtectedFastSSH.s("鱉"), e);
   459:         }
   460:     }
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:757 (update_general; file score 17)

```java
   751: 
   752:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->descText:Lcom/google/android/material/textview/MaterialTextView;
   753: 
   754:     return-object p0
   755: .end method
   756: 
   757: .method private appVersionCode()I
   758:     .locals 3
   759: 
   760:     .prologue
   761:     const/4 v0, 0x0
   762: 
   763:     :try_start_0
   764:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
   765: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:784 (update_general; file score 17)

```java
   778:     move-result-object v2
   779: 
   780:     invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
   781: 
   782:     move-result-object v1
   783: 
   784:     iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
   785:     :try_end_0
   786:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   787: 
   788:     :catch_0
   789:     return v0
   790: .end method
   791: 
   792: .method private appVersionName()Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:792 (update_general; file score 17)

```java
   786:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   787: 
   788:     :catch_0
   789:     return v0
   790: .end method
   791: 
   792: .method private appVersionName()Ljava/lang/String;
   793:     .locals 3
   794: 
   795:     .prologue
   796:     :try_start_0
   797:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
   798: 
   799:     move-result-object v0
   800: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:819 (update_general; file score 17)

```java
   813:     const/4 v2, 0x0
   814: 
   815:     invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
   816: 
   817:     move-result-object v0
   818: 
   819:     iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
   820:     :try_end_0
   821:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   822: 
   823:     return-object v0
   824: 
   825:     :catch_0
   826:     const-string/jumbo v0, "\u2ece"
   827: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3327 (update_general; file score 17)

```java
  3321:     const-string/jumbo v1, "\u2f0f"
  3322: 
  3323:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  3324: 
  3325:     move-result-object v1
  3326: 
  3327:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->appVersionCode()I
  3328: 
  3329:     move-result v2
  3330: 
  3331:     invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
  3332:     :try_end_0
  3333:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
  3334: 
  3335:     :catch_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3880 (update_general; file score 17)

```java
  3874:     const-string/jumbo v3, "\u2f1f"
  3875: 
  3876:     invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  3877: 
  3878:     move-result-object v3
  3879: 
  3880:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->appVersionName()Ljava/lang/String;
  3881: 
  3882:     move-result-object v4
  3883: 
  3884:     invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
  3885: 
  3886:     move-result-object v0
  3887: 
  3888:     invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:7 (update_general; file score 17)

```java
     1: .class public Lapp/fast/ssh/MainActivity;
     2: .super Landroidx/appcompat/app/AppCompatActivity;
     3: .source "MainActivity.java"
     4: 
     5: 
     6: # static fields
     7: .field private static final APP_UPDATE_REQUEST_CODE:I = 0x2b20
     8: 
     9: .field private static final RENEW_INTERSTITIAL:Ljava/lang/String;
    10: 
    11: .field private static final RESUME_INTERSTITIAL:Ljava/lang/String;
    12: 
    13: 
    14: # instance fields
    15: .field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:15 (update_general; file score 17)

```java
     9: .field private static final RENEW_INTERSTITIAL:Ljava/lang/String;
    10: 
    11: .field private static final RESUME_INTERSTITIAL:Ljava/lang/String;
    12: 
    13: 
    14: # instance fields
    15: .field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
    16: 
    17: .field private bannerAd:Lcom/google/android/gms/ads/AdView;
    18: 
    19: .field private debugFragment:Lapp/fast/ssh/LogFragment;
    20: 
    21: .field private drawer:Landroidx/drawerlayout/widget/DrawerLayout;
    22: 
    23: .field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:126 (update_general; file score 17)

```java
   120: 
   121:     iput-boolean p1, p0, Lapp/fast/ssh/MainActivity;->restartOnUpdateRequest:Z
   122: 
   123:     return p1
   124: .end method
   125: 
   126: .method private appVersionCode()I
   127:     .locals 3
   128: 
   129:     .prologue
   130:     const/4 v0, 0x0
   131: 
   132:     :try_start_0
   133:     invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
   134: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:145 (update_general; file score 17)

```java
   139:     move-result-object v2
   140: 
   141:     invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
   142: 
   143:     move-result-object v1
   144: 
   145:     iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
   146:     :try_end_0
   147:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   148: 
   149:     :catch_0
   150:     return v0
   151: .end method
   152: 
   153: .method private appVersionName()Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:153 (update_general; file score 17)

```java
   147:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   148: 
   149:     :catch_0
   150:     return v0
   151: .end method
   152: 
   153: .method private appVersionName()Ljava/lang/String;
   154:     .locals 3
   155: 
   156:     .prologue
   157:     :try_start_0
   158:     invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
   159: 
   160:     move-result-object v0
   161: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:172 (update_general; file score 17)

```java
   166:     const/4 v2, 0x0
   167: 
   168:     invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
   169: 
   170:     move-result-object v0
   171: 
   172:     iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
   173:     :try_end_0
   174:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   175: 
   176:     return-object v0
   177: 
   178:     :catch_0
   179:     const-string/jumbo v0, "\u2f65"
   180: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1126 (update_general; file score 17)

```java
  1120: 
  1121:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  1122: 
  1123:     return-void
  1124: .end method
  1125: 
  1126: .method synthetic lambda$onCreate$3$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
  1127:     .locals 3
  1128: 
  1129:     .prologue
  1130:     invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I
  1131: 
  1132:     move-result v0
  1133: 
  1134:     const/4 v1, 0x2
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1130 (update_general; file score 17)

```java
  1124: .end method
  1125: 
  1126: .method synthetic lambda$onCreate$3$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
  1127:     .locals 3
  1128: 
  1129:     .prologue
  1130:     invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I
  1131: 
  1132:     move-result v0
  1133: 
  1134:     const/4 v1, 0x2
  1135: 
  1136:     if-ne v0, v1, :cond_0
  1137: 
  1138:     const/4 v0, 0x1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1140 (update_general; file score 17)

```java
  1134:     const/4 v1, 0x2
  1135: 
  1136:     if-ne v0, v1, :cond_0
  1137: 
  1138:     const/4 v0, 0x1
  1139: 
  1140:     invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z
  1141: 
  1142:     move-result v1
  1143: 
  1144:     if-eqz v1, :cond_0
  1145: 
  1146:     :try_start_0
  1147:     iget-object v1, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1148: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1151 (update_general; file score 17)

```java
  1145: 
  1146:     :try_start_0
  1147:     iget-object v1, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1148: 
  1149:     const/16 v2, 0x2b20
  1150: 
  1151:     invoke-interface {v1, p1, v0, p0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
  1152:     :try_end_0
  1153:     .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
  1154: 
  1155:     return-void
  1156: 
  1157:     :catch_0
  1158:     move-exception p1
  1159: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1376 (update_general; file score 17)

```java
  1370:         0x7f090225 -> :sswitch_2
  1371:         0x7f090265 -> :sswitch_1
  1372:         0x7f0902b1 -> :sswitch_0
  1373:     .end sparse-switch
  1374: .end method
  1375: 
  1376: .method synthetic lambda$onResume$6$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
  1377:     .locals 3
  1378: 
  1379:     .prologue
  1380:     invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I
  1381: 
  1382:     move-result v0
  1383: 
  1384:     const/4 v1, 0x3
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1380 (update_general; file score 17)

```java
  1374: .end method
  1375: 
  1376: .method synthetic lambda$onResume$6$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
  1377:     .locals 3
  1378: 
  1379:     .prologue
  1380:     invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I
  1381: 
  1382:     move-result v0
  1383: 
  1384:     const/4 v1, 0x3
  1385: 
  1386:     if-ne v0, v1, :cond_0
  1387: 
  1388:     :try_start_0
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1395 (update_general; file score 17)

```java
  1389:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1390: 
  1391:     const/4 v1, 0x1
  1392: 
  1393:     const/16 v2, 0x2b20
  1394: 
  1395:     invoke-interface {v0, p1, v1, p0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
  1396:     :try_end_0
  1397:     .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
  1398: 
  1399:     return-void
  1400: 
  1401:     :catch_0
  1402:     move-exception p1
  1403: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1507 (update_general; file score 17)

```java
  1501:     new-instance v0, Lapp/fast/ssh/util/ResourceUpdater;
  1502: 
  1503:     invoke-direct {v0, p0}, Lapp/fast/ssh/util/ResourceUpdater;-><init>(Landroid/content/Context;)V
  1504: 
  1505:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
  1506: 
  1507:     invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1508: 
  1509:     move-result-object v0
  1510: 
  1511:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1512: 
  1513:     invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;
  1514: 
  1515:     move-result-object v0
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1511 (update_general; file score 17)

```java
  1505:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
  1506: 
  1507:     invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1508: 
  1509:     move-result-object v0
  1510: 
  1511:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  1512: 
  1513:     invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;
  1514: 
  1515:     move-result-object v0
  1516: 
  1517:     new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;
  1518: 
  1519:     invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;-><init>(Lapp/fast/ssh/MainActivity;)V
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1738 (update_general; file score 17)

```java
  1732:     invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
  1733: 
  1734:     move-result-object v0
  1735: 
  1736:     check-cast v0, Landroid/widget/TextView;
  1737: 
  1738:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionName()Ljava/lang/String;
  1739: 
  1740:     move-result-object v3
  1741: 
  1742:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionCode()I
  1743: 
  1744:     move-result v4
  1745: 
  1746:     invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1742 (update_general; file score 17)

```java
  1736:     check-cast v0, Landroid/widget/TextView;
  1737: 
  1738:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionName()Ljava/lang/String;
  1739: 
  1740:     move-result-object v3
  1741: 
  1742:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionCode()I
  1743: 
  1744:     move-result v4
  1745: 
  1746:     invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
  1747: 
  1748:     move-result-object v4
  1749: 
  1750:     const/4 v5, 0x2
```

## decoded/smali/app/fast/ssh/MainActivity.smali:2030 (update_general; file score 17)

```java
  2024: 
  2025:     const/16 v1, 0x8
  2026: 
  2027:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  2028: 
  2029:     :goto_0
  2030:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  2031: 
  2032:     invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;
  2033: 
  2034:     move-result-object v0
  2035: 
  2036:     new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda1;
  2037: 
  2038:     invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/MainActivity;)V
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1165 (update_general; file score 17)

```java
  1159:     }
  1160: 
  1161:     static MaterialTextView access$900(HomeFragment homeFragment) {
  1162:         return homeFragment.descText;
  1163:     }
  1164: 
  1165:     private int appVersionCode() {
  1166:         try {
  1167:             return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionCode;
  1168:         } catch (Exception unused) {
  1169:             return 0;
  1170:         }
  1171:     }
  1172: 
  1173:     private String appVersionName() {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1173 (update_general; file score 17)

```java
  1167:             return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionCode;
  1168:         } catch (Exception unused) {
  1169:             return 0;
  1170:         }
  1171:     }
  1172: 
  1173:     private String appVersionName() {
  1174:         try {
  1175:             return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
  1176:         } catch (Exception unused) {
  1177:             return ProtectedFastSSH.s("⻎");
  1178:         }
  1179:     }
  1180: 
  1181:     private String deviceId() {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1582 (update_general; file score 17)

```java
  1576: 
  1577:     private void showRewarded(RewardedAd rewardedAd) {
  1578:         JSONObject jSONObject = new JSONObject();
  1579:         try {
  1580:             jSONObject.put(ProtectedFastSSH.s("⻟"), VpnStatus.getLastConnectedProfile().primaryNode());
  1581:             jSONObject.put(ProtectedFastSSH.s("⼎"), VpnStatus.getLastConnectedProfile().serverHost());
  1582:             jSONObject.put(ProtectedFastSSH.s("⼏"), appVersionCode());
  1583:         } catch (Exception unused) {
  1584:         }
  1585:         rewardedAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setCustomData(jSONObject.toString()).setUserId(Settings.Secure.getString(getContext().getContentResolver(), ProtectedFastSSH.s("⻏"))).build());
  1586:         rewardedAd.show(getActivity(), new HomeFragment$$ExternalSyntheticLambda6(this));
  1587:     }
  1588: 
  1589:     private void stopAndHideTimer() {
  1590:         CountDownTimer countDownTimer2 = countDownTimer;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1660 (update_general; file score 17)

```java
  1654:                 return;
  1655:             }
  1656:             String string2 = jSONObject.getString(ProtectedFastSSH.s("⼝"));
  1657:             AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
  1658:             builder.setIcon(com.hatunnel.plus.R.mipmap.ic_launcher);
  1659:             builder.setTitle(ProtectedFastSSH.s("⼞"));
  1660:             builder.setMessage(string2.replace(ProtectedFastSSH.s("⼟"), appVersionName()));
  1661:             builder.setPositiveButton(ProtectedFastSSH.s("⼠"), new AnonymousClass21(string));
  1662:             builder.create().show();
  1663:         } catch (Exception unused) {
  1664:         }
  1665:     }
  1666: 
  1667:     public VpnConnectionHelper GetVpnConnectionHelper() {
  1668:         return this.vpnConnectionHelper;
```

## jadx/sources/app/fast/ssh/MainActivity.java:55 (update_general; file score 17)

```java
    49: import com.google.android.gms.ads.interstitial.InterstitialAd;
    50: import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
    51: import com.google.android.material.appbar.AppBarLayout;
    52: import com.google.android.material.navigation.NavigationView;
    53: import com.google.android.material.snackbar.Snackbar;
    54: import com.google.android.material.tabs.TabLayout;
    55: import com.google.android.play.core.appupdate.AppUpdateInfo;
    56: import com.google.android.play.core.appupdate.AppUpdateManager;
    57: import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
    58: import java.io.BufferedReader;
    59: import java.io.IOException;
    60: import java.io.InputStreamReader;
    61: import java.util.ArrayList;
    62: import java.util.List;
    63: import java.util.Timer;
```

## jadx/sources/app/fast/ssh/MainActivity.java:67 (update_general; file score 17)

```java
    61: import java.util.ArrayList;
    62: import java.util.List;
    63: import java.util.Timer;
    64: import org.json.JSONObject;
    65: 
    66: public class MainActivity extends AppCompatActivity {
    67:     private static final int APP_UPDATE_REQUEST_CODE = 11040;
    68:     private AppUpdateManager appUpdateManager;
    69:     private AdView bannerAd;
    70:     private LogFragment debugFragment;
    71:     private DrawerLayout drawer;
    72:     private ActionBarDrawerToggle drawerToggle;
    73:     private HomeFragment homeFragment;
    74:     private InterstitialAd renewInterstitial;
    75:     private ResourceUpdater resourceUpdater;
```

## jadx/sources/app/fast/ssh/MainActivity.java:227 (update_general; file score 17)

```java
   221: 
   222:     static boolean access$302(MainActivity mainActivity, boolean z) {
   223:         mainActivity.restartOnUpdateRequest = z;
   224:         return z;
   225:     }
   226: 
   227:     private int appVersionCode() {
   228:         try {
   229:             return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
   230:         } catch (Exception unused) {
   231:             return 0;
   232:         }
   233:     }
   234: 
   235:     private String appVersionName() {
```

## jadx/sources/app/fast/ssh/MainActivity.java:235 (update_general; file score 17)

```java
   229:             return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
   230:         } catch (Exception unused) {
   231:             return 0;
   232:         }
   233:     }
   234: 
   235:     private String appVersionName() {
   236:         try {
   237:             return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
   238:         } catch (Exception unused) {
   239:             return ProtectedFastSSH.s("⽥");
   240:         }
   241:     }
   242: 
   243:     private String deviceId() {
```

## jadx/sources/app/fast/ssh/MainActivity.java:449 (update_general; file score 17)

```java
   443:     }
   444: 
   445:     public void hideBannerAd() {
   446:         this.bannerAd.setVisibility(8);
   447:     }
   448: 
   449:     void m478lambda$onCreate$3$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
   450:         if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
   451:             try {
   452:                 this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, APP_UPDATE_REQUEST_CODE);
   453:             } catch (IntentSender.SendIntentException e) {
   454:                 e.printStackTrace();
   455:             }
   456:         }
   457:     }
```

## jadx/sources/app/fast/ssh/MainActivity.java:450 (update_general; file score 17)

```java
   444: 
   445:     public void hideBannerAd() {
   446:         this.bannerAd.setVisibility(8);
   447:     }
   448: 
   449:     void m478lambda$onCreate$3$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
   450:         if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
   451:             try {
   452:                 this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, APP_UPDATE_REQUEST_CODE);
   453:             } catch (IntentSender.SendIntentException e) {
   454:                 e.printStackTrace();
   455:             }
   456:         }
   457:     }
   458: 
```

## jadx/sources/app/fast/ssh/MainActivity.java:503 (update_general; file score 17)

```java
   497:                 break;
   498:         }
   499:         this.drawer.closeDrawer(GravityCompat.START);
   500:         return true;
   501:     }
   502: 
   503:     void m481lambda$onResume$6$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
   504:         if (appUpdateInfo.updateAvailability() == 3) {
   505:             try {
   506:                 this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, APP_UPDATE_REQUEST_CODE);
   507:             } catch (IntentSender.SendIntentException e) {
   508:                 e.printStackTrace();
   509:             }
   510:         }
   511:     }
```

## jadx/sources/app/fast/ssh/MainActivity.java:541 (update_general; file score 17)

```java
   535:             String strS = ProtectedFastSSH.s("⾀");
   536:             if (ContextCompat.checkSelfPermission(this, strS) != 0) {
   537:                 registerForActivityResult(new ActivityResultContracts.RequestPermission(), new MainActivity$$ExternalSyntheticLambda4()).launch(strS);
   538:             }
   539:         }
   540:         this.resourceUpdater = new ResourceUpdater(this);
   541:         AppUpdateManager appUpdateManagerCreate = AppUpdateManagerFactory.create(this);
   542:         this.appUpdateManager = appUpdateManagerCreate;
   543:         appUpdateManagerCreate.getAppUpdateInfo().addOnSuccessListener(new MainActivity$$ExternalSyntheticLambda5(this));
   544:         setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
   545:         this.drawer = (DrawerLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900db);
   546:         ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.drawer, com.hatunnel.plus.R.string.l_res_0x7f1200d8, com.hatunnel.plus.R.string.l_res_0x7f1200d7);
   547:         this.drawerToggle = actionBarDrawerToggle;
   548:         actionBarDrawerToggle.syncState();
   549:         this.drawer.addDrawerListener(this.drawerToggle);
```

## jadx/sources/app/fast/ssh/MainActivity.java:581 (update_general; file score 17)

```java
   575:         arrayList2.add(ProtectedFastSSH.s("⾂"));
   576:         MyPagerAdapter myPagerAdapter = new MyPagerAdapter(arrayList, arrayList2, getSupportFragmentManager(), 1);
   577:         viewPager.setAdapter(myPagerAdapter);
   578:         myPagerAdapter.notifyDataSetChanged();
   579:         ((TabLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090255)).setupWithViewPager(viewPager);
   580:         NavigationView navigationView = (NavigationView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901a0);
   581:         ((TextView) navigationView.getHeaderView(0).findViewById(com.hatunnel.plus.R.id.l_res_0x7f09029d)).setText(String.format(ProtectedFastSSH.s("⾃"), appVersionName(), Integer.valueOf(appVersionCode())));
   582:         navigationView.setNavigationItemSelectedListener(new MainActivity$$ExternalSyntheticLambda6(this, navigationView));
   583:         this.resourceUpdater.requestUpdate(new AnonymousClass1());
   584:         initAds();
   585:     }
   586: 
   587:     @Override
   588:     public boolean onCreateOptionsMenu(Menu menu) {
   589:         getMenuInflater().inflate(com.hatunnel.plus.R.menu.l_res_0x7f0e0002, menu);
```

## jadx/sources/app/fast/ssh/MainActivity.java:656 (update_general; file score 17)

```java
   650:         if (new Subscription(new PrefsSubscriptionStore(this)).shouldRequestAds()) {
   651:             this.bannerAd.loadAd(adRequestBuild);
   652:             this.bannerAd.setVisibility(0);
   653:         } else {
   654:             this.bannerAd.setVisibility(8);
   655:         }
   656:         this.appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new MainActivity$$ExternalSyntheticLambda1(this));
   657:     }
   658: }
```

## decoded/smali/app/fast/ssh/R$id.smali:323 (update_strong; file score 16)

```java
   317: .field public static final check_preserve_sni:I = 0x7f090096
   318: 
   319: .field public static final check_realm_host:I = 0x7f090097
   320: 
   321: .field public static final check_set_expiry:I = 0x7f090098
   322: 
   323: .field public static final check_updates:I = 0x7f090099
   324: 
   325: .field public static final check_use_tcp_payload:I = 0x7f09009a
   326: 
   327: .field public static final checkbox:I = 0x7f09009b
   328: 
   329: .field public static final checked:I = 0x7f09009c
   330: 
   331: .field public static final chronometer:I = 0x7f09009d
```

## jadx/sources/com/google/android/gms/ads/MobileAds.java:50 (update_strong; file score 16)

```java
    44:     }
    45: 
    46:     public static VersionInfo getVersion() {
    47:         zzeu.zzb();
    48:         String[] strArrSplit = TextUtils.split(ProtectedFastSSH.s("㟏"), ProtectedFastSSH.s("㟐"));
    49:         if (strArrSplit.length != 3) {
    50:             return new VersionInfo(0, 0, 0);
    51:         }
    52:         try {
    53:             return new VersionInfo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]));
    54:         } catch (NumberFormatException unused) {
    55:             return new VersionInfo(0, 0, 0);
    56:         }
    57:     }
    58: 
```

## jadx/sources/com/google/android/gms/internal/ads/zzbym.java:68 (update_strong; file score 16)

```java
    62:     }
    63: 
    64:     @Override
    65:     public final void showInterstitial() {
    66:         CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
    67:         customTabsIntentBuild.intent.setData(this.zzc);
    68:         com.google.android.gms.ads.internal.util.zzs.zza.post(new zzbyl(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent, null), null, new zzbyk(this), null, new VersionInfoParcel(0, 0, false), null, null, "")));
    69:         com.google.android.gms.ads.internal.zzt.zzh().zzd();
    70:     }
    71: 
    72:     final Activity zza() {
    73:         return this.zza;
    74:     }
    75: 
    76:     final MediationInterstitialListener zzb() {
```

## decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.smali:97 (update_general; file score 15)

```java
    91:         "insert",
    92:         "conflictAlgorithm",
    93:         "values",
    94:         "Landroid/content/ContentValues;",
    95:         "isDelegate",
    96:         "sqLiteDatabase",
    97:         "needUpgrade",
    98:         "newVersion",
    99:         "query",
   100:         "Landroid/database/Cursor;",
   101:         "Landroidx/sqlite/db/SupportSQLiteQuery;",
   102:         "cancellationSignal",
   103:         "Landroid/os/CancellationSignal;",
   104:         "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
   105:         "setForeignKeyConstraintsEnabled",
```

## decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.smali:852 (update_general; file score 15)

```java
   846: 
   847:     move-result v0
   848: 
   849:     return v0
   850: .end method
   851: 
   852: .method public needUpgrade(I)Z
   853:     .locals 1
   854: 
   855:     iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->delegate:Landroid/database/sqlite/SQLiteDatabase;
   856: 
   857:     invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->needUpgrade(I)Z
   858: 
   859:     move-result p1
   860: 
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.java:29 (update_general; file score 15)

```java
    23: import java.util.List;
    24: import java.util.Locale;
    25: import kotlin.Metadata;
    26: import kotlin.jvm.functions.Function4;
    27: import kotlin.jvm.internal.Intrinsics;
    28: 
    29: @Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 \\2\u00020\u0001:\u0002[\\B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\b\u0010.\u001a\u00020(H\u0016J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\bH\u0016J
    30: public final class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    31:     private final List<Pair<String, String>> attachedDbs;
    32:     private final SQLiteDatabase delegate;
    33:     private static final String[] CONFLICT_VALUES = {"", ProtectedFastSSH.s("⓱"), ProtectedFastSSH.s("⓲"), ProtectedFastSSH.s("⓳"), ProtectedFastSSH.s("⓯"), ProtectedFastSSH.s("⓰")};
    34:     private static final String[] EMPTY_STRING_ARRAY = new String[0];
    35: 
    36:     @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J1\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\nH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$Api30Impl;", "", "()V", "execPerConnectionSQL", "", "sQLiteDatabase", "Landroid/database/sqlite/SQLiteDatabase;", "sql", "", "bindArgs", "", "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V", "sqlite-framework_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    37:     public static final class Api30Impl {
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.java:239 (update_general; file score 15)

```java
   233:     @Override
   234:     public boolean isWriteAheadLoggingEnabled() {
   235:         return SupportSQLiteCompat.Api16Impl.isWriteAheadLoggingEnabled(this.delegate);
   236:     }
   237: 
   238:     @Override
   239:     public boolean needUpgrade(int newVersion) {
   240:         return this.delegate.needUpgrade(newVersion);
   241:     }
   242: 
   243:     @Override
   244:     public Cursor query(SupportSQLiteQuery query) {
   245:         Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("│"));
   246:         Cursor cursorRawQueryWithFactory = this.delegate.rawQueryWithFactory(new FrameworkSQLiteDatabase$$ExternalSyntheticLambda1(new FrameworkSQLiteDatabase$query$cursorFactory$1(query)), query.getQuery(), EMPTY_STRING_ARRAY, null);
   247:         Intrinsics.checkNotNullExpressionValue(cursorRawQueryWithFactory, ProtectedFastSSH.s("┃"));
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteDatabase.java:240 (update_general; file score 15)

```java
   234:     public boolean isWriteAheadLoggingEnabled() {
   235:         return SupportSQLiteCompat.Api16Impl.isWriteAheadLoggingEnabled(this.delegate);
   236:     }
   237: 
   238:     @Override
   239:     public boolean needUpgrade(int newVersion) {
   240:         return this.delegate.needUpgrade(newVersion);
   241:     }
   242: 
   243:     @Override
   244:     public Cursor query(SupportSQLiteQuery query) {
   245:         Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("│"));
   246:         Cursor cursorRawQueryWithFactory = this.delegate.rawQueryWithFactory(new FrameworkSQLiteDatabase$$ExternalSyntheticLambda1(new FrameworkSQLiteDatabase$query$cursorFactory$1(query)), query.getQuery(), EMPTY_STRING_ARRAY, null);
   247:         Intrinsics.checkNotNullExpressionValue(cursorRawQueryWithFactory, ProtectedFastSSH.s("┃"));
   248:         return cursorRawQueryWithFactory;
```

## jadx/sources/org/conscrypt/Conscrypt.java:180 (update_strong; file score 15)

```java
   174:         } catch (Throwable th2) {
   175:             th = th2;
   176:         }
   177:         if (i4 < 0 || i2 < 0 || i3 < 0) {
   178:             VERSION = null;
   179:         } else {
   180:             VERSION = new Version(i4, i2, i3, null);
   181:         }
   182:     }
   183: 
   184:     private Conscrypt() {
   185:     }
   186: 
   187:     public static void checkAvailability() {
   188:         NativeCrypto.checkAvailability();
```

## decoded/AndroidManifest.xml:2 (update_general; file score 14)

```java
     1: <?xml version="1.0" encoding="utf-8"?>
     2: <manifest xmlns:android="http://schemas.android.com/apk/res/android" android:compileSdkVersion="36" android:compileSdkVersionCodename="16" package="com.hatunnel.plus" platformBuildVersionCode="36" platformBuildVersionName="16">
     3:     <uses-permission android:name="android.permission.INTERNET"/>
     4:     <uses-permission android:name="android.permission.FOREGROUND_SERVICE"/>
     5:     <uses-permission android:name="android.permission.FOREGROUND_SERVICE_SPECIAL_USE"/>
     6:     <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
     7:     <uses-permission android:name="android.permission.VIBRATE"/>
     8:     <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
     9:     <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    10:     <uses-permission android:name="android.permission.ACCESS_MEDIA_LOCATION"/>
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali:1 (update_general; file score 14)

```java
     1: .class final Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;
     2: .super Lkotlin/jvm/internal/Lambda;
     3: .source "AutoClosingRoomOpenHelper.kt"
     4: 
     5: # interfaces
     6: .implements Lkotlin/jvm/functions/Function1;
     7: 
     8: 
     9: # annotations
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali:11 (update_general; file score 14)

```java
     5: # interfaces
     6: .implements Lkotlin/jvm/functions/Function1;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->needUpgrade(I)Z
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x18
    16:     name = null
    17: .end annotation
    18: 
    19: .annotation system Ldalvik/annotation/Signature;
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali:52 (update_general; file score 14)

```java
    46:     }
    47:     xi = 0x30
    48: .end annotation
    49: 
    50: 
    51: # instance fields
    52: .field final synthetic $newVersion:I
    53: 
    54: 
    55: # direct methods
    56: .method constructor <init>(I)V
    57:     .locals 0
    58: 
    59:     iput p1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;->$newVersion:I
    60: 
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali:81 (update_general; file score 14)

```java
    75:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    76: 
    77:     move-result-object v0
    78: 
    79:     invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    80: 
    81:     iget v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;->$newVersion:I
    82: 
    83:     invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z
    84: 
    85:     move-result p1
    86: 
    87:     invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    88: 
    89:     move-result-object p1
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.smali:99 (update_general; file score 14)

```java
    93: 
    94: .method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    95:     .locals 0
    96: 
    97:     check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;
    98: 
    99:     invoke-virtual {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;->invoke(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;
   100: 
   101:     move-result-object p1
   102: 
   103:     return-object p1
   104: .end method
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali:89 (update_general; file score 14)

```java
    83:         "(Ljava/lang/String;[Ljava/lang/Object;)V",
    84:         "inTransaction",
    85:         "insert",
    86:         "conflictAlgorithm",
    87:         "values",
    88:         "Landroid/content/ContentValues;",
    89:         "needUpgrade",
    90:         "newVersion",
    91:         "pokeOpen",
    92:         "query",
    93:         "Landroid/database/Cursor;",
    94:         "Landroidx/sqlite/db/SupportSQLiteQuery;",
    95:         "cancellationSignal",
    96:         "Landroid/os/CancellationSignal;",
    97:         "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali:90 (update_general; file score 14)

```java
    84:         "inTransaction",
    85:         "insert",
    86:         "conflictAlgorithm",
    87:         "values",
    88:         "Landroid/content/ContentValues;",
    89:         "needUpgrade",
    90:         "newVersion",
    91:         "pokeOpen",
    92:         "query",
    93:         "Landroid/database/Cursor;",
    94:         "Landroidx/sqlite/db/SupportSQLiteQuery;",
    95:         "cancellationSignal",
    96:         "Landroid/os/CancellationSignal;",
    97:         "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
    98:         "setForeignKeyConstraintsEnabled",
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali:834 (update_general; file score 14)

```java
   828: 
   829:     move-result v0
   830: 
   831:     return v0
   832: .end method
   833: 
   834: .method public needUpgrade(I)Z
   835:     .locals 2
   836: 
   837:     iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;
   838: 
   839:     new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;
   840: 
   841:     invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;-><init>(I)V
   842: 
```

## decoded/smali/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase.smali:841 (update_general; file score 14)

```java
   835:     .locals 2
   836: 
   837:     iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->autoCloser:Landroidx/room/AutoCloser;
   838: 
   839:     new-instance v1, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;
   840: 
   841:     invoke-direct {v1, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1;-><init>(I)V
   842: 
   843:     check-cast v1, Lkotlin/jvm/functions/Function1;
   844: 
   845:     invoke-virtual {v0, v1}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
   846: 
   847:     move-result-object p1
   848: 
   849:     check-cast p1, Ljava/lang/Boolean;
```

## decoded/smali/androidx/room/QueryInterceptorDatabase.smali:84 (update_general; file score 14)

```java
    78:         "execSQL",
    79:         "inTransaction",
    80:         "insert",
    81:         "conflictAlgorithm",
    82:         "values",
    83:         "Landroid/content/ContentValues;",
    84:         "needUpgrade",
    85:         "newVersion",
    86:         "query",
    87:         "Landroid/database/Cursor;",
    88:         "Landroidx/sqlite/db/SupportSQLiteQuery;",
    89:         "cancellationSignal",
    90:         "Landroid/os/CancellationSignal;",
    91:         "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
    92:         "setForeignKeyConstraintsEnabled",
```

## decoded/smali/androidx/room/QueryInterceptorDatabase.smali:1117 (update_general; file score 14)

```java
  1111: 
  1112:     move-result v0
  1113: 
  1114:     return v0
  1115: .end method
  1116: 
  1117: .method public needUpgrade(I)Z
  1118:     .locals 1
  1119: 
  1120:     iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;
  1121: 
  1122:     invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z
  1123: 
  1124:     move-result p1
  1125: 
```

## decoded/smali/androidx/room/QueryInterceptorDatabase.smali:1122 (update_general; file score 14)

```java
  1116: 
  1117: .method public needUpgrade(I)Z
  1118:     .locals 1
  1119: 
  1120:     iget-object v0, p0, Landroidx/room/QueryInterceptorDatabase;->delegate:Landroidx/sqlite/db/SupportSQLiteDatabase;
  1121: 
  1122:     invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z
  1123: 
  1124:     move-result p1
  1125: 
  1126:     return p1
  1127: .end method
  1128: 
  1129: .method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
  1130:     .locals 3
```

## decoded/smali/androidx/room/RoomOpenHelper.smali:45 (update_general; file score 14)

```java
    39:         "createMasterTableIfNotExists",
    40:         "onConfigure",
    41:         "onCreate",
    42:         "onDowngrade",
    43:         "oldVersion",
    44:         "",
    45:         "newVersion",
    46:         "onOpen",
    47:         "onUpgrade",
    48:         "updateIdentity",
    49:         "Companion",
    50:         "Delegate",
    51:         "ValidationResult",
    52:         "room-runtime_release"
    53:     }
```

## decoded/smali/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.smali:31 (update_general; file score 14)

```java
    25:         "db",
    26:         "Landroidx/sqlite/db/SupportSQLiteDatabase;",
    27:         "onOpen",
    28:         "onUpgrade",
    29:         "oldVersion",
    30:         "",
    31:         "newVersion",
    32:         "room-runtime_release"
    33:     }
    34:     k = 0x1
    35:     mv = {
    36:         0x1,
    37:         0x7,
    38:         0x1
    39:     }
```

## decoded/smali/androidx/sqlite/db/SupportSQLiteOpenHelper$Callback.smali:47 (update_general; file score 14)

```java
    41:         "db",
    42:         "Landroidx/sqlite/db/SupportSQLiteDatabase;",
    43:         "onCorruption",
    44:         "onCreate",
    45:         "onDowngrade",
    46:         "oldVersion",
    47:         "newVersion",
    48:         "onOpen",
    49:         "onUpgrade",
    50:         "Companion",
    51:         "sqlite_release"
    52:     }
    53:     k = 0x1
    54:     mv = {
    55:         0x1,
```

## decoded/smali/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper.smali:72 (update_general; file score 14)

```java
    66:         "onConfigure",
    67:         "db",
    68:         "onCreate",
    69:         "onDowngrade",
    70:         "oldVersion",
    71:         "",
    72:         "newVersion",
    73:         "onOpen",
    74:         "onUpgrade",
    75:         "CallbackException",
    76:         "CallbackName",
    77:         "Companion",
    78:         "sqlite-framework_release"
    79:     }
    80:     k = 0x1
```

## jadx/sources/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.java:11 (update_general; file score 14)

```java
     5: import kotlin.Metadata;
     6: import kotlin.jvm.functions.Function1;
     7: import kotlin.jvm.internal.Intrinsics;
     8: import kotlin.jvm.internal.Lambda;
     9: 
    10: @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "invoke", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1}, xi = 48)
    11: final class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1 extends Lambda implements Function1<SupportSQLiteDatabase, Boolean> {
    12:     final int $newVersion;
    13: 
    14:     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    15:     AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1(int i) {
    16:         super(1);
    17:         this.$newVersion = i;
    18:     }
    19: 
```

## jadx/sources/androidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1.java:22 (update_general; file score 14)

```java
    16:         super(1);
    17:         this.$newVersion = i;
    18:     }
    19: 
    20:     public final Boolean invoke2(SupportSQLiteDatabase supportSQLiteDatabase) {
    21:         Intrinsics.checkNotNullParameter(supportSQLiteDatabase, ProtectedFastSSH.s("↋"));
    22:         return Boolean.valueOf(supportSQLiteDatabase.needUpgrade(this.$newVersion));
    23:     }
    24: 
    25:     @Override
    26:     public Boolean invoke(SupportSQLiteDatabase supportSQLiteDatabase) {
    27:         return invoke2(supportSQLiteDatabase);
    28:     }
    29: }
```

## jadx/sources/androidx/room/AutoClosingRoomOpenHelper.java:39 (update_general; file score 14)

```java
    33: @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\u001a\u001b\u001cB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0097\u0001R\u0010\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\nX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u0001X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020
    34: public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    35:     public final AutoCloser autoCloser;
    36:     private final AutoClosingSupportSQLiteDatabase autoClosingDb;
    37:     private final SupportSQLiteOpenHelper delegate;
    38: 
    39:     @Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020%H\u0016J\u0010\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020%2\u0006\u0010(\u001a\u00020)H\u0016J\b\u0010+\u001a\u00020%H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\bH\u0016J3
    40:     public static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {
    41:         private final AutoCloser autoCloser;
    42: 
    43:         public AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
    44:             Intrinsics.checkNotNullParameter(autoCloser, ProtectedFastSSH.s("↟"));
    45:             this.autoCloser = autoCloser;
    46:         }
    47: 
```

## jadx/sources/androidx/room/AutoClosingRoomOpenHelper.java:227 (update_general; file score 14)

```java
   221:         @Override
   222:         public boolean isWriteAheadLoggingEnabled() {
   223:             return ((Boolean) this.autoCloser.executeRefCountingFunction(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1.INSTANCE)).booleanValue();
   224:         }
   225: 
   226:         @Override
   227:         public boolean needUpgrade(int newVersion) {
   228:             return ((Boolean) this.autoCloser.executeRefCountingFunction(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1(newVersion))).booleanValue();
   229:         }
   230: 
   231:         public final void pokeOpen() {
   232:             this.autoCloser.executeRefCountingFunction(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pokeOpen$1.INSTANCE);
   233:         }
   234: 
   235:         @Override
```

## jadx/sources/androidx/room/QueryInterceptorDatabase.java:21 (update_general; file score 14)

```java
    15: import java.util.concurrent.Executor;
    16: import kotlin.Metadata;
    17: import kotlin.collections.ArraysKt;
    18: import kotlin.collections.CollectionsKt;
    19: import kotlin.jvm.internal.Intrinsics;
    20: 
    21: @Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020(2\u0006\u0010+\u00
    22: public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    23:     private final SupportSQLiteDatabase delegate;
    24:     private final RoomDatabase.QueryCallback queryCallback;
    25:     private final Executor queryCallbackExecutor;
    26: 
    27:     public static void $r8$lambda$1b2mlPIXK1QKY1GFTSkGFjFbW9Q(QueryInterceptorDatabase queryInterceptorDatabase, String str, List list) {
    28:         execSQL$lambda$11(queryInterceptorDatabase, str, list);
    29:     }
```

## jadx/sources/androidx/room/QueryInterceptorDatabase.java:304 (update_general; file score 14)

```java
   298:     @Override
   299:     public boolean isWriteAheadLoggingEnabled() {
   300:         return this.delegate.isWriteAheadLoggingEnabled();
   301:     }
   302: 
   303:     @Override
   304:     public boolean needUpgrade(int newVersion) {
   305:         return this.delegate.needUpgrade(newVersion);
   306:     }
   307: 
   308:     @Override
   309:     public Cursor query(SupportSQLiteQuery query) {
   310:         Intrinsics.checkNotNullParameter(query, ProtectedFastSSH.s("≛"));
   311:         QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
   312:         query.bindTo(queryInterceptorProgram);
```

## jadx/sources/androidx/room/RoomOpenHelper.java:18 (update_general; file score 14)

```java
    12: import kotlin.Deprecated;
    13: import kotlin.Metadata;
    14: import kotlin.io.CloseableKt;
    15: import kotlin.jvm.internal.DefaultConstructorMarker;
    16: import kotlin.jvm.internal.Intrinsics;
    17: 
    18: @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b\u0017\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J \u0010\u0012\u001a\u
    19: public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {
    20: 
    21:     public static final Companion INSTANCE = new Companion(null);
    22:     private DatabaseConfiguration configuration;
    23:     private final Delegate delegate;
    24:     private final String identityHash;
    25:     private final String legacyHash;
    26: 
```

## jadx/sources/androidx/room/RoomOpenHelper.java:214 (update_general; file score 14)

```java
   208:         }
   209:         updateIdentity(db);
   210:         this.delegate.onCreate(db);
   211:     }
   212: 
   213:     @Override
   214:     public void onDowngrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
   215:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋝"));
   216:         onUpgrade(db, oldVersion, newVersion);
   217:     }
   218: 
   219:     @Override
   220:     public void onOpen(SupportSQLiteDatabase db) throws IOException {
   221:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋝"));
   222:         super.onOpen(db);
```

## jadx/sources/androidx/room/RoomOpenHelper.java:229 (update_general; file score 14)

```java
   223:         checkIdentity(db);
   224:         this.delegate.onOpen(db);
   225:         this.configuration = null;
   226:     }
   227: 
   228:     @Override
   229:     public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
   230:         List<Migration> listFindMigrationPath;
   231:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋝"));
   232:         DatabaseConfiguration databaseConfiguration = this.configuration;
   233:         if (databaseConfiguration == null || (listFindMigrationPath = databaseConfiguration.migrationContainer.findMigrationPath(oldVersion, newVersion)) == null) {
   234:             DatabaseConfiguration databaseConfiguration2 = this.configuration;
   235:             if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(oldVersion, newVersion)) {
   236:                 this.delegate.dropAllTables(db);
   237:                 this.delegate.createAllTables(db);
```

## jadx/sources/androidx/room/RoomOpenHelper.java:233 (update_general; file score 14)

```java
   227: 
   228:     @Override
   229:     public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
   230:         List<Migration> listFindMigrationPath;
   231:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋝"));
   232:         DatabaseConfiguration databaseConfiguration = this.configuration;
   233:         if (databaseConfiguration == null || (listFindMigrationPath = databaseConfiguration.migrationContainer.findMigrationPath(oldVersion, newVersion)) == null) {
   234:             DatabaseConfiguration databaseConfiguration2 = this.configuration;
   235:             if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(oldVersion, newVersion)) {
   236:                 this.delegate.dropAllTables(db);
   237:                 this.delegate.createAllTables(db);
   238:                 return;
   239:             }
   240:             throw new IllegalStateException(ProtectedFastSSH.s("⋟") + oldVersion + ProtectedFastSSH.s("⋠") + newVersion + ProtectedFastSSH.s("⋡"));
   241:         }
```

## jadx/sources/androidx/room/RoomOpenHelper.java:240 (update_general; file score 14)

```java
   234:             DatabaseConfiguration databaseConfiguration2 = this.configuration;
   235:             if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(oldVersion, newVersion)) {
   236:                 this.delegate.dropAllTables(db);
   237:                 this.delegate.createAllTables(db);
   238:                 return;
   239:             }
   240:             throw new IllegalStateException(ProtectedFastSSH.s("⋟") + oldVersion + ProtectedFastSSH.s("⋠") + newVersion + ProtectedFastSSH.s("⋡"));
   241:         }
   242:         this.delegate.onPreMigrate(db);
   243:         Iterator<T> it = listFindMigrationPath.iterator();
   244:         while (it.hasNext()) {
   245:             ((Migration) it.next()).migrate(db);
   246:         }
   247:         ValidationResult validationResultOnValidateSchema = this.delegate.onValidateSchema(db);
   248:         if (validationResultOnValidateSchema.isValid) {
```

## jadx/sources/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.java:9 (update_general; file score 14)

```java
     3: import androidx.sqlite.db.SupportSQLiteDatabase;
     4: import androidx.sqlite.db.SupportSQLiteOpenHelper;
     5: import app.fast.ssh.ProtectedFastSSH;
     6: import kotlin.Metadata;
     7: import kotlin.jvm.internal.Intrinsics;
     8: 
     9: @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "onCreate", "", "db", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "onOpen", "onUpgrade", "oldVersion", "", "newVersion", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    10: public final class SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1 extends SupportSQLiteOpenHelper.Callback {
    11:     final int $version;
    12: 
    13:     /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    14:     SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1(int i, int i2) {
    15:         super(i2);
    16:         this.$version = i;
    17:     }
```

## jadx/sources/androidx/room/SQLiteCopyOpenHelper$createFrameworkOpenHelper$configuration$1.java:34 (update_general; file score 14)

```java
    28:         if (i < 1) {
    29:             db.setVersion(i);
    30:         }
    31:     }
    32: 
    33:     @Override
    34:     public void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
    35:         Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⌆"));
    36:     }
    37: }
```

## jadx/sources/androidx/sqlite/db/SupportSQLiteDatabase.java:16 (update_general; file score 14)

```java
    10: import java.io.Closeable;
    11: import java.util.List;
    12: import java.util.Locale;
    13: import kotlin.Metadata;
    14: import kotlin.jvm.internal.Intrinsics;
    15: 
    16: @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\bf\u0018\u00002\u00020\u0001J\b\u0010!\u001a\u00020\"H&J\b\u0010#\u001a\u00020\"H&J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010'\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H&J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005H&J3\u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010\u00052\u0012\u0010.\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u000100\u0018\u00010/H
    17: public interface SupportSQLiteDatabase extends Closeable {
    18: 
    19:     public final class CC {
    20:         public static void $default$execPerConnectionSQL(SupportSQLiteDatabase supportSQLiteDatabase, String str, Object[] objArr) {
    21:             Intrinsics.checkNotNullParameter(str, ProtectedFastSSH.s("ⓕ"));
    22:             throw new UnsupportedOperationException();
    23:         }
    24: 
```

## jadx/sources/androidx/sqlite/db/SupportSQLiteDatabase.java:80 (update_general; file score 14)

```java
    74:     boolean isOpen();
    75: 
    76:     boolean isReadOnly();
    77: 
    78:     boolean isWriteAheadLoggingEnabled();
    79: 
    80:     boolean needUpgrade(int newVersion);
    81: 
    82:     Cursor query(SupportSQLiteQuery query);
    83: 
    84:     Cursor query(SupportSQLiteQuery query, CancellationSignal cancellationSignal);
    85: 
    86:     Cursor query(String query);
    87: 
    88:     Cursor query(String query, Object[] bindArgs);
```

## jadx/sources/androidx/sqlite/db/SupportSQLiteOpenHelper.java:21 (update_general; file score 14)

```java
    15: import kotlin.jvm.internal.Intrinsics;
    16: import kotlin.text.StringsKt;
    17: 
    18: @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H'R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Ljava/io/Closeable;", "databaseName", "", "getDatabaseName", "()Ljava/lang/String;", "readableDatabase", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getReadableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "wr
    19: public interface SupportSQLiteOpenHelper extends Closeable {
    20: 
    21:     @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H&R\u
    22:     public static abstract class Callback {
    23:         public final int version;
    24:         private static final String TAG = ProtectedFastSSH.s("⋊");
    25: 
    26:         public Callback(int i) {
    27:             this.version = i;
    28:         }
    29: 
```

## jadx/sources/androidx/sqlite/db/SupportSQLiteOpenHelper.java:113 (update_general; file score 14)

```java
   107:                 return;
   108:             }
   109:         }
   110: 
   111:         public abstract void onCreate(SupportSQLiteDatabase db);
   112: 
   113:         public void onDowngrade(SupportSQLiteDatabase db, int oldVersion, int newVersion) {
   114:             Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋎"));
   115:             throw new SQLiteException(ProtectedFastSSH.s("⋒") + oldVersion + ProtectedFastSSH.s("⋓") + newVersion);
   116:         }
   117: 
   118:         public void onOpen(SupportSQLiteDatabase db) {
   119:             Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋎"));
   120:         }
   121: 
```

## jadx/sources/androidx/sqlite/db/SupportSQLiteOpenHelper.java:122 (update_general; file score 14)

```java
   116:         }
   117: 
   118:         public void onOpen(SupportSQLiteDatabase db) {
   119:             Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("⋎"));
   120:         }
   121: 
   122:         public abstract void onUpgrade(SupportSQLiteDatabase db, int oldVersion, int newVersion);
   123:     }
   124: 
   125:     @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \r2\u00020\u0001:\u0002\f\rB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bR\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;", "", "context", "Landroid/content/Context;", "n
   126:     public static final class Configuration {
   127: 
   128:         public static final Companion INSTANCE = new Companion(null);
   129:         public final boolean allowDataLossOnRecovery;
   130:         public final Callback callback;
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java:48 (update_general; file score 14)

```java
    42: 
    43:         public final void setDb(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
    44:             this.db = frameworkSQLiteDatabase;
    45:         }
    46:     }
    47: 
    48:     @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\b\u0002\u0018\u0000 /2\u00020\u0001:\u0003-./B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002J\u0010\u0010#\u001a\u00020!2\u0006\u0010\u001d
    49:     static final class OpenHelper extends SQLiteOpenHelper {
    50: 
    51:         public static final Companion INSTANCE = new Companion(null);
    52:         private final boolean allowDataLossOnRecovery;
    53:         private final SupportSQLiteOpenHelper.Callback callback;
    54:         private final Context context;
    55:         private final DBRefHolder dbRef;
    56:         private final ProcessLock lock;
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java:305 (update_general; file score 14)

```java
   299:             } catch (Throwable th) {
   300:                 throw new CallbackException(CallbackName.ON_CREATE, th);
   301:             }
   302:         }
   303: 
   304:         @Override
   305:         public void onDowngrade(SQLiteDatabase db, int oldVersion, int newVersion) {
   306:             Intrinsics.checkNotNullParameter(db, ProtectedFastSSH.s("┟"));
   307:             this.migrated = true;
   308:             try {
   309:                 this.callback.onDowngrade(getWrappedDb(db), oldVersion, newVersion);
   310:             } catch (Throwable th) {
   311:                 throw new CallbackException(CallbackName.ON_DOWNGRADE, th);
   312:             }
   313:         }
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java:329 (update_general; file score 14)

```java
   323:                 }
   324:             }
   325:             this.opened = true;
   326:         }
   327: 
   328:         @Override
   329:         public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
   330:             Intrinsics.checkNotNullParameter(sqLiteDatabase, ProtectedFastSSH.s("┞"));
   331:             this.migrated = true;
   332:             try {
   333:                 this.callback.onUpgrade(getWrappedDb(sqLiteDatabase), oldVersion, newVersion);
   334:             } catch (Throwable th) {
   335:                 throw new CallbackException(CallbackName.ON_UPGRADE, th);
   336:             }
   337:         }
```

## jadx/sources/androidx/sqlite/db/framework/FrameworkSQLiteOpenHelper.java:333 (update_general; file score 14)

```java
   327: 
   328:         @Override
   329:         public void onUpgrade(SQLiteDatabase sqLiteDatabase, int oldVersion, int newVersion) {
   330:             Intrinsics.checkNotNullParameter(sqLiteDatabase, ProtectedFastSSH.s("┞"));
   331:             this.migrated = true;
   332:             try {
   333:                 this.callback.onUpgrade(getWrappedDb(sqLiteDatabase), oldVersion, newVersion);
   334:             } catch (Throwable th) {
   335:                 throw new CallbackException(CallbackName.ON_UPGRADE, th);
   336:             }
   337:         }
   338:     }
   339: 
   340:     /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
   341:     public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback) {
```

## jadx/sources/com/google/android/gms/ads/internal/util/client/VersionInfoParcel.java:47 (update_strong; file score 13)

```java
    41:         this.clientJarVersion = i2;
    42:         this.isClientJar = z;
    43:         this.isLiteSdk = z2;
    44:     }
    45: 
    46:     public static VersionInfoParcel forPackage() {
    47:         return new VersionInfoParcel(12451000, 12451000, true);
    48:     }
    49: 
    50:     @Override
    51:     public void writeToParcel(Parcel parcel, int i) {
    52:         int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
    53:         SafeParcelWriter.writeString(parcel, 2, this.afmaVersion, false);
    54:         SafeParcelWriter.writeInt(parcel, 3, this.buddyApkVersion);
    55:         SafeParcelWriter.writeInt(parcel, 4, this.clientJarVersion);
```

## jadx/sources/com/google/android/gms/internal/ads/zzeod.java:61 (update_strong; file score 13)

```java
    55:         try {
    56:             CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
    57:             customTabsIntentBuild.intent.setData(uri);
    58:             com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent, null);
    59:             zzcgo zzcgoVar = new zzcgo();
    60:             zzdmy zzdmyVarZzd = this.zzb.zzd(new zzczb(zzfloVar, zzfldVar, null), new zzdnb(new zzeob(this, zzcgoVar, zzfldVar), null));
    61:             zzcgoVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzdmyVarZzd.zzi(), null, new VersionInfoParcel(0, 0, false), null, null, zzflgVar.zzb));
    62:             this.zzd.zzd();
    63:             return zzhcy.zza(zzdmyVarZzd.zzh());
    64:         } catch (Throwable th) {
    65:             int i = com.google.android.gms.ads.internal.util.zze.zza;
    66:             com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("棻"), th);
    67:             throw th;
    68:         }
    69:     }
```

## jadx/sources/com/google/android/gms/internal/ads/zzfms.java:92 (update_strong; file score 13)

```java
    86:     }
    87: 
    88:     public final VersionInfoParcel zzb(int i, boolean z, int i2) {
    89:         com.google.android.gms.ads.internal.client.zzez zzezVarZzg;
    90:         com.google.android.gms.ads.internal.zzt.zzc();
    91:         boolean zZzH = com.google.android.gms.ads.internal.util.zzs.zzH(this.zzb);
    92:         VersionInfoParcel versionInfoParcel = new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i2, true, zZzH);
    93:         return (((Boolean) zzbli.zzc.zze()).booleanValue() && (zzezVarZzg = zzg()) != null) ? new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, zzezVarZzg.zza(), true, zZzH) : versionInfoParcel;
    94:     }
    95: 
    96:     public final void zzc(zzbvu zzbvuVar) {
    97:         zzbvu adapterCreator;
    98:         if (!((Boolean) zzbli.zza.zze()).booleanValue()) {
    99:             AtomicReference$$ExternalSyntheticBackportWithForwarding0.m(this.zzd, null, zzbvuVar);
   100:             return;
```

## decoded/smali/androidx/room/InvalidationTracker$refreshRunnable$1.smali:30 (update_strong; file score 12)

```java
    24:     d1 = {
    25:         "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    26:     }
    27:     d2 = {
    28:         "androidx/room/InvalidationTracker$refreshRunnable$1",
    29:         "Ljava/lang/Runnable;",
    30:         "checkUpdatedTable",
    31:         "",
    32:         "",
    33:         "run",
    34:         "",
    35:         "room-runtime_release"
    36:     }
    37:     k = 0x1
    38:     mv = {
```

## decoded/smali/androidx/room/InvalidationTracker$refreshRunnable$1.smali:62 (update_strong; file score 12)

```java
    56: 
    57:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    58: 
    59:     return-void
    60: .end method
    61: 
    62: .method private final checkUpdatedTable()Ljava/util/Set;
    63:     .locals 5
    64:     .annotation system Ldalvik/annotation/Signature;
    65:         value = {
    66:             "()",
    67:             "Ljava/util/Set<",
    68:             "Ljava/lang/Integer;",
    69:             ">;"
    70:         }
```

## decoded/smali/androidx/room/InvalidationTracker$refreshRunnable$1.smali:356 (update_strong; file score 12)

```java
   350:     :try_end_3
   351:     .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
   352:     .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
   353:     .catchall {:try_start_3 .. :try_end_3} :catchall_1
   354: 
   355:     :try_start_4
   356:     invoke-direct {p0}, Landroidx/room/InvalidationTracker$refreshRunnable$1;->checkUpdatedTable()Ljava/util/Set;
   357: 
   358:     move-result-object v2
   359: 
   360:     invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
   361:     :try_end_4
   362:     .catchall {:try_start_4 .. :try_end_4} :catchall_0
   363: 
   364:     :try_start_5
```

## decoded/smali/androidx/sqlite/db/SupportSQLiteDatabase.smali:77 (update_general; file score 12)

```java
    71:         "execSQL",
    72:         "inTransaction",
    73:         "insert",
    74:         "conflictAlgorithm",
    75:         "values",
    76:         "Landroid/content/ContentValues;",
    77:         "needUpgrade",
    78:         "newVersion",
    79:         "query",
    80:         "Landroid/database/Cursor;",
    81:         "Landroidx/sqlite/db/SupportSQLiteQuery;",
    82:         "cancellationSignal",
    83:         "Landroid/os/CancellationSignal;",
    84:         "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;",
    85:         "setForeignKeyConstraintsEnabled",
```

## decoded/smali/androidx/sqlite/db/SupportSQLiteDatabase.smali:212 (update_general; file score 12)

```java
   206: .method public abstract isReadOnly()Z
   207: .end method
   208: 
   209: .method public abstract isWriteAheadLoggingEnabled()Z
   210: .end method
   211: 
   212: .method public abstract needUpgrade(I)Z
   213: .end method
   214: 
   215: .method public abstract query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
   216: .end method
   217: 
   218: .method public abstract query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
   219: .end method
   220: 
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:188 (update_general; file score 12)

```java
   182:     return-object p1
   183: .end method
   184: 
   185: .method static synthetic access$200(Lapp/fast/ssh/dialog/AddTimeDialog;)I
   186:     .locals 0
   187: 
   188:     invoke-direct {p0}, Lapp/fast/ssh/dialog/AddTimeDialog;->appVersionCode()I
   189: 
   190:     move-result p0
   191: 
   192:     return p0
   193: .end method
   194: 
   195: .method static synthetic access$300(Lapp/fast/ssh/dialog/AddTimeDialog;)Ljava/lang/String;
   196:     .locals 0
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:229 (update_general; file score 12)

```java
   223: 
   224:     iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerContainer:Landroid/widget/LinearLayout;
   225: 
   226:     return-object p0
   227: .end method
   228: 
   229: .method private appVersionCode()I
   230:     .locals 3
   231: 
   232:     .prologue
   233:     const/4 v0, 0x0
   234: 
   235:     :try_start_0
   236:     iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;
   237: 
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:252 (update_general; file score 12)

```java
   246:     move-result-object v2
   247: 
   248:     invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
   249: 
   250:     move-result-object v1
   251: 
   252:     iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
   253:     :try_end_0
   254:     .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
   255: 
   256:     :catch_0
   257:     return v0
   258: .end method
   259: 
   260: .method public static configure(Lorg/json/JSONObject;)V
```

## jadx/sources/androidx/room/InvalidationTracker$refreshRunnable$1.java:20 (update_strong; file score 12)

```java
    14: import java.util.concurrent.locks.Lock;
    15: import kotlin.Metadata;
    16: import kotlin.Unit;
    17: import kotlin.collections.SetsKt;
    18: import kotlin.io.CloseableKt;
    19: 
    20: @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"androidx/room/InvalidationTracker$refreshRunnable$1", "Ljava/lang/Runnable;", "checkUpdatedTable", "", "", "run", "", "room-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    21: public final class InvalidationTracker$refreshRunnable$1 implements Runnable {
    22:     final InvalidationTracker this$0;
    23: 
    24:     InvalidationTracker$refreshRunnable$1(InvalidationTracker invalidationTracker) {
    25:         this.this$0 = invalidationTracker;
    26:     }
    27: 
    28:     private final Set<Integer> checkUpdatedTable() throws IOException {
```

## jadx/sources/androidx/room/InvalidationTracker$refreshRunnable$1.java:102 (update_strong; file score 12)

```java
    96:                     }
    97:                     return;
    98:                 }
    99:                 SupportSQLiteDatabase writableDatabase = this.this$0.getDatabase().getOpenHelper().getWritableDatabase();
   100:                 writableDatabase.beginTransactionNonExclusive();
   101:                 try {
   102:                     setEmptySet = checkUpdatedTable();
   103:                     writableDatabase.setTransactionSuccessful();
   104:                     writableDatabase.endTransaction();
   105:                     closeLock$room_runtime_release.unlock();
   106:                     autoCloserAccess$getAutoCloser$p = InvalidationTracker.access$getAutoCloser$p(this.this$0);
   107:                     if (autoCloserAccess$getAutoCloser$p != null) {
   108:                         autoCloserAccess$getAutoCloser$p.decrementCountAndScheduleClose();
   109:                     }
   110:                     if (setEmptySet.isEmpty()) {
```

## jadx/sources/androidx/versionedparcelable/ParcelUtils.java:19 (update_strong; file score 12)

```java
    13:     private static final String INNER_BUNDLE_KEY = ProtectedFastSSH.s("♋");
    14: 
    15:     private ParcelUtils() {
    16:     }
    17: 
    18:     public static <T extends VersionedParcelable> T fromInputStream(InputStream inputStream) {
    19:         return (T) new VersionedParcelStream(inputStream, null).readVersionedParcelable();
    20:     }
    21: 
    22:     public static <T extends VersionedParcelable> T fromParcelable(Parcelable parcelable) {
    23:         if (parcelable instanceof ParcelImpl) {
    24:             return (T) ((ParcelImpl) parcelable).getVersionedParcel();
    25:         }
    26:         throw new IllegalArgumentException(ProtectedFastSSH.s("♊"));
    27:     }
```

## jadx/sources/androidx/versionedparcelable/ParcelUtils.java:78 (update_strong; file score 12)

```java
    72:         }
    73:         bundle2.putParcelableArrayList(ProtectedFastSSH.s("♋"), arrayList);
    74:         bundle.putParcelable(str, bundle2);
    75:     }
    76: 
    77:     public static void toOutputStream(VersionedParcelable versionedParcelable, OutputStream outputStream) {
    78:         VersionedParcelStream versionedParcelStream = new VersionedParcelStream(null, outputStream);
    79:         versionedParcelStream.writeVersionedParcelable(versionedParcelable);
    80:         versionedParcelStream.closeField();
    81:     }
    82: 
    83:     public static Parcelable toParcelable(VersionedParcelable versionedParcelable) {
    84:         return new ParcelImpl(versionedParcelable);
    85:     }
    86: }
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelParcel.java:62 (update_strong; file score 12)

```java
    56:         Parcel parcel = this.mParcel;
    57:         int iDataPosition = parcel.dataPosition();
    58:         int i = this.mNextRead;
    59:         if (i == this.mOffset) {
    60:             i = this.mEnd;
    61:         }
    62:         return new VersionedParcelParcel(parcel, iDataPosition, i, this.mPrefix + ProtectedFastSSH.s("♜"), this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    63:     }
    64: 
    65:     @Override
    66:     public boolean readBoolean() {
    67:         return this.mParcel.readInt() != 0;
    68:     }
    69: 
    70:     @Override
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:260 (update_strong; file score 12)

```java
   254:             try {
   255:                 if (fieldBuffer.mOutput.size() != 0) {
   256:                     this.mFieldBuffer.flushField();
   257:                 }
   258:                 this.mFieldBuffer = null;
   259:             } catch (IOException e) {
   260:                 throw new VersionedParcel.ParcelException(e);
   261:             }
   262:         }
   263:     }
   264: 
   265:     @Override
   266:     protected VersionedParcel createSubParcel() {
   267:         return new VersionedParcelStream(this.mCurrentInput, this.mCurrentOutput, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
   268:     }
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:280 (update_strong; file score 12)

```java
   274: 
   275:     @Override
   276:     public boolean readBoolean() {
   277:         try {
   278:             return this.mCurrentInput.readBoolean();
   279:         } catch (IOException e) {
   280:             throw new VersionedParcel.ParcelException(e);
   281:         }
   282:     }
   283: 
   284:     @Override
   285:     public Bundle readBundle() {
   286:         int i = readInt();
   287:         if (i < 0) {
   288:             return null;
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:308 (update_strong; file score 12)

```java
   302:                 return null;
   303:             }
   304:             byte[] bArr = new byte[i];
   305:             this.mCurrentInput.readFully(bArr);
   306:             return bArr;
   307:         } catch (IOException e) {
   308:             throw new VersionedParcel.ParcelException(e);
   309:         }
   310:     }
   311: 
   312:     @Override
   313:     protected CharSequence readCharSequence() {
   314:         return null;
   315:     }
   316: 
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:322 (update_strong; file score 12)

```java
   316: 
   317:     @Override
   318:     public double readDouble() {
   319:         try {
   320:             return this.mCurrentInput.readDouble();
   321:         } catch (IOException e) {
   322:             throw new VersionedParcel.ParcelException(e);
   323:         }
   324:     }
   325: 
   326:     @Override
   327:     public boolean readField(int i) {
   328:         while (true) {
   329:             try {
   330:                 int i2 = this.mFieldId;
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:362 (update_strong; file score 12)

```java
   356: 
   357:     @Override
   358:     public float readFloat() {
   359:         try {
   360:             return this.mCurrentInput.readFloat();
   361:         } catch (IOException e) {
   362:             throw new VersionedParcel.ParcelException(e);
   363:         }
   364:     }
   365: 
   366:     @Override
   367:     public int readInt() {
   368:         try {
   369:             return this.mCurrentInput.readInt();
   370:         } catch (IOException e) {
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:371 (update_strong; file score 12)

```java
   365: 
   366:     @Override
   367:     public int readInt() {
   368:         try {
   369:             return this.mCurrentInput.readInt();
   370:         } catch (IOException e) {
   371:             throw new VersionedParcel.ParcelException(e);
   372:         }
   373:     }
   374: 
   375:     @Override
   376:     public long readLong() {
   377:         try {
   378:             return this.mCurrentInput.readLong();
   379:         } catch (IOException e) {
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:380 (update_strong; file score 12)

```java
   374: 
   375:     @Override
   376:     public long readLong() {
   377:         try {
   378:             return this.mCurrentInput.readLong();
   379:         } catch (IOException e) {
   380:             throw new VersionedParcel.ParcelException(e);
   381:         }
   382:     }
   383: 
   384:     @Override
   385:     public <T extends Parcelable> T readParcelable() {
   386:         return null;
   387:     }
   388: 
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:400 (update_strong; file score 12)

```java
   394:                 return null;
   395:             }
   396:             byte[] bArr = new byte[i];
   397:             this.mCurrentInput.readFully(bArr);
   398:             return new String(bArr, UTF_16);
   399:         } catch (IOException e) {
   400:             throw new VersionedParcel.ParcelException(e);
   401:         }
   402:     }
   403: 
   404:     @Override
   405:     public IBinder readStrongBinder() {
   406:         return null;
   407:     }
   408: 
```

## jadx/sources/androidx/versionedparcelable/VersionedParcelStream.java:430 (update_strong; file score 12)

```java
   424: 
   425:     @Override
   426:     public void writeBoolean(boolean z) {
   427:         try {
   428:             this.mCurrentOutput.writeBoolean(z);
   429:         } catch (IOException e) {
   430:             throw new VersionedParcel.ParcelException(e);
   431:         }
   432:     }
   433: 
   434:     @Override
   435:     public void writeBundle(Bundle bundle) {
   436:         try {
   437:             if (bundle == null) {
   438:                 this.mCurrentOutput.writeInt(-1);
```

Snippets shown: 120. Complete bounded hit indexes are in the corresponding TSV files.