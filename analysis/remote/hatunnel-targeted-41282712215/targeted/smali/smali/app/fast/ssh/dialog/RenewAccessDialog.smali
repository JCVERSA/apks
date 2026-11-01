.class public Lapp/fast/ssh/dialog/RenewAccessDialog;
.super Ljava/lang/Object;
.source "RenewAccessDialog.java"


# static fields
.field private static renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;


# instance fields
.field private bannerAd:Lcom/google/android/gms/ads/AdView;

.field private bannerContainer:Landroid/widget/LinearLayout;

.field private final button:Landroid/widget/Button;

.field private final endView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private final startView:Landroid/view/View;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    const p1, 0x7f090280

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->titleView:Landroid/widget/TextView;

    const p1, 0x7f09024a

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->startView:Landroid/view/View;

    const p1, 0x7f0900e8

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->endView:Landroid/view/View;

    new-instance p1, Lapp/fast/ssh/dialog/RenewAccessDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lapp/fast/ssh/dialog/RenewAccessDialog$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/dialog/RenewAccessDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09007d

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lapp/fast/ssh/dialog/RenewAccessDialog$1;

    invoke-direct {v2, p0}, Lapp/fast/ssh/dialog/RenewAccessDialog$1;-><init>(Lapp/fast/ssh/dialog/RenewAccessDialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f090068

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->bannerContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->initAds()V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/dialog/RenewAccessDialog;)I
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->appVersionCode()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200(Lapp/fast/ssh/dialog/RenewAccessDialog;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->deviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->startView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->endView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lapp/fast/ssh/dialog/RenewAccessDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->button:Landroid/widget/Button;

    return-object p0
.end method

.method private appVersionCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

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

.method private deviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "\u317f"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAds()V
    .locals 0

    return-void
.end method

.method private requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    return-void
.end method

.method private requestRewardedAd()V
    .locals 5

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u3180"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lapp/fast/ssh/dialog/RenewAccessDialog$2;

    invoke-direct {v3, p0, v0}, Lapp/fast/ssh/dialog/RenewAccessDialog$2;-><init>(Lapp/fast/ssh/dialog/RenewAccessDialog;Landroid/app/ProgressDialog;)V

    const-string/jumbo v4, "\u3181"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1, v3}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$0$app-fast-ssh-dialog-RenewAccessDialog(Landroid/view/View;)V
    .locals 2

    .prologue
    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->requestRewardedAd()V

    return-void

    :cond_0
    iget-object p1, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "\u3182"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    :try_start_0
    sget-object v0, Lapp/fast/ssh/dialog/RenewAccessDialog;->renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->dismiss()V

    :cond_0
    sput-object p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->renewAccessDialog:Lapp/fast/ssh/dialog/RenewAccessDialog;

    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0, v0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->requestNewAdBanner(Lcom/google/android/gms/ads/AdView;)V

    iget-object v0, p0, Lapp/fast/ssh/dialog/RenewAccessDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
