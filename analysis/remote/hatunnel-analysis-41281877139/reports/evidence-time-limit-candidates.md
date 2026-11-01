# Time limit candidates

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/app/fast/ssh/R.java:4297 (time_limit; file score 24)

```java
  4291:         public static final int check_description = 0x7f090092;
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
```

## jadx/sources/app/fast/ssh/R.java:4992 (time_limit; file score 24)

```java
  4986:         public static final int activity_settings = 0x7f0c0022;
  4987:         public static final int activity_voucher = 0x7f0c0023;
  4988:         public static final int admob_empty_layout = 0x7f0c0024;
  4989:         public static final int app_view = 0x7f0c0025;
  4990:         public static final int browser_actions_context_menu_page = 0x7f0c0026;
  4991:         public static final int browser_actions_context_menu_row = 0x7f0c0027;
  4992:         public static final int countdown_dialog = 0x7f0c0028;
  4993:         public static final int custom_dialog = 0x7f0c0029;
  4994:         public static final int custom_realm_dialog = 0x7f0c002a;
  4995:         public static final int debug = 0x7f0c002b;
  4996:         public static final int design_bottom_navigation_item = 0x7f0c002c;
  4997:         public static final int design_bottom_sheet_dialog = 0x7f0c002d;
  4998:         public static final int design_layout_snackbar = 0x7f0c002e;
  4999:         public static final int design_layout_snackbar_include = 0x7f0c002f;
  5000:         public static final int design_layout_tab_icon = 0x7f0c0030;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:71 (time_limit; file score 17)

```java
    65: .field public static final MS_LOCK:Ljava/lang/Object;
    66: 
    67: .field public static SHOW_AD_MS:J
    68: 
    69: .field private static final WHATS_NEW:Ljava/lang/String;
    70: 
    71: .field private static countDownStarted:Z
    72: 
    73: .field private static countDownTimer:Landroid/os/CountDownTimer;
    74: 
    75: .field private static deviceId:Ljava/lang/String;
    76: 
    77: .field private static timerTextRef:Ljava/lang/ref/WeakReference;
    78:     .annotation system Ldalvik/annotation/Signature;
    79:         value = {
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:219 (time_limit; file score 17)

```java
   213: .field private vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;
   214: 
   215: .field private waitDialog:Landroidx/appcompat/app/AlertDialog;
   216: 
   217: .field private waitDialogRequestId:J
   218: 
   219: .field private watchAd_Cooldown:Landroid/os/CountDownTimer;
   220: 
   221: 
   222: # direct methods
   223: .method static constructor <clinit>()V
   224:     .locals 1
   225: 
   226:     const-string/jumbo v0, "\u2ebb"
   227: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:457 (time_limit; file score 17)

```java
   451: 
   452:     iput-boolean p1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z
   453: 
   454:     return p1
   455: .end method
   456: 
   457: .method static synthetic access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;
   458:     .locals 0
   459: 
   460:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->watchAd_Cooldown:Landroid/os/CountDownTimer;
   461: 
   462:     return-object p0
   463: .end method
   464: 
   465: .method static synthetic access$1202(Lapp/fast/ssh/HomeFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:460 (time_limit; file score 17)

```java
   454:     return p1
   455: .end method
   456: 
   457: .method static synthetic access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;
   458:     .locals 0
   459: 
   460:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->watchAd_Cooldown:Landroid/os/CountDownTimer;
   461: 
   462:     return-object p0
   463: .end method
   464: 
   465: .method static synthetic access$1202(Lapp/fast/ssh/HomeFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
   466:     .locals 0
   467: 
   468:     iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->watchAd_Cooldown:Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:595 (time_limit; file score 17)

```java
   589: 
   590:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerButton:Landroid/widget/Button;
   591: 
   592:     return-object p0
   593: .end method
   594: 
   595: .method static synthetic access$2500()Landroid/os/CountDownTimer;
   596:     .locals 1
   597: 
   598:     sget-object v0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;
   599: 
   600:     return-object v0
   601: .end method
   602: 
   603: .method static synthetic access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:603 (time_limit; file score 17)

```java
   597: 
   598:     sget-object v0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;
   599: 
   600:     return-object v0
   601: .end method
   602: 
   603: .method static synthetic access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
   604:     .locals 0
   605: 
   606:     sput-object p0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;
   607: 
   608:     return-object p0
   609: .end method
   610: 
   611: .method static synthetic access$2600()Z
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:614 (time_limit; file score 17)

```java
   608:     return-object p0
   609: .end method
   610: 
   611: .method static synthetic access$2600()Z
   612:     .locals 1
   613: 
   614:     sget-boolean v0, Lapp/fast/ssh/HomeFragment;->countDownStarted:Z
   615: 
   616:     return v0
   617: .end method
   618: 
   619: .method static synthetic access$2602(Z)Z
   620:     .locals 0
   621: 
   622:     sput-boolean p0, Lapp/fast/ssh/HomeFragment;->countDownStarted:Z
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:622 (time_limit; file score 17)

```java
   616:     return v0
   617: .end method
   618: 
   619: .method static synthetic access$2602(Z)Z
   620:     .locals 0
   621: 
   622:     sput-boolean p0, Lapp/fast/ssh/HomeFragment;->countDownStarted:Z
   623: 
   624:     return p0
   625: .end method
   626: 
   627: .method static synthetic access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
   628:     .locals 0
   629: 
   630:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3393 (time_limit; file score 17)

```java
  3387: .end method
  3388: 
  3389: .method private stopAndHideTimer()V
  3390:     .locals 2
  3391: 
  3392:     .prologue
  3393:     sget-object v0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;
  3394: 
  3395:     if-eqz v0, :cond_0
  3396: 
  3397:     invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
  3398: 
  3399:     :cond_0
  3400:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;
  3401: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5752 (time_limit; file score 17)

```java
  5746: 
  5747:     invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeMessageListener(Lapp/fast/ssh/core/VpnStatus$VpnMessageListener;)V
  5748: 
  5749:     return-void
  5750: .end method
  5751: 
  5752: .method public onExpiredState()V
  5753:     .locals 2
  5754: 
  5755:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  5756: 
  5757:     move-result-object v0
  5758: 
  5759:     new-instance v1, Lapp/fast/ssh/HomeFragment$16;
  5760: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5930 (time_limit; file score 17)

```java
  5924: 
  5925:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->fetchAndShowTicker()V
  5926: 
  5927:     return-void
  5928: .end method
  5929: 
  5930: .method public onStartCountdown(J)V
  5931:     .locals 3
  5932: 
  5933:     new-instance v0, Lapp/fast/ssh/Subscription;
  5934: 
  5935:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  5936: 
  5937:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5938: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1047 (time_limit; file score 17)

```java
  1041: 
  1042:     move-result-object v0
  1043: 
  1044:     return-object v0
  1045: 
  1046:     :cond_0
  1047:     invoke-virtual {v0}, Lapp/fast/ssh/PrefsSubscriptionStore;->getTokenExpiresAtMillis()J
  1048: 
  1049:     move-result-wide v2
  1050: 
  1051:     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
  1052: 
  1053:     move-result-wide v4
  1054: 
  1055:     sub-long/2addr v2, v4
```

## jadx/sources/app/fast/ssh/HomeFragment.java:12 (time_limit; file score 17)

```java
     6: import android.content.Intent;
     7: import android.content.SharedPreferences;
     8: import android.media.RingtoneManager;
     9: import android.net.Uri;
    10: import android.os.Build;
    11: import android.os.Bundle;
    12: import android.os.CountDownTimer;
    13: import android.os.Vibrator;
    14: import android.preference.PreferenceManager;
    15: import android.provider.Settings;
    16: import android.util.DisplayMetrics;
    17: import android.view.Display;
    18: import android.view.KeyEvent;
    19: import android.view.LayoutInflater;
    20: import android.view.View;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:97 (time_limit; file score 17)

```java
    91:     public static TimerConf GlobalTimerConf = null;
    92:     private static final int IMPORT_CONFIG = 1013;
    93:     public static long LAST_ACCESS_TOPUP_MILLIS;
    94:     public static long LAST_MILLIS;
    95:     public static long LAST_SESSION_MILLIS;
    96:     public static long SHOW_AD_MS;
    97:     private static boolean countDownStarted;
    98:     private static CountDownTimer countDownTimer;
    99:     private static WeakReference<TextView> timerTextRef;
   100:     private String Adams;
   101:     AlertDialog addTimeDialog2;
   102:     private AdView bannerAd;
   103:     private LinearLayout bannerContainer;
   104:     Button btnSubscribe;
   105:     Button btnWatchAd;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:147 (time_limit; file score 17)

```java
   141:     private LinearLayout timerLayout;
   142:     private TextView timerText;
   143:     private int tunNablic;
   144:     private InterstitialAd updateSuccessInterstitial;
   145:     private VpnConnectionHelper vpnConnectionHelper;
   146:     private AlertDialog waitDialog;
   147:     private CountDownTimer watchAd_Cooldown;
   148:     private static final String KEY_CUSTOM_SNI = ProtectedFastSSH.s("⺻");
   149:     private static final String JOIN_TELEGRAM = ProtectedFastSSH.s("⺼");
   150:     private static final String KEY_CUSTOM_RESOLVER = ProtectedFastSSH.s("⺽");
   151:     private static final String KEY_LOCATION_INDEX = ProtectedFastSSH.s("⺾");
   152:     private static String deviceId = ProtectedFastSSH.s("⺿");
   153:     private static final String DNS_PRIMARY_HOST = ProtectedFastSSH.s("⻀");
   154:     private static final String KEY_CUSTOM_PAYLOAD = ProtectedFastSSH.s("⻁");
   155:     private static final String KEY_USE_TCP_PAYLOAD = ProtectedFastSSH.s("⻂");
```

## jadx/sources/app/fast/ssh/HomeFragment.java:356 (time_limit; file score 17)

```java
   350:     }
   351: 
   352:     class AnonymousClass15 implements Runnable {
   353:         final long val$millis;
   354:         final Subscription val$subscription;
   355: 
   356:         class AnonymousClass1 extends CountDownTimer {
   357:             AnonymousClass1(long j, long j2) {
   358:                 super(j, j2);
   359:             }
   360: 
   361:             @Override
   362:             public void onFinish() {
   363:             }
   364: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:828 (time_limit; file score 17)

```java
   822:         }
   823:     }
   824: 
   825:     class AnonymousClass5 implements DialogInterface.OnShowListener {
   826:         final TextView val$message_text;
   827: 
   828:         class AnonymousClass1 extends CountDownTimer {
   829:             AnonymousClass1(long j, long j2) {
   830:                 super(j, j2);
   831:             }
   832: 
   833:             @Override
   834:             public void onFinish() {
   835:                 HomeFragment.this.btnWatchAd.setEnabled(true);
   836:                 HomeFragment.this.btnWatchAd.setText(HomeFragment.GlobalTimerConf.button_text);
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1011 (time_limit; file score 17)

```java
  1005: 
  1006:     static boolean access$1102(HomeFragment homeFragment, boolean z) {
  1007:         homeFragment.purchaseInFlight = z;
  1008:         return z;
  1009:     }
  1010: 
  1011:     static CountDownTimer access$1200(HomeFragment homeFragment) {
  1012:         return homeFragment.watchAd_Cooldown;
  1013:     }
  1014: 
  1015:     static CountDownTimer access$1202(HomeFragment homeFragment, CountDownTimer countDownTimer2) {
  1016:         homeFragment.watchAd_Cooldown = countDownTimer2;
  1017:         return countDownTimer2;
  1018:     }
  1019: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1082 (time_limit; file score 17)

```java
  1076:     }
  1077: 
  1078:     static Button access$2400(HomeFragment homeFragment) {
  1079:         return homeFragment.timerButton;
  1080:     }
  1081: 
  1082:     static CountDownTimer access$2500() {
  1083:         return countDownTimer;
  1084:     }
  1085: 
  1086:     static CountDownTimer access$2502(CountDownTimer countDownTimer2) {
  1087:         countDownTimer = countDownTimer2;
  1088:         return countDownTimer2;
  1089:     }
  1090: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1092 (time_limit; file score 17)

```java
  1086:     static CountDownTimer access$2502(CountDownTimer countDownTimer2) {
  1087:         countDownTimer = countDownTimer2;
  1088:         return countDownTimer2;
  1089:     }
  1090: 
  1091:     static boolean access$2600() {
  1092:         return countDownStarted;
  1093:     }
  1094: 
  1095:     static boolean access$2602(boolean z) {
  1096:         countDownStarted = z;
  1097:         return z;
  1098:     }
  1099: 
  1100:     static LinearLayout access$2700(HomeFragment homeFragment) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1590 (time_limit; file score 17)

```java
  1584:         }
  1585:         rewardedAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setCustomData(jSONObject.toString()).setUserId(Settings.Secure.getString(getContext().getContentResolver(), ProtectedFastSSH.s("⻏"))).build());
  1586:         rewardedAd.show(getActivity(), new HomeFragment$$ExternalSyntheticLambda6(this));
  1587:     }
  1588: 
  1589:     private void stopAndHideTimer() {
  1590:         CountDownTimer countDownTimer2 = countDownTimer;
  1591:         if (countDownTimer2 != null) {
  1592:             countDownTimer2.cancel();
  1593:         }
  1594:         this.timerLayout.setVisibility(8);
  1595:     }
  1596: 
  1597:     private static String toRoundedUnit(long j) {
  1598:         if (j <= 1024) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1986 (time_limit; file score 17)

```java
  1980:         super.onDestroy();
  1981:         this.vpnConnectionHelper.bindService(false);
  1982:         VpnStatus.removeVpnStateListener(this);
  1983:         VpnStatus.removeMessageListener(this);
  1984:     }
  1985: 
  1986:     public void onExpiredState() {
  1987:         getActivity().runOnUiThread(new AnonymousClass16());
  1988:     }
  1989: 
  1990:     @Override
  1991:     public void onGenerated(String str) {
  1992:         if (VpnStatus.isConnected()) {
  1993:             Toast.makeText(getContext(), ProtectedFastSSH.s("⽃"), 0).show();
  1994:             return;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:2042 (time_limit; file score 17)

```java
  2036:             loadDisConnectedInterstitialAd();
  2037:         }
  2038:         VpnStatus.addByteCountListener(this);
  2039:         fetchAndShowTicker();
  2040:     }
  2041: 
  2042:     public void onStartCountdown(long j) {
  2043:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
  2044:         LAST_SESSION_MILLIS = j;
  2045:         LAST_MILLIS = j;
  2046:         getActivity().runOnUiThread(new AnonymousClass15(j, subscription));
  2047:     }
  2048: 
  2049:     public void onStickyMessageReceived(String str) {
  2050:     }
