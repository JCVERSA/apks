# Ad candidates

Static search evidence. A hit does not establish runtime execution.

## jadx/sources/app/fast/ssh/R.java:167 (ad_lifecycle; file score 24)

```java
   161:         public static final int activeIndicatorLabelPadding = 0x7f040026;
   162:         public static final int activityAction = 0x7f040027;
   163:         public static final int activityChooserViewStyle = 0x7f040028;
   164:         public static final int activityName = 0x7f040029;
   165:         public static final int adSize = 0x7f04002a;
   166:         public static final int adSizes = 0x7f04002b;
   167:         public static final int adUnitId = 0x7f04002c;
   168:         public static final int adaptiveMaxWidthEnabled = 0x7f04002d;
   169:         public static final int addElevationShadow = 0x7f04002e;
   170:         public static final int adjustable = 0x7f04002f;
   171:         public static final int alertDialogButtonGroupStyle = 0x7f040030;
   172:         public static final int alertDialogCenterButtons = 0x7f040031;
   173:         public static final int alertDialogStyle = 0x7f040032;
   174:         public static final int alertDialogTheme = 0x7f040033;
   175:         public static final int allowDividerAbove = 0x7f040034;
```

## jadx/sources/app/fast/ssh/R.java:7023 (ad_lifecycle; file score 24)

```java
  7017:         public static final int ActivityChooserView_initialActivityCount = 0x00000001;
  7018:         public static final int ActivityFilter_activityAction = 0x00000000;
  7019:         public static final int ActivityFilter_activityName = 0x00000001;
  7020:         public static final int ActivityRule_alwaysExpand = 0x00000000;
  7021:         public static final int AdsAttrs_adSize = 0x00000000;
  7022:         public static final int AdsAttrs_adSizes = 0x00000001;
  7023:         public static final int AdsAttrs_adUnitId = 0x00000002;
  7024:         public static final int AlertDialog_android_layout = 0x00000000;
  7025:         public static final int AlertDialog_buttonIconDimen = 0x00000001;
  7026:         public static final int AlertDialog_buttonPanelSideLayout = 0x00000002;
  7027:         public static final int AlertDialog_listItemLayout = 0x00000003;
  7028:         public static final int AlertDialog_listLayout = 0x00000004;
  7029:         public static final int AlertDialog_multiChoiceItemLayout = 0x00000005;
  7030:         public static final int AlertDialog_showTitle = 0x00000006;
  7031:         public static final int AlertDialog_singleChoiceItemLayout = 0x00000007;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:10 (ad_lifecycle; file score 17)

```java
     4: 
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
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:93 (ad_lifecycle; file score 17)

```java
    87: 
    88: # instance fields
    89: .field private Adams:Ljava/lang/String;
    90: 
    91: .field addTimeDialog2:Landroidx/appcompat/app/AlertDialog;
    92: 
    93: .field private bannerAd:Lcom/google/android/gms/ads/AdView;
    94: 
    95: .field private bannerContainer:Landroid/widget/LinearLayout;
    96: 
    97: .field btnSubscribe:Landroid/widget/Button;
    98: 
    99: .field btnWatchAd:Landroid/widget/Button;
   100: 
   101: .field private buttonConnect:Landroid/widget/Button;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:113 (ad_lifecycle; file score 17)

```java
   107: .field private checkPreserveSni:Landroid/widget/CheckBox;
   108: 
   109: .field private checkRealmHost:Landroid/widget/CheckBox;
   110: 
   111: .field private checkUseTcpPayload:Landroid/widget/CheckBox;
   112: 
   113: .field private connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   114: 
   115: .field private customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;
   116: 
   117: .field private customsView:Landroid/widget/LinearLayout;
   118: 
   119: .field private descText:Lcom/google/android/material/textview/MaterialTextView;
   120: 
   121: .field private descView:Landroid/widget/LinearLayout;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:123 (ad_lifecycle; file score 17)

```java
   117: .field private customsView:Landroid/widget/LinearLayout;
   118: 
   119: .field private descText:Lcom/google/android/material/textview/MaterialTextView;
   120: 
   121: .field private descView:Landroid/widget/LinearLayout;
   122: 
   123: .field private disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   124: 
   125: .field private glassBind:Ljava/lang/StringBuilder;
   126: 
   127: .field private hostText:Lcom/google/android/material/textfield/TextInputEditText;
   128: 
   129: .field private hostView:Landroid/widget/LinearLayout;
   130: 
   131: .field private mSharedPrefs:Landroid/content/SharedPreferences;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:171 (ad_lifecycle; file score 17)

```java
   165: .field private nsText:Lcom/google/android/material/textfield/TextInputEditText;
   166: 
   167: .field private nsView:Landroid/widget/LinearLayout;
   168: 
   169: .field private payloadText:Lcom/google/android/material/textfield/TextInputEditText;
   170: 
   171: .field private payloadView:Landroid/widget/LinearLayout;
   172: 
   173: .field private portSelect:Landroidx/appcompat/widget/AppCompatSpinner;
   174: 
   175: .field private purchaseInFlight:Z
   176: 
   177: .field private final renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;
   178: 
   179: .field private requestQueue:Lcom/android/volley/RequestQueue;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:181 (ad_lifecycle; file score 17)

```java
   175: .field private purchaseInFlight:Z
   176: 
   177: .field private final renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;
   178: 
   179: .field private requestQueue:Lcom/android/volley/RequestQueue;
   180: 
   181: .field private rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
   182: 
   183: .field private serverAdapter:Lapp/fast/ssh/adapter/ServerAdapter;
   184: 
   185: .field private final serverChange:Landroid/widget/AdapterView$OnItemSelectedListener;
   186: 
   187: .field serverItems:Ljava/util/List;
   188:     .annotation system Ldalvik/annotation/Signature;
   189:         value = {
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:211 (ad_lifecycle; file score 17)

```java
   205: .field private timerLayout:Landroid/widget/LinearLayout;
   206: 
   207: .field private timerText:Landroid/widget/TextView;
   208: 
   209: .field private tunNablic:I
   210: 
   211: .field private updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   212: 
   213: .field private vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;
   214: 
   215: .field private waitDialog:Landroidx/appcompat/app/AlertDialog;
   216: 
   217: .field private waitDialogRequestId:J
   218: 
   219: .field private watchAd_Cooldown:Landroid/os/CountDownTimer;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:523 (ad_lifecycle; file score 17)

