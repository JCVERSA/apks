.class public Lapp/fast/ssh/HomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "HomeFragment.java"

# interfaces
.implements Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;
.implements Lapp/fast/ssh/core/VpnStatus$ByteCountListener;
.implements Lapp/fast/ssh/core/VpnStatus$VpnStateListener;
.implements Lapp/fast/ssh/core/VpnStatus$VpnMessageListener;
.implements Lapp/fast/ssh/RewardedAdSyncController$Ui;
.implements Lapp/fast/ssh/BillingManager$StateListener;


# static fields
.field private static final CUSTOM_SWITCH:Ljava/lang/String;

.field private static final DNS_PRIMARY_HOST:Ljava/lang/String;

.field private static final EXPORT_CONFIG:I = 0x3f6

.field private static final FILE_READ_REQUEST_CODE:I = 0x3f3

.field private static final FILE_WRITE_REQUEST_CODE:I = 0x3f4

.field public static GlobalTimerConf:Lapp/fast/ssh/TimerConf; = null

.field private static final IMPORT_CONFIG:I = 0x3f5

.field private static final JOIN_TELEGRAM:Ljava/lang/String;

.field private static final KEY_CUSTOM_FEATURE:Ljava/lang/String;

.field private static final KEY_CUSTOM_HOST:Ljava/lang/String;

.field private static final KEY_CUSTOM_PAYLOAD:Ljava/lang/String;

.field private static final KEY_CUSTOM_RESOLVER:Ljava/lang/String;

.field private static final KEY_CUSTOM_SNI:Ljava/lang/String;

.field private static final KEY_IMPORT_BLOB:Ljava/lang/String;

.field private static final KEY_LOCATION_INDEX:Ljava/lang/String;

.field private static final KEY_METHOD_INDEX:Ljava/lang/String;

.field private static final KEY_METHOD_INDEX_LITE:Ljava/lang/String;

.field private static final KEY_PORT_INDEX:Ljava/lang/String;

.field private static final KEY_PRESERVE_SNI:Ljava/lang/String;

.field private static final KEY_REALM_HOST:Ljava/lang/String;

.field private static final KEY_USE_REALM_HOST:Ljava/lang/String;

.field private static final KEY_USE_TCP_PAYLOAD:Ljava/lang/String;

.field public static LAST_ACCESS_TOPUP_MILLIS:J

.field public static LAST_MILLIS:J

.field public static LAST_SESSION_MILLIS:J

.field public static final MS_LOCK:Ljava/lang/Object;

.field public static SHOW_AD_MS:J

.field private static final WHATS_NEW:Ljava/lang/String;

.field private static countDownStarted:Z

.field private static countDownTimer:Landroid/os/CountDownTimer;

.field private static deviceId:Ljava/lang/String;

.field private static timerTextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Adams:Ljava/lang/String;

.field addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

.field private bannerAd:Lcom/google/android/gms/ads/AdView;

.field private bannerContainer:Landroid/widget/LinearLayout;

.field btnSubscribe:Landroid/widget/Button;

.field btnWatchAd:Landroid/widget/Button;

.field private buttonConnect:Landroid/widget/Button;

.field private byteRx:Landroid/widget/TextView;

.field private byteTx:Landroid/widget/TextView;

.field private checkPreserveSni:Landroid/widget/CheckBox;

.field private checkRealmHost:Landroid/widget/CheckBox;

.field private checkUseTcpPayload:Landroid/widget/CheckBox;

.field private connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private customsView:Landroid/widget/LinearLayout;

.field private descText:Lcom/google/android/material/textview/MaterialTextView;

.field private descView:Landroid/widget/LinearLayout;

.field private disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private glassBind:Ljava/lang/StringBuilder;

.field private hostText:Lcom/google/android/material/textfield/TextInputEditText;

.field private hostView:Landroid/widget/LinearLayout;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private methodAdapter:Lapp/fast/ssh/adapter/MethodAdapter;

.field private methodAdapter_Lite:Lapp/fast/ssh/adapter/MethodAdapter;

.field private final methodChange:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final methodChangeLite:Landroid/widget/AdapterView$OnItemSelectedListener;

.field methodItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field methodItems_Lite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field private methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

.field private newsBar:Landroid/widget/TextView;

.field private nsText:Lcom/google/android/material/textfield/TextInputEditText;

.field private nsView:Landroid/widget/LinearLayout;

.field private payloadText:Lcom/google/android/material/textfield/TextInputEditText;

.field private payloadView:Landroid/widget/LinearLayout;

.field private portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