```

## jadx/sources/app/fast/ssh/MainActivity.java:442 (time_limit; file score 17)

```java
   436:     public String debugState() {
   437:         PrefsSubscriptionStore prefsSubscriptionStore = new PrefsSubscriptionStore(this);
   438:         String subscriptionToken = prefsSubscriptionStore.getSubscriptionToken();
   439:         if (subscriptionToken == null) {
   440:             return ProtectedFastSSH.s("⽶");
   441:         }
   442:         return ProtectedFastSSH.s("⽷") + subscriptionToken.substring(0, Math.min(8, subscriptionToken.length())) + ProtectedFastSSH.s("⽸") + ((prefsSubscriptionStore.getTokenExpiresAtMillis() - System.currentTimeMillis()) / 60000) + ProtectedFastSSH.s("⽹");
   443:     }
   444: 
   445:     public void hideBannerAd() {
   446:         this.bannerAd.setVisibility(8);
   447:     }
   448: 
   449:     void m478lambda$onCreate$3$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
   450:         if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
```

## decoded/smali/app/fast/ssh/R$id.smali:321 (time_limit; file score 16)

```java
   315: .field public static final check_password_lock:I = 0x7f090095
   316: 
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
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:194 (time_limit; file score 14)

```java
   188: 
   189:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
   190: 
   191:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2100(Lapp/fast/ssh/HomeFragment;)V
   192: 
   193:     :cond_3
   194:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
   195: 
   196:     move-result-object v0
   197: 
   198:     if-eqz v0, :cond_4
   199: 
   200:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
   201: 
   202:     move-result-object v0
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:200 (time_limit; file score 14)

```java
   194:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
   195: 
   196:     move-result-object v0
   197: 
   198:     if-eqz v0, :cond_4
   199: 
   200:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
   201: 
   202:     move-result-object v0
   203: 
   204:     invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
   205: 
   206:     invoke-static {v3}, Lapp/fast/ssh/HomeFragment;->access$2602(Z)Z
   207: 
   208:     :cond_4
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:353 (time_limit; file score 14)

```java
   347:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   348: 
   349:     move-result v0
   350: 
   351:     if-eqz v0, :cond_a
   352: 
   353:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
   354: 
   355:     move-result-object v0
   356: 
   357:     if-eqz v0, :cond_a
   358: 
   359:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2600()Z
   360: 
   361:     move-result v0
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:153 (time_limit; file score 14)

```java
   147: .method private static debug(Ljava/lang/String;)V
   148:     .locals 0
   149: 
   150:     return-void
   151: .end method
   152: 
   153: .method private dropExpiredLocked()V
   154:     .locals 4
   155: 
   156:     .prologue
   157:     iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;
   158: 
   159:     if-nez v0, :cond_0
   160: 
   161:     goto :goto_0
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:495 (time_limit; file score 14)

