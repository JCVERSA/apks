.class public Lapp/fast/ssh/dialog/AddTimeDialog;
.super Ljava/lang/Object;
.source "AddTimeDialog.java"


# static fields
.field private static final BANNER_AD_UNIT:Ljava/lang/String;

.field public static GlobalTimerConf:Lapp/fast/ssh/TimerConf;

.field public static LAST_ACCESS_TOPUP_MILLIS:J

.field public static LAST_SESSION_MILLIS:J

.field private static final REWARDED_INTERSTITIAL_AD_UNIT:Ljava/lang/String;


# instance fields
.field private bannerAd:Lcom/google/android/gms/ads/AdView;

.field private bannerContainer:Landroid/widget/LinearLayout;

.field private button:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroidx/appcompat/app/AlertDialog;

.field private message_text:Landroid/widget/TextView;

.field private watchAd_Cooldown:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u314a"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/dialog/AddTimeDialog;->BANNER_AD_UNIT:Ljava/lang/String;

    const-string/jumbo v0, "\u314b"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/dialog/AddTimeDialog;->REWARDED_INTERSTITIAL_AD_UNIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f09016e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->message_text:Landroid/widget/TextView;

    sget-object v2, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v2, v2, Lapp/fast/ssh/TimerConf;->message_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09007b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->button:Landroid/widget/Button;

    sget-object v2, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v2, v2, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->button:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lapp/fast/ssh/dialog/AddTimeDialog$1;

    invoke-direct {v1, p0}, Lapp/fast/ssh/dialog/AddTimeDialog$1;-><init>(Lapp/fast/ssh/dialog/AddTimeDialog;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lapp/fast/ssh/dialog/AddTimeDialog;->initAds()V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->button:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$102(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->watchAd_Cooldown:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lapp/fast/ssh/dialog/AddTimeDialog;)I
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/AddTimeDialog;->appVersionCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lapp/fast/ssh/dialog/AddTimeDialog;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/AddTimeDialog;->deviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->message_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private appVersionCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

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

.method public static configure(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lapp/fast/ssh/TimerConf;

    const-string/jumbo v1, "\u314c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u314d"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u314e"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u314f"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "\u3150"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "\u3151"

    invoke-static {v6}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lapp/fast/ssh/TimerConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    const-string/jumbo v0, "\u3152"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    return-void
.end method

.method private deviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "\u3153"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAds()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerAd:Lcom/google/android/gms/ads/AdView;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerAd:Lcom/google/android/gms/ads/AdView;

    const-string/jumbo v1, "\u314a"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->bannerAd:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lapp/fast/ssh/dialog/AddTimeDialog$3;

    invoke-direct {v1, p0}, Lapp/fast/ssh/dialog/AddTimeDialog$3;-><init>(Lapp/fast/ssh/dialog/AddTimeDialog;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method private requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    return-void
.end method

.method private requestRewardedAd()V
    .locals 5

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u3154"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lapp/fast/ssh/dialog/AddTimeDialog$2;

    invoke-direct {v3, p0, v0}, Lapp/fast/ssh/dialog/AddTimeDialog$2;-><init>(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/app/ProgressDialog;)V

    const-string/jumbo v4, "\u3155"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
