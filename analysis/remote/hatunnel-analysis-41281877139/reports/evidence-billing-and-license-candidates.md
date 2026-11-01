# Billing and license candidates

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/app/fast/ssh/R.java:3992 (billing_license; file score 24)

```java
  3986:         public static final int icon_settings = 0x7f0800de;
  3987:         public static final int icon_settings_action = 0x7f0800df;
  3988:         public static final int icon_share = 0x7f0800e0;
  3989:         public static final int icon_speed = 0x7f0800e1;
  3990:         public static final int icon_status = 0x7f0800e2;
  3991:         public static final int icon_telegram = 0x7f0800e3;
  3992:         public static final int icon_unlimited = 0x7f0800e4;
  3993:         public static final int icon_upload = 0x7f0800e5;
  3994:         public static final int icon_wizard = 0x7f0800e6;
  3995:         public static final int icons8_google_play = 0x7f0800e7;
  3996:         public static final int logo_play_prism_24dp = 0x7f0800e8;
  3997:         public static final int m3_action_bar_item_background = 0x7f0800e9;
  3998:         public static final int m3_avd_hide_password = 0x7f0800ea;
  3999:         public static final int m3_avd_show_password = 0x7f0800eb;
  4000:         public static final int m3_bottom_sheet_drag_handle = 0x7f0800ec;
```

## jadx/sources/app/fast/ssh/R.java:5149 (billing_license; file score 24)

```java
  5143: 
  5144:         private plurals() {
  5145:         }
  5146:     }
  5147: 
  5148:     public static final class raw {
  5149:         public static final int com_android_billingclient_heterodyne_info = 0x7f110000;
  5150:         public static final int com_android_billingclient_registration_info = 0x7f110001;
  5151:         public static final int consumer_onesignal_keep = 0x7f110002;
  5152:         public static final int firebase_common_keep = 0x7f110003;
  5153: 
  5154:         private raw() {
  5155:         }
  5156:     }
  5157: 
```

## jadx/sources/app/fast/ssh/R.java:5150 (billing_license; file score 24)

```java
  5144:         private plurals() {
  5145:         }
  5146:     }
  5147: 
  5148:     public static final class raw {
  5149:         public static final int com_android_billingclient_heterodyne_info = 0x7f110000;
  5150:         public static final int com_android_billingclient_registration_info = 0x7f110001;
  5151:         public static final int consumer_onesignal_keep = 0x7f110002;
  5152:         public static final int firebase_common_keep = 0x7f110003;
  5153: 
  5154:         private raw() {
  5155:         }
  5156:     }
  5157: 
  5158:     public static final class string {
```

## jadx/sources/app/fast/ssh/R.java:9409 (billing_license; file score 24)

```java
  9403: 
  9404:         private styleable() {
  9405:         }
  9406:     }
  9407: 
  9408:     public static final class xml {
  9409:         public static final int com_android_billingclient_phenotype = 0x7f150000;
  9410:         public static final int image_share_filepaths = 0x7f150001;
  9411:         public static final int m3_button_group_child_size_change = 0x7f150002;
  9412:         public static final int m3_list_item_shape_state_list = 0x7f150003;
  9413:         public static final int m3_split_button_inner_corner_size_state_list = 0x7f150004;
  9414:         public static final int m3expressive_button_shape_state_list = 0x7f150005;
  9415:         public static final int m3expressive_connected_buttons_inner_corner_size_state_list = 0x7f150006;
  9416:         public static final int network_security_config = 0x7f150007;
  9417:         public static final int preferences = 0x7f150008;
```

## decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali:114 (billing_license; file score 18)

```java
   108: .field private static final INT_TYPE:Ljava/lang/String;
   109: 
   110: .field private static final LOCK:Ljava/lang/Object;
   111: 
   112: .field private static final SQL_CREATE_ENTRIES:Ljava/lang/String;
   113: 
   114: .field private static final SQL_CREATE_IN_APP_MESSAGE_ENTRIES:Ljava/lang/String;
   115: 
   116: .field private static final SQL_INDEX_ENTRIES:[Ljava/lang/String;
   117: 
   118: .field private static final TEXT_TYPE:Ljava/lang/String;
   119: 
   120: .field private static final TIMESTAMP_TYPE:Ljava/lang/String;
   121: 
   122: 
```

## decoded/smali_classes4/com/onesignal/core/internal/database/impl/OSDatabase.smali:145 (billing_license; file score 18)

```java
   139:     const-string v0, "\u9c1f"
   140: 
   141:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   142: 
   143:     move-result-object v0
   144: 
   145:     sput-object v0, Lcom/onesignal/core/internal/database/impl/OSDatabase;->SQL_CREATE_IN_APP_MESSAGE_ENTRIES:Ljava/lang/String;
   146: 
   147:     const-string v0, "\u9c20"
   148: 
   149:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   150: 
   151:     move-result-object v0
   152: 
   153:     sput-object v0, Lcom/onesignal/core/internal/database/impl/OSDatabase;->INTEGER_PRIMARY_KEY_TYPE:Ljava/lang/String;
```

## jadx/sources/com/onesignal/core/internal/database/impl/OSDatabase.java:36 (billing_license; file score 18)

```java
    30:     private static final int DB_OPEN_RETRY_BACKOFF = 400;
    31:     private static final int DB_OPEN_RETRY_MAX = 5;
    32:     private static final int DB_VERSION = 9;
    33:     public static final int DEFAULT_TTL_IF_NOT_IN_PAYLOAD = 259200;
    34:     private final OutcomeTableProvider _outcomeTableProvider;
    35:     private static final String DATABASE_NAME = ProtectedFastSSH.s("鰞");
    36:     private static final String SQL_CREATE_IN_APP_MESSAGE_ENTRIES = ProtectedFastSSH.s("鰟");
    37:     private static final String INTEGER_PRIMARY_KEY_TYPE = ProtectedFastSSH.s("鰠");
    38:     private static final String SQL_CREATE_ENTRIES = ProtectedFastSSH.s("鰡");
    39:     private static final String FLOAT_TYPE = ProtectedFastSSH.s("鰢");
    40:     private static final String COMMA_SEP = ProtectedFastSSH.s("鰣");
    41:     private static final String INT_TYPE = ProtectedFastSSH.s("鰤");
    42:     private static final String TEXT_TYPE = ProtectedFastSSH.s("鰥");
    43:     private static final String TIMESTAMP_TYPE = ProtectedFastSSH.s("鰦");
    44:     private static final Object LOCK = new Object();
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:11 (billing_license; file score 17)

```java
     5: # interfaces
     6: .implements Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;
     7: .implements Lapp/fast/ssh/core/VpnStatus$ByteCountListener;
     8: .implements Lapp/fast/ssh/core/VpnStatus$VpnStateListener;
     9: .implements Lapp/fast/ssh/core/VpnStatus$VpnMessageListener;
    10: .implements Lapp/fast/ssh/RewardedAdSyncController$Ui;
    11: .implements Lapp/fast/ssh/BillingManager$StateListener;
    12: 
    13: 
    14: # static fields
    15: .field private static final CUSTOM_SWITCH:Ljava/lang/String;
    16: 
    17: .field private static final DNS_PRIMARY_HOST:Ljava/lang/String;
    18: 
    19: .field private static final EXPORT_CONFIG:I = 0x3f6
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1874 (billing_license; file score 17)

```java
  1868: .end method
  1869: 
  1870: .method private loadConnectedInterstitialAd()V
  1871:     .locals 4
  1872: 
  1873:     .prologue
  1874:     new-instance v0, Lapp/fast/ssh/Subscription;
  1875: 
  1876:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  1877: 
  1878:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1879: 
  1880:     move-result-object v2
  1881: 
  1882:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1882 (billing_license; file score 17)

```java
  1876:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  1877: 
  1878:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1879: 
  1880:     move-result-object v2
  1881: 
  1882:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  1883: 
  1884:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  1885: 
  1886:     iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
  1887: 
  1888:     if-nez v1, :cond_0
  1889: 
  1890:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1890 (billing_license; file score 17)

```java
  1884:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  1885: 
  1886:     iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
  1887: 
  1888:     if-nez v1, :cond_0
  1889: 
  1890:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1891: 
  1892:     move-result v0
  1893: 
  1894:     if-eqz v0, :cond_0
  1895: 
  1896:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1897: 
  1898:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1934 (billing_license; file score 17)

```java
  1928: .end method
  1929: 
  1930: .method private loadDisConnectedInterstitialAd()V
  1931:     .locals 4
  1932: 
  1933:     .prologue
  1934:     new-instance v0, Lapp/fast/ssh/Subscription;
  1935: 
  1936:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  1937: 
  1938:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1939: 
  1940:     move-result-object v2
  1941: 
  1942:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1942 (billing_license; file score 17)

```java
  1936:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  1937: 
  1938:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1939: 
  1940:     move-result-object v2
  1941: 
  1942:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  1943: 
  1944:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  1945: 
  1946:     iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
  1947: 
  1948:     if-nez v1, :cond_0
  1949: 
  1950:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1950 (billing_license; file score 17)

```java
  1944:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  1945: 
  1946:     iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
  1947: 
  1948:     if-nez v1, :cond_0
  1949: 
  1950:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1951: 
  1952:     move-result v0
  1953: 
  1954:     if-eqz v0, :cond_0
  1955: 
  1956:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1957: 
  1958:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4219 (billing_license; file score 17)