.field private purchaseInFlight:Z

.field private final renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;

.field private requestQueue:Lcom/android/volley/RequestQueue;

.field private rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

.field private serverAdapter:Lapp/fast/ssh/adapter/ServerAdapter;

.field private final serverChange:Landroid/widget/AdapterView$OnItemSelectedListener;

.field serverItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;",
            ">;"
        }
    .end annotation
.end field

.field private serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

.field private sniText:Lcom/google/android/material/textfield/TextInputEditText;

.field private sniView:Landroid/widget/LinearLayout;

.field private timerButton:Landroid/widget/Button;

.field private timerLayout:Landroid/widget/LinearLayout;

.field private timerText:Landroid/widget/TextView;

.field private tunNablic:I

.field private updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

.field private waitDialog:Landroidx/appcompat/app/AlertDialog;

.field private waitDialogRequestId:J

.field private watchAd_Cooldown:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2ebb"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_CUSTOM_SNI:Ljava/lang/String;

    const-string/jumbo v0, "\u2ebc"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->JOIN_TELEGRAM:Ljava/lang/String;

    const-string/jumbo v0, "\u2ebd"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_CUSTOM_RESOLVER:Ljava/lang/String;

    const-string/jumbo v0, "\u2ebe"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_LOCATION_INDEX:Ljava/lang/String;

    const-string/jumbo v0, "\u2ebf"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->deviceId:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec0"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->DNS_PRIMARY_HOST:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec1"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_CUSTOM_PAYLOAD:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec2"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_USE_TCP_PAYLOAD:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec3"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->WHATS_NEW:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec4"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_CUSTOM_HOST:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec5"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_IMPORT_BLOB:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec6"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_REALM_HOST:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec7"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_USE_REALM_HOST:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec8"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_PORT_INDEX:Ljava/lang/String;

    const-string/jumbo v0, "\u2ec9"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_METHOD_INDEX:Ljava/lang/String;

    const-string/jumbo v0, "\u2eca"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_CUSTOM_FEATURE:Ljava/lang/String;

    const-string/jumbo v0, "\u2ecb"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_METHOD_INDEX_LITE:Ljava/lang/String;

    const-string/jumbo v0, "\u2ecc"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->CUSTOM_SWITCH:Ljava/lang/String;

    const-string/jumbo v0, "\u2ecd"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/HomeFragment;->KEY_PRESERVE_SNI:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lapp/fast/ssh/HomeFragment;->MS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialogRequestId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    new-instance v0, Lapp/fast/ssh/HomeFragment$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$1;-><init>(Lapp/fast/ssh/HomeFragment;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->serverChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lapp/fast/ssh/HomeFragment$2;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$2;-><init>(Lapp/fast/ssh/HomeFragment;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lapp/fast/ssh/HomeFragment$3;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$3;-><init>(Lapp/fast/ssh/HomeFragment;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodChangeLite:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/adapter/ServerAdapter;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->serverAdapter:Lapp/fast/ssh/adapter/ServerAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/HomeFragment;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/adapter/MethodAdapter;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter_Lite:Lapp/fast/ssh/adapter/MethodAdapter;

    return-object p0
.end method

.method static synthetic access$1102(Lapp/fast/ssh/HomeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    return p1
.end method

.method static synthetic access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->watchAd_Cooldown:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1202(Lapp/fast/ssh/HomeFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->watchAd_Cooldown:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1300(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1400(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lapp/fast/ssh/HomeFragment;->toRoundedUnit(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->byteTx:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->byteRx:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->buttonConnect:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1800(Lapp/fast/ssh/HomeFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->setConnected(Z)V

    return-void
.end method

.method static synthetic access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$1902(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$200(Lapp/fast/ssh/HomeFragment;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    return-object p0
.end method

.method static synthetic access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lapp/fast/ssh/HomeFragment;->showAd(Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2100(Lapp/fast/ssh/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V

    return-void
.end method

.method static synthetic access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$2202(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$2300(Lapp/fast/ssh/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V

    return-void
.end method

.method static synthetic access$2400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500()Landroid/os/CountDownTimer;
    .locals 1

    sget-object v0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    sput-object p0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lapp/fast/ssh/HomeFragment;->countDownStarted:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0

    sput-boolean p0, Lapp/fast/ssh/HomeFragment;->countDownStarted:Z

    return p0
.end method

.method static synthetic access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lapp/fast/ssh/HomeFragment;->timerTextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2802(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lapp/fast/ssh/HomeFragment;->timerTextRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2900(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->timerText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/adapter/MethodAdapter;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter:Lapp/fast/ssh/adapter/MethodAdapter;

    return-object p0
.end method

.method static synthetic access$3000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/RewardedAdSyncController;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    return-object p0
.end method

.method static synthetic access$3100(Lapp/fast/ssh/HomeFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->deviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->finishImport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->newsBar:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->nsView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->sniView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->hostView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->descView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/material/textview/MaterialTextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/HomeFragment;->descText:Lcom/google/android/material/textview/MaterialTextView;

    return-object p0
.end method

.method private appVersionCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private appVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo v0, "\u2ece"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deviceId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "\u2ecf"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchAndShowTicker()V
    .locals 6

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    new-instance v4, Lapp/fast/ssh/HomeFragment$26;

    invoke-direct {v4, p0}, Lapp/fast/ssh/HomeFragment$26;-><init>(Lapp/fast/ssh/HomeFragment;)V

    new-instance v5, Lapp/fast/ssh/HomeFragment$27;

    invoke-direct {v5, p0}, Lapp/fast/ssh/HomeFragment$27;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const/4 v1, 0x0

    const-string/jumbo v2, "\u2ed0"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private finishImport(Ljava/lang/String;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "\u2ec5"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2ed1"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public static getAuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lapp/fast/ssh/HomeFragment;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method private getPortsAdapter(I)Landroid/widget/ArrayAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1090008

    invoke-static {v0, p1, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p1

    const v0, 0x1090009

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object p1
.end method

.method private initAds()V
    .locals 2

    new-instance v0, Lapp/fast/ssh/RewardedAdSyncController;

    const-string/jumbo v1, "\u2ed2"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/fast/ssh/RewardedAdSyncController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lapp/fast/ssh/RewardedAdSyncController;->prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    return-void
.end method

.method private initApps(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "\u2ed3"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "\u2ed4"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lapp/fast/ssh/HomeFragment;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/util/DBHelper;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lapp/fast/ssh/util/DBHelper;-><init>(Landroid/content/Context;)V

    sget-object v3, Lapp/fast/ssh/util/DBHelper$Resource;->ALLOWED_APPS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v2, v3}, Lapp/fast/ssh/util/DBHelper;->getResource(Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move-object v1, v2

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u2ed5"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "\u2ed6"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initMethods()V
    .locals 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "\u2ed7"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodItems:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    new-instance v3, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;

    invoke-direct {v3}, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;-><init>()V

    const-string/jumbo v4, "\u2ed8"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->name:Ljava/lang/String;

    const-string/jumbo v4, "\u2ed9"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->description:Ljava/lang/String;

    const-string/jumbo v4, "\u2eda"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->flag:Ljava/lang/String;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodItems:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lapp/fast/ssh/adapter/MethodAdapter;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/adapter/MethodAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter:Lapp/fast/ssh/adapter/MethodAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initMethodsLite()V
    .locals 7

    .prologue
    const-string/jumbo v0, "\u2ed3"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    :try_start_0
    const-string/jumbo v2, "\u2edb"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lapp/fast/ssh/HomeFragment;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapp/fast/ssh/util/DBHelper;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lapp/fast/ssh/util/DBHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lapp/fast/ssh/util/DBHelper$Resource;->METHODS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v3, v4}, Lapp/fast/ssh/util/DBHelper;->getResource(Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move-object v2, v3

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\u2ed5"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodItems_Lite:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    new-instance v4, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;

    invoke-direct {v4}, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;-><init>()V

    const-string/jumbo v5, "\u2ed8"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->name:Ljava/lang/String;

    const-string/jumbo v5, "\u2ed9"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u2edc"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->description:Ljava/lang/String;

    const-string/jumbo v5, "\u2eda"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->flag:Ljava/lang/String;

    const-string/jumbo v5, "\u2edd"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->conf:Ljava/lang/String;

    iget-object v3, p0, Lapp/fast/ssh/HomeFragment;->methodItems_Lite:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lapp/fast/ssh/adapter/MethodAdapter;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodItems_Lite:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lapp/fast/ssh/adapter/MethodAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter_Lite:Lapp/fast/ssh/adapter/MethodAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initServers()V
    .locals 7

    .prologue
    const-string/jumbo v0, "\u2ed3"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    :try_start_0
    const-string/jumbo v2, "\u2ede"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lapp/fast/ssh/HomeFragment;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lapp/fast/ssh/util/DBHelper;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lapp/fast/ssh/util/DBHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lapp/fast/ssh/util/DBHelper$Resource;->SERVERS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v3, v4}, Lapp/fast/ssh/util/DBHelper;->getResource(Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    move-object v2, v3

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\u2ed5"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lapp/fast/ssh/HomeFragment;->serverItems:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    new-instance v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;

    invoke-direct {v5}, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;-><init>()V

    const-string/jumbo v6, "\u2ed8"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->name:Ljava/lang/String;

    const-string/jumbo v6, "\u2ed9"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->description:Ljava/lang/String;

    const-string/jumbo v6, "\u2eda"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->flag:Ljava/lang/String;

    const-string/jumbo v6, "\u2edf"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->node:Ljava/lang/String;

    const-string/jumbo v6, "\u2ee0"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4}, Lapp/fast/ssh/HomeFragment;->initApps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v5, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->apps:Ljava/util/List;

    :cond_1
    iget-object v4, p0, Lapp/fast/ssh/HomeFragment;->serverItems:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lapp/fast/ssh/adapter/ServerAdapter;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lapp/fast/ssh/HomeFragment;->serverItems:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lapp/fast/ssh/adapter/ServerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->serverAdapter:Lapp/fast/ssh/adapter/ServerAdapter;

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->serverChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "\u2ebe"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method private isStoragePermissionGranted(Ljava/lang/String;)Z
    .locals 3

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private joinTelegram()V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ebc"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u2ee1"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u2ee2"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lapp/fast/ssh/HomeFragment$22;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$22;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v2, "\u2ee3"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lapp/fast/ssh/HomeFragment$23;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$23;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v2, "\u2ee4"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private loadConnectedInterstitialAd()V
    .locals 4

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->connectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/HomeFragment$24;

    invoke-direct {v2, p0}, Lapp/fast/ssh/HomeFragment$24;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v3, "\u2ee5"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method private loadDisConnectedInterstitialAd()V
    .locals 4

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->disConnectedInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/HomeFragment$25;

    invoke-direct {v2, p0}, Lapp/fast/ssh/HomeFragment$25;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v3, "\u2ee6"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "\u2ee7"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lapp/fast/ssh/HomeFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private playSound()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private playVibrate()V
    .locals 3

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "\u2ee8"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private portSelectListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    new-instance v0, Lapp/fast/ssh/HomeFragment$11;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$11;-><init>(Lapp/fast/ssh/HomeFragment;)V

    return-object v0
.end method

.method private prepareProfile()Lapp/fast/ssh/core/VpnProfile;
    .locals 14

    .prologue
    const-string/jumbo v0, "\u2ee9"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2eea"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2eeb"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lapp/fast/ssh/HomeFragment;->serverAdapter:Lapp/fast/ssh/adapter/ServerAdapter;

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lapp/fast/ssh/adapter/ServerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v5}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v5

    const-string/jumbo v6, "\u2eec"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u2eed"

    invoke-static {v7}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u2eee"

    invoke-static {v8}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\u2eef"

    invoke-static {v9}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_5

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v10, 0x5

    const-string v11, ""

    if-ne v5, v10, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "\u2ec5"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v5, "\u2ef0"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lapp/fast/ssh/util/AESEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v11

    :goto_0
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const-string/jumbo v1, "\u2ef1"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/HomeFragment$17;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$17;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v2, "\u2ef2"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\u2ef3"

    invoke-static {v7}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lapp/fast/ssh/core/VpnProfile;->unhideParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "\u2ef4"

    invoke-static {v7}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u2ef5"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-object v3, v0

    goto/16 :goto_4

    :cond_1
    :try_start_4
    const-string/jumbo v2, "\u2ef6"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2ef7"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v10, "\u2ef8"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2ef9"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2efa"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->hostText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2efb"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v11

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->sniText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2efc"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v11

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2efd"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "\u2ec7"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2efe"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "\u2ecd"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2eff"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "\u2ec2"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2f00"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v10, "\u2ec6"

    invoke-static {v10}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, "\u2f01"

    invoke-static {v13}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "\u2f02"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u2f03"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "\u2f04"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "\u2f05"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "\u2f06"

    invoke-static {v7}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u2f07"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "\u2f08"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    invoke-static {v8}, Lapp/fast/ssh/core/VpnStatus;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter_Lite:Lapp/fast/ssh/adapter/MethodAdapter;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lapp/fast/ssh/adapter/MethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;

    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, v0, Lapp/fast/ssh/adapter/MethodAdapter$SpinnerItem;->conf:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v3, v2

    goto :goto_3

    :catch_4
    invoke-static {v8}, Lapp/fast/ssh/core/VpnStatus;->logDebug(Ljava/lang/String;)V

    :goto_3
    :try_start_6
    const-string/jumbo v0, "\u2f09"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v0, :cond_6

    move-object v3, v0

    :catch_5
    :cond_6
    :try_start_7
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    invoke-static {v8}, Lapp/fast/ssh/core/VpnStatus;->logDebug(Ljava/lang/String;)V

    :catch_7
    :cond_7
    :goto_4
    :try_start_8
    const-string/jumbo v0, "\u2f0a"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->node:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_5

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lapp/fast/ssh/core/VpnStatus;->logDebug(Ljava/lang/String;)V

    :goto_5
    new-instance v0, Lapp/fast/ssh/core/VpnProfile;

    invoke-direct {v0, v3}, Lapp/fast/ssh/core/VpnProfile;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, v4, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lapp/fast/ssh/core/VpnProfile;->mServerName:Ljava/lang/String;

    const v1, 0x7f12001c

    invoke-virtual {p0, v1}, Lapp/fast/ssh/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lapp/fast/ssh/core/VpnProfile;->mSession:Ljava/lang/String;

    iget-object v1, v4, Lapp/fast/ssh/adapter/ServerAdapter$SpinnerItem;->apps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lapp/fast/ssh/core/VpnProfile;->setAllowedApps(Ljava/util/List;)V

    return-object v0
.end method

.method private processImport(Ljava/lang/String;)V
    .locals 3

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lapp/fast/ssh/HomeFragment;->processImportString(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2f0b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private readResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    throw p1

    :catch_2
    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_0
    return-void
.end method

.method private saveEntries()V
    .locals 3

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2ec1"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->hostText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2ec4"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->sniText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2ebb"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2ebd"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setConnected(Z)V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2f0c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->playSound()V

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2f0d"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->playVibrate()V

    :cond_1
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->hostText:Lcom/google/android/material/textfield/TextInputEditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->sniText:Lcom/google/android/material/textfield/TextInputEditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->checkRealmHost:Landroid/widget/CheckBox;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->checkPreserveSni:Landroid/widget/CheckBox;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->checkUseTcpPayload:Landroid/widget/CheckBox;

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private showAd(Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V
    .locals 5

    .prologue
    sget-object v0, Lapp/fast/ssh/HomeFragment;->MS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lapp/fast/ssh/HomeFragment;->SHOW_AD_MS:J

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 3

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "\u2edf"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->getLastConnectedProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lapp/fast/ssh/core/VpnProfile;->primaryNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "\u2f0e"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->getLastConnectedProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lapp/fast/ssh/core/VpnProfile;->serverHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "\u2f0f"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->appVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "\u2ecf"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->build()Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void
.end method

.method private stopAndHideTimer()V
    .locals 2

    .prologue
    sget-object v0, Lapp/fast/ssh/HomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private static toRoundedUnit(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u2f10"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    const-string/jumbo v5, "\u2f11"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    int-to-double v5, v0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 p0, 0x1

    aput-object v1, p1, p0

    const-string/jumbo p0, "\u2f12"

    invoke-static {p0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toggleCustom(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->customsView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const v2, 0x7f030003

    invoke-direct {p0, v2}, Lapp/fast/ssh/HomeFragment;->getPortsAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->portSelectListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "\u2ec8"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter:Lapp/fast/ssh/adapter/MethodAdapter;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :try_start_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "\u2ec9"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->customsView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const v2, 0x7f030004

    invoke-direct {p0, v2}, Lapp/fast/ssh/HomeFragment;->getPortsAdapter(I)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodAdapter_Lite:Lapp/fast/ssh/adapter/MethodAdapter;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->methodChangeLite:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :try_start_1
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "\u2ecb"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    :goto_0
    return-void
.end method

.method private userFacing(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const-string/jumbo p1, "\u2f13"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo v0, "\u2f14"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "\u2f15"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u2f16"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "\u2f17"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string/jumbo v0, "\u2f18"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "\u2f19"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string/jumbo p1, "\u2f1a"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const-string/jumbo p1, "\u2f1b"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private whatsNew()V
    .locals 5

    .prologue
    const-string/jumbo v0, "\u2eec"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "\u2f1c"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lapp/fast/ssh/HomeFragment;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\u2ed3"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "\u2ec3"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "\u2f1d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v3, "\u2f1e"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v3, "\u2f1f"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->appVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u2f20"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lapp/fast/ssh/HomeFragment$21;

    invoke-direct {v3, p0, v2}, Lapp/fast/ssh/HomeFragment$21;-><init>(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public GetVpnConnectionHelper()Lapp/fast/ssh/core/VpnConnectionHelper;
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    return-object v0
.end method

.method public dismissLoading(J)V
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialogRequestId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    :cond_1
    return-void
.end method

.method public exportConfig()V
    .locals 4

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u2f21"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, "\u2f22"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->isStoragePermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lapp/fast/ssh/ExportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->prepareProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v2

    invoke-virtual {v2}, Lapp/fast/ssh/core/VpnProfile;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2ef5"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lapp/fast/ssh/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lapp/fast/ssh/HomeFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u2f23"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public importConfig()V
    .locals 4

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v2, 0x3f5

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "\u2f24"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u2f25"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "\u2f26"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "\u2f27"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lapp/fast/ssh/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "\u2f28"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->isStoragePermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lapp/fast/ssh/ImportActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lapp/fast/ssh/HomeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lapp/fast/ssh/HomeFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public isLoadingVisible(J)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialogRequestId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$0$app-fast-ssh-HomeFragment(Landroid/view/View;)V
    .locals 2

    .prologue
    new-instance p1, Lapp/fast/ssh/Subscription;

    new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {p1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->tryConsumeCached()Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->showRewarded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lapp/fast/ssh/RewardedAdSyncController;->onUserClick(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onCreate$1$app-fast-ssh-HomeFragment(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .prologue
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreateView$2$app-fast-ssh-HomeFragment(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "\u2ecc"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$app-fast-ssh-HomeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lapp/fast/ssh/HomeFragment;->toggleCustom(Z)V

    return-void
.end method

.method synthetic lambda$onCreateView$4$app-fast-ssh-HomeFragment(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$5$app-fast-ssh-HomeFragment(Landroid/view/View;)V
    .locals 2

    .prologue
    sget-object p1, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2f29"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$6$app-fast-ssh-HomeFragment(Landroid/view/View;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->saveEntries()V

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->buttonConnect:Landroid/widget/Button;

    const-string/jumbo v0, "\u2f2a"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-virtual {p1}, Lapp/fast/ssh/core/VpnConnectionHelper;->stopVpnConnection()V

    return-void

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->prepareProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/fast/ssh/core/VpnConnectionHelper;->startVpnConnection(Lapp/fast/ssh/core/VpnProfile;)V

    return-void
.end method

.method synthetic lambda$showLoading$7$app-fast-ssh-HomeFragment(JLandroid/content/DialogInterface;)V
    .locals 0

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->rewardedAdSyncController:Lapp/fast/ssh/RewardedAdSyncController;

    invoke-virtual {p3, p1, p2}, Lapp/fast/ssh/RewardedAdSyncController;->onDialogCancelled(J)V

    return-void
.end method

.method synthetic lambda$showRewarded$8$app-fast-ssh-HomeFragment(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2f2b"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u2f2c"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u2f2d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2f2e"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onAccessTopUp()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lapp/fast/ssh/HomeFragment;->LAST_ACCESS_TOPUP_MILLIS:J

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/16 v0, 0x3f5

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p2, v2, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v2, "\u2f2f"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "\u2f30"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "\u2f31"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u2f32"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u2f33"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v3, "\u2f34"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "\u2f35"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapp/fast/ssh/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2f36"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_4

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2f37"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lapp/fast/ssh/core/connection/util/StreamReader;->readToEnd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lapp/fast/ssh/HomeFragment;->processImportString(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "\u2f38"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "\u2f39"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->processImport(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBillingState(Lapp/fast/ssh/BillingManager$State;Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lapp/fast/ssh/HomeFragment$28;->$SwitchMap$app$fast$ssh$BillingManager$State:[I

    invoke-virtual {p1}, Lapp/fast/ssh/BillingManager$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u2f3a"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-boolean p1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2}, Lapp/fast/ssh/HomeFragment;->userFacing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iget-boolean p1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lapp/fast/ssh/HomeFragment;->purchaseInFlight:Z

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "\u2f3b"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_4
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/MainActivity;

    invoke-virtual {p1}, Lapp/fast/ssh/MainActivity;->hideBannerAd()V

    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->stopAndHideTimer()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onByteCount(JJ)V
    .locals 7

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/HomeFragment$12;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lapp/fast/ssh/HomeFragment$12;-><init>(Lapp/fast/ssh/HomeFragment;JJ)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lapp/fast/ssh/core/VpnConnectionHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lapp/fast/ssh/core/VpnConnectionHelper;->bindService(Z)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addMessageListener(Lapp/fast/ssh/core/VpnStatus$VpnMessageListener;)V

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    const v1, 0x7f09007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    const v1, 0x7f090080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->btnSubscribe:Landroid/widget/Button;

    new-instance v1, Lapp/fast/ssh/HomeFragment$4;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$4;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    new-instance v1, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda7;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda8;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lapp/fast/ssh/HomeFragment$5;

    invoke-direct {v1, p0, v0}, Lapp/fast/ssh/HomeFragment$5;-><init>(Lapp/fast/ssh/HomeFragment;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p3

    iput-object p3, p0, Lapp/fast/ssh/HomeFragment;->requestQueue:Lcom/android/volley/RequestQueue;

    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "\u2ecf"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lapp/fast/ssh/HomeFragment;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const p3, 0x7f0c003e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const p2, 0x7f0901a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->newsBar:Landroid/widget/TextView;

    const p2, 0x7f0900b7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->customsView:Landroid/widget/LinearLayout;

    const p2, 0x7f0900b6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p3, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p3, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f09027e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09027f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->timerText:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->timerText:Landroid/widget/TextView;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p2, Lapp/fast/ssh/HomeFragment;->timerTextRef:Ljava/lang/ref/WeakReference;

    const p2, 0x7f09027d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->timerButton:Landroid/widget/Button;

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->timerLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda3;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->timerButton:Landroid/widget/Button;

    new-instance p3, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda4;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090082

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->byteTx:Landroid/widget/TextView;

    const p2, 0x7f090081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->byteRx:Landroid/widget/TextView;

    const p2, 0x7f09007e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->buttonConnect:Landroid/widget/Button;

    const p2, 0x7f090068

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->bannerContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->buttonConnect:Landroid/widget/Button;

    new-instance p3, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda5;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901de

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;

    const p2, 0x7f090235

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->sniView:Landroid/widget/LinearLayout;

    const p2, 0x7f09012b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->hostView:Landroid/widget/LinearLayout;

    const p2, 0x7f0901ae

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->nsView:Landroid/widget/LinearLayout;

    const p2, 0x7f0900c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->descView:Landroid/widget/LinearLayout;

    const p2, 0x7f090273

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f09026e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->hostText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f090275

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->sniText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f090272

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    const p2, 0x7f090097

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkRealmHost:Landroid/widget/CheckBox;

    const p2, 0x7f090096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkPreserveSni:Landroid/widget/CheckBox;

    const p2, 0x7f09009a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkUseTcpPayload:Landroid/widget/CheckBox;

    const p2, 0x7f0900c2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->descText:Lcom/google/android/material/textview/MaterialTextView;

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ec1"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2f3c"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->hostText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ec4"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2f3d"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->sniText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ebb"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->nsText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ebd"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2f3e"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkRealmHost:Landroid/widget/CheckBox;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ec7"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkPreserveSni:Landroid/widget/CheckBox;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ecd"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkUseTcpPayload:Landroid/widget/CheckBox;

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "\u2ec2"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkRealmHost:Landroid/widget/CheckBox;

    new-instance p3, Lapp/fast/ssh/HomeFragment$6;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$6;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkPreserveSni:Landroid/widget/CheckBox;

    new-instance p3, Lapp/fast/ssh/HomeFragment$7;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$7;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->checkUseTcpPayload:Landroid/widget/CheckBox;

    new-instance p3, Lapp/fast/ssh/HomeFragment$8;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$8;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f09021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->serverSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const p2, 0x7f09021d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const p2, 0x7f0901e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment;->portSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const p2, 0x7f0901ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    new-instance p3, Lapp/fast/ssh/HomeFragment$9;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$9;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->initServers()V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->initMethods()V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->initMethodsLite()V

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo p3, "\u2ecc"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p3, p0, Lapp/fast/ssh/HomeFragment;->customSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p3, p2}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    invoke-direct {p0, p2}, Lapp/fast/ssh/HomeFragment;->toggleCustom(Z)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->initAds()V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->whatsNew()V

    :try_start_1
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo p3, "\u2f3f"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lapp/fast/ssh/HomeFragment;->processImportString(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    iget-object p2, p0, Lapp/fast/ssh/HomeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo p3, "\u2eca"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x3

    if-ge p2, p3, :cond_1

    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo p3, "\u2f40"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo p3, "\u2f41"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p3, Lapp/fast/ssh/HomeFragment$10;

    invoke-direct {p3, p0}, Lapp/fast/ssh/HomeFragment$10;-><init>(Lapp/fast/ssh/HomeFragment;)V

    const-string/jumbo v0, "\u2f42"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->joinTelegram()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapp/fast/ssh/core/VpnConnectionHelper;->bindService(Z)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeMessageListener(Lapp/fast/ssh/core/VpnStatus$VpnMessageListener;)V

    return-void
.end method

.method public onExpiredState()V
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/HomeFragment$16;

    invoke-direct {v1, p0}, Lapp/fast/ssh/HomeFragment$16;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenerated(Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2f43"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->payloadText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->payloadView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->methodSelect:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setSelection(IZ)V

    :cond_1
    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/HomeFragment$14;

    invoke-direct {v1, p0, p1}, Lapp/fast/ssh/HomeFragment$14;-><init>(Lapp/fast/ssh/HomeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeByteCountListener(Lapp/fast/ssh/core/VpnStatus$ByteCountListener;)V

    return-void
.end method

.method public onRemindState()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_2

    const/16 p2, 0x3f3

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3f4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->exportConfig()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->importConfig()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, v0}, Lapp/fast/ssh/HomeFragment;->requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadConnectedInterstitialAd()V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->loadDisConnectedInterstitialAd()V

    :cond_0
    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addByteCountListener(Lapp/fast/ssh/core/VpnStatus$ByteCountListener;)V

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->fetchAndShowTicker()V

    return-void
.end method

.method public onStartCountdown(J)V
    .locals 3

    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    sput-wide p1, Lapp/fast/ssh/HomeFragment;->LAST_SESSION_MILLIS:J

    sput-wide p1, Lapp/fast/ssh/HomeFragment;->LAST_MILLIS:J

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/HomeFragment$15;

    invoke-direct {v2, p0, p1, p2, v0}, Lapp/fast/ssh/HomeFragment$15;-><init>(Lapp/fast/ssh/HomeFragment;JLapp/fast/ssh/Subscription;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStickyMessageReceived(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateState(Lapp/fast/ssh/core/VpnStatus$VpnState;)V
    .locals 3

    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/HomeFragment$13;

    invoke-direct {v2, p0, p1, v0}, Lapp/fast/ssh/HomeFragment$13;-><init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/core/VpnStatus$VpnState;Lapp/fast/ssh/Subscription;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processImportString(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .prologue
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "\u2ef0"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lapp/fast/ssh/util/AESEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u2eeb"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "\u2f44"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lapp/fast/ssh/ExportActivity$TextQuery;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lapp/fast/ssh/ExportActivity$TextQuery;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u2f45"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lapp/fast/ssh/ExportActivity$TextQuery;->setTitle(Ljava/lang/String;)V

    iget-object v2, v1, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v3, "\u2f46"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lapp/fast/ssh/HomeFragment$18;

    invoke-direct {v4, p0, v1, v0, p1}, Lapp/fast/ssh/HomeFragment$18;-><init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/ExportActivity$TextQuery;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, v1, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    const-string/jumbo v0, "\u2f47"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lapp/fast/ssh/HomeFragment$19;

    invoke-direct {v2, p0}, Lapp/fast/ssh/HomeFragment$19;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, v1, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lapp/fast/ssh/HomeFragment$20;

    invoke-direct {v0, p0}, Lapp/fast/ssh/HomeFragment$20;-><init>(Lapp/fast/ssh/HomeFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lapp/fast/ssh/ExportActivity$TextQuery;->show()V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u2f48"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->deviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lapp/fast/ssh/util/AESEncryption;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2f49"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->finishImport(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "\u2f4a"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->finishImport(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lapp/fast/ssh/HomeFragment;->finishImport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2f4b"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_1
    :goto_0
    return-void
.end method

.method public showLoadFailed(JLcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialogRequestId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showLoading(J)V
    .locals 3

    .prologue
    iput-wide p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialogRequestId:J

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "\u2f4c"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lapp/fast/ssh/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/HomeFragment;J)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_1
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment;->waitDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method startCurrentProfile()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-direct {p0}, Lapp/fast/ssh/HomeFragment;->prepareProfile()Lapp/fast/ssh/core/VpnProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/fast/ssh/core/VpnConnectionHelper;->startVpnConnection(Lapp/fast/ssh/core/VpnProfile;)V

    return-void
.end method

.method stopCurrentProfile()V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-virtual {v0}, Lapp/fast/ssh/core/VpnConnectionHelper;->stopVpnConnection()V

    return-void
.end method

.method stopService()V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment;->vpnConnectionHelper:Lapp/fast/ssh/core/VpnConnectionHelper;

    invoke-virtual {v0}, Lapp/fast/ssh/core/VpnConnectionHelper;->stopService()V

    return-void
.end method