```java
   489:     invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
   490: 
   491:     move-result-object v2
   492: 
   493:     invoke-static {v2}, Lapp/fast/ssh/RewardedAdSyncController;->debug(Ljava/lang/String;)V
   494: 
   495:     invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V
   496: 
   497:     iget-object v2, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;
   498: 
   499:     const/4 v5, 0x0
   500: 
   501:     const/4 v6, 0x0
   502: 
   503:     if-eqz v2, :cond_2
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:656 (time_limit; file score 14)

```java
   650:     :cond_1
   651:     iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;
   652: 
   653:     invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
   654: 
   655:     :try_start_0
   656:     invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V
   657: 
   658:     iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;
   659: 
   660:     if-eqz v0, :cond_2
   661: 
   662:     const-string/jumbo p1, "\u2f99"
   663: 
   664:     invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:743 (time_limit; file score 14)

```java
   737:     .prologue
   738:     iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->mtx:Ljava/util/concurrent/locks/ReentrantLock;
   739: 
   740:     invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
   741: 
   742:     :try_start_0
   743:     invoke-direct {p0}, Lapp/fast/ssh/RewardedAdSyncController;->dropExpiredLocked()V
   744: 
   745:     iget-object v0, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;
   746: 
   747:     const/4 v1, 0x0
   748: 
   749:     iput-object v1, p0, Lapp/fast/ssh/RewardedAdSyncController;->cachedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;
   750: 
   751:     const-wide/16 v1, 0x0
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:134 (time_limit; file score 14)

```java
   128:         debug(str);
   129:     }
   130: 
   131:     private static void debug(String str) {
   132:     }
   133: 
   134:     private void dropExpiredLocked() {
   135:         if (this.cachedAd != null && System.currentTimeMillis() - this.cachedAtMs > this.ttlMs) {
   136:             debug(ProtectedFastSSH.s("⾎"));
   137:             this.cachedAd = null;
   138:             this.cachedAtMs = 0L;
   139:         }
   140:     }
   141: 
   142:     private void startLoadOnMain(Activity activity, Ui ui) {
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:202 (time_limit; file score 14)

```java
   196:             }
   197:             this.mtx.lock();
   198:             try {
   199:                 long j = this.latestRequestId + 1;
   200:                 this.latestRequestId = j;
   201:                 debug(strS3 + j);
   202:                 dropExpiredLocked();
   203:                 RewardedAd rewardedAd = null;
   204:                 boolean z = false;
   205:                 if (this.cachedAd != null) {
   206:                     debug(strS2 + j);
   207:                     RewardedAd rewardedAd2 = this.cachedAd;
   208:                     this.cachedAd = null;
   209:                     this.cachedAtMs = 0L;
   210:                     this.waitingRequestId = 0L;
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:247 (time_limit; file score 14)

```java
   241:             if (Looper.myLooper() != Looper.getMainLooper()) {
   242:                 this.main.post(new RewardedAdSyncController$$ExternalSyntheticLambda0(this, activity, ui));
   243:                 return;
   244:             }
   245:             this.mtx.lock();
   246:             try {
   247:                 dropExpiredLocked();
   248:                 if (this.cachedAd != null) {
   249:                     debug(ProtectedFastSSH.s("⾙"));
   250:                     this.mtx.unlock();
   251:                 } else if (this.isLoading) {
   252:                     debug(ProtectedFastSSH.s("⾚"));
   253:                     this.mtx.unlock();
   254:                 } else {
   255:                     this.isLoading = true;
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:270 (time_limit; file score 14)

```java
   264:         }
   265:     }
   266: 
   267:     public RewardedAd tryConsumeCached() {
   268:         this.mtx.lock();
   269:         try {
   270:             dropExpiredLocked();
   271:             RewardedAd rewardedAd = this.cachedAd;
   272:             this.cachedAd = null;
   273:             this.cachedAtMs = 0L;
   274:             if (rewardedAd != null) {
   275:                 debug(ProtectedFastSSH.s("⾜"));
   276:             }
   277:             return rewardedAd;
   278:         } finally {
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:31 (time_limit; file score 12)

```java
    25: .field private final mContext:Landroid/content/Context;
    26: 
    27: .field private final mDialog:Landroidx/appcompat/app/AlertDialog;
    28: 
    29: .field private message_text:Landroid/widget/TextView;
    30: 
    31: .field private watchAd_Cooldown:Landroid/os/CountDownTimer;
    32: 
    33: 
    34: # direct methods
    35: .method static constructor <clinit>()V
    36:     .locals 1
    37: 
    38:     const-string/jumbo v0, "\u314a"
    39: 
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:169 (time_limit; file score 12)

```java
   163: 
   164:     iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->button:Landroid/widget/Button;
   165: 
   166:     return-object p0
   167: .end method
   168: 
   169: .method static synthetic access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;
   170:     .locals 0
   171: 
   172:     iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;
   173: 
   174:     return-object p0
   175: .end method
   176: 
   177: .method static synthetic access$102(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:172 (time_limit; file score 12)

```java
   166:     return-object p0
   167: .end method
   168: 
   169: .method static synthetic access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;
   170:     .locals 0
   171: 
   172:     iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;
   173: 
   174:     return-object p0
   175: .end method
   176: 
   177: .method static synthetic access$102(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
   178:     .locals 0
   179: 
   180:     iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/dialog/AddTimeDialog.smali:180 (time_limit; file score 12)

```java
   174:     return-object p0
   175: .end method
   176: 
   177: .method static synthetic access$102(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
   178:     .locals 0
   179: 
   180:     iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;
   181: 
   182:     return-object p1
   183: .end method
   184: 
   185: .method static synthetic access$200(Lapp/fast/ssh/dialog/AddTimeDialog;)I
   186:     .locals 0
   187: 
   188:     invoke-direct {p0}, Lapp/fast/ssh/dialog/AddTimeDialog;->appVersionCode()I
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:7 (time_limit; file score 12)

```java
     1: package app.fast.ssh.dialog;
     2: 
     3: import android.app.ProgressDialog;
     4: import android.content.Context;
     5: import android.content.DialogInterface;
     6: import android.graphics.drawable.ColorDrawable;
     7: import android.os.CountDownTimer;
     8: import android.provider.Settings;
     9: import android.view.LayoutInflater;
    10: import android.view.View;
    11: import android.view.ViewGroup;
    12: import android.widget.Button;
    13: import android.widget.LinearLayout;
    14: import android.widget.TextView;
    15: import android.widget.Toast;
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:46 (time_limit; file score 12)

```java
    40:     private AdView bannerAd;
    41:     private LinearLayout bannerContainer;
    42:     private Button button;
    43:     private final Context mContext;
    44:     private final AlertDialog mDialog;
    45:     private TextView message_text;
    46:     private CountDownTimer watchAd_Cooldown;
    47:     private static final String BANNER_AD_UNIT = ProtectedFastSSH.s("ㅊ");
    48:     private static final String REWARDED_INTERSTITIAL_AD_UNIT = ProtectedFastSSH.s("ㅋ");
    49: 
    50:     class AnonymousClass1 implements DialogInterface.OnShowListener {
    51: 
    52:         class CountDownTimerC00161 extends CountDownTimer {
    53:             CountDownTimerC00161(long j, long j2) {
    54:                 super(j, j2);
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:52 (time_limit; file score 12)

```java
    46:     private CountDownTimer watchAd_Cooldown;
    47:     private static final String BANNER_AD_UNIT = ProtectedFastSSH.s("ㅊ");
    48:     private static final String REWARDED_INTERSTITIAL_AD_UNIT = ProtectedFastSSH.s("ㅋ");
    49: 
    50:     class AnonymousClass1 implements DialogInterface.OnShowListener {
    51: 
    52:         class CountDownTimerC00161 extends CountDownTimer {
    53:             CountDownTimerC00161(long j, long j2) {
    54:                 super(j, j2);
    55:             }
    56: 
    57:             @Override
    58:             public void onFinish() {
    59:                 AddTimeDialog.access$000(AddTimeDialog.this).setEnabled(true);
    60:                 AddTimeDialog.access$000(AddTimeDialog.this).setText(AddTimeDialog.GlobalTimerConf.button_text);
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:95 (time_limit; file score 12)

```java
    89:                 return;
    90:             }
    91:             long j4 = j - j3;
    92:             if (AddTimeDialog.access$100(AddTimeDialog.this) != null) {
    93:                 AddTimeDialog.access$100(AddTimeDialog.this).cancel();
    94:             }
    95:             AddTimeDialog.access$102(AddTimeDialog.this, new CountDownTimerC00161(j4, 1000L));
    96:             AddTimeDialog.access$100(AddTimeDialog.this).start();
    97:         }
    98:     }
    99: 
   100:     class AnonymousClass2 extends RewardedAdLoadCallback {
   101:         final ProgressDialog val$progress;
   102: 
   103:         class AnonymousClass1 implements OnUserEarnedRewardListener {
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:195 (time_limit; file score 12)

```java
   189:     }
   190: 
   191:     static Button access$000(AddTimeDialog addTimeDialog) {
   192:         return addTimeDialog.button;
   193:     }
   194: 
   195:     static CountDownTimer access$100(AddTimeDialog addTimeDialog) {
   196:         return addTimeDialog.watchAd_Cooldown;
   197:     }
   198: 
   199:     static CountDownTimer access$102(AddTimeDialog addTimeDialog, CountDownTimer countDownTimer) {
   200:         addTimeDialog.watchAd_Cooldown = countDownTimer;
   201:         return countDownTimer;
   202:     }
   203: 
```

## jadx/sources/app/fast/ssh/dialog/AddTimeDialog.java:200 (time_limit; file score 12)

```java
   194: 
   195:     static CountDownTimer access$100(AddTimeDialog addTimeDialog) {
   196:         return addTimeDialog.watchAd_Cooldown;
   197:     }
   198: 
   199:     static CountDownTimer access$102(AddTimeDialog addTimeDialog, CountDownTimer countDownTimer) {
   200:         addTimeDialog.watchAd_Cooldown = countDownTimer;
   201:         return countDownTimer;
   202:     }
   203: 
   204:     static int access$200(AddTimeDialog addTimeDialog) {
   205:         return addTimeDialog.appVersionCode();
   206:     }
   207: 
   208:     static String access$300(AddTimeDialog addTimeDialog) {
```

## decoded/smali/app/fast/ssh/ExportActivity.smali:29 (time_limit; file score 11)

```java
    23: .field private bannerContainer:Landroid/widget/LinearLayout;
    24: 
    25: .field private checkBox:Landroid/widget/CheckBox;
    26: 
    27: .field private description:Lcom/google/android/material/textfield/TextInputEditText;
    28: 
    29: .field private expiry_millis:Ljava/lang/Long;
    30: 
    31: .field private filename:Lcom/google/android/material/textfield/TextInputEditText;
    32: 
    33: .field private password:Ljava/lang/String;
    34: 
    35: .field private user_id:Ljava/lang/String;
    36: 
    37: 
```

## decoded/smali/app/fast/ssh/ExportActivity.smali:138 (time_limit; file score 11)

```java
   132:     return-object p1
   133: .end method
   134: 
   135: .method static synthetic access$502(Lapp/fast/ssh/ExportActivity;Ljava/lang/Long;)Ljava/lang/Long;
   136:     .locals 0
   137: 
   138:     iput-object p1, p0, Lapp/fast/ssh/ExportActivity;->expiry_millis:Ljava/lang/Long;
   139: 
   140:     return-object p1
   141: .end method
   142: 
   143: .method private checkedListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
   144:     .locals 1
   145: 
   146:     new-instance v0, Lapp/fast/ssh/ExportActivity$2;
```

## decoded/smali/app/fast/ssh/ExportActivity.smali:736 (time_limit; file score 11)

```java
   730:     const-string/jumbo v2, "\u2e6d"
   731: 
   732:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   733: 
   734:     move-result-object v2
   735: 
   736:     iget-object v3, p0, Lapp/fast/ssh/ExportActivity;->expiry_millis:Ljava/lang/Long;
   737: 
   738:     invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
   739: 
   740:     const-string/jumbo v2, "\u2e6e"
   741: 
   742:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   743: 
   744:     move-result-object v2
```

## jadx/sources/app/fast/ssh/ExportActivity.java:51 (time_limit; file score 11)

```java
    45:     public static final String EXPORT_KEY = ProtectedFastSSH.s("\u2e6f");
    46:     private static final String EXPORT_PAGE_BANNER_AD_UNIT = ProtectedFastSSH.s("\u2e70");
    47:     private AdView bannerAd;
    48:     private LinearLayout bannerContainer;
    49:     private CheckBox checkBox;
    50:     private TextInputEditText description;
    51:     private Long expiry_millis;
    52:     private TextInputEditText filename;
    53:     private String password = "";
    54:     private String user_id = "";
    55: 
    56:     class AnonymousClass1 implements View.OnClickListener {
    57:         AnonymousClass1() {
    58:         }
    59: 
```

## jadx/sources/app/fast/ssh/ExportActivity.java:336 (time_limit; file score 11)

```java
   330:     static String access$402(ExportActivity exportActivity, String str) {
   331:         exportActivity.user_id = str;
   332:         return str;
   333:     }
   334: 
   335:     static Long access$502(ExportActivity exportActivity, Long l) {
   336:         exportActivity.expiry_millis = l;
   337:         return l;
   338:     }
   339: 
   340:     private CompoundButton.OnCheckedChangeListener checkedListener() {
   341:         return new AnonymousClass2();
   342:     }
   343: 
   344:     private boolean exportConfig() {
```

## jadx/sources/app/fast/ssh/ExportActivity.java:415 (time_limit; file score 11)

```java
   409:             jSONObject2.put(ProtectedFastSSH.s("\u2e67"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090090)).isChecked());
   410:             jSONObject2.put(ProtectedFastSSH.s("\u2e68"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090095)).isChecked());
   411:             jSONObject2.put(ProtectedFastSSH.s("\u2e69"), AESEncryption.md5(this.password));
   412:             jSONObject2.put(ProtectedFastSSH.s("\u2e6a"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090093)).isChecked());
   413:             jSONObject2.put(ProtectedFastSSH.s("\u2e6b"), AESEncryption.md5(this.user_id));
   414:             jSONObject2.put(ProtectedFastSSH.s("\u2e6c"), ((CheckBox) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090098)).isChecked());
   415:             jSONObject2.put(ProtectedFastSSH.s("\u2e6d"), this.expiry_millis);
   416:             jSONObject.put(ProtectedFastSSH.s("\u2e6e"), jSONObject2);
   417:         } else {
   418:             jSONObject.put(strS, new JSONObject(string));
   419:             jSONObject.put(strS2, "");
   420:             if (this.checkBox.isChecked()) {
   421:                 jSONObject.put(strS2, this.description.getText().toString());
   422:             }
   423:         }
```

## jadx/sources/com/google/android/gms/gcm/zzd.java:32 (time_limit; file score 11)

```java
    26: import org.json.JSONException;
    27: 
    28: final class zzd {
    29:     static zzd zzk;
    30:     private final Context zzl;
    31:     private String zzm;
    32:     private final AtomicInteger zzn = new AtomicInteger((int) SystemClock.elapsedRealtime());
    33: 
    34:     private zzd(Context context) {
    35:         this.zzl = context.getApplicationContext();
    36:     }
    37: 
    38:     static synchronized zzd zzd(Context context) {
    39:         if (zzk == null) {
    40:             zzk = new zzd(context);
```

## decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali:30 (time_limit; file score 10)

```java
    24: .method public abstract getRefreshWindowMillis()J
    25: .end method
    26: 
    27: .method public abstract getSubscriptionToken()Ljava/lang/String;
    28: .end method
    29: 
    30: .method public abstract getTokenExpiresAtMillis()J
    31: .end method
    32: 
    33: .method public abstract save(Ljava/lang/String;J)V
    34: .end method
    35: 
    36: .method public abstract savePurchaseToken(Ljava/lang/String;)V
    37: .end method
```

## decoded/smali/app/fast/ssh/BillingManager.smali:1567 (time_limit; file score 10)

```java
  1561:     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
  1562: 
  1563:     move-result-wide v0
  1564: 
  1565:     iget-object v2, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
  1566: 
  1567:     invoke-interface {v2}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getTokenExpiresAtMillis()J
  1568: 
  1569:     move-result-wide v2
  1570: 
  1571:     iget-object v4, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
  1572: 
  1573:     invoke-interface {v4}, Lapp/fast/ssh/BillingManager$SubscriptionStore;->getRefreshWindowMillis()J
  1574: 
  1575:     move-result-wide v4
```

## decoded/smali/app/fast/ssh/HomeFragment$15.smali:11 (time_limit; file score 10)

```java
     5: # interfaces
     6: .implements Ljava/lang/Runnable;
     7: 
     8: 
     9: # annotations
    10: .annotation system Ldalvik/annotation/EnclosingMethod;
    11:     value = Lapp/fast/ssh/HomeFragment;->onStartCountdown(J)V
    12: .end annotation
    13: 
    14: .annotation system Ldalvik/annotation/InnerClass;
    15:     accessFlags = 0x0
    16:     name = null
    17: .end annotation
    18: 
    19: 
```

## decoded/smali/app/fast/ssh/HomeFragment$15.smali:67 (time_limit; file score 10)

```java
    61: 
    62: # virtual methods
    63: .method public run()V
    64:     .locals 7
    65: 
    66:     .prologue
    67:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    68: 
    69:     move-result-object v0
    70: 
    71:     if-eqz v0, :cond_0
    72: 
    73:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    74: 
    75:     move-result-object v0
```

## decoded/smali/app/fast/ssh/HomeFragment$15.smali:73 (time_limit; file score 10)

```java
    67:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    68: 
    69:     move-result-object v0
    70: 
    71:     if-eqz v0, :cond_0
    72: 
    73:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    74: 
    75:     move-result-object v0
    76: 
    77:     invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V
    78: 
    79:     :cond_0
    80:     const/4 v0, 0x0
    81: 
```

## decoded/smali/app/fast/ssh/HomeFragment$15.smali:94 (time_limit; file score 10)

```java
    88:     const-wide/16 v5, 0x3e8
    89: 
    90:     move-object v2, p0
    91: 
    92:     invoke-direct/range {v1 .. v6}, Lapp/fast/ssh/HomeFragment$15$1;-><init>(Lapp/fast/ssh/HomeFragment$15;JJ)V
    93: 
    94:     invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    95: 
    96:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    97: 
    98:     move-result-object v1
    99: 
   100:     invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
   101: 
   102:     const/4 v1, 0x1
```

## decoded/smali/app/fast/ssh/HomeFragment$15.smali:100 (time_limit; file score 10)

```java
    94:     invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    95: 
    96:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
    97: 
    98:     move-result-object v1
    99: 
   100:     invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
   101: 
   102:     const/4 v1, 0x1
   103: 
   104:     invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2602(Z)Z
   105: 
   106:     iget-object v1, v2, Lapp/fast/ssh/HomeFragment$15;->val$subscription:Lapp/fast/ssh/Subscription;
   107: 
   108:     invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/PrefsSubscriptionStore.smali:14 (time_limit; file score 10)

```java
     8: 
     9: # static fields
    10: .field private static final KEY_PURCHASE_TOKEN:Ljava/lang/String;
    11: 
    12: .field private static final KEY_TOKEN:Ljava/lang/String;
    13: 
    14: .field private static final KEY_TOKEN_EXPIRES:Ljava/lang/String;
    15: 
    16: .field private static final PREFS:Ljava/lang/String;
    17: 
    18: .field private static final REFRESH_WINDOW_MS:J = 0x1499700L
    19: 
    20: 
    21: # instance fields
    22: .field private final prefs:Landroid/content/SharedPreferences;
```

## decoded/smali/app/fast/ssh/PrefsSubscriptionStore.smali:51 (time_limit; file score 10)

```java
    45:     const-string/jumbo v0, "\u2f89"
    46: 
    47:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    48: 
    49:     move-result-object v0
    50: 
    51:     sput-object v0, Lapp/fast/ssh/PrefsSubscriptionStore;->KEY_TOKEN_EXPIRES:Ljava/lang/String;
    52: 
    53:     const-string/jumbo v0, "\u2f87"
    54: 
    55:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    56: 
    57:     move-result-object v0
    58: 
    59:     sput-object v0, Lapp/fast/ssh/PrefsSubscriptionStore;->PREFS:Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/PrefsSubscriptionStore.smali:216 (time_limit; file score 10)

```java
   210: 
   211:     :cond_1
   212:     :goto_0
   213:     return-object v2
   214: .end method
   215: 
   216: .method public getTokenExpiresAtMillis()J
   217:     .locals 4
   218: 
   219:     iget-object v0, p0, Lapp/fast/ssh/PrefsSubscriptionStore;->prefs:Landroid/content/SharedPreferences;
   220: 
   221:     const-string/jumbo v1, "\u2f89"
   222: 
   223:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   224: 
```

## decoded/smali/app/fast/ssh/VoucherActivity.smali:358 (time_limit; file score 10)

```java
   352: 
   353:     invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
   354: 
   355:     return-void
   356: .end method
   357: 
   358: .method public onExpiredState()V
   359:     .locals 0
   360: 
   361:     return-void
   362: .end method
   363: 
   364: .method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
   365:     .locals 2
   366: 
```

## decoded/smali/app/fast/ssh/VoucherActivity.smali:426 (time_limit; file score 10)

```java
   420: 
   421:     invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V
   422: 
   423:     return-void
   424: .end method
   425: 
   426: .method public onStartCountdown(J)V
   427:     .locals 0
   428: 
   429:     return-void
   430: .end method
   431: 
   432: .method protected onStop()V
   433:     .locals 1
   434: 
```

## decoded/smali/com/android/billingclient/api/zzda.smali:15 (time_limit; file score 10)

```java
     9: .field private volatile zzb:I
    10: 
    11: .field private volatile zzc:Lcom/google/android/gms/internal/play_billing/zzba;
    12: 
    13: .field private volatile zzd:Lcom/android/billingclient/api/zzcy;
    14: 
    15: .field private volatile zze:Ljava/util/concurrent/ScheduledExecutorService;
    16: 
    17: 
    18: # direct methods
    19: .method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    20:     .locals 6
    21: 
    22:     const/4 v3, 0x0
    23: 
```

## decoded/smali/com/android/billingclient/api/zzda.smali:468 (time_limit; file score 10)

```java
   462: 
   463:     invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
   464: 
   465:     return v1
   466: .end method
   467: 
   468: .method private final declared-synchronized zzaQ()Ljava/util/concurrent/ScheduledExecutorService;
   469:     .locals 1
   470: 
   471:     .prologue
   472:     monitor-enter p0
   473: 
   474:     :try_start_0
   475:     iget-object v0, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   476: 
```

## decoded/smali/com/android/billingclient/api/zzda.smali:475 (time_limit; file score 10)

```java
   469:     .locals 1
   470: 
   471:     .prologue
   472:     monitor-enter p0
   473: 
   474:     :try_start_0
   475:     iget-object v0, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   476: 
   477:     if-nez v0, :cond_0
   478: 
   479:     invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
   480: 
   481:     move-result-object v0
   482: 
   483:     iput-object v0, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
```

## decoded/smali/com/android/billingclient/api/zzda.smali:483 (time_limit; file score 10)

```java
   477:     if-nez v0, :cond_0
   478: 
   479:     invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
   480: 
   481:     move-result-object v0
   482: 
   483:     iput-object v0, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   484: 
   485:     :cond_0
   486:     iget-object v0, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   487:     :try_end_0
   488:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
   489: 
   490:     monitor-exit p0
   491: 
```

## decoded/smali/com/android/billingclient/api/zzda.smali:560 (time_limit; file score 10)

```java
   554: 
   555:     iput-object v1, p0, Lcom/android/billingclient/api/zzda;->zzd:Lcom/android/billingclient/api/zzcy;
   556: 
   557:     :cond_0
   558:     iput-object v2, p0, Lcom/android/billingclient/api/zzda;->zzc:Lcom/google/android/gms/internal/play_billing/zzba;
   559: 
   560:     iget-object v1, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   561: 
   562:     if-eqz v1, :cond_1
   563: 
   564:     iget-object v1, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
   565: 
   566:     invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
   567: 
   568:     iput-object v2, p0, Lcom/android/billingclient/api/zzda;->zze:Ljava/util/concurrent/ScheduledExecutorService;
```

## decoded/smali/com/android/billingclient/api/zzda.smali:1140 (time_limit; file score 10)

```java
  1134:     invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzda;->zzaV(I)Lcom/google/android/gms/internal/play_billing/zzdk;
  1135: 
  1136:     move-result-object v0
  1137: 
  1138:     sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
  1139: 
  1140:     invoke-direct {p0}, Lcom/android/billingclient/api/zzda;->zzaQ()Ljava/util/concurrent/ScheduledExecutorService;
  1141: 
  1142:     move-result-object v2
  1143: 
  1144:     const-wide/16 v3, 0x6f54
  1145: 
  1146:     invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzdf;->zzb(Lcom/google/android/gms/internal/play_billing/zzdk;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzdk;
  1147: 
  1148:     move-result-object v0
```

## decoded/smali/com/google/android/gms/ads/nonagon/signalgeneration/zzj.smali:668 (time_limit; file score 10)

```java
   662:     goto :goto_1
   663: 
   664:     :cond_3
   665:     move v0, v4
   666: 
   667:     :goto_1
   668:     sget-object v5, Lcom/google/android/gms/internal/ads/zzcgj;->zzd:Ljava/util/concurrent/ScheduledExecutorService;
   669: 
   670:     new-instance v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
   671: 
   672:     invoke-direct {v6, p0, p1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;ZZ)V
   673: 
   674:     sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
   675: 
   676:     invoke-interface {v5, v6, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
```

## decoded/smali/com/google/android/gms/ads/nonagon/signalgeneration/zzj.smali:676 (time_limit; file score 10)

```java
   670:     new-instance v6, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
   671: 
   672:     invoke-direct {v6, p0, p1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;ZZ)V
   673: 
   674:     sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
   675: 
   676:     invoke-interface {v5, v6, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
   677: 
   678:     iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzb:Ljava/util/Map;
   679: 
   680:     invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
   681: 
   682:     move-result-object v0
   683: 
   684:     check-cast v0, Ljava/util/List;
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali:7 (time_limit; file score 10)

```java
     1: .class public final Lcom/google/android/gms/internal/ads/zzbkl;
     2: .super Ljava/lang/Object;
     3: .source "com.google.android.gms:play-services-ads@@25.4.0"
     4: 
     5: 
     6: # instance fields
     7: .field private final zza:Ljava/util/concurrent/ScheduledExecutorService;
     8: 
     9: .field private final zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;
    10: 
    11: .field private final zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;
    12: 
    13: .field private final zzd:Lcom/google/android/gms/internal/ads/zzeao;
    14: 
    15: .field private zze:Ljava/lang/Runnable;
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali:33 (time_limit; file score 10)

```java
    27: .field private zzk:Lorg/json/JSONArray;
    28: 
    29: .field private zzl:Landroid/content/Context;
    30: 
    31: 
    32: # direct methods
    33: .method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;Lcom/google/android/gms/internal/ads/zzeao;)V
    34:     .locals 2
    35: 
    36:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    37: 
    38:     const-wide/16 v0, 0x0
    39: 
    40:     iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzi:J
    41: 
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali:42 (time_limit; file score 10)

```java
    36:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    37: 
    38:     const-wide/16 v0, 0x0
    39: 
    40:     iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzi:J
    41: 
    42:     iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zza:Ljava/util/concurrent/ScheduledExecutorService;
    43: 
    44:     iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;
    45: 
    46:     iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zza;
    47: 
    48:     iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzd:Lcom/google/android/gms/internal/ads/zzeao;
    49: 
    50:     return-void
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali:95 (time_limit; file score 10)

```java
    89:     if-eqz v0, :cond_4
    90: 
    91:     iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzg:Landroidx/browser/customtabs/CustomTabsSession;
    92: 
    93:     if-eqz v0, :cond_4
    94: 
    95:     iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zza:Ljava/util/concurrent/ScheduledExecutorService;
    96: 
    97:     if-eqz v0, :cond_4
    98: 
    99:     iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbkl;->zzi:J
   100: 
   101:     const-wide/16 v3, 0x0
   102: 
   103:     cmp-long v1, v1, v3
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzbkl.smali:177 (time_limit; file score 10)

```java
   171:     invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
   172: 
   173:     move-result-wide v2
   174: 
   175:     sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
   176: 
   177:     invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
   178: 
   179:     return-void
   180: 
   181:     :cond_4
   182:     const-string v0, "\u583e"
   183: 
   184:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   185: 
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzeux.smali:373 (time_limit; file score 10)

```java
   367:     new-instance p1, Lcom/google/android/gms/internal/ads/zzcza;
   368: 
   369:     invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoy;->zzc()Lcom/google/android/gms/internal/ads/zzhdi;
   370: 
   371:     move-result-object p2
   372: 
   373:     invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcob;->zzc()Ljava/util/concurrent/ScheduledExecutorService;
   374: 
   375:     move-result-object p3
   376: 
   377:     invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdpa;->zza()Lcom/google/android/gms/internal/ads/zzczp;
   378: 
   379:     move-result-object v0
   380: 
   381:     invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczp;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;
```

## decoded/smali_classes3/com/google/android/gms/internal/ads/zzeux.smali:389 (time_limit; file score 10)

```java
   383:     move-result-object v1
   384: 
   385:     invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczp;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
   386: 
   387:     move-result-object v0
   388: 
   389:     invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcza;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V
   390: 
   391:     iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeux;->zzf:Lcom/google/android/gms/internal/ads/zzcza;
   392: 
   393:     new-instance v4, Lcom/google/android/gms/internal/ads/zzeuu;
   394: 
   395:     move-object v5, p0
   396: 
   397:     move-object v6, p4
```

## decoded/smali_classes3/com/google/android/gms/internal/play_billing/zzdp.smali:35 (time_limit; file score 10)

```java
    29: 
    30:     iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzdp;->zzd:Lcom/google/android/gms/internal/play_billing/zzdk;
    31: 
    32:     return-object p0
    33: .end method
    34: 
    35: .method static zzs(Lcom/google/android/gms/internal/play_billing/zzdk;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzdk;
    36:     .locals 2
    37: 
    38:     new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdp;
    39: 
    40:     invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzdp;-><init>(Lcom/google/android/gms/internal/play_billing/zzdk;)V
    41: 
    42:     new-instance p2, Lcom/google/android/gms/internal/play_billing/zzdm;
    43: 
```

## decoded/smali_classes3/com/google/android/gms/internal/play_billing/zzdp.smali:48 (time_limit; file score 10)

```java
    42:     new-instance p2, Lcom/google/android/gms/internal/play_billing/zzdm;
    43: 
    44:     invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzdm;-><init>(Lcom/google/android/gms/internal/play_billing/zzdp;)V
    45: 
    46:     const-wide/16 v0, 0x6f54
    47: 
    48:     invoke-interface {p4, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    49: 
    50:     move-result-object p3
    51: 
    52:     iput-object p3, p1, Lcom/google/android/gms/internal/play_billing/zzdp;->zze:Ljava/util/concurrent/ScheduledFuture;
    53: 
    54:     sget-object p3, Lcom/google/android/gms/internal/play_billing/zzda;->zza:Lcom/google/android/gms/internal/play_billing/zzda;
    55: 
    56:     invoke-interface {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection$BindRequest.smali:60 (time_limit; file score 10)

```java
    54: 
    55:     return-void
    56: .end method
    57: 
    58: 
    59: # virtual methods
    60: .method arrangeTimeout(Ljava/util/concurrent/ScheduledExecutorService;)V
    61:     .locals 4
    62: 
    63:     new-instance v0, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;
    64: 
    65:     invoke-direct {v0, p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    66: 
    67:     const-wide/16 v1, 0x14
    68: 
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection$BindRequest.smali:71 (time_limit; file score 10)

```java
    65:     invoke-direct {v0, p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    66: 
    67:     const-wide/16 v1, 0x14
    68: 
    69:     sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    70: 
    71:     invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    72: 
    73:     move-result-object v0
    74: 
    75:     invoke-virtual {p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->getTask()Lcom/google/android/gms/tasks/Task;
    76: 
    77:     move-result-object v1
    78: 
    79:     new-instance v2, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest$$ExternalSyntheticLambda1;
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection.smali:36 (time_limit; file score 10)

```java
    30:             "Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;",
    31:             ">;"
    32:         }
    33:     .end annotation
    34: .end field
    35: 
    36: .field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    37: 
    38: 
    39: # direct methods
    40: .method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    41:     .locals 3
    42: 
    43:     new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    44: 
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection.smali:59 (time_limit; file score 10)

```java
    53:     invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V
    54: 
    55:     const/4 v2, 0x0
    56: 
    57:     invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V
    58: 
    59:     invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/messaging/WithinAppServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    60: 
    61:     return-void
    62: .end method
    63: 
    64: .method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    65:     .locals 1
    66: 
    67:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection.smali:64 (time_limit; file score 10)

```java
    58: 
    59:     invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/messaging/WithinAppServiceConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    60: 
    61:     return-void
    62: .end method
    63: 
    64: .method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    65:     .locals 1
    66: 
    67:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    68: 
    69:     new-instance v0, Ljava/util/ArrayDeque;
    70: 
    71:     invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V
    72: 
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection.smali:99 (time_limit; file score 10)

```java
    93:     invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    94: 
    95:     move-result-object p1
    96: 
    97:     iput-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection;->connectionIntent:Landroid/content/Intent;
    98: 
    99:     iput-object p3, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
   100: 
   101:     return-void
   102: .end method
   103: 
   104: .method private finishAllInQueue()V
   105:     .locals 1
   106: 
   107:     .prologue
```

## decoded/smali_classes4/com/google/firebase/messaging/WithinAppServiceConnection.smali:592 (time_limit; file score 10)

```java
   586: 
   587:     :cond_0
   588:     new-instance v0, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;
   589: 
   590:     invoke-direct {v0, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;-><init>(Landroid/content/Intent;)V
   591: 
   592:     iget-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
   593: 
   594:     invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->arrangeTimeout(Ljava/util/concurrent/ScheduledExecutorService;)V
   595: 
   596:     iget-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceConnection;->intentQueue:Ljava/util/Queue;
   597: 
   598:     invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
   599: 
   600:     invoke-direct {p0}, Lcom/google/firebase/messaging/WithinAppServiceConnection;->flushQueue()V
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/Trigger$OSTriggerKind.smali:42 (time_limit; file score 10)

```java
    36:         "",
    37:         "value",
    38:         "",
    39:         "(Ljava/lang/String;ILjava/lang/String;)V",
    40:         "toString",
    41:         "TIME_SINCE_LAST_IN_APP",
    42:         "SESSION_TIME",
    43:         "CUSTOM",
    44:         "UNKNOWN",
    45:         "Companion",
    46:         "com.onesignal.inAppMessages"
    47:     }
    48:     k = 0x1
    49:     mv = {
    50:         0x1,
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/Trigger$OSTriggerKind.smali:67 (time_limit; file score 10)

```java
    61: .field private static final synthetic $VALUES:[Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    62: 
    63: .field public static final enum CUSTOM:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    64: 
    65: .field public static final Companion:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind$Companion;
    66: 
    67: .field public static final enum SESSION_TIME:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    68: 
    69: .field public static final enum TIME_SINCE_LAST_IN_APP:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    70: 
    71: .field public static final enum UNKNOWN:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    72: 
    73: 
    74: # instance fields
    75: .field private final value:Ljava/lang/String;
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/Trigger$OSTriggerKind.smali:92 (time_limit; file score 10)

```java
    86:     sget-object v1, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;->TIME_SINCE_LAST_IN_APP:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    87: 
    88:     const/4 v2, 0x0
    89: 
    90:     aput-object v1, v0, v2
    91: 
    92:     sget-object v1, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;->SESSION_TIME:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    93: 
    94:     const/4 v2, 0x1
    95: 
    96:     aput-object v1, v0, v2
    97: 
    98:     sget-object v1, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;->CUSTOM:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
    99: 
   100:     const/4 v2, 0x2
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/Trigger$OSTriggerKind.smali:154 (time_limit; file score 10)

```java
   148:     invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   149: 
   150:     move-result-object v3
   151: 
   152:     invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;-><init>(Ljava/lang/String;ILjava/lang/String;)V
   153: 
   154:     sput-object v0, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;->SESSION_TIME:Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
   155: 
   156:     new-instance v0, Lcom/onesignal/inAppMessages/internal/Trigger$OSTriggerKind;
   157: 
   158:     const/4 v1, 0x2
   159: 
   160:     const-string v2, "\u9f7f"
   161: 
   162:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController.smali:577 (time_limit; file score 10)

```java
   571:     sget-object v2, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer;->INSTANCE:Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer;
   572: 
   573:     new-instance v3, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController$dynamicTriggerShouldFire$1$2;
   574: 
   575:     invoke-direct {v3, v1, v0}, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController$dynamicTriggerShouldFire$1$2;-><init>(Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;Ljava/lang/String;)V
   576: 
   577:     check-cast v3, Ljava/util/TimerTask;
   578: 
   579:     invoke-virtual {v2, v3, v0, v14, v15}, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer;->scheduleTrigger(Ljava/util/TimerTask;Ljava/lang/String;J)V
   580: 
   581:     iget-object v2, v1, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;->scheduledMessages:Ljava/util/List;
   582: 
   583:     invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
   584:     :try_end_4
   585:     .catchall {:try_start_4 .. :try_end_4} :catchall_0
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer.smali:18 (time_limit; file score 10)

```java
    12:         "Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer;",
    13:         "",
    14:         "()V",
    15:         "scheduleTrigger",
    16:         "",
    17:         "task",
    18:         "Ljava/util/TimerTask;",
    19:         "triggerId",
    20:         "",
    21:         "delay",
    22:         "",
    23:         "com.onesignal.inAppMessages"
    24:     }
    25:     k = 0x1
    26:     mv = {
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer.smali:62 (time_limit; file score 10)

```java
    56: 
    57:     return-void
    58: .end method
    59: 
    60: 
    61: # virtual methods
    62: .method public final scheduleTrigger(Ljava/util/TimerTask;Ljava/lang/String;J)V
    63:     .locals 3
    64: 
    65:     const-string v0, "\ua0bf"
    66: 
    67:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    68: 
    69:     move-result-object v0
    70: 
```

## decoded/smali_classes4/com/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerTimer.smali:125 (time_limit; file score 10)

```java
   119:     invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
   120: 
   121:     move-result-object p2
   122: 
   123:     invoke-direct {v0, p2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V
   124: 
   125:     invoke-virtual {v0, p1, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
   126: 
   127:     return-void
   128: .end method
```

## decoded/smali_classes4/com/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService.smali:311 (time_limit; file score 10)

```java
   305: 
   306:     move-result-wide v4
   307: 
   308:     invoke-virtual {p3, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
   309: 
   310:     :cond_6
   311:     invoke-virtual {p6}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;->getSessionTime()J
   312: 
   313:     move-result-wide p1
   314: 
   315:     cmp-long p1, p1, p4
   316: 
   317:     if-lez p1, :cond_7
   318: 
   319:     const-string p1, "\ua75a"
```

## decoded/smali_classes4/com/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService.smali:325 (time_limit; file score 10)

```java
   319:     const-string p1, "\ua75a"
   320: 
   321:     invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   322: 
   323:     move-result-object p1
   324: 
   325:     invoke-virtual {p6}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;->getSessionTime()J
   326: 
   327:     move-result-wide p4
   328: 
   329:     invoke-virtual {p3, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
   330: 
   331:     :cond_7
   332:     iget-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService;->_http:Lcom/onesignal/core/internal/http/IHttpClient;
   333: 
```

## decoded/smali_classes4/com/onesignal/session/internal/outcomes/impl/OutcomeEventsController.smali:79 (time_limit; file score 10)

```java
    73:         "saveUnattributedUniqueOutcomeEvents",
    74:         "saveUniqueOutcome",
    75:         "sendAndCreateOutcomeEvent",
    76:         "Lcom/onesignal/session/internal/outcomes/impl/OutcomeEvent;",
    77:         "weight",
    78:         "",
    79:         "sessionTime",
    80:         "(Ljava/lang/String;FJLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
    81:         "sendOutcomeEvent",
    82:         "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
    83:         "sendOutcomeEventWithValue",
    84:         "(Ljava/lang/String;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
    85:         "sendSavedOutcomeEvent",
    86:         "event",
    87:         "sendSavedOutcomes",
```

## decoded/smali_classes4/com/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository$saveOutcomeEvent$2.smali:466 (time_limit; file score 10)

```java
   460:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   461: 
   462:     move-result-object v0
   463: 
   464:     invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
   465: 
   466:     invoke-virtual {v4}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventParams;->getSessionTime()J
   467: 
   468:     move-result-wide v0
   469: 
   470:     invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
   471: 
   472:     move-result-object p1
   473: 
   474:     const-string v0, "\ua7a2"
```

## decoded/smali_classes4/com/onesignal/user/internal/backend/impl/JSONConverter.smali:483 (time_limit; file score 10)

```java
   477:     const-string v1, "\ua8d1"
   478: 
   479:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   480: 
   481:     move-result-object v1
   482: 
   483:     invoke-virtual {p1}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   484: 
   485:     move-result-object v2
   486: 
   487:     invoke-static {v0, v1, v2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->putSafe(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
   488: 
   489:     move-result-object v0
   490: 
   491:     const-string v1, "\ua8d2"
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:665 (time_limit; file score 10)

```java
   659:     :cond_c
   660:     move v6, v15
   661: 
   662:     :goto_3
   663:     new-instance v7, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;
   664: 
   665:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   666: 
   667:     move-result-object v9
   668: 
   669:     invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;
   670: 
   671:     move-result-object v6
   672: 
   673:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getAmountSpent()Ljava/math/BigDecimal;
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:709 (time_limit; file score 10)

```java
   703: 
   704:     invoke-virtual {v4}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getOnesignalId()Ljava/lang/String;
   705: 
   706:     move-result-object v4
   707: 
   708:     :cond_e
   709:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   710: 
   711:     move-result-object v7
   712: 
   713:     if-eqz v7, :cond_f
   714: 
   715:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   716: 
   717:     move-result-object v7
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:715 (time_limit; file score 10)

```java
   709:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   710: 
   711:     move-result-object v7
   712: 
   713:     if-eqz v7, :cond_f
   714: 
   715:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   716: 
   717:     move-result-object v7
   718: 
   719:     invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
   720: 
   721:     invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
   722: 
   723:     move-result-wide v16
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:727 (time_limit; file score 10)

```java
   721:     invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
   722: 
   723:     move-result-wide v16
   724: 
   725:     check-cast v6, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;
   726: 
   727:     invoke-virtual {v6}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getSessionTime()J
   728: 
   729:     move-result-wide v6
   730: 
   731:     add-long v16, v16, v6
   732: 
   733:     goto :goto_4
   734: 
   735:     :cond_f
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:738 (time_limit; file score 10)

```java
   732: 
   733:     goto :goto_4
   734: 
   735:     :cond_f
   736:     check-cast v6, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;
   737: 
   738:     invoke-virtual {v6}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;->getSessionTime()J
   739: 
   740:     move-result-wide v16
   741: 
   742:     :goto_4
   743:     new-instance v6, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;
   744: 
   745:     invoke-static/range {v16 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
   746: 
```

## decoded/smali_classes4/com/onesignal/user/internal/operations/impl/executors/UpdateUserOperationExecutor.smali:917 (time_limit; file score 10)

```java
   911: 
   912:     :cond_14
   913:     move-object/from16 v18, v2
   914: 
   915:     new-instance v2, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;
   916: 
   917:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionTime()Ljava/lang/Long;
   918: 
   919:     move-result-object v6
   920: 
   921:     invoke-virtual {v10}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;->getSessionCount()Ljava/lang/Integer;
   922: 
   923:     move-result-object v10
   924: 
   925:     invoke-direct {v2, v6, v10, v7, v11}, Lcom/onesignal/user/internal/backend/PropertiesDeltasObject;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/math/BigDecimal;Ljava/util/List;)V
```

## jadx/sources/app/fast/ssh/BillingManager.java:163 (time_limit; file score 10)

```java
   157:         String getPurchaseToken();
   158: 
   159:         long getRefreshWindowMillis();
   160: 
   161:         String getSubscriptionToken();
   162: 
   163:         long getTokenExpiresAtMillis();
   164: 
   165:         void save(String str, long j);
   166: 
   167:         void savePurchaseToken(String str);
   168:     }
   169: 
   170:     public interface TokenExchange {
   171: 
```

## jadx/sources/app/fast/ssh/BillingManager.java:432 (time_limit; file score 10)

```java
   426:             }
   427:         }
   428:     }
   429: 
   430:     public void refreshIfNeeded() {
   431:         String subscriptionToken = this.store.getSubscriptionToken();
   432:         if (subscriptionToken == null || subscriptionToken.isEmpty() || System.currentTimeMillis() < this.store.getTokenExpiresAtMillis() - this.store.getRefreshWindowMillis()) {
   433:             return;
   434:         }
   435:         restore();
   436:     }
   437: 
   438:     public void restore() {
   439:         restore(false);
   440:     }
```

## jadx/sources/app/fast/ssh/PrefsSubscriptionStore.java:11 (time_limit; file score 10)

```java
     5: 
     6: public class PrefsSubscriptionStore implements BillingManager.SubscriptionStore {
     7:     private static final long REFRESH_WINDOW_MS = 21600000;
     8:     private final SharedPreferences prefs;
     9:     private static final String KEY_TOKEN = ProtectedFastSSH.s("⾈");
    10:     private static final String KEY_PURCHASE_TOKEN = ProtectedFastSSH.s("⾊");
    11:     private static final String KEY_TOKEN_EXPIRES = ProtectedFastSSH.s("⾉");
    12:     private static final String PREFS = ProtectedFastSSH.s("⾇");
    13: 
    14:     public PrefsSubscriptionStore(Context context) {
    15:         this.prefs = context.getApplicationContext().getSharedPreferences(ProtectedFastSSH.s("⾇"), 0);
    16:     }
    17: 
    18:     @Override
    19:     public void clear() {
```

## jadx/sources/app/fast/ssh/PrefsSubscriptionStore.java:47 (time_limit; file score 10)

```java
    41:             return null;
    42:         }
    43:         return string;
    44:     }
    45: 
    46:     @Override
    47:     public long getTokenExpiresAtMillis() {
    48:         return this.prefs.getLong(ProtectedFastSSH.s("⾉"), 0L);
    49:     }
    50: 
    51:     @Override
    52:     public void save(String str, long j) {
    53:         this.prefs.edit().putString(ProtectedFastSSH.s("⾈"), str).putLong(ProtectedFastSSH.s("⾉"), j).apply();
    54:     }
    55: 
```

## jadx/sources/app/fast/ssh/VoucherActivity.java:206 (time_limit; file score 10)

```java
   200:         setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
   201:         getSupportActionBar().setDisplayHomeAsUpEnabled(true);
   202:         getSupportActionBar().setDisplayShowHomeEnabled(true);
   203:         ((MaterialButton) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901f5)).setOnClickListener(new VoucherActivity$$ExternalSyntheticLambda0(this));
   204:     }
   205: 
   206:     public void onExpiredState() {
   207:     }
   208: 
   209:     @Override
   210:     public boolean onOptionsItemSelected(MenuItem menuItem) {
   211:         if (menuItem.getItemId() != 16908332) {
   212:             return super.onOptionsItemSelected(menuItem);
   213:         }
   214:         onBackPressed();
```

## jadx/sources/app/fast/ssh/VoucherActivity.java:233 (time_limit; file score 10)

```java
   227:     protected void onStart() {
   228:         super.onStart();
   229:         bindService(new Intent(this, (Class<?>) SSHTunnelService.class), this.serviceConnection, 1);
   230:         VpnStatus.addVpnStateListener(this);
   231:     }
   232: 
   233:     public void onStartCountdown(long j) {
   234:     }
   235: 
   236:     @Override
   237:     protected void onStop() {
   238:         super.onStop();
   239:         unbindService(this.serviceConnection);
   240:         VpnStatus.removeVpnStateListener(this);
   241:     }
```

## jadx/sources/com/android/billingclient/api/zzda.java:18 (time_limit; file score 10)

```java
    12: import com.google.android.gms.internal.play_billing.zzjs;
    13: import com.google.android.gms.internal.play_billing.zzjz;
    14: import java.util.List;
    15: import java.util.Objects;
    16: import java.util.concurrent.ExecutorService;
    17: import java.util.concurrent.Executors;
    18: import java.util.concurrent.ScheduledExecutorService;
    19: import java.util.concurrent.TimeUnit;
    20: import java.util.concurrent.TimeoutException;
    21: 
    22: final class zzda extends BillingClientImpl {
    23:     private final Context zza;
    24:     private volatile int zzb;
    25:     private volatile com.google.android.gms.internal.play_billing.zzba zzc;
    26:     private volatile zzcy zzd;
```

## jadx/sources/com/android/billingclient/api/zzda.java:27 (time_limit; file score 10)

```java
    21: 
    22: final class zzda extends BillingClientImpl {
    23:     private final Context zza;
    24:     private volatile int zzb;
    25:     private volatile com.google.android.gms.internal.play_billing.zzba zzc;
    26:     private volatile zzcy zzd;
    27:     private volatile ScheduledExecutorService zze;
    28: 
    29:     zzda(String str, Context context, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
    30:         super(null, context, null, null, builder);
    31:         this.zzb = 0;
    32:         this.zza = context;
    33:     }
    34: 
    35:     zzda(String str, PendingPurchasesParams pendingPurchasesParams, Context context, PurchasesUpdatedListener purchasesUpdatedListener, UserChoiceBillingListener userChoiceBillingListener, DeveloperProvidedBillingListener developerProvidedBillingListener, zzdd zzddVar, ExecutorService executorService, BillingClient.Builder builder) {
```

## jadx/sources/com/android/billingclient/api/zzda.java:144 (time_limit; file score 10)

```java
   138:             zzaW(zzjs.zzaQ, 28, zzdh.zzF);
   139:             com.google.android.gms.internal.play_billing.zzc.zzo(strS, ProtectedFastSSH.s("㐧"), e2);
   140:             return 0;
   141:         }
   142:     }
   143: 
   144:     private final synchronized ScheduledExecutorService zzaQ() {
   145:         if (this.zze == null) {
   146:             this.zze = Executors.newSingleThreadScheduledExecutor();
   147:         }
   148:         return this.zze;
   149:     }
   150: 
   151:     private final synchronized void zzaR() {
   152:         zzaX(27);
```

## jadx/sources/com/google/android/gms/internal/ads/zzbkl.java:17 (time_limit; file score 10)

```java
    11: import app.fast.ssh.ProtectedFastSSH;
    12: import com.google.ads.mediation.admob.AdMobAdapter;
    13: import com.google.android.gms.ads.AdFormat;
    14: import com.google.android.gms.ads.AdRequest;
    15: import com.google.android.gms.ads.query.QueryInfo;
    16: import java.util.Date;
    17: import java.util.concurrent.ScheduledExecutorService;
    18: import java.util.concurrent.TimeUnit;
    19: import javax.annotation.Nonnull;
    20: import javax.annotation.Nullable;
    21: import org.json.JSONArray;
    22: import org.json.JSONException;
    23: import org.json.JSONObject;
    24: 
    25: public final class zzbkl {
```

Snippets shown: 120. Complete bounded hit indexes are in the corresponding TSV files.