```java
  4213: .end method
  4214: 
  4215: .method synthetic lambda$onCreate$0$app-fast-ssh-HomeFragment(Landroid/view/View;)V
  4216:     .locals 2
  4217: 
  4218:     .prologue
  4219:     new-instance p1, Lapp/fast/ssh/Subscription;
  4220: 
  4221:     new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;
  4222: 
  4223:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  4224: 
  4225:     move-result-object v1
  4226: 
  4227:     invoke-direct {v0, v1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4221 (billing_license; file score 17)

```java
  4215: .method synthetic lambda$onCreate$0$app-fast-ssh-HomeFragment(Landroid/view/View;)V
  4216:     .locals 2
  4217: 
  4218:     .prologue
  4219:     new-instance p1, Lapp/fast/ssh/Subscription;
  4220: 
  4221:     new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;
  4222: 
  4223:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  4224: 
  4225:     move-result-object v1
  4226: 
  4227:     invoke-direct {v0, v1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  4228: 
  4229:     invoke-direct {p1, v0}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4231 (billing_license; file score 17)

```java
  4225:     move-result-object v1
  4226: 
  4227:     invoke-direct {v0, v1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  4228: 
  4229:     invoke-direct {p1, v0}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  4230: 
  4231:     invoke-virtual {p1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  4232: 
  4233:     move-result p1
  4234: 
  4235:     if-eqz p1, :cond_1
  4236: 
  4237:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  4238: 
  4239:     invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4771 (billing_license; file score 17)

```java
  4765: 
  4766:     invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V
  4767: 
  4768:     return-void
  4769: .end method
  4770: 
  4771: .method public onBillingState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
  4772:     .locals 2
  4773: 
  4774:     .prologue
  4775:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->isAdded()Z
  4776: 
  4777:     move-result v0
  4778: 
  4779:     if-eqz v0, :cond_5
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4790 (billing_license; file score 17)

```java
  4784: 
  4785:     if-nez v0, :cond_0
  4786: 
  4787:     goto :goto_0
  4788: 
  4789:     :cond_0
  4790:     sget-object v0, Lapp/fast/ssh/HomeFragment$28;->$SwitchMap$app$fast$ssh$BillingManager$State:[I
  4791: 
  4792:     invoke-virtual {p1}, Lapp/fast/ssh/BillingManager$State;->ordinal()I
  4793: 
  4794:     move-result p1
  4795: 
  4796:     aget p1, v0, p1
  4797: 
  4798:     const/4 v0, 0x1
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5896 (billing_license; file score 17)

```java
  5890: .method public onResume()V
  5891:     .locals 3
  5892: 
  5893:     .prologue
  5894:     invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V
  5895: 
  5896:     new-instance v0, Lapp/fast/ssh/Subscription;
  5897: 
  5898:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  5899: 
  5900:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5901: 
  5902:     move-result-object v2
  5903: 
  5904:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5904 (billing_license; file score 17)

```java
  5898:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  5899: 
  5900:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5901: 
  5902:     move-result-object v2
  5903: 
  5904:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  5905: 
  5906:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  5907: 
  5908:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  5909: 
  5910:     move-result v0
  5911: 
  5912:     if-eqz v0, :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5933 (billing_license; file score 17)

```java
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
  5939:     move-result-object v2
  5940: 
  5941:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5941 (billing_license; file score 17)

```java
  5935:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  5936: 
  5937:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5938: 
  5939:     move-result-object v2
  5940: 
  5941:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  5942: 
  5943:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  5944: 
  5945:     sput-wide p1, Lapp/fast/ssh/HomeFragment;->LAST_SESSION_MILLIS:J
  5946: 
  5947:     sput-wide p1, Lapp/fast/ssh/HomeFragment;->LAST_MILLIS:J
  5948: 
  5949:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5955 (billing_license; file score 17)

```java
  5949:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  5950: 
  5951:     move-result-object v1
  5952: 
  5953:     new-instance v2, Lapp/fast/ssh/HomeFragment$15;
  5954: 
  5955:     invoke-direct {v2, p0, p1, p2, v0}, Lapp/fast/ssh/HomeFragment$15;-><init>(Lapp/fast/ssh/HomeFragment;JLapp/fast/ssh/Subscription;)V
  5956: 
  5957:     invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
  5958: 
  5959:     return-void
  5960: .end method
  5961: 
  5962: .method public onStickyMessageReceived(Ljava/lang/String;)V
  5963:     .locals 0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5971 (billing_license; file score 17)

```java
  5965:     return-void
  5966: .end method
  5967: 
  5968: .method public onUpdateState(Lapp/fast/ssh/core/VpnStatus$VpnState;)V
  5969:     .locals 3
  5970: 
  5971:     new-instance v0, Lapp/fast/ssh/Subscription;
  5972: 
  5973:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
  5974: 
  5975:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5976: 
  5977:     move-result-object v2
  5978: 
  5979:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5981 (billing_license; file score 17)

```java
  5975:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  5976: 
  5977:     move-result-object v2
  5978: 
  5979:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  5980: 
  5981:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  5982: 
  5983:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  5984: 
  5985:     move-result-object v1
  5986: 
  5987:     new-instance v2, Lapp/fast/ssh/HomeFragment$13;
  5988: 
  5989:     invoke-direct {v2, p0, p1, v0}, Lapp/fast/ssh/HomeFragment$13;-><init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/core/VpnStatus$VpnState;Lapp/fast/ssh/Subscription;)V