```java
   517: 
   518:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->setConnected(Z)V
   519: 
   520:     return-void
   521: .end method
   522: 
   523: .method static synthetic access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   524:     .locals 0
   525: 
   526:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   527: 
   528:     return-object p0
   529: .end method
   530: 
   531: .method static synthetic access$1902(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:531 (ad_lifecycle; file score 17)

```java
   525: 
   526:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   527: 
   528:     return-object p0
   529: .end method
   530: 
   531: .method static synthetic access$1902(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   532:     .locals 0
   533: 
   534:     iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   535: 
   536:     return-object p1
   537: .end method
   538: 
   539: .method static synthetic access$200(Lapp/fast/ssh/HomeFragment;)Landroidx/appcompat/widget/AppCompatSpinner;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:547 (ad_lifecycle; file score 17)

```java
   541: 
   542:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;
   543: 
   544:     return-object p0
   545: .end method
   546: 
   547: .method static synthetic access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
   548:     .locals 0
   549: 
   550:     invoke-direct {p0, p1, p2}, Lapp/fast/ssh/HomeFragment;->showAd(Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
   551: 
   552:     return-void
   553: .end method
   554: 
   555: .method static synthetic access$2100(Lapp/fast/ssh/HomeFragment;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:550 (ad_lifecycle; file score 17)

```java
   544:     return-object p0
   545: .end method
   546: 
   547: .method static synthetic access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
   548:     .locals 0
   549: 
   550:     invoke-direct {p0, p1, p2}, Lapp/fast/ssh/HomeFragment;->showAd(Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
   551: 
   552:     return-void
   553: .end method
   554: 
   555: .method static synthetic access$2100(Lapp/fast/ssh/HomeFragment;)V
   556:     .locals 0
   557: 
   558:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:563 (ad_lifecycle; file score 17)

```java
   557: 
   558:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V
   559: 
   560:     return-void
   561: .end method
   562: 
   563: .method static synthetic access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   564:     .locals 0
   565: 
   566:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   567: 
   568:     return-object p0
   569: .end method
   570: 
   571: .method static synthetic access$2202(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:571 (ad_lifecycle; file score 17)

```java
   565: 
   566:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   567: 
   568:     return-object p0
   569: .end method
   570: 
   571: .method static synthetic access$2202(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   572:     .locals 0
   573: 
   574:     iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   575: 
   576:     return-object p1
   577: .end method
   578: 
   579: .method static synthetic access$2300(Lapp/fast/ssh/HomeFragment;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:582 (ad_lifecycle; file score 17)

```java
   576:     return-object p1
   577: .end method
   578: 
   579: .method static synthetic access$2300(Lapp/fast/ssh/HomeFragment;)V
   580:     .locals 0
   581: 
   582:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V
   583: 
   584:     return-void
   585: .end method
   586: 
   587: .method static synthetic access$2400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;
   588:     .locals 0
   589: 
   590:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerButton:Landroid/widget/Button;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:667 (ad_lifecycle; file score 17)

```java
   661: 
   662:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter:Lapp/fast/ssh/adapter/MethodAdapter;
   663: 
   664:     return-object p0
   665: .end method
   666: 
   667: .method static synthetic access$3000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/RewardedAdSyncController;
   668:     .locals 0
   669: 
   670:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
   671: 
   672:     return-object p0
   673: .end method
   674: 
   675: .method static synthetic access$3100(Lapp/fast/ssh/HomeFragment;)Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:670 (ad_lifecycle; file score 17)

```java
   664:     return-object p0
   665: .end method
   666: 
   667: .method static synthetic access$3000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/RewardedAdSyncController;
   668:     .locals 0
   669: 
   670:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
   671: 
   672:     return-object p0
   673: .end method
   674: 
   675: .method static synthetic access$3100(Lapp/fast/ssh/HomeFragment;)Ljava/lang/String;
   676:     .locals 0
   677: 
   678:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->deviceId()Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:736 (ad_lifecycle; file score 17)

```java
   730:     return-object p0
   731: .end method
   732: 
   733: .method static synthetic access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
   734:     .locals 0
   735: 
   736:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;
   737: 
   738:     return-object p0
   739: .end method
   740: 
   741: .method static synthetic access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
   742:     .locals 0
   743: 
   744:     iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->descView:Landroid/widget/LinearLayout;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:959 (ad_sdk; file score 17)

```java
   953: 
   954:     invoke-virtual {p1}, Landroid/widget/Toast;->show()V
   955: 
   956:     return-void
   957: .end method
   958: 
   959: .method private getAdSize()Lcom/google/android/gms/ads/AdSize;
   960:     .locals 2
   961: 
   962:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
   963: 
   964:     move-result-object v0
   965: 
   966:     invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;
   967: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:994 (ad_lifecycle; file score 17)

```java
   988:     float-to-int v0, v0
   989: 
   990:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
   991: 
   992:     move-result-object v1
   993: 
   994:     invoke-static {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
   995: 
   996:     move-result-object v0
   997: 
   998:     return-object v0
   999: .end method
  1000: 
  1001: .method public static getAuid()Ljava/lang/String;
  1002:     .locals 1
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1040 (ad_lifecycle; file score 17)

```java
  1034:     return-object p1
  1035: .end method
  1036: 
  1037: .method private initAds()V
  1038:     .locals 2
  1039: 
  1040:     new-instance v0, Lapp/fast/ssh/RewardedAdSyncController;
  1041: 
  1042:     const-string/jumbo v1, "\u2ed2"
  1043: 
  1044:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  1045: 
  1046:     move-result-object v1
  1047: 
  1048:     invoke-direct {v0, v1}, Lapp/fast/ssh/RewardedAdSyncController;-><init>(Ljava/lang/String;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1050 (ad_lifecycle; file score 17)

```java
  1044:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  1045: 
  1046:     move-result-object v1
  1047: 
  1048:     invoke-direct {v0, v1}, Lapp/fast/ssh/RewardedAdSyncController;-><init>(Ljava/lang/String;)V
  1049: 
  1050:     iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  1051: 
  1052:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  1053: 
  1054:     move-result-object v1
  1055: 
  1056:     invoke-virtual {v0, v1, p0}, Lapp/fast/ssh/RewardedAdSyncController;->prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
  1057: 
  1058:     return-void
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1870 (ad_lifecycle; file score 17)

```java
  1864: 
  1865:     invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V
  1866: 
  1867:     return-void
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
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1886 (ad_lifecycle; file score 17)

```java
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
  1891: 
  1892:     move-result v0
  1893: 
  1894:     if-eqz v0, :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1896 (ad_lifecycle; file score 17)

```java
  1890:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1891: 
  1892:     move-result v0
  1893: 
  1894:     if-eqz v0, :cond_0
  1895: 
  1896:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1897: 
  1898:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1899: 
  1900:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1901: 
  1902:     move-result-object v0
  1903: 
  1904:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1900 (ad_lifecycle; file score 17)

```java
  1894:     if-eqz v0, :cond_0
  1895: 
  1896:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1897: 
  1898:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1899: 
  1900:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1901: 
  1902:     move-result-object v0
  1903: 
  1904:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1905: 
  1906:     move-result-object v1
  1907: 
  1908:     if-eqz v1, :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1924 (ad_lifecycle; file score 17)

```java
  1918:     const-string/jumbo v3, "\u2ee5"
  1919: 
  1920:     invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  1921: 
  1922:     move-result-object v3
  1923: 
  1924:     invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
  1925: 
  1926:     :cond_0
  1927:     return-void
  1928: .end method
  1929: 
  1930: .method private loadDisConnectedInterstitialAd()V
  1931:     .locals 4
  1932: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1930 (ad_lifecycle; file score 17)

```java
  1924:     invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
  1925: 
  1926:     :cond_0
  1927:     return-void
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
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1946 (ad_lifecycle; file score 17)

```java
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
  1951: 
  1952:     move-result v0
  1953: 
  1954:     if-eqz v0, :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1956 (ad_lifecycle; file score 17)

```java
  1950:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1951: 
  1952:     move-result v0
  1953: 
  1954:     if-eqz v0, :cond_0
  1955: 
  1956:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1957: 
  1958:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1959: 
  1960:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1961: 
  1962:     move-result-object v0
  1963: 
  1964:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1960 (ad_lifecycle; file score 17)

```java
  1954:     if-eqz v0, :cond_0
  1955: 
  1956:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  1957: 
  1958:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1959: 
  1960:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1961: 
  1962:     move-result-object v0
  1963: 
  1964:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  1965: 
  1966:     move-result-object v1
  1967: 
  1968:     if-eqz v1, :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:1984 (ad_lifecycle; file score 17)

```java
  1978:     const-string/jumbo v3, "\u2ee6"
  1979: 
  1980:     invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
  1981: 
  1982:     move-result-object v3
  1983: 
  1984:     invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
  1985: 
  1986:     :cond_0
  1987:     return-void
  1988: .end method
  1989: 
  1990: .method private openLink(Ljava/lang/String;)V
  1991:     .locals 2
  1992: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:2963 (ad_lifecycle; file score 17)

```java
  2957: 
  2958:     move-result-object p1
  2959: 
  2960:     return-object p1
  2961: .end method
  2962: 
  2963: .method private requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
  2964:     .locals 1
  2965: 
  2966:     .prologue
  2967:     if-eqz p1, :cond_0
  2968: 
  2969:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  2970: 
  2971:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:2971 (ad_lifecycle; file score 17)

```java
  2965: 
  2966:     .prologue
  2967:     if-eqz p1, :cond_0
  2968: 
  2969:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
  2970: 
  2971:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  2972: 
  2973:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  2974: 
  2975:     move-result-object v0
  2976: 
  2977:     invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
  2978: 
  2979:     :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3210 (ad_lifecycle; file score 17)

```java
  3204: 
  3205:     invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V
  3206: 
  3207:     return-void
  3208: .end method
  3209: 
  3210: .method private showAd(Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
  3211:     .locals 5
  3212: 
  3213:     .prologue
  3214:     sget-object v0, Lapp/fast/ssh/HomeFragment;->MS_LOCK:Ljava/lang/Object;
  3215: 
  3216:     monitor-enter v0
  3217: 
  3218:     :try_start_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3233 (ad_lifecycle; file score 17)

```java
  3227:     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
  3228: 
  3229:     move-result-wide v1
  3230: 
  3231:     sput-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J
  3232: 
  3233:     invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V
  3234: 
  3235:     goto :goto_0
  3236: 
  3237:     :cond_0
  3238:     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
  3239: 
  3240:     move-result-wide v1
  3241: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3262 (ad_lifecycle; file score 17)

```java
  3256:     invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
  3257: 
  3258:     move-result-wide v1
  3259: 
  3260:     sput-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J
  3261: 
  3262:     invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V
  3263: 
  3264:     :cond_1
  3265:     :goto_0
  3266:     monitor-exit v0
  3267: 
  3268:     return-void
  3269: 
  3270:     :catchall_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3280 (ad_lifecycle; file score 17)

```java
  3274:     :try_end_0
  3275:     .catchall {:try_start_0 .. :try_end_0} :catchall_0
  3276: 
  3277:     throw p1
  3278: .end method
  3279: 
  3280: .method private showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
  3281:     .locals 3
  3282: 
  3283:     .prologue
  3284:     new-instance v0, Lorg/json/JSONObject;
  3285: 
  3286:     invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
  3287: 
  3288:     :try_start_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3354 (ad_sdk; file score 17)

```java
  3348:     move-result-object v2
  3349: 
  3350:     invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
  3351: 
  3352:     move-result-object v1
  3353: 
  3354:     new-instance v2, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
  3355: 
  3356:     invoke-direct {v2}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;-><init>()V
  3357: 
  3358:     invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
  3359: 
  3360:     move-result-object v0
  3361: 
  3362:     invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3362 (ad_sdk; file score 17)

```java
  3356:     invoke-direct {v2}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;-><init>()V
  3357: 
  3358:     invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
  3359: 
  3360:     move-result-object v0
  3361: 
  3362:     invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
  3363: 
  3364:     move-result-object v0
  3365: 
  3366:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
  3367: 
  3368:     move-result-object v0
  3369: 
  3370:     invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->build()Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3370 (ad_sdk; file score 17)

```java
  3364:     move-result-object v0
  3365: 
  3366:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
  3367: 
  3368:     move-result-object v0
  3369: 
  3370:     invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->build()Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;
  3371: 
  3372:     move-result-object v0
  3373: 
  3374:     invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
  3375: 
  3376:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  3377: 
  3378:     move-result-object v0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3384 (ad_lifecycle; file score 17)

```java
  3378:     move-result-object v0
  3379: 
  3380:     new-instance v1, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;
  3381: 
  3382:     invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;-><init>(Lapp/fast/ssh/HomeFragment;)V
  3383: 
  3384:     invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
  3385: 
  3386:     return-void
  3387: .end method
  3388: 
  3389: .method private stopAndHideTimer()V
  3390:     .locals 2
  3391: 
  3392:     .prologue
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3954 (ad_lifecycle; file score 17)

```java
  3948: 
  3949:     const/4 p1, 0x0
  3950: 
  3951:     iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;
  3952: 
  3953:     :cond_0
  3954:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  3955: 
  3956:     invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
  3957: 
  3958:     move-result-object p1
  3959: 
  3960:     if-eqz p1, :cond_1
  3961: 
  3962:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:3962 (ad_lifecycle; file score 17)

```java
  3956:     invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
  3957: 
  3958:     move-result-object p1
  3959: 
  3960:     if-eqz p1, :cond_1
  3961: 
  3962:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
  3963: 
  3964:     :cond_1
  3965:     return-void
  3966: .end method
  3967: 
  3968: .method public exportConfig()V
  3969:     .locals 4
  3970: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4237 (ad_lifecycle; file score 17)

```java
  4231:     invoke-virtual {p1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  4232: 
  4233:     move-result p1
  4234: 
  4235:     if-eqz p1, :cond_1
  4236: 
  4237:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  4238: 
  4239:     invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
  4240: 
  4241:     move-result-object p1
  4242: 
  4243:     if-eqz p1, :cond_0
  4244: 
  4245:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4245 (ad_lifecycle; file score 17)

```java
  4239:     invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;
  4240: 
  4241:     move-result-object p1
  4242: 
  4243:     if-eqz p1, :cond_0
  4244: 
  4245:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
  4246: 
  4247:     return-void
  4248: 
  4249:     :cond_0
  4250:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  4251: 
  4252:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  4253: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4250 (ad_lifecycle; file score 17)

```java
  4244: 
  4245:     invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
  4246: 
  4247:     return-void
  4248: 
  4249:     :cond_0
  4250:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  4251: 
  4252:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;
  4253: 
  4254:     move-result-object v0
  4255: 
  4256:     invoke-virtual {p1, v0, p0}, Lapp/fast/ssh/RewardedAdSyncController;->onUserClick(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V
  4257: 
  4258:     :cond_1
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4417 (ad_lifecycle; file score 17)

```java
  4411:     return-void
  4412: .end method
  4413: 
  4414: .method synthetic lambda$showLoading$7$app-fast-ssh-HomeFragment(JLandroid/content/DialogInterface;)V
  4415:     .locals 0
  4416: 
  4417:     iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;
  4418: 
  4419:     invoke-virtual {p3, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->onDialogCancelled(J)V
  4420: 
  4421:     return-void
  4422: .end method
  4423: 
  4424: .method synthetic lambda$showRewarded$8$app-fast-ssh-HomeFragment(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
  4425:     .locals 3
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4424 (ad_sdk; file score 17)

```java
  4418: 
  4419:     invoke-virtual {p3, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->onDialogCancelled(J)V
  4420: 
  4421:     return-void
  4422: .end method
  4423: 
  4424: .method synthetic lambda$showRewarded$8$app-fast-ssh-HomeFragment(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
  4425:     .locals 3
  4426: 
  4427:     invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I
  4428: 
  4429:     move-result v0
  4430: 
  4431:     invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;
  4432: 
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4431 (ad_sdk; file score 17)

```java
  4425:     .locals 3
  4426: 
  4427:     invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I
  4428: 
  4429:     move-result v0
  4430: 
  4431:     invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;
  4432: 
  4433:     move-result-object p1
  4434: 
  4435:     new-instance v1, Ljava/lang/StringBuilder;
  4436: 
  4437:     const-string/jumbo v2, "\u2f2b"
  4438: 
  4439:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:4904 (ad_lifecycle; file score 17)

```java
  4898:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  4899: 
  4900:     move-result-object p1
  4901: 
  4902:     check-cast p1, Lapp/fast/ssh/MainActivity;
  4903: 
  4904:     invoke-virtual {p1}, Lapp/fast/ssh/MainActivity;->hideBannerAd()V
  4905: 
  4906:     invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z
  4907: 
  4908:     move-result p1
  4909: 
  4910:     if-eqz p1, :cond_5
  4911: 
  4912:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->stopAndHideTimer()V
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5281 (ad_lifecycle; file score 17)

```java
  5275:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
  5276: 
  5277:     move-result-object p2
  5278: 
  5279:     check-cast p2, Landroid/widget/LinearLayout;
  5280: 
  5281:     iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;
  5282: 
  5283:     const p2, 0x7f090235
  5284: 
  5285:     invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
  5286: 
  5287:     move-result-object p2
  5288: 
  5289:     check-cast p2, Landroid/widget/LinearLayout;
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5803 (ad_lifecycle; file score 17)

```java
  5797: 
  5798:     :cond_0
  5799:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;
  5800: 
  5801:     invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V
  5802: 
  5803:     iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;
  5804: 
  5805:     invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I
  5806: 
  5807:     move-result p1
  5808: 
  5809:     const/16 v0, 0x8
  5810: 
  5811:     if-ne p1, v0, :cond_1
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5914 (ad_lifecycle; file score 17)

```java
  5908:     invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  5909: 
  5910:     move-result v0
  5911: 
  5912:     if-eqz v0, :cond_0
  5913: 
  5914:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->bannerAd:Lcom/google/android/gms/ads/AdView;
  5915: 
  5916:     invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
  5917: 
  5918:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V
  5919: 
  5920:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V
  5921: 
  5922:     :cond_0
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:5920 (ad_lifecycle; file score 17)

```java
  5914:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->bannerAd:Lcom/google/android/gms/ads/AdView;
  5915: 
  5916:     invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
  5917: 
  5918:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V
  5919: 
  5920:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V
  5921: 
  5922:     :cond_0
  5923:     invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addByteCountListener(Lapp/fast/ssh/core/VpnStatus$ByteCountListener;)V
  5924: 
  5925:     invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->fetchAndShowTicker()V
  5926: 
  5927:     return-void
  5928: .end method
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:6206 (ad_sdk; file score 17)

```java
  6200: 
  6201:     :catch_1
  6202:     :goto_0
  6203:     return-void
  6204: .end method
  6205: 
  6206: .method public showLoadFailed(JLcom/google/android/gms/ads/LoadAdError;)V
  6207:     .locals 2
  6208: 
  6209:     .prologue
  6210:     iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;
  6211: 
  6212:     if-eqz v0, :cond_0
  6213: 
  6214:     invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z
```

## decoded/smali/app/fast/ssh/HomeFragment.smali:6239 (ad_sdk; file score 17)

```java
  6233: 
  6234:     :cond_0
  6235:     invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;
  6236: 
  6237:     move-result-object p1
  6238: 
  6239:     invoke-virtual {p3}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;
  6240: 
  6241:     move-result-object p2
  6242: 
  6243:     const/4 p3, 0x0
  6244: 
  6245:     invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
  6246: 
  6247:     move-result-object p1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:17 (ad_lifecycle; file score 17)

```java
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
    24: 
    25: .field private homeFragment:Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:29 (ad_lifecycle; file score 17)

```java
    23: .field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;
    24: 
    25: .field private homeFragment:Lapp/fast/ssh/HomeFragment;
    26: 
    27: .field private inBackground:Z
    28: 
    29: .field private renewInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    30: 
    31: .field private resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
    32: 
    33: .field private restartOnUpdateRequest:Z
    34: 
    35: .field private resumeAdTimer:Ljava/util/Timer;
    36: 
    37: .field private resumeInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:37 (ad_lifecycle; file score 17)

```java
    31: .field private resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
    32: 
    33: .field private restartOnUpdateRequest:Z
    34: 
    35: .field private resumeAdTimer:Ljava/util/Timer;
    36: 
    37: .field private resumeInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    38: 
    39: .field private updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    40: 
    41: 
    42: # direct methods
    43: .method static constructor <clinit>()V
    44:     .locals 1
    45: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:94 (ad_lifecycle; file score 17)

```java
    88: 
    89:     move-result p0
    90: 
    91:     return p0
    92: .end method
    93: 
    94: .method static synthetic access$100(Lapp/fast/ssh/MainActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    95:     .locals 0
    96: 
    97:     iget-object p0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    98: 
    99:     return-object p0
   100: .end method
   101: 
   102: .method static synthetic access$102(Lapp/fast/ssh/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:102 (ad_lifecycle; file score 17)

```java
    96: 
    97:     iget-object p0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    98: 
    99:     return-object p0
   100: .end method
   101: 
   102: .method static synthetic access$102(Lapp/fast/ssh/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   103:     .locals 0
   104: 
   105:     iput-object p1, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   106: 
   107:     return-object p1
   108: .end method
   109: 
   110: .method static synthetic access$200(Lapp/fast/ssh/MainActivity;)Lapp/fast/ssh/HomeFragment;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:264 (ad_sdk; file score 17)

```java
   258: 
   259:     invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V
   260: 
   261:     return-void
   262: .end method
   263: 
   264: .method private getAdSize()Lcom/google/android/gms/ads/AdSize;
   265:     .locals 2
   266: 
   267:     invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getWindowManager()Landroid/view/WindowManager;
   268: 
   269:     move-result-object v0
   270: 
   271:     invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
   272: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:291 (ad_lifecycle; file score 17)

```java
   285:     iget v1, v1, Landroid/util/DisplayMetrics;->density:F
   286: 
   287:     div-float/2addr v0, v1
   288: 
   289:     float-to-int v0, v0
   290: 
   291:     invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;
   292: 
   293:     move-result-object v0
   294: 
   295:     return-object v0
   296: .end method
   297: 
   298: .method private handleImportIntent(Landroid/content/Intent;)V
   299:     .locals 1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:333 (ad_lifecycle; file score 17)

```java
   327:     return-void
   328: .end method
   329: 
   330: .method private initAds()V
   331:     .locals 2
   332: 
   333:     new-instance v0, Lcom/google/android/gms/ads/AdView;
   334: 
   335:     invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V
   336: 
   337:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
   338: 
   339:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->getAdSize()Lcom/google/android/gms/ads/AdSize;
   340: 
   341:     move-result-object v1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:343 (ad_lifecycle; file score 17)

```java
   337:     iput-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
   338: 
   339:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->getAdSize()Lcom/google/android/gms/ads/AdSize;
   340: 
   341:     move-result-object v1
   342: 
   343:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V
   344: 
   345:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
   346: 
   347:     const-string/jumbo v1, "\u2f68"
   348: 
   349:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   350: 
   351:     move-result-object v1
```

## decoded/smali/app/fast/ssh/MainActivity.smali:353 (ad_lifecycle; file score 17)

```java
   347:     const-string/jumbo v1, "\u2f68"
   348: 
   349:     invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   350: 
   351:     move-result-object v1
   352: 
   353:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V
   354: 
   355:     const v0, 0x7f090069
   356: 
   357:     invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;
   358: 
   359:     move-result-object v0
   360: 
   361:     check-cast v0, Landroid/widget/LinearLayout;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:365 (ad_lifecycle; file score 17)

```java
   359:     move-result-object v0
   360: 
   361:     check-cast v0, Landroid/widget/LinearLayout;
   362: 
   363:     invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
   364: 
   365:     iget-object v1, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
   366: 
   367:     invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
   368: 
   369:     return-void
   370: .end method
   371: 
   372: .method static synthetic lambda$fixAppBarInset$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
   373:     .locals 4
```

## decoded/smali/app/fast/ssh/MainActivity.smali:438 (ad_lifecycle; file score 17)

```java
   432: .method static synthetic lambda$onCreate$2(Ljava/lang/Boolean;)V
   433:     .locals 0
   434: 
   435:     return-void
   436: .end method
   437: 
   438: .method private loadUpdateSuccessInterstitialAd()V
   439:     .locals 3
   440: 
   441:     .prologue
   442:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   443: 
   444:     if-nez v0, :cond_0
   445: 
   446:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:442 (ad_lifecycle; file score 17)

```java
   436: .end method
   437: 
   438: .method private loadUpdateSuccessInterstitialAd()V
   439:     .locals 3
   440: 
   441:     .prologue
   442:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;
   443: 
   444:     if-nez v0, :cond_0
   445: 
   446:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
   447: 
   448:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
   449: 
   450:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:450 (ad_lifecycle; file score 17)

```java
   444:     if-nez v0, :cond_0
   445: 
   446:     new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;
   447: 
   448:     invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
   449: 
   450:     invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
   451: 
   452:     move-result-object v0
   453: 
   454:     new-instance v1, Lapp/fast/ssh/MainActivity$5;
   455: 
   456:     invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$5;-><init>(Lapp/fast/ssh/MainActivity;)V
   457: 
   458:     const-string/jumbo v2, "\u2f69"
```

## decoded/smali/app/fast/ssh/MainActivity.smali:464 (ad_lifecycle; file score 17)

```java
   458:     const-string/jumbo v2, "\u2f69"
   459: 
   460:     invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;
   461: 
   462:     move-result-object v2
   463: 
   464:     invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V
   465: 
   466:     :cond_0
   467:     return-void
   468: .end method
   469: 
   470: .method private openLink(Ljava/lang/String;)V
   471:     .locals 2
   472: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1006 (ad_lifecycle; file score 17)

```java
  1000:     invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  1001: 
  1002:     move-result v2
  1003: 
  1004:     if-eqz v2, :cond_1
  1005: 
  1006:     invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->loadUpdateSuccessInterstitialAd()V
  1007: 
  1008:     :cond_1
  1009:     iget-object v2, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;
  1010: 
  1011:     new-instance v3, Lapp/fast/ssh/MainActivity$2;
  1012: 
  1013:     invoke-direct {v3, p0, v1, v0}, Lapp/fast/ssh/MainActivity$2;-><init>(Lapp/fast/ssh/MainActivity;Lapp/fast/ssh/Subscription;Landroid/app/ProgressDialog;)V
  1014: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1114 (ad_lifecycle; file score 17)

```java
  1108: 
  1109:     move-result-object v0
  1110: 
  1111:     return-object v0
  1112: .end method
  1113: 
  1114: .method public hideBannerAd()V
  1115:     .locals 2
  1116: 
  1117:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
  1118: 
  1119:     const/16 v1, 0x8
  1120: 
  1121:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  1122: 
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1121 (ad_lifecycle; file score 17)

```java
  1115:     .locals 2
  1116: 
  1117:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
  1118: 
  1119:     const/16 v1, 0x8
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
```

## decoded/smali/app/fast/ssh/MainActivity.smali:1990 (ad_lifecycle; file score 17)

```java
  1984:     iget-object v2, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;
  1985: 
  1986:     invoke-virtual {v1, v2}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V
  1987: 
  1988:     invoke-virtual {v1}, Lapp/fast/ssh/BillingManager;->refreshIfNeeded()V
  1989: 
  1990:     new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;
  1991: 
  1992:     invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
  1993: 
  1994:     invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;
  1995: 
  1996:     move-result-object v1
  1997: 
  1998:     new-instance v2, Lapp/fast/ssh/Subscription;
```

## decoded/smali/app/fast/ssh/MainActivity.smali:2012 (ad_lifecycle; file score 17)

```java
  2006:     invoke-virtual {v2}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z
  2007: 
  2008:     move-result v2
  2009: 
  2010:     if-eqz v2, :cond_0
  2011: 
  2012:     iget-object v2, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
  2013: 
  2014:     invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
  2015: 
  2016:     iget-object v1, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
  2017: 
  2018:     invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  2019: 
  2020:     goto :goto_0
```

## decoded/smali/app/fast/ssh/MainActivity.smali:2023 (ad_lifecycle; file score 17)

```java
  2017: 
  2018:     invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  2019: 
  2020:     goto :goto_0
  2021: 
  2022:     :cond_0
  2023:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;
  2024: 
  2025:     const/16 v1, 0x8
  2026: 
  2027:     invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V
  2028: 
  2029:     :goto_0
  2030:     iget-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;
  2031: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:56 (ad_sdk; file score 17)

```java
    50: import app.fast.ssh.util.DBHelper;
    51: import com.android.volley.RequestQueue;
    52: import com.android.volley.Response;
    53: import com.android.volley.VolleyError;
    54: import com.android.volley.toolbox.JsonObjectRequest;
    55: import com.android.volley.toolbox.Volley;
    56: import com.google.android.gms.ads.AdError;
    57: import com.google.android.gms.ads.AdRequest;
    58: import com.google.android.gms.ads.AdSize;
    59: import com.google.android.gms.ads.AdView;
    60: import com.google.android.gms.ads.FullScreenContentCallback;
    61: import com.google.android.gms.ads.LoadAdError;
    62: import com.google.android.gms.ads.interstitial.InterstitialAd;
    63: import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
    64: import com.google.android.gms.ads.rewarded.RewardItem;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:60 (ad_sdk; file score 17)

```java
    54: import com.android.volley.toolbox.JsonObjectRequest;
    55: import com.android.volley.toolbox.Volley;
    56: import com.google.android.gms.ads.AdError;
    57: import com.google.android.gms.ads.AdRequest;
    58: import com.google.android.gms.ads.AdSize;
    59: import com.google.android.gms.ads.AdView;
    60: import com.google.android.gms.ads.FullScreenContentCallback;
    61: import com.google.android.gms.ads.LoadAdError;
    62: import com.google.android.gms.ads.interstitial.InterstitialAd;
    63: import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
    64: import com.google.android.gms.ads.rewarded.RewardItem;
    65: import com.google.android.gms.ads.rewarded.RewardedAd;
    66: import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
    67: import com.google.android.material.snackbar.Snackbar;
    68: import com.google.android.material.switchmaterial.SwitchMaterial;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:87 (ad_lifecycle; file score 17)

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

## jadx/sources/app/fast/ssh/HomeFragment.java:102 (ad_lifecycle; file score 17)

```java
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
   106:     private Button buttonConnect;
   107:     private TextView byteRx;
   108:     private TextView byteTx;
   109:     private CheckBox checkPreserveSni;
   110:     private CheckBox checkRealmHost;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:112 (ad_lifecycle; file score 17)

```java
   106:     private Button buttonConnect;
   107:     private TextView byteRx;
   108:     private TextView byteTx;
   109:     private CheckBox checkPreserveSni;
   110:     private CheckBox checkRealmHost;
   111:     private CheckBox checkUseTcpPayload;
   112:     private InterstitialAd connectedInterstitial;
   113:     private SwitchMaterial customSwitch;
   114:     private LinearLayout customsView;
   115:     private MaterialTextView descText;
   116:     private LinearLayout descView;
   117:     private InterstitialAd disConnectedInterstitial;
   118:     private StringBuilder glassBind;
   119:     private TextInputEditText hostText;
   120:     private LinearLayout hostView;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:131 (ad_lifecycle; file score 17)

```java
   125:     List<MethodAdapter.SpinnerItem> methodItems_Lite;
   126:     private AppCompatSpinner methodSelect;
   127:     private TextView newsBar;
   128:     private TextInputEditText nsText;
   129:     private LinearLayout nsView;
   130:     private TextInputEditText payloadText;
   131:     private LinearLayout payloadView;
   132:     private AppCompatSpinner portSelect;
   133:     private RequestQueue requestQueue;
   134:     private RewardedAdSyncController rewardedAdSyncController;
   135:     private ServerAdapter serverAdapter;
   136:     List<ServerAdapter.SpinnerItem> serverItems;
   137:     private AppCompatSpinner serverSelect;
   138:     private TextInputEditText sniText;
   139:     private LinearLayout sniView;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:144 (ad_lifecycle; file score 17)

```java
   138:     private TextInputEditText sniText;
   139:     private LinearLayout sniView;
   140:     private Button timerButton;
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
```

## jadx/sources/app/fast/ssh/HomeFragment.java:602 (ad_lifecycle; file score 17)

```java
   596: 
   597:         @Override
   598:         public void onClick(DialogInterface dialogInterface, int i) {
   599:         }
   600:     }
   601: 
   602:     class AnonymousClass24 extends InterstitialAdLoadCallback {
   603: 
   604:         class AnonymousClass1 extends FullScreenContentCallback {
   605:             AnonymousClass1() {
   606:             }
   607: 
   608:             @Override
   609:             public void onAdClicked() {
   610:             }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:639 (ad_lifecycle; file score 17)

```java
   633: 
   634:         @Override
   635:         public void onAdFailedToLoad(LoadAdError loadAdError) {
   636:             HomeFragment.access$1902(HomeFragment.this, null);
   637:         }
   638: 
   639:         public void onAdLoaded2(InterstitialAd interstitialAd) {
   640:             HomeFragment.access$1902(HomeFragment.this, interstitialAd);
   641:             HomeFragment.access$1900(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
   642:         }
   643: 
   644:         @Override
   645:         public void onAdLoaded(InterstitialAd interstitialAd) {
   646:             onAdLoaded2(interstitialAd);
   647:         }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:640 (ad_lifecycle; file score 17)

```java
   634:         @Override
   635:         public void onAdFailedToLoad(LoadAdError loadAdError) {
   636:             HomeFragment.access$1902(HomeFragment.this, null);
   637:         }
   638: 
   639:         public void onAdLoaded2(InterstitialAd interstitialAd) {
   640:             HomeFragment.access$1902(HomeFragment.this, interstitialAd);
   641:             HomeFragment.access$1900(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
   642:         }
   643: 
   644:         @Override
   645:         public void onAdLoaded(InterstitialAd interstitialAd) {
   646:             onAdLoaded2(interstitialAd);
   647:         }
   648:     }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:650 (ad_lifecycle; file score 17)

```java
   644:         @Override
   645:         public void onAdLoaded(InterstitialAd interstitialAd) {
   646:             onAdLoaded2(interstitialAd);
   647:         }
   648:     }
   649: 
   650:     class AnonymousClass25 extends InterstitialAdLoadCallback {
   651: 
   652:         class AnonymousClass1 extends FullScreenContentCallback {
   653:             AnonymousClass1() {
   654:             }
   655: 
   656:             @Override
   657:             public void onAdClicked() {
   658:             }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:687 (ad_lifecycle; file score 17)

```java
   681: 
   682:         @Override
   683:         public void onAdFailedToLoad(LoadAdError loadAdError) {
   684:             HomeFragment.access$2202(HomeFragment.this, null);
   685:         }
   686: 
   687:         public void onAdLoaded2(InterstitialAd interstitialAd) {
   688:             HomeFragment.access$2202(HomeFragment.this, interstitialAd);
   689:             HomeFragment.access$2200(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
   690:         }
   691: 
   692:         @Override
   693:         public void onAdLoaded(InterstitialAd interstitialAd) {
   694:             onAdLoaded2(interstitialAd);
   695:         }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:693 (ad_lifecycle; file score 17)

```java
   687:         public void onAdLoaded2(InterstitialAd interstitialAd) {
   688:             HomeFragment.access$2202(HomeFragment.this, interstitialAd);
   689:             HomeFragment.access$2200(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
   690:         }
   691: 
   692:         @Override
   693:         public void onAdLoaded(InterstitialAd interstitialAd) {
   694:             onAdLoaded2(interstitialAd);
   695:         }
   696:     }
   697: 
   698:     class AnonymousClass26 implements Response.Listener<JSONObject> {
   699: 
   700:         class AnonymousClass1 implements View.OnClickListener {
   701:             final String val$click_target;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1044 (ad_lifecycle; file score 17)

```java
  1038:     }
  1039: 
  1040:     static void access$1800(HomeFragment homeFragment, boolean z) {
  1041:         homeFragment.setConnected(z);
  1042:     }
  1043: 
  1044:     static InterstitialAd access$1900(HomeFragment homeFragment) {
  1045:         return homeFragment.connectedInterstitial;
  1046:     }
  1047: 
  1048:     static InterstitialAd access$1902(HomeFragment homeFragment, InterstitialAd interstitialAd) {
  1049:         homeFragment.connectedInterstitial = interstitialAd;
  1050:         return interstitialAd;
  1051:     }
  1052: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1050 (ad_lifecycle; file score 17)

```java
  1044:     static InterstitialAd access$1900(HomeFragment homeFragment) {
  1045:         return homeFragment.connectedInterstitial;
  1046:     }
  1047: 
  1048:     static InterstitialAd access$1902(HomeFragment homeFragment, InterstitialAd interstitialAd) {
  1049:         homeFragment.connectedInterstitial = interstitialAd;
  1050:         return interstitialAd;
  1051:     }
  1052: 
  1053:     static AppCompatSpinner access$200(HomeFragment homeFragment) {
  1054:         return homeFragment.methodSelect;
  1055:     }
  1056: 
  1057:     static void access$2000(HomeFragment homeFragment, InterstitialAd interstitialAd, Activity activity) {
  1058:         homeFragment.showAd(interstitialAd, activity);
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1062 (ad_lifecycle; file score 17)

```java
  1056: 
  1057:     static void access$2000(HomeFragment homeFragment, InterstitialAd interstitialAd, Activity activity) {
  1058:         homeFragment.showAd(interstitialAd, activity);
  1059:     }
  1060: 
  1061:     static void access$2100(HomeFragment homeFragment) {
  1062:         homeFragment.loadConnectedInterstitialAd();
  1063:     }
  1064: 
  1065:     static InterstitialAd access$2200(HomeFragment homeFragment) {
  1066:         return homeFragment.disConnectedInterstitial;
  1067:     }
  1068: 
  1069:     static InterstitialAd access$2202(HomeFragment homeFragment, InterstitialAd interstitialAd) {
  1070:         homeFragment.disConnectedInterstitial = interstitialAd;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1070 (ad_lifecycle; file score 17)

```java
  1064: 
  1065:     static InterstitialAd access$2200(HomeFragment homeFragment) {
  1066:         return homeFragment.disConnectedInterstitial;
  1067:     }
  1068: 
  1069:     static InterstitialAd access$2202(HomeFragment homeFragment, InterstitialAd interstitialAd) {
  1070:         homeFragment.disConnectedInterstitial = interstitialAd;
  1071:         return interstitialAd;
  1072:     }
  1073: 
  1074:     static void access$2300(HomeFragment homeFragment) {
  1075:         homeFragment.loadDisConnectedInterstitialAd();
  1076:     }
  1077: 
  1078:     static Button access$2400(HomeFragment homeFragment) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1121 (ad_lifecycle; file score 17)

```java
  1115:     }
  1116: 
  1117:     static MethodAdapter access$300(HomeFragment homeFragment) {
  1118:         return homeFragment.methodAdapter;
  1119:     }
  1120: 
  1121:     static RewardedAdSyncController access$3000(HomeFragment homeFragment) {
  1122:         return homeFragment.rewardedAdSyncController;
  1123:     }
  1124: 
  1125:     static String access$3100(HomeFragment homeFragment) {
  1126:         return homeFragment.deviceId();
  1127:     }
  1128: 
  1129:     static void access$3200(HomeFragment homeFragment, String str) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1154 (ad_lifecycle; file score 17)

```java
  1148: 
  1149:     static LinearLayout access$600(HomeFragment homeFragment) {
  1150:         return homeFragment.hostView;
  1151:     }
  1152: 
  1153:     static LinearLayout access$700(HomeFragment homeFragment) {
  1154:         return homeFragment.payloadView;
  1155:     }
  1156: 
  1157:     static LinearLayout access$800(HomeFragment homeFragment) {
  1158:         return homeFragment.descView;
  1159:     }
  1160: 
  1161:     static MaterialTextView access$900(HomeFragment homeFragment) {
  1162:         return homeFragment.descText;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1203 (ad_lifecycle; file score 17)

```java
  1197:     }
  1198: 
  1199:     private AdSize getAdSize() {
  1200:         Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
  1201:         DisplayMetrics displayMetrics = new DisplayMetrics();
  1202:         defaultDisplay.getMetrics(displayMetrics);
  1203:         return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(getContext(), (int) (displayMetrics.widthPixels / displayMetrics.density));
  1204:     }
  1205: 
  1206:     public static String getAuid() {
  1207:         return deviceId;
  1208:     }
  1209: 
  1210:     private ArrayAdapter<CharSequence> getPortsAdapter(int i) {
  1211:         ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getContext(), i, android.R.layout.simple_spinner_item);
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1217 (ad_lifecycle; file score 17)

```java
  1211:         ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getContext(), i, android.R.layout.simple_spinner_item);
  1212:         arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
  1213:         return arrayAdapterCreateFromResource;
  1214:     }
  1215: 
  1216:     private void initAds() {
  1217:         RewardedAdSyncController rewardedAdSyncController = new RewardedAdSyncController(ProtectedFastSSH.s("⻒"));
  1218:         this.rewardedAdSyncController = rewardedAdSyncController;
  1219:         rewardedAdSyncController.prefetch(getActivity(), this);
  1220:     }
  1221: 
  1222:     private List<String> initApps(String str) throws Throwable {
  1223:         String strS = ProtectedFastSSH.s("⻓");
  1224:         try {
  1225:             String resource = readResource(ProtectedFastSSH.s("⻔"));
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1335 (ad_lifecycle; file score 17)

```java
  1329:         builder.setMessage(ProtectedFastSSH.s("⻢"));
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
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1340 (ad_lifecycle; file score 17)

```java
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
  1345:     private void loadDisConnectedInterstitialAd() {
  1346:         Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
  1347:         if (this.disConnectedInterstitial == null && subscription.shouldRequestAds()) {
  1348:             AdRequest adRequestBuild = new AdRequest.Builder().build();
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1350 (ad_lifecycle; file score 17)

```java
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
  1355:     private void openLink(String str) {
  1356:         Intent intent = new Intent(ProtectedFastSSH.s("⻧"));
  1357:         intent.setData(Uri.parse(str));
  1358:         startActivity(intent);
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1535 (ad_lifecycle; file score 17)

```java
  1529:         } catch (Throwable th2) {
  1530:             th = th2;
  1531:         }
  1532:         return sb.toString();
  1533:     }
  1534: 
  1535:     private void requestNewAdBanner(AdView adView) {
  1536:         if (adView != null) {
  1537:             adView.loadAd(new AdRequest.Builder().build());
  1538:         }
  1539:     }
  1540: 
  1541:     private void saveEntries() {
  1542:         this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⻁"), this.payloadText.getText().toString()).apply();
  1543:         this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⻄"), this.hostText.getText().toString()).apply();
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1568 (ad_lifecycle; file score 17)

```java
  1562:         this.customSwitch.setEnabled(!z);
  1563:         this.checkRealmHost.setEnabled(!z);
  1564:         this.checkPreserveSni.setEnabled(!z);
  1565:         this.checkUseTcpPayload.setEnabled(!z);
  1566:     }
  1567: 
  1568:     private void showAd(InterstitialAd interstitialAd, Activity activity) {
  1569:         synchronized (MS_LOCK) {
  1570:             if (SHOW_AD_MS == 0 || (System.currentTimeMillis() - SHOW_AD_MS) / 1000 >= 30) {
  1571:                 SHOW_AD_MS = System.currentTimeMillis();
  1572:                 interstitialAd.show(activity);
  1573:             }
  1574:         }
  1575:     }
  1576: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1572 (ad_lifecycle; file score 17)

```java
  1566:     }
  1567: 
  1568:     private void showAd(InterstitialAd interstitialAd, Activity activity) {
  1569:         synchronized (MS_LOCK) {
  1570:             if (SHOW_AD_MS == 0 || (System.currentTimeMillis() - SHOW_AD_MS) / 1000 >= 30) {
  1571:                 SHOW_AD_MS = System.currentTimeMillis();
  1572:                 interstitialAd.show(activity);
  1573:             }
  1574:         }
  1575:     }
  1576: 
  1577:     private void showRewarded(RewardedAd rewardedAd) {
  1578:         JSONObject jSONObject = new JSONObject();
  1579:         try {
  1580:             jSONObject.put(ProtectedFastSSH.s("⻟"), VpnStatus.getLastConnectedProfile().primaryNode());
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1585 (ad_lifecycle; file score 17)

```java
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
  1591:         if (countDownTimer2 != null) {
  1592:             countDownTimer2.cancel();
  1593:         }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1678 (ad_lifecycle; file score 17)

```java
  1672:     public void dismissLoading(long j) {
  1673:         AlertDialog alertDialog = this.waitDialog;
  1674:         if (alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j) {
  1675:             this.waitDialog.dismiss();
  1676:             this.waitDialog = null;
  1677:         }
  1678:         RewardedAd rewardedAdTryConsumeCached = this.rewardedAdSyncController.tryConsumeCached();
  1679:         if (rewardedAdTryConsumeCached != null) {
  1680:             showRewarded(rewardedAdTryConsumeCached);
  1681:         }
  1682:     }
  1683: 
  1684:     public void exportConfig() {
  1685:         int selectedItemPosition = this.methodSelect.getSelectedItemPosition();
  1686:         if (!this.customSwitch.isChecked()) {
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1680 (ad_lifecycle; file score 17)

```java
  1674:         if (alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j) {
  1675:             this.waitDialog.dismiss();
  1676:             this.waitDialog = null;
  1677:         }
  1678:         RewardedAd rewardedAdTryConsumeCached = this.rewardedAdSyncController.tryConsumeCached();
  1679:         if (rewardedAdTryConsumeCached != null) {
  1680:             showRewarded(rewardedAdTryConsumeCached);
  1681:         }
  1682:     }
  1683: 
  1684:     public void exportConfig() {
  1685:         int selectedItemPosition = this.methodSelect.getSelectedItemPosition();
  1686:         if (!this.customSwitch.isChecked()) {
  1687:             Toast.makeText(getContext(), ProtectedFastSSH.s("⼡"), 0).show();
  1688:             return;
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1730 (ad_lifecycle; file score 17)

```java
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
  1738: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1778 (ad_lifecycle; file score 17)

```java
  1772:             this.buttonConnect.setText(ProtectedFastSSH.s("⼪"));
  1773:             this.vpnConnectionHelper.stopVpnConnection();
  1774:         }
  1775:     }
  1776: 
  1777:     void m470lambda$showLoading$7$appfastsshHomeFragment(long j, DialogInterface dialogInterface) {
  1778:         this.rewardedAdSyncController.onDialogCancelled(j);
  1779:     }
  1780: 
  1781:     void m471lambda$showRewarded$8$appfastsshHomeFragment(RewardItem rewardItem) {
  1782:         String str = ProtectedFastSSH.s("⼫") + rewardItem.getAmount() + ProtectedFastSSH.s("⼬") + rewardItem.getType();
  1783:         ProtectedFastSSH.s("⼭");
  1784:         Toast.makeText(getContext(), ProtectedFastSSH.s("⼮"), 0).show();
  1785:         this.addTimeDialog2.dismiss();
  1786:     }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1842 (ad_lifecycle; file score 17)

```java
  1836:             if (this.purchaseInFlight) {
  1837:                 this.purchaseInFlight = false;
  1838:                 Toast.makeText(getContext(), ProtectedFastSSH.s("⼻"), 0).show();
  1839:                 if (this.addTimeDialog2.isShowing()) {
  1840:                     this.addTimeDialog2.dismiss();
  1841:                 }
  1842:                 ((MainActivity) getContext()).hideBannerAd();
  1843:                 if (VpnStatus.isConnected()) {
  1844:                     stopAndHideTimer();
  1845:                     return;
  1846:                 }
  1847:                 return;
  1848:             }
  1849:             return;
  1850:         }
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1919 (ad_lifecycle; file score 17)

```java
  1913:         this.timerButton.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda4(this));
  1914:         this.byteTx = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090082);
  1915:         this.byteRx = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090081);
  1916:         this.buttonConnect = (Button) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09007e);
  1917:         this.bannerContainer = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090068);
  1918:         this.buttonConnect.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda5(this));
  1919:         this.payloadView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901de);
  1920:         this.sniView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090235);
  1921:         this.hostView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09012b);
  1922:         this.nsView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901ae);
  1923:         this.descView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900c3);
  1924:         this.payloadText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090273);
  1925:         this.hostText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09026e);
  1926:         this.sniText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090275);
  1927:         this.nsText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090272);
```

## jadx/sources/app/fast/ssh/HomeFragment.java:1997 (ad_lifecycle; file score 17)

```java
  1991:     public void onGenerated(String str) {
  1992:         if (VpnStatus.isConnected()) {
  1993:             Toast.makeText(getContext(), ProtectedFastSSH.s("⽃"), 0).show();
  1994:             return;
  1995:         }
  1996:         this.payloadText.setText(str);
  1997:         if (this.payloadView.getVisibility() == 8) {
  1998:             this.methodSelect.setSelection(1, true);
  1999:         }
  2000:     }
  2001: 
  2002:     public void onMessageReceived(String str) {
  2003:         getActivity().runOnUiThread(new AnonymousClass14(str));
  2004:     }
  2005: 
```

## jadx/sources/app/fast/ssh/HomeFragment.java:2034 (ad_lifecycle; file score 17)

```java
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
  2042:     public void onStartCountdown(long j) {
```

## jadx/sources/app/fast/ssh/MainActivity.java:43 (ad_sdk; file score 17)

```java
    37: import app.fast.ssh.dialog.PayloadGen;
    38: import app.fast.ssh.dialog.RenewAccessDialog;
    39: import app.fast.ssh.util.AESEncryption;
    40: import app.fast.ssh.util.ApkInfoExtractor;
    41: import app.fast.ssh.util.DBHelper;
    42: import app.fast.ssh.util.ResourceUpdater;
    43: import com.google.android.gms.ads.AdError;
    44: import com.google.android.gms.ads.AdRequest;
    45: import com.google.android.gms.ads.AdSize;
    46: import com.google.android.gms.ads.AdView;
    47: import com.google.android.gms.ads.FullScreenContentCallback;
    48: import com.google.android.gms.ads.LoadAdError;
    49: import com.google.android.gms.ads.interstitial.InterstitialAd;
    50: import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
    51: import com.google.android.material.appbar.AppBarLayout;
```

## jadx/sources/app/fast/ssh/MainActivity.java:50 (ad_lifecycle; file score 17)

```java
    44: import com.google.android.gms.ads.AdRequest;
    45: import com.google.android.gms.ads.AdSize;
    46: import com.google.android.gms.ads.AdView;
    47: import com.google.android.gms.ads.FullScreenContentCallback;
    48: import com.google.android.gms.ads.LoadAdError;
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
```

## jadx/sources/app/fast/ssh/MainActivity.java:69 (ad_lifecycle; file score 17)

```java
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
    76:     private Timer resumeAdTimer;
    77:     private InterstitialAd resumeInterstitial;
```

## jadx/sources/app/fast/ssh/MainActivity.java:74 (ad_lifecycle; file score 17)

```java
    68:     private AppUpdateManager appUpdateManager;
    69:     private AdView bannerAd;
    70:     private LogFragment debugFragment;
    71:     private DrawerLayout drawer;
    72:     private ActionBarDrawerToggle drawerToggle;
    73:     private HomeFragment homeFragment;
    74:     private InterstitialAd renewInterstitial;
    75:     private ResourceUpdater resourceUpdater;
    76:     private Timer resumeAdTimer;
    77:     private InterstitialAd resumeInterstitial;
    78:     private InterstitialAd updateSuccessInterstitial;
    79:     private static final String RESUME_INTERSTITIAL = ProtectedFastSSH.s("⾅");
    80:     private static final String RENEW_INTERSTITIAL = ProtectedFastSSH.s("⾆");
    81:     private boolean restartOnUpdateRequest = false;
    82:     private boolean inBackground = false;
```

## jadx/sources/app/fast/ssh/MainActivity.java:157 (ad_lifecycle; file score 17)

```java
   151:         @Override
   152:         public void onClick(DialogInterface dialogInterface, int i) {
   153:             MainActivity.access$302(MainActivity.this, true);
   154:         }
   155:     }
   156: 
   157:     class AnonymousClass5 extends InterstitialAdLoadCallback {
   158: 
   159:         class AnonymousClass1 extends FullScreenContentCallback {
   160:             AnonymousClass1() {
   161:             }
   162: 
   163:             @Override
   164:             public void onAdClicked() {
   165:             }
```

Snippets shown: 120. Complete bounded hit indexes are in the corresponding TSV files.