```

## decoded/smali/app/fast/ssh/MainActivity.smali:992 (billing_license; file score 17)

```java
   986:     invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
   987: 
   988:     invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
   989: 
   990:     invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V
   991: 
   992:     new-instance v1, Lapp/fast/ssh/Subscription;
   993: 
   994:     new-instance v2, Lapp/fast/ssh/PrefsSubscriptionStore;
   995: 
   996:     invoke-direct {v2, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   997: 
   998:     invoke-direct {v1, v2}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   999: 
  1000:     invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1000 (billing_license; file score 17)

```java
   994:     new-instance v2, Lapp/fast/ssh/PrefsSubscriptionStore;
   995: 
   996:     invoke-direct {v2, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   997: 
   998:     invoke-direct {v1, v2}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   999: 
  1000:     invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1001: 
  1002:     move-result v2
  1003: 
  1004:     if-eqz v2, :cond_1
  1005: 
  1006:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->loadUpdateSuccessInterstitialAd()V
  1007: 
  1008:     :cond_1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1013 (billing_license; file score 17)

```java
  1007: 
  1008:     :cond_1
  1009:     iget-object v2, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
  1010: 
  1011:     new-instance v3, Lapp/fast/ssh/MainActivity$2;
  1012: 
  1013:     invoke-direct {v3, p0, v1, v0}, Lapp/fast/ssh/MainActivity$2;-><init>(Lapp/fast/ssh/MainActivity;Lapp/fast/ssh/Subscription;Landroid/app/ProgressDialog;)V
  1014: 
  1015:     invoke-virtual {v2, v3}, Lapp/fast/ssh/util/ResourceUpdater;->requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V
  1016: 
  1017:     invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
  1018: 
  1019:     return-void
  1020: .end method
  1021: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1028 (billing_license; file score 17)

```java
  1022: 
  1023: # virtual methods
  1024: .method public debugState()Ljava/lang/String;
  1025:     .locals 6
  1026: 
  1027:     .prologue
  1028:     new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;
  1029: 
  1030:     invoke-direct {v0, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  1031: 
  1032:     invoke-virtual {v0}, Lapp/fast/ssh/PrefsSubscriptionStore;->getSubscriptionToken()Ljava/lang/String;
  1033: 
  1034:     move-result-object v1
  1035: 
  1036:     if-nez v1, :cond_0
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1030 (billing_license; file score 17)

```java
  1024: .method public debugState()Ljava/lang/String;
  1025:     .locals 6
  1026: 
  1027:     .prologue
  1028:     new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;
  1029: 
  1030:     invoke-direct {v0, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  1031: 
  1032:     invoke-virtual {v0}, Lapp/fast/ssh/PrefsSubscriptionStore;->getSubscriptionToken()Ljava/lang/String;
  1033: 
  1034:     move-result-object v1
  1035: 
  1036:     if-nez v1, :cond_0
  1037: 
  1038:     const-string/jumbo v0, "\u2f76"
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1047 (billing_license; file score 17)

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

## decoded/smali/app/fast/ssh/MainActivity.smali:1941 (billing_license; file score 17)

```java
  1935:     invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getApplicationContext()Landroid/content/Context;
  1936: 
  1937:     move-result-object v0
  1938: 
  1939:     check-cast v0, Lapp/fast/ssh/FastSSH;
  1940: 
  1941:     invoke-virtual {v0}, Lapp/fast/ssh/FastSSH;->getBillingManager()Lapp/fast/ssh/BillingManager;
  1942: 
  1943:     move-result-object v0
  1944: 
  1945:     const/4 v1, 0x0
  1946: 
  1947:     invoke-virtual {v0, v1}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V
  1948: 
  1949:     return-void
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1980 (billing_license; file score 17)

```java
  1974:     invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getApplicationContext()Landroid/content/Context;
  1975: 
  1976:     move-result-object v1
  1977: 
  1978:     check-cast v1, Lapp/fast/ssh/FastSSH;
  1979: 
  1980:     invoke-virtual {v1}, Lapp/fast/ssh/FastSSH;->getBillingManager()Lapp/fast/ssh/BillingManager;
  1981: 
  1982:     move-result-object v1
  1983: 
  1984:     iget-object v2, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;
  1985: 
  1986:     invoke-virtual {v1, v2}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V
  1987: 
  1988:     invoke-virtual {v1}, Lapp/fast/ssh/BillingManager;->refreshIfNeeded()V
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1998 (billing_license; file score 17)

```java
  1992:     invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1993: 
  1994:     invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1995: 
  1996:     move-result-object v1
  1997: 
  1998:     new-instance v2, Lapp/fast/ssh/Subscription;
  1999: 
  2000:     new-instance v3, Lapp/fast/ssh/PrefsSubscriptionStore;
  2001: 
  2002:     invoke-direct {v3, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  2003: 
  2004:     invoke-direct {v2, v3}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  2005: 
  2006:     invoke-virtual {v2}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/MainActivity.smali:2000 (billing_license; file score 17)

```java
  1994:     invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1995: 
  1996:     move-result-object v1
  1997: 
  1998:     new-instance v2, Lapp/fast/ssh/Subscription;
  1999: 
  2000:     new-instance v3, Lapp/fast/ssh/PrefsSubscriptionStore;
  2001: 
  2002:     invoke-direct {v3, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
  2003: 
  2004:     invoke-direct {v2, v3}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
  2005: 
  2006:     invoke-virtual {v2}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  2007: 
  2008:     move-result v2
```

## jadx/sources/app/fast/ssh/HomeFragment.java:87 (billing_license; file score 17)

```java
    81: import java.util.Locale;
    82: import java.util.concurrent.TimeUnit;
    83: import org.json.JSONArray;
    84: import org.json.JSONException;
    85: import org.json.JSONObject;
    86: 
    87: public class HomeFragment extends Fragment implements PayloadGen.GeneratorListener, VpnStatus.ByteCountListener, VpnStatus.VpnStateListener, VpnStatus.VpnMessageListener, RewardedAdSyncController.Ui, BillingManager.StateListener {
    88:     private static final int EXPORT_CONFIG = 1014;
    89:     private static final int FILE_READ_REQUEST_CODE = 1011;
    90:     private static final int FILE_WRITE_REQUEST_CODE = 1012;
    91:     public static TimerConf GlobalTimerConf = null;
    92:     private static final int IMPORT_CONFIG = 1013;
    93:     public static long LAST_ACCESS_TOPUP_MILLIS;
    94:     public static long LAST_MILLIS;
    95:     public static long LAST_SESSION_MILLIS;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:272 (billing_license; file score 17)

```java
   266:             HomeFragment.access$1600(HomeFragment.this).setText(HomeFragment.access$1400(this.val$in));
   267:         }
   268:     }
   269: 
   270:     class AnonymousClass13 implements Runnable {
   271:         final VpnStatus.VpnState val$state;
   272:         final Subscription val$subscription;
   273: 
   274:         AnonymousClass13(VpnStatus.VpnState vpnState, Subscription subscription) {
   275:             this.val$state = vpnState;
   276:             this.val$subscription = subscription;
   277:         }
   278: 
   279:         @Override
   280:         public void run() {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:293 (billing_license; file score 17)

```java
   287:             if (i != 2) {
   288:                 if (i != 3) {
   289:                     return;
   290:                 }
   291:                 HomeFragment.access$1700(HomeFragment.this).setText(ProtectedFastSSH.s("⺉"));
   292:                 HomeFragment.access$1800(HomeFragment.this, false);
   293:                 if (HomeFragment.access$2200(HomeFragment.this) == null || !this.val$subscription.shouldRequestAds()) {
   294:                     HomeFragment.access$2300(HomeFragment.this);
   295:                     if (HomeFragment.access$1900(HomeFragment.this) != null && this.val$subscription.shouldRequestAds()) {
   296:                         HomeFragment homeFragment = HomeFragment.this;
   297:                         HomeFragment.access$2000(homeFragment, HomeFragment.access$1900(homeFragment), HomeFragment.this.getActivity());
   298:                     }
   299:                 } else {
   300:                     HomeFragment homeFragment2 = HomeFragment.this;
   301:                     HomeFragment.access$2000(homeFragment2, HomeFragment.access$2200(homeFragment2), HomeFragment.this.getActivity());
```

## jadx/sources/app/fast/ssh/HomeFragment.java:315 (billing_license; file score 17)

```java
   309:                 }
   310:                 HomeFragment.access$2700(HomeFragment.this).setVisibility(8);
   311:                 return;
   312:             }
   313:             HomeFragment.access$1700(HomeFragment.this).setText(ProtectedFastSSH.s("⺊"));
   314:             HomeFragment.access$1800(HomeFragment.this, true);
   315:             if (HomeFragment.access$1900(HomeFragment.this) == null || !this.val$subscription.shouldRequestAds()) {
   316:                 HomeFragment.access$2100(HomeFragment.this);
   317:                 if (HomeFragment.access$2200(HomeFragment.this) != null && this.val$subscription.shouldRequestAds()) {
   318:                     HomeFragment homeFragment3 = HomeFragment.this;
   319:                     HomeFragment.access$2000(homeFragment3, HomeFragment.access$2200(homeFragment3), HomeFragment.this.getActivity());
   320:                 }
   321:             } else {
   322:                 HomeFragment homeFragment4 = HomeFragment.this;
   323:                 HomeFragment.access$2000(homeFragment4, HomeFragment.access$1900(homeFragment4), HomeFragment.this.getActivity());
```

## jadx/sources/app/fast/ssh/HomeFragment.java:331 (billing_license; file score 17)

```java
   325:             if (HomeFragment.access$2200(HomeFragment.this) == null) {
   326:                 HomeFragment.access$2300(HomeFragment.this);
   327:             }
   328:             if (HomeFragment.GlobalTimerConf != null && HomeFragment.GlobalTimerConf.button_text != null) {
   329:                 HomeFragment.access$2400(HomeFragment.this).setText(HomeFragment.GlobalTimerConf.button_text);
   330:             }
   331:             if (!this.val$subscription.shouldRequestAds() || HomeFragment.access$2500() == null || !HomeFragment.access$2600() || HomeFragment.access$2700(HomeFragment.this).getVisibility() == 0) {
   332:                 return;
   333:             }
   334:             HomeFragment.access$2700(HomeFragment.this).setVisibility(0);
   335:             HomeFragment.access$2802(new WeakReference(HomeFragment.access$2900(HomeFragment.this)));
   336:         }
   337:     }
   338: 
   339:     class AnonymousClass14 implements Runnable {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:354 (billing_license; file score 17)

```java
   348:             Toast.makeText(HomeFragment.this.getContext(), this.val$msg, 1).show();
   349:         }
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
```

## jadx/sources/app/fast/ssh/HomeFragment.java:383 (billing_license; file score 17)

```java
   377:                     return;
   378:                 }
   379:                 HomeFragment.access$3000(HomeFragment.this).prefetch(HomeFragment.this.getActivity(), HomeFragment.this);
   380:             }
   381:         }
   382: 
   383:         AnonymousClass15(long j, Subscription subscription) {
   384:             this.val$millis = j;
   385:             this.val$subscription = subscription;
   386:         }
   387: 
   388:         @Override
   389:         public void run() {
   390:             if (HomeFragment.access$2500() != null) {
   391:                 HomeFragment.access$2500().cancel();
```

## jadx/sources/app/fast/ssh/HomeFragment.java:397 (billing_license; file score 17)

```java
   391:                 HomeFragment.access$2500().cancel();
   392:             }
   393:             HomeFragment.access$2602(false);
   394:             HomeFragment.access$2502(new AnonymousClass1(this.val$millis, 1000L));
   395:             HomeFragment.access$2500().start();
   396:             HomeFragment.access$2602(true);
   397:             if (this.val$subscription.shouldRequestAds()) {
   398:                 HomeFragment.access$2700(HomeFragment.this).setVisibility(0);
   399:             }
   400:         }
   401:     }
   402: 
   403:     class AnonymousClass16 implements Runnable {
   404:         AnonymousClass16() {
   405:         }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:749 (billing_license; file score 17)

```java
   743:             String str = ProtectedFastSSH.s("⺢") + volleyError.toString();
   744:             ProtectedFastSSH.s("⺣");
   745:         }
   746:     }
   747: 
   748:     static class AnonymousClass28 {
   749:         static final int[] $SwitchMap$app$fast$ssh$BillingManager$State;
   750:         static final int[] $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState;
   751: 
   752:         static {
   753:             int[] iArr = new int[BillingManager.State.values().length];
   754:             $SwitchMap$app$fast$ssh$BillingManager$State = iArr;
   755:             try {
   756:                 iArr[BillingManager.State.SUBSCRIBED.ordinal()] = 1;
   757:             } catch (NoSuchFieldError unused) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:753 (billing_license; file score 17)

```java
   747: 
   748:     static class AnonymousClass28 {
   749:         static final int[] $SwitchMap$app$fast$ssh$BillingManager$State;
   750:         static final int[] $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState;
   751: 
   752:         static {
   753:             int[] iArr = new int[BillingManager.State.values().length];
   754:             $SwitchMap$app$fast$ssh$BillingManager$State = iArr;
   755:             try {
   756:                 iArr[BillingManager.State.SUBSCRIBED.ordinal()] = 1;
   757:             } catch (NoSuchFieldError unused) {
   758:             }
   759:             try {
   760:                 $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.NOT_SUBSCRIBED.ordinal()] = 2;
   761:             } catch (NoSuchFieldError unused2) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:760 (billing_license; file score 17)

```java
   754:             $SwitchMap$app$fast$ssh$BillingManager$State = iArr;
   755:             try {
   756:                 iArr[BillingManager.State.SUBSCRIBED.ordinal()] = 1;
   757:             } catch (NoSuchFieldError unused) {
   758:             }
   759:             try {
   760:                 $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.NOT_SUBSCRIBED.ordinal()] = 2;
   761:             } catch (NoSuchFieldError unused2) {
   762:             }
   763:             try {
   764:                 $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.FAILED.ordinal()] = 3;
   765:             } catch (NoSuchFieldError unused3) {
   766:             }
   767:             try {
   768:                 $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.UNKNOWN.ordinal()] = 4;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:818 (billing_license; file score 17)

```java
   812:     class AnonymousClass4 implements View.OnClickListener {
   813:         AnonymousClass4() {
   814:         }
   815: 
   816:         @Override
   817:         public void onClick(View view) {
   818:             BillingManager billingManager = ((FastSSH) HomeFragment.this.getContext().getApplicationContext()).getBillingManager();
   819:             billingManager.setStateListener(HomeFragment.this);
   820:             HomeFragment.access$1102(HomeFragment.this, true);
   821:             billingManager.purchase(HomeFragment.this.getActivity());
   822:         }
   823:     }
   824: 
   825:     class AnonymousClass5 implements DialogInterface.OnShowListener {
   826:         final TextView val$message_text;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:821 (billing_license; file score 17)

```java
   815: 
   816:         @Override
   817:         public void onClick(View view) {
   818:             BillingManager billingManager = ((FastSSH) HomeFragment.this.getContext().getApplicationContext()).getBillingManager();
   819:             billingManager.setStateListener(HomeFragment.this);
   820:             HomeFragment.access$1102(HomeFragment.this, true);
   821:             billingManager.purchase(HomeFragment.this.getActivity());
   822:         }
   823:     }
   824: 
   825:     class AnonymousClass5 implements DialogInterface.OnShowListener {
   826:         final TextView val$message_text;
   827: 
   828:         class AnonymousClass1 extends CountDownTimer {
   829:             AnonymousClass1(long j, long j2) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1336 (billing_license; file score 17)

```java
  1330:         builder.setPositiveButton(ProtectedFastSSH.s("⻣"), new AnonymousClass22());
  1331:         builder.setNeutralButton(ProtectedFastSSH.s("⻤"), new AnonymousClass23());
  1332:         builder.create().show();
  1333:     }
  1334: 
  1335:     private void loadConnectedInterstitialAd() {
  1336:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
  1337:         if (this.connectedInterstitial == null && subscription.shouldRequestAds()) {
  1338:             AdRequest adRequestBuild = new AdRequest.Builder().build();
  1339:             if (getContext() != null) {
  1340:                 InterstitialAd.load(getContext(), ProtectedFastSSH.s("⻥"), adRequestBuild, new AnonymousClass24());
  1341:             }
  1342:         }
  1343:     }
  1344: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1346 (billing_license; file score 17)

```java
  1340:                 InterstitialAd.load(getContext(), ProtectedFastSSH.s("⻥"), adRequestBuild, new AnonymousClass24());
  1341:             }
  1342:         }
  1343:     }
  1344: 
  1345:     private void loadDisConnectedInterstitialAd() {
  1346:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
  1347:         if (this.disConnectedInterstitial == null && subscription.shouldRequestAds()) {
  1348:             AdRequest adRequestBuild = new AdRequest.Builder().build();
  1349:             if (getContext() != null) {
  1350:                 InterstitialAd.load(getContext(), ProtectedFastSSH.s("⻦"), adRequestBuild, new AnonymousClass25());
  1351:             }
  1352:         }
  1353:     }
  1354: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1729 (billing_license; file score 17)

```java
  1723:     public boolean isLoadingVisible(long j) {
  1724:         AlertDialog alertDialog = this.waitDialog;
  1725:         return alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j;
  1726:     }
  1727: 
  1728:     void m463lambda$onCreate$0$appfastsshHomeFragment(View view) {
  1729:         if (new Subscription(new PrefsSubscriptionStore(getContext())).shouldRequestAds()) {
  1730:             RewardedAd rewardedAdTryConsumeCached = this.rewardedAdSyncController.tryConsumeCached();
  1731:             if (rewardedAdTryConsumeCached != null) {
  1732:                 showRewarded(rewardedAdTryConsumeCached);
  1733:             } else {
  1734:                 this.rewardedAdSyncController.onUserClick(getActivity(), this);
  1735:             }
  1736:         }
  1737:     }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1830 (billing_license; file score 17)

```java
  1824:     @Override
  1825:     public void onAttach(Context context) {
  1826:         super.onAttach(context);
  1827:     }
  1828: 
  1829:     @Override
  1830:     public void onBillingState(BillingManager.State state, String str) {
  1831:         if (!isAdded() || getContext() == null) {
  1832:             return;
  1833:         }
  1834:         int i = AnonymousClass28.$SwitchMap$app$fast$ssh$BillingManager$State[state.ordinal()];
  1835:         if (i == 1) {
  1836:             if (this.purchaseInFlight) {
  1837:                 this.purchaseInFlight = false;
  1838:                 Toast.makeText(getContext(), ProtectedFastSSH.s("⼻"), 0).show();
```

## jadx/sources/app/fast/ssh/HomeFragment.java:2033 (billing_license; file score 17)

```java
  2027:         }
  2028:     }
  2029: 
  2030:     @Override
  2031:     public void onResume() {
  2032:         super.onResume();
  2033:         if (new Subscription(new PrefsSubscriptionStore(getContext())).shouldRequestAds()) {
  2034:             requestNewAdBanner(this.bannerAd);
  2035:             loadConnectedInterstitialAd();
  2036:             loadDisConnectedInterstitialAd();
  2037:         }
  2038:         VpnStatus.addByteCountListener(this);
  2039:         fetchAndShowTicker();
  2040:     }
  2041: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:2043 (billing_license; file score 17)

```java
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
  2051: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:2053 (billing_license; file score 17)

```java
  2047:     }
  2048: 
  2049:     public void onStickyMessageReceived(String str) {
  2050:     }
  2051: 
  2052:     public void onUpdateState(VpnStatus.VpnState vpnState) {
  2053:         getActivity().runOnUiThread(new AnonymousClass13(vpnState, new Subscription(new PrefsSubscriptionStore(getContext()))));
  2054:     }
  2055: 
  2056:     public void processImportString(String str, Context context) {
  2057:         try {
  2058:             JSONObject jSONObjectOptJSONObject = new JSONObject(AESEncryption.decrypt(str, ProtectedFastSSH.s("⻰"))).optJSONObject(ProtectedFastSSH.s("⻫"));
  2059:             if (jSONObjectOptJSONObject == null) {
  2060:                 finishImport(str);
  2061:             } else if (jSONObjectOptJSONObject.optBoolean(ProtectedFastSSH.s("⽄"))) {
```

## jadx/sources/app/fast/ssh/MainActivity.java:104 (billing_license; file score 17)

```java
    98:             }
    99:         }
   100:     }
   101: 
   102:     class AnonymousClass2 implements ResourceUpdater.UpdateListener {
   103:         final ProgressDialog val$progress;
   104:         final Subscription val$subscription;
   105: 
   106:         AnonymousClass2(Subscription subscription, ProgressDialog progressDialog) {
   107:             this.val$subscription = subscription;
   108:             this.val$progress = progressDialog;
   109:         }
   110: 
   111:         @Override
   112:         public void onErrorOccurred() {
```

## jadx/sources/app/fast/ssh/MainActivity.java:122 (billing_license; file score 17)

```java
   116: 
   117:         @Override
   118:         public void onResponseReceived(JSONObject jSONObject) {
   119:             try {
   120:                 if (!MainActivity.access$000(MainActivity.this, jSONObject)) {
   121:                     Toast.makeText(MainActivity.this, ProtectedFastSSH.s("⽤"), 0).show();
   122:                 } else if (MainActivity.access$100(MainActivity.this) != null && this.val$subscription.shouldRequestAds()) {
   123:                     MainActivity.access$100(MainActivity.this).show(MainActivity.this);
   124:                 }
   125:                 this.val$progress.dismiss();
   126:             } catch (Exception unused) {
   127:                 onErrorOccurred();
   128:             }
   129:         }
   130:     }
```

## jadx/sources/app/fast/ssh/MainActivity.java:428 (billing_license; file score 17)

```java
   422:             return;
   423:         }
   424:         ProgressDialog progressDialog = new ProgressDialog(this);
   425:         progressDialog.setMessage(ProtectedFastSSH.s("⽵"));
   426:         progressDialog.setCancelable(false);
   427:         progressDialog.setCanceledOnTouchOutside(false);
   428:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(this));
   429:         if (subscription.shouldRequestAds()) {
   430:             loadUpdateSuccessInterstitialAd();
   431:         }
   432:         this.resourceUpdater.requestUpdate(new AnonymousClass2(subscription, progressDialog));
   433:         progressDialog.show();
   434:     }
   435: 
   436:     public String debugState() {
```

## jadx/sources/app/fast/ssh/MainActivity.java:432 (billing_license; file score 17)

```java
   426:         progressDialog.setCancelable(false);
   427:         progressDialog.setCanceledOnTouchOutside(false);
   428:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(this));
   429:         if (subscription.shouldRequestAds()) {
   430:             loadUpdateSuccessInterstitialAd();
   431:         }
   432:         this.resourceUpdater.requestUpdate(new AnonymousClass2(subscription, progressDialog));
   433:         progressDialog.show();
   434:     }
   435: 
   436:     public String debugState() {
   437:         PrefsSubscriptionStore prefsSubscriptionStore = new PrefsSubscriptionStore(this);
   438:         String subscriptionToken = prefsSubscriptionStore.getSubscriptionToken();
   439:         if (subscriptionToken == null) {
   440:             return ProtectedFastSSH.s("⽶");
```

## jadx/sources/app/fast/ssh/MainActivity.java:442 (billing_license; file score 17)

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

## jadx/sources/app/fast/ssh/MainActivity.java:637 (billing_license; file score 17)

```java
   631:     }
   632: 
   633:     @Override
   634:     protected void onPause() {
   635:         super.onPause();
   636:         this.inBackground = true;
   637:         ((FastSSH) getApplicationContext()).getBillingManager().setStateListener(null);
   638:     }
   639: 
   640:     @Override
   641:     protected void onResume() {
   642:         super.onResume();
   643:         this.inBackground = false;
   644:         ProtectedFastSSH.s("⾄");
   645:         debugState();
```

## jadx/sources/app/fast/ssh/MainActivity.java:646 (billing_license; file score 17)

```java
   640:     @Override
   641:     protected void onResume() {
   642:         super.onResume();
   643:         this.inBackground = false;
   644:         ProtectedFastSSH.s("⾄");
   645:         debugState();
   646:         BillingManager billingManager = ((FastSSH) getApplicationContext()).getBillingManager();
   647:         billingManager.setStateListener(this.homeFragment);
   648:         billingManager.refreshIfNeeded();
   649:         AdRequest adRequestBuild = new AdRequest.Builder().build();
   650:         if (new Subscription(new PrefsSubscriptionStore(this)).shouldRequestAds()) {
   651:             this.bannerAd.loadAd(adRequestBuild);
   652:             this.bannerAd.setVisibility(0);
   653:         } else {
   654:             this.bannerAd.setVisibility(8);
```

## jadx/sources/app/fast/ssh/MainActivity.java:650 (billing_license; file score 17)

```java
   644:         ProtectedFastSSH.s("⾄");
   645:         debugState();
   646:         BillingManager billingManager = ((FastSSH) getApplicationContext()).getBillingManager();
   647:         billingManager.setStateListener(this.homeFragment);
   648:         billingManager.refreshIfNeeded();
   649:         AdRequest adRequestBuild = new AdRequest.Builder().build();
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

## decoded/AndroidManifest.xml:39 (billing_license; file score 14)

```java
    33:         <intent>
    34:             <action android:name="android.intent.action.DIAL"/>
    35:             <data android:path="tel:"/>
    36:         </intent>
    37:         <package android:name="com.android.vending"/>
    38:         <intent>
    39:             <action android:name="com.android.vending.billing.InAppBillingService.BIND"/>
    40:         </intent>
    41:         <intent>
    42:             <action android:name="com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"/>
    43:         </intent>
    44:     </queries>
    45:     <uses-permission android:name="com.google.android.gms.permission.AD_ID"/>
    46:     <uses-permission android:name="android.permission.ACCESS_ADSERVICES_AD_ID"/>
    47:     <uses-permission android:name="android.permission.ACCESS_ADSERVICES_ATTRIBUTION"/>
```

## decoded/AndroidManifest.xml:42 (billing_license; file score 14)

```java
    36:         </intent>
    37:         <package android:name="com.android.vending"/>
    38:         <intent>
    39:             <action android:name="com.android.vending.billing.InAppBillingService.BIND"/>
    40:         </intent>
    41:         <intent>
    42:             <action android:name="com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"/>
    43:         </intent>
    44:     </queries>
    45:     <uses-permission android:name="com.google.android.gms.permission.AD_ID"/>
    46:     <uses-permission android:name="android.permission.ACCESS_ADSERVICES_AD_ID"/>
    47:     <uses-permission android:name="android.permission.ACCESS_ADSERVICES_ATTRIBUTION"/>
    48:     <uses-permission android:name="android.permission.ACCESS_ADSERVICES_TOPICS"/>
    49:     <permission android:name="com.hatunnel.plus.permission.C2D_MESSAGE" android:protectionLevel="signature"/>
    50:     <uses-permission android:name="com.hatunnel.plus.permission.C2D_MESSAGE"/>
```

## decoded/AndroidManifest.xml:70 (billing_license; file score 14)

```java
    64:     <uses-permission android:name="com.huawei.android.launcher.permission.WRITE_SETTINGS"/>
    65:     <uses-permission android:name="android.permission.READ_APP_BADGE"/>
    66:     <uses-permission android:name="com.oppo.launcher.permission.READ_SETTINGS"/>
    67:     <uses-permission android:name="com.oppo.launcher.permission.WRITE_SETTINGS"/>
    68:     <uses-permission android:name="me.everything.badger.permission.BADGE_COUNT_READ"/>
    69:     <uses-permission android:name="me.everything.badger.permission.BADGE_COUNT_WRITE"/>
    70:     <uses-permission android:name="com.android.vending.BILLING"/>
    71:     <permission android:name="com.hatunnel.plus.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION" android:protectionLevel="signature"/>
    72:     <uses-permission android:name="com.hatunnel.plus.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"/>
    73:     <application android:allowBackup="false" android:extractNativeLibs="false" android:fullBackupContent="false" android:icon="@mipmap/ic_launcher" android:label="@string/app_name" android:logo="@mipmap/ic_launcher" android:name="app.fast.ssh.ProtectedFastSSH" android:networkSecurityConfig="@xml/network_security_config" android:requestLegacyExternalStorage="true" android:roundIcon="@mipmap/ic_launcher_round" android:supportsRtl="true" android:theme="@style/APKTOOL_RENAMED_0x7f13000b">
    74:         <provider android:authorities="com.hatunnel.plus" android:exported="false" android:grantUriPermissions="true" android:name=".miAvwwdbDCebn">
    75:             <meta-data android:name="android.support.FILE_PROVIDER_PATHS" android:resource="@xml/provider_paths"/>
    76:         </provider>
    77:         <activity android:exported="true" android:launchMode="singleTask" android:name=".jlvfyyvkjayic" android:resizeableActivity="true">
    78:             <intent-filter>
```

## decoded/AndroidManifest.xml:162 (billing_license; file score 14)

```java
   156:             <meta-data android:name="androidx.emoji2.text.EmojiCompatInitializer" android:value="androidx.startup"/>
   157:             <meta-data android:name="androidx.work.WorkManagerInitializer" android:value="androidx.startup"/>
   158:             <meta-data android:name="androidx.lifecycle.ProcessLifecycleInitializer" android:value="androidx.startup"/>
   159:             <meta-data android:name="androidx.profileinstaller.ProfileInstallerInitializer" android:value="androidx.startup"/>
   160:             <meta-data android:name="okhttp3.internal.platform.PlatformInitializer" android:value="androidx.startup"/>
   161:         </provider>
   162:         <meta-data android:name="com.google.android.play.billingclient.version" android:value="9.1.0"/>
   163:         <activity android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|screenSize" android:exported="false" android:name=".ifgvjvqkclsEt" android:theme="@android:style/Theme.Translucent.NoTitleBar"/>
   164:         <activity android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|screenSize" android:exported="false" android:name=".exBEeyBpiqiii" android:theme="@android:style/Theme.Translucent.NoTitleBar"/>
   165:         <receiver android:exported="true" android:name=".fynkiilFogCtl" android:permission="com.google.android.c2dm.permission.SEND">
   166:             <intent-filter>
   167:                 <action android:name="com.google.android.c2dm.intent.RECEIVE"/>
   168:             </intent-filter>
   169:             <meta-data android:name="com.google.android.gms.cloudmessaging.FINISHED_AFTER_HANDLED" android:value="true"/>
   170:         </receiver>
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:25 (billing_license; file score 14)

```java
    19: 
    20: # instance fields
    21: .field final synthetic this$0:Lapp/fast/ssh/HomeFragment;
    22: 
    23: .field final synthetic val$state:Lapp/fast/ssh/core/VpnStatus$VpnState;
    24: 
    25: .field final synthetic val$subscription:Lapp/fast/ssh/Subscription;
    26: 
    27: 
    28: # direct methods
    29: .method constructor <init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/core/VpnStatus$VpnState;Lapp/fast/ssh/Subscription;)V
    30:     .locals 0
    31:     .annotation system Ldalvik/annotation/MethodParameters;
    32:         accessFlags = {
    33:             0x8010,
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:54 (billing_license; file score 14)

```java
    48:     .end annotation
    49: 
    50:     iput-object p1, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
    51: 
    52:     iput-object p2, p0, Lapp/fast/ssh/HomeFragment$13;->val$state:Lapp/fast/ssh/core/VpnStatus$VpnState;
    53: 
    54:     iput-object p3, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
    55: 
    56:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    57: 
    58:     return-void
    59: .end method
    60: 
    61: 
    62: # virtual methods
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:120 (billing_license; file score 14)

```java
   114:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   115: 
   116:     move-result-object v0
   117: 
   118:     if-eqz v0, :cond_1
   119: 
   120:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   121: 
   122:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   123: 
   124:     move-result v0
   125: 
   126:     if-eqz v0, :cond_1
   127: 
   128:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:157 (billing_license; file score 14)

```java
   151:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   152: 
   153:     move-result-object v0
   154: 
   155:     if-eqz v0, :cond_2
   156: 
   157:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   158: 
   159:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   160: 
   161:     move-result v0
   162: 
   163:     if-eqz v0, :cond_2
   164: 
   165:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:248 (billing_license; file score 14)

```java
   242:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   243: 
   244:     move-result-object v0
   245: 
   246:     if-eqz v0, :cond_6
   247: 
   248:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   249: 
   250:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   251: 
   252:     move-result v0
   253: 
   254:     if-eqz v0, :cond_6
   255: 
   256:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:250 (billing_license; file score 14)

```java
   244:     move-result-object v0
   245: 
   246:     if-eqz v0, :cond_6
   247: 
   248:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   249: 
   250:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   251: 
   252:     move-result v0
   253: 
   254:     if-eqz v0, :cond_6
   255: 
   256:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
   257: 
   258:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:285 (billing_license; file score 14)

```java
   279:     invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   280: 
   281:     move-result-object v0
   282: 
   283:     if-eqz v0, :cond_7
   284: 
   285:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   286: 
   287:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   288: 
   289:     move-result v0
   290: 
   291:     if-eqz v0, :cond_7
   292: 
   293:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/HomeFragment$13.smali:345 (billing_license; file score 14)

```java
   339: 
   340:     iget-object v1, v1, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;
   341: 
   342:     invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
   343: 
   344:     :cond_9
   345:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;
   346: 
   347:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   348: 
   349:     move-result v0
   350: 
   351:     if-eqz v0, :cond_a
   352: 
   353:     invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:203 (billing_license; file score 14)

```java
   197: .end method
   198: 
   199: .method private startLoadOnMain(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
   200:     .locals 3
   201: 
   202:     .prologue
   203:     new-instance v0, Lapp/fast/ssh/Subscription;
   204: 
   205:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   206: 
   207:     invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   208: 
   209:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   210: 
   211:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:211 (billing_license; file score 14)

```java
   205:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   206: 
   207:     invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   208: 
   209:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   210: 
   211:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   212: 
   213:     move-result v0
   214: 
   215:     if-eqz v0, :cond_0
   216: 
   217:     const-string/jumbo v0, "\u2f8f"
   218: 
   219:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:432 (billing_license; file score 14)

```java
   426:     const-string/jumbo v2, "\u2f96"
   427: 
   428:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   429: 
   430:     move-result-object v2
   431: 
   432:     new-instance v3, Lapp/fast/ssh/Subscription;
   433: 
   434:     new-instance v4, Lapp/fast/ssh/PrefsSubscriptionStore;
   435: 
   436:     invoke-direct {v4, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   437: 
   438:     invoke-direct {v3, v4}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   439: 
   440:     invoke-virtual {v3}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:440 (billing_license; file score 14)

```java
   434:     new-instance v4, Lapp/fast/ssh/PrefsSubscriptionStore;
   435: 
   436:     invoke-direct {v4, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   437: 
   438:     invoke-direct {v3, v4}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   439: 
   440:     invoke-virtual {v3}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   441: 
   442:     move-result v3
   443: 
   444:     if-nez v3, :cond_0
   445: 
   446:     goto/16 :goto_1
   447: 
   448:     :cond_0
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:613 (billing_license; file score 14)

```java
   607: .end method
   608: 
   609: .method public prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
   610:     .locals 2
   611: 
   612:     .prologue
   613:     new-instance v0, Lapp/fast/ssh/Subscription;
   614: 
   615:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   616: 
   617:     invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   618: 
   619:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   620: 
   621:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/RewardedAdSyncController.smali:621 (billing_license; file score 14)

```java
   615:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   616: 
   617:     invoke-direct {v1, p1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   618: 
   619:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   620: 
   621:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
   622: 
   623:     move-result v0
   624: 
   625:     if-nez v0, :cond_0
   626: 
   627:     return-void
   628: 
   629:     :cond_0
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:143 (billing_license; file score 14)

```java
   137:             this.cachedAd = null;
   138:             this.cachedAtMs = 0L;
   139:         }
   140:     }
   141: 
   142:     private void startLoadOnMain(Activity activity, Ui ui) {
   143:         if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
   144:             debug(ProtectedFastSSH.s("⾏"));
   145:             RewardedAd.load(activity.getApplicationContext(), this.adUnitId, new AdRequest.Builder().build(), new AnonymousClass1(ui));
   146:         }
   147:     }
   148: 
   149:     public boolean hasValidCachedAd() {
   150:         this.mtx.lock();
   151:         try {
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:192 (billing_license; file score 14)

```java
   186:     }
   187: 
   188:     public void onUserClick(Activity activity, Ui ui) {
   189:         String strS = ProtectedFastSSH.s("⾔");
   190:         String strS2 = ProtectedFastSSH.s("⾕");
   191:         String strS3 = ProtectedFastSSH.s("⾖");
   192:         if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
   193:             if (Looper.myLooper() != Looper.getMainLooper()) {
   194:                 this.main.post(new RewardedAdSyncController$$ExternalSyntheticLambda1(this, activity, ui));
   195:                 return;
   196:             }
   197:             this.mtx.lock();
   198:             try {
   199:                 long j = this.latestRequestId + 1;
   200:                 this.latestRequestId = j;
```

## jadx/sources/app/fast/ssh/RewardedAdSyncController.java:240 (billing_license; file score 14)

```java
   234:                 throw th;
   235:             }
   236:         }
   237:     }
   238: 
   239:     public void prefetch(Activity activity, Ui ui) {
   240:         if (new Subscription(new PrefsSubscriptionStore(activity)).shouldRequestAds()) {
   241:             if (Looper.myLooper() != Looper.getMainLooper()) {
   242:                 this.main.post(new RewardedAdSyncController$$ExternalSyntheticLambda0(this, activity, ui));
   243:                 return;
   244:             }
   245:             this.mtx.lock();
   246:             try {
   247:                 dropExpiredLocked();
   248:                 if (this.cachedAd != null) {
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:3259 (billing_license; file score 12)

```java
  3253: 
  3254:     move-result-object v3
  3255: 
  3256:     invoke-direct {v0, v1, v3}, Lcom/google/android/gms/ads/internal/util/zzq;-><init>(Ljava/lang/String;Ljava/lang/String;)V
  3257: 
  3258:     :try_start_0
  3259:     invoke-static {}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m$1()Ljava/lang/Class;
  3260: 
  3261:     move-result-object v1
  3262: 
  3263:     invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
  3264: 
  3265:     move-result-object p0
  3266: 
  3267:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/LocaleManager;
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:3267 (billing_license; file score 12)

```java
  3261:     move-result-object v1
  3262: 
  3263:     invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
  3264: 
  3265:     move-result-object p0
  3266: 
  3267:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/LocaleManager;
  3268: 
  3269:     move-result-object p0
  3270: 
  3271:     if-eqz p0, :cond_2
  3272: 
  3273:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/LocaleManager;)Landroid/os/LocaleList;
  3274: 
  3275:     move-result-object v1
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:3273 (billing_license; file score 12)

```java
  3267:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/app/LocaleManager;
  3268: 
  3269:     move-result-object p0
  3270: 
  3271:     if-eqz p0, :cond_2
  3272: 
  3273:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/LocaleManager;)Landroid/os/LocaleList;
  3274: 
  3275:     move-result-object v1
  3276: 
  3277:     invoke-static {v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)Z
  3278: 
  3279:     move-result v1
  3280: 
  3281:     if-nez v1, :cond_2
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:3283 (billing_license; file score 12)

```java
  3277:     invoke-static {v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)Z
  3278: 
  3279:     move-result v1
  3280: 
  3281:     if-nez v1, :cond_2
  3282: 
  3283:     invoke-static {p0}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/LocaleManager;)Landroid/os/LocaleList;
  3284: 
  3285:     move-result-object p0
  3286: 
  3287:     invoke-static {p0, v2}, Landroidx/core/os/Profiling$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;
  3288: 
  3289:     move-result-object p0
  3290: 
  3291:     new-instance v1, Lcom/google/android/gms/ads/internal/util/zzq;
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:4146 (billing_license; file score 12)

```java
  4140:     new-instance v1, Lcom/google/android/gms/ads/internal/util/zzr;
  4141: 
  4142:     invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/internal/util/zzr;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;[B)V
  4143: 
  4144:     const/4 v2, 0x4
  4145: 
  4146:     invoke-static {p1, v1, v0, v2}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
  4147: 
  4148:     goto :goto_0
  4149: 
  4150:     :cond_1
  4151:     invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
  4152: 
  4153:     move-result-object p1
  4154: 
```

## decoded/smali/com/google/android/gms/ads/internal/util/zzs.smali:4232 (billing_license; file score 12)

```java
  4226:     new-instance v1, Lcom/google/android/gms/ads/internal/util/zzp;
  4227: 
  4228:     invoke-direct {v1, p0, v2}, Lcom/google/android/gms/ads/internal/util/zzp;-><init>(Lcom/google/android/gms/ads/internal/util/zzs;[B)V
  4229: 
  4230:     const/4 v2, 0x4
  4231: 
  4232:     invoke-static {p1, v1, v0, v2}, Lcom/android/billingclient/api/zzy$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
  4233: 
  4234:     goto :goto_0
  4235: 
  4236:     :cond_1
  4237:     invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
  4238: 
  4239:     move-result-object p1
  4240: 
```

## jadx/sources/com/google/android/gms/ads/internal/util/zzs.java:43 (billing_license; file score 12)

```java
    37: import android.widget.ScrollView;
    38: import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
    39: import androidx.browser.customtabs.CustomTabsIntent;
    40: import androidx.core.os.Profiling$$ExternalSyntheticApiModelOutline0;
    41: import androidx.core.view.ScrollingView;
    42: import app.fast.ssh.ProtectedFastSSH;
    43: import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
    44: import com.google.android.gms.ads.impl.R;
    45: import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
    46: import com.google.android.gms.ads.nativead.NativeAdView;
    47: import com.google.android.gms.common.GooglePlayServicesUtilLight;
    48: import com.google.android.gms.common.util.ClientLibraryUtils;
    49: import com.google.android.gms.common.util.CrashUtils;
    50: import com.google.android.gms.common.util.DeviceProperties;
    51: import com.google.android.gms.common.wrappers.Wrappers;
```

## jadx/sources/com/google/android/gms/gcm/zzd.java:21 (billing_license; file score 11)

```java
    15: import android.os.SystemClock;
    16: import android.text.TextUtils;
    17: import android.util.Log;
    18: import androidx.activity.ComponentDialog$$ExternalSyntheticApiModelOutline0;
    19: import androidx.core.app.NotificationCompat;
    20: import app.fast.ssh.ProtectedFastSSH;
    21: import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
    22: import com.google.android.gms.common.util.PlatformVersion;
    23: import java.util.MissingFormatArgumentException;
    24: import java.util.concurrent.atomic.AtomicInteger;
    25: import org.json.JSONArray;
    26: import org.json.JSONException;
    27: 
    28: final class zzd {
    29:     static zzd zzk;
```

## decoded/smali/app/fast/ssh/AppOpenAdManager.smali:169 (billing_license; file score 10)

```java
   163: 
   164: # virtual methods
   165: .method public fetchAd()V
   166:     .locals 4
   167: 
   168:     .prologue
   169:     new-instance v0, Lapp/fast/ssh/Subscription;
   170: 
   171:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   172: 
   173:     iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;
   174: 
   175:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   176: 
   177:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
```

## decoded/smali/app/fast/ssh/AppOpenAdManager.smali:171 (billing_license; file score 10)

```java
   165: .method public fetchAd()V
   166:     .locals 4
   167: 
   168:     .prologue
   169:     new-instance v0, Lapp/fast/ssh/Subscription;
   170: 
   171:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   172: 
   173:     iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;
   174: 
   175:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   176: 
   177:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   178: 
   179:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/AppOpenAdManager.smali:328 (billing_license; file score 10)

```java
   322: .end method
   323: 
   324: .method public showAdIfAvailable()V
   325:     .locals 3
   326: 
   327:     .prologue
   328:     new-instance v0, Lapp/fast/ssh/Subscription;
   329: 
   330:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   331: 
   332:     iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;
   333: 
   334:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   335: 
   336:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
```

## decoded/smali/app/fast/ssh/AppOpenAdManager.smali:330 (billing_license; file score 10)

```java
   324: .method public showAdIfAvailable()V
   325:     .locals 3
   326: 
   327:     .prologue
   328:     new-instance v0, Lapp/fast/ssh/Subscription;
   329: 
   330:     new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;
   331: 
   332:     iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;
   333: 
   334:     invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V
   335: 
   336:     invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V
   337: 
   338:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
```

## decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali:1 (billing_license; file score 10)

```java
     1: .class public interface abstract Lapp/fast/ssh/BillingManager$SubscriptionStore;
     2: .super Ljava/lang/Object;
     3: .source "BillingManager.java"
     4: 
     5: 
     6: # annotations
     7: .annotation system Ldalvik/annotation/EnclosingClass;
     8:     value = Lapp/fast/ssh/BillingManager;
     9: .end annotation
```

## decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali:13 (billing_license; file score 10)

```java
     7: .annotation system Ldalvik/annotation/EnclosingClass;
     8:     value = Lapp/fast/ssh/BillingManager;
     9: .end annotation
    10: 
    11: .annotation system Ldalvik/annotation/InnerClass;
    12:     accessFlags = 0x609
    13:     name = "SubscriptionStore"
    14: .end annotation
    15: 
    16: 
    17: # virtual methods
    18: .method public abstract clear()V
    19: .end method
    20: 
    21: .method public abstract getPurchaseToken()Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/BillingManager$SubscriptionStore.smali:27 (billing_license; file score 10)

```java
    21: .method public abstract getPurchaseToken()Ljava/lang/String;
    22: .end method
    23: 
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
```

## decoded/smali/app/fast/ssh/BillingManager.smali:1 (billing_license; file score 10)

```java
     1: .class public Lapp/fast/ssh/BillingManager;
     2: .super Ljava/lang/Object;
     3: .source "BillingManager.java"
     4: 
     5: # interfaces
     6: .implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
     7: .implements Lcom/android/billingclient/api/BillingClientStateListener;
     8: 
     9: 
```

## decoded/smali/app/fast/ssh/BillingManager.smali:13 (billing_license; file score 10)

```java
     7: .implements Lcom/android/billingclient/api/BillingClientStateListener;
     8: 
     9: 
    10: # annotations
    11: .annotation system Ldalvik/annotation/MemberClasses;
    12:     value = {
    13:         Lapp/fast/ssh/BillingManager$SessionControl;,
    14:         Lapp/fast/ssh/BillingManager$SubscriptionStore;,
    15:         Lapp/fast/ssh/BillingManager$State;,
    16:         Lapp/fast/ssh/BillingManager$TokenExchange;,
    17:         Lapp/fast/ssh/BillingManager$StateListener;
    18:     }
    19: .end annotation
    20: 
    21: 
```

## decoded/smali/app/fast/ssh/BillingManager.smali:37 (billing_license; file score 10)

```java
    31: .field private static final RECONNECT_MAX_MS:J = 0xea60L
    32: 
    33: .field private static final TAG:Ljava/lang/String;
    34: 
    35: 
    36: # instance fields
    37: .field private cachedProduct:Lcom/android/billingclient/api/ProductDetails;
    38: 
    39: .field private final client:Lcom/android/billingclient/api/BillingClient;
    40: 
    41: .field private final exchange:Lapp/fast/ssh/BillingManager$TokenExchange;
    42: 
    43: .field private final handler:Landroid/os/Handler;
    44: 
    45: .field private lastForcedAt:J
```

## decoded/smali/app/fast/ssh/BillingManager.smali:41 (billing_license; file score 10)

```java
    35: 
    36: # instance fields
    37: .field private cachedProduct:Lcom/android/billingclient/api/ProductDetails;
    38: 
    39: .field private final client:Lcom/android/billingclient/api/BillingClient;
    40: 
    41: .field private final exchange:Lapp/fast/ssh/BillingManager$TokenExchange;
    42: 
    43: .field private final handler:Landroid/os/Handler;
    44: 
    45: .field private lastForcedAt:J
    46: 
    47: .field private lastRedeemAt:J
    48: 
    49: .field private reconnectDelayMs:J
```

## decoded/smali/app/fast/ssh/BillingManager.smali:51 (billing_license; file score 10)

```java
    45: .field private lastForcedAt:J
    46: 
    47: .field private lastRedeemAt:J
    48: 
    49: .field private reconnectDelayMs:J
    50: 
    51: .field private session:Lapp/fast/ssh/BillingManager$SessionControl;
    52: 
    53: .field private state:Lapp/fast/ssh/BillingManager$State;
    54: 
    55: .field private stateListener:Lapp/fast/ssh/BillingManager$StateListener;
    56: 
    57: .field private final store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
    58: 
    59: .field private final userId:Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:72 (billing_license; file score 10)

```java
    66:     const-string/jumbo v0, "\u2e16"
    67: 
    68:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    69: 
    70:     move-result-object v0
    71: 
    72:     sput-object v0, Lapp/fast/ssh/BillingManager;->TAG:Ljava/lang/String;
    73: 
    74:     const-string/jumbo v0, "\u2e20"
    75: 
    76:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    77: 
    78:     move-result-object v0
    79: 
    80:     sput-object v0, Lapp/fast/ssh/BillingManager;->PRODUCT_ID:Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:80 (billing_license; file score 10)

```java
    74:     const-string/jumbo v0, "\u2e20"
    75: 
    76:     invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
    77: 
    78:     move-result-object v0
    79: 
    80:     sput-object v0, Lapp/fast/ssh/BillingManager;->PRODUCT_ID:Ljava/lang/String;
    81: 
    82:     return-void
    83: .end method
    84: 
    85: .method public constructor <init>(Landroid/content/Context;Lapp/fast/ssh/BillingManager$TokenExchange;Lapp/fast/ssh/BillingManager$SubscriptionStore;Ljava/lang/String;)V
    86:     .locals 2
    87: 
    88:     invoke-direct {p0}, Ljava/lang/Object;-><init>()V
```

## decoded/smali/app/fast/ssh/BillingManager.smali:98 (billing_license; file score 10)

```java
    92:     invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    93: 
    94:     move-result-object v1
    95: 
    96:     invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    97: 
    98:     iput-object v0, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;
    99: 
   100:     sget-object v0, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;
   101: 
   102:     iput-object v0, p0, Lapp/fast/ssh/BillingManager;->state:Lapp/fast/ssh/BillingManager$State;
   103: 
   104:     const-wide/16 v0, 0x3e8
   105: 
   106:     iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J
```

## decoded/smali/app/fast/ssh/BillingManager.smali:100 (billing_license; file score 10)

```java
    94:     move-result-object v1
    95: 
    96:     invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    97: 
    98:     iput-object v0, p0, Lapp/fast/ssh/BillingManager;->handler:Landroid/os/Handler;
    99: 
   100:     sget-object v0, Lapp/fast/ssh/BillingManager$State;->UNKNOWN:Lapp/fast/ssh/BillingManager$State;
   101: 
   102:     iput-object v0, p0, Lapp/fast/ssh/BillingManager;->state:Lapp/fast/ssh/BillingManager$State;
   103: 
   104:     const-wide/16 v0, 0x3e8
   105: 
   106:     iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J
   107: 
   108:     const-wide/16 v0, 0x0
```

## decoded/smali/app/fast/ssh/BillingManager.smali:110 (billing_license; file score 10)

```java
   104:     const-wide/16 v0, 0x3e8
   105: 
   106:     iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->reconnectDelayMs:J
   107: 
   108:     const-wide/16 v0, 0x0
   109: 
   110:     iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastRedeemAt:J
   111: 
   112:     iput-wide v0, p0, Lapp/fast/ssh/BillingManager;->lastForcedAt:J
   113: 
   114:     iput-object p2, p0, Lapp/fast/ssh/BillingManager;->exchange:Lapp/fast/ssh/BillingManager$TokenExchange;
   115: 
   116:     iput-object p3, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
   117: 
   118:     iput-object p4, p0, Lapp/fast/ssh/BillingManager;->userId:Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:120 (billing_license; file score 10)

```java
   114:     iput-object p2, p0, Lapp/fast/ssh/BillingManager;->exchange:Lapp/fast/ssh/BillingManager$TokenExchange;
   115: 
   116:     iput-object p3, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
   117: 
   118:     iput-object p4, p0, Lapp/fast/ssh/BillingManager;->userId:Ljava/lang/String;
   119: 
   120:     invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;
   121: 
   122:     move-result-object p1
   123: 
   124:     invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
   125: 
   126:     move-result-object p1
   127: 
   128:     invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:132 (billing_license; file score 10)

```java
   126:     move-result-object p1
   127: 
   128:     invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;
   129: 
   130:     move-result-object p2
   131: 
   132:     invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;
   133: 
   134:     move-result-object p2
   135: 
   136:     invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;
   137: 
   138:     move-result-object p2
   139: 
   140:     invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:140 (billing_license; file score 10)

```java
   134:     move-result-object p2
   135: 
   136:     invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;
   137: 
   138:     move-result-object p2
   139: 
   140:     invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;
   141: 
   142:     move-result-object p1
   143: 
   144:     invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;
   145: 
   146:     move-result-object p1
   147: 
   148:     iput-object p1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:153 (billing_license; file score 10)

```java
   147: 
   148:     iput-object p1, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;
   149: 
   150:     return-void
   151: .end method
   152: 
   153: .method static synthetic access$000(Lapp/fast/ssh/BillingManager;)Lcom/android/billingclient/api/BillingClient;
   154:     .locals 0
   155: 
   156:     iget-object p0, p0, Lapp/fast/ssh/BillingManager;->client:Lcom/android/billingclient/api/BillingClient;
   157: 
   158:     return-object p0
   159: .end method
   160: 
   161: .method static synthetic access$100(I)Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:164 (billing_license; file score 10)

```java
   158:     return-object p0
   159: .end method
   160: 
   161: .method static synthetic access$100(I)Ljava/lang/String;
   162:     .locals 0
   163: 
   164:     invoke-static {p0}, Lapp/fast/ssh/BillingManager;->describe(I)Ljava/lang/String;
   165: 
   166:     move-result-object p0
   167: 
   168:     return-object p0
   169: .end method
   170: 
   171: .method static synthetic access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
   172:     .locals 0
```

## decoded/smali/app/fast/ssh/BillingManager.smali:171 (billing_license; file score 10)

```java
   165: 
   166:     move-result-object p0
   167: 
   168:     return-object p0
   169: .end method
   170: 
   171: .method static synthetic access$200(Lapp/fast/ssh/BillingManager;Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
   172:     .locals 0
   173: 
   174:     invoke-direct {p0, p1, p2}, Lapp/fast/ssh/BillingManager;->setState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
   175: 
   176:     return-void
   177: .end method
   178: 
   179: .method static synthetic access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:182 (billing_license; file score 10)

```java
   176:     return-void
   177: .end method
   178: 
   179: .method static synthetic access$300(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SubscriptionStore;
   180:     .locals 0
   181: 
   182:     iget-object p0, p0, Lapp/fast/ssh/BillingManager;->store:Lapp/fast/ssh/BillingManager$SubscriptionStore;
   183: 
   184:     return-object p0
   185: .end method
   186: 
   187: .method static synthetic access$400(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SessionControl;
   188:     .locals 0
   189: 
   190:     iget-object p0, p0, Lapp/fast/ssh/BillingManager;->session:Lapp/fast/ssh/BillingManager$SessionControl;
```

## decoded/smali/app/fast/ssh/BillingManager.smali:190 (billing_license; file score 10)

```java
   184:     return-object p0
   185: .end method
   186: 
   187: .method static synthetic access$400(Lapp/fast/ssh/BillingManager;)Lapp/fast/ssh/BillingManager$SessionControl;
   188:     .locals 0
   189: 
   190:     iget-object p0, p0, Lapp/fast/ssh/BillingManager;->session:Lapp/fast/ssh/BillingManager$SessionControl;
   191: 
   192:     return-object p0
   193: .end method
   194: 
   195: .method private static describe(I)Ljava/lang/String;
   196:     .locals 2
   197: 
   198:     .prologue
```

## decoded/smali/app/fast/ssh/BillingManager.smali:349 (billing_license; file score 10)

```java
   343:         :pswitch_2
   344:         :pswitch_1
   345:         :pswitch_0
   346:     .end packed-switch
   347: .end method
   348: 
   349: .method private launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V
   350:     .locals 6
   351: 
   352:     .prologue
   353:     invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;
   354: 
   355:     move-result-object v0
   356: 
   357:     const-string/jumbo v1, "\u2e16"
```

## decoded/smali/app/fast/ssh/BillingManager.smali:353 (billing_license; file score 10)

```java
   347: .end method
   348: 
   349: .method private launch(Landroid/app/Activity;Lcom/android/billingclient/api/ProductDetails;)V
   350:     .locals 6
   351: 
   352:     .prologue
   353:     invoke-virtual {p2}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;
   354: 
   355:     move-result-object v0
   356: 
   357:     const-string/jumbo v1, "\u2e16"
   358: 
   359:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   360: 
   361:     move-result-object v1
```

Snippets shown: 120. Complete bounded hit indexes are in the corresponding TSV files.