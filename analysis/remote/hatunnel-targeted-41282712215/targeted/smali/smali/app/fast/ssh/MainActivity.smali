.class public Lapp/fast/ssh/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final APP_UPDATE_REQUEST_CODE:I = 0x2b20

.field private static final RENEW_INTERSTITIAL:Ljava/lang/String;

.field private static final RESUME_INTERSTITIAL:Ljava/lang/String;


# instance fields
.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private bannerAd:Lcom/google/android/gms/ads/AdView;

.field private debugFragment:Lapp/fast/ssh/LogFragment;

.field private drawer:Landroidx/drawerlayout/widget/DrawerLayout;

.field private drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private homeFragment:Lapp/fast/ssh/HomeFragment;

.field private inBackground:Z

.field private renewInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;

.field private restartOnUpdateRequest:Z

.field private resumeAdTimer:Ljava/util/Timer;

.field private resumeInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2f85"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/MainActivity;->RESUME_INTERSTITIAL:Ljava/lang/String;

    const-string/jumbo v0, "\u2f86"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/MainActivity;->RENEW_INTERSTITIAL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/fast/ssh/MainActivity;->restartOnUpdateRequest:Z

    iput-boolean v0, p0, Lapp/fast/ssh/MainActivity;->inBackground:Z

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/MainActivity;Lorg/json/JSONObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lapp/fast/ssh/MainActivity;->processUpdate(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lapp/fast/ssh/MainActivity;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$102(Lapp/fast/ssh/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$200(Lapp/fast/ssh/MainActivity;)Lapp/fast/ssh/HomeFragment;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    return-object p0
.end method

.method static synthetic access$302(Lapp/fast/ssh/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lapp/fast/ssh/MainActivity;->restartOnUpdateRequest:Z

    return p1
.end method

.method private appVersionCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo v0, "\u2f65"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deviceId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "\u2f66"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fixAppBarInset()V
    .locals 2

    .prologue
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method private fixDrawerInset()V
    .locals 2

    .prologue
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method private getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getWindowManager()Landroid/view/WindowManager;

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

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method private handleImportIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "\u2f67"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0, p1, p0}, Lapp/fast/ssh/HomeFragment;->processImportString(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private initAds()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    const-string/jumbo v1, "\u2f68"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$fixAppBarInset$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$fixDrawerInset$1(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$onCreate$2(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private loadUpdateSuccessInterstitialAd()V
    .locals 3

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->updateSuccessInterstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/MainActivity$5;

    invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$5;-><init>(Lapp/fast/ssh/MainActivity;)V

    const-string/jumbo v2, "\u2f69"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    :cond_0
    return-void
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "\u2f6a"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private processUpdate(Lorg/json/JSONObject;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lapp/fast/ssh/util/DBHelper;

    invoke-direct {v0, p0}, Lapp/fast/ssh/util/DBHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lapp/fast/ssh/util/DBHelper$Resource;->SERVERS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v1}, Lapp/fast/ssh/util/DBHelper$Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lapp/fast/ssh/util/DBHelper$Resource;->METHODS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v2}, Lapp/fast/ssh/util/DBHelper$Resource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2f6b"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lapp/fast/ssh/util/AESEncryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lapp/fast/ssh/util/DBHelper$Resource;->ALLOWED_APPS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v3}, Lapp/fast/ssh/util/DBHelper$Resource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lapp/fast/ssh/util/DBHelper$Resource;->SERVERS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-direct {p0, v1, v4}, Lapp/fast/ssh/MainActivity;->readLatest(Ljava/lang/String;Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    sget-object v6, Lapp/fast/ssh/util/DBHelper$Resource;->SERVERS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v0, v6, v1}, Lapp/fast/ssh/util/DBHelper;->updateResource(Lapp/fast/ssh/util/DBHelper$Resource;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    sget-object v6, Lapp/fast/ssh/util/DBHelper$Resource;->METHODS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-direct {p0, v2, v6}, Lapp/fast/ssh/MainActivity;->readLatest(Ljava/lang/String;Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v1, Lapp/fast/ssh/util/DBHelper$Resource;->METHODS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v0, v1, v2}, Lapp/fast/ssh/util/DBHelper;->updateResource(Lapp/fast/ssh/util/DBHelper$Resource;Ljava/lang/String;)V

    move v1, v4

    :cond_1
    sget-object v2, Lapp/fast/ssh/util/DBHelper$Resource;->ALLOWED_APPS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-direct {p0, v3, v2}, Lapp/fast/ssh/MainActivity;->readLatest(Ljava/lang/String;Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v1, Lapp/fast/ssh/util/DBHelper$Resource;->ALLOWED_APPS:Lapp/fast/ssh/util/DBHelper$Resource;

    invoke-virtual {v0, v1, v2}, Lapp/fast/ssh/util/DBHelper;->updateResource(Lapp/fast/ssh/util/DBHelper$Resource;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u2f6c"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2f6d"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\u2f6e"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lapp/fast/ssh/MainActivity$3;

    invoke-direct {p1, p0}, Lapp/fast/ssh/MainActivity$3;-><init>(Lapp/fast/ssh/MainActivity;)V

    const-string/jumbo v1, "\u2f6f"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lapp/fast/ssh/MainActivity$4;

    invoke-direct {p1, p0}, Lapp/fast/ssh/MainActivity$4;-><init>(Lapp/fast/ssh/MainActivity;)V

    const-string/jumbo v1, "\u2f70"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_3
    return v4
.end method

.method private readLatest(Ljava/lang/String;Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2f71"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lapp/fast/ssh/util/DBHelper$Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2f72"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lapp/fast/ssh/MainActivity;->readResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/util/DBHelper;

    invoke-direct {v1, p0}, Lapp/fast/ssh/util/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lapp/fast/ssh/util/DBHelper;->getResource(Lapp/fast/ssh/util/DBHelper$Resource;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    const-string/jumbo v3, "\u2f73"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move-object v0, p2

    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lapp/fast/ssh/util/ApkInfoExtractor;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
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

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getAssets()Landroid/content/res/AssetManager;

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

.method private showRenewAccess()V
    .locals 1

    new-instance v0, Lapp/fast/ssh/dialog/RenewAccessDialog;

    invoke-direct {v0, p0}, Lapp/fast/ssh/dialog/RenewAccessDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lapp/fast/ssh/dialog/RenewAccessDialog;->show()V

    return-void
.end method

.method private startResourceUpdate()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lapp/fast/ssh/MainActivity;->restartOnUpdateRequest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/core/VpnStatus;->removeVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->stopCurrentProfile()V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->stopService()V

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->finish()V

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "\u2f74"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u2f75"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lapp/fast/ssh/Subscription;

    new-instance v2, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v2, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->loadUpdateSuccessInterstitialAd()V

    :cond_1
    iget-object v2, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;

    new-instance v3, Lapp/fast/ssh/MainActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lapp/fast/ssh/MainActivity$2;-><init>(Lapp/fast/ssh/MainActivity;Lapp/fast/ssh/Subscription;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Lapp/fast/ssh/util/ResourceUpdater;->requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method public debugState()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v0, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lapp/fast/ssh/PrefsSubscriptionStore;->getSubscriptionToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "\u2f76"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lapp/fast/ssh/PrefsSubscriptionStore;->getTokenExpiresAtMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2f77"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2f78"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2f79"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideBannerAd()V
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreate$3$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    const/16 v2, 0x2b20

    invoke-interface {v1, p1, v0, p0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$4$app-fast-ssh-MainActivity(Ljava/lang/String;Lcom/google/android/material/navigation/NavigationView;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p3, "\u2f7a"

    invoke-static {p3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lapp/fast/ssh/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ClipboardManager;

    const-string p4, ""

    invoke-static {p4, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "\u2f7b"

    invoke-static {p4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    invoke-static {p2, p1, p3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$5$app-fast-ssh-MainActivity(Lcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p1, "\u2f7c"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo p1, "\u2f7d"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lapp/fast/ssh/MainActivity;->openLink(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lapp/fast/ssh/SettingsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->importConfig()V

    goto :goto_0

    :sswitch_4
    new-instance p1, Lapp/fast/ssh/dialog/PayloadGen;

    iget-object p2, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-direct {p1, p0, p2}, Lapp/fast/ssh/dialog/PayloadGen;-><init>(Landroid/content/Context;Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;)V

    invoke-virtual {p1}, Lapp/fast/ssh/dialog/PayloadGen;->show()V

    goto :goto_0

    :sswitch_5
    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->exportConfig()V

    goto :goto_0

    :sswitch_6
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u2f7e"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda3;-><init>(Lapp/fast/ssh/MainActivity;Ljava/lang/String;Lcom/google/android/material/navigation/NavigationView;)V

    const-string/jumbo p1, "\u2f7f"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lapp/fast/ssh/AppsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lapp/fast/ssh/AboutActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    const/4 p1, 0x1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f09000e -> :sswitch_8
        0x7f09005a -> :sswitch_7
        0x7f0900c9 -> :sswitch_6
        0x7f0900f2 -> :sswitch_5
        0x7f090109 -> :sswitch_4
        0x7f090138 -> :sswitch_3
        0x7f090225 -> :sswitch_2
        0x7f090265 -> :sswitch_1
        0x7f0902b1 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$onResume$6$app-fast-ssh-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    const/4 v1, 0x1

    const/16 v2, 0x2b20

    invoke-interface {v0, p1, v1, p0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2b03

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1}, Lapp/fast/ssh/HomeFragment;->startCurrentProfile()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->setContentView(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "\u2f80"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v2, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v1, v2}, Lapp/fast/ssh/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lapp/fast/ssh/util/ResourceUpdater;

    invoke-direct {v0, p0}, Lapp/fast/ssh/util/ResourceUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;

    invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda5;-><init>(Lapp/fast/ssh/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v0, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v1, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x7f1200d8

    const v3, 0x7f1200d7

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v0, p0, Lapp/fast/ssh/MainActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lapp/fast/ssh/MainActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/HomeFragment;

    iput-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/fast/ssh/LogFragment;

    iput-object p1, p0, Lapp/fast/ssh/MainActivity;->debugFragment:Lapp/fast/ssh/LogFragment;

    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lapp/fast/ssh/HomeFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lapp/fast/ssh/HomeFragment;

    invoke-direct {p1}, Lapp/fast/ssh/HomeFragment;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v3, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v3, p1}, Lapp/fast/ssh/HomeFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_2
    new-instance p1, Lapp/fast/ssh/LogFragment;

    invoke-direct {p1}, Lapp/fast/ssh/LogFragment;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/MainActivity;->debugFragment:Lapp/fast/ssh/LogFragment;

    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->debugFragment:Lapp/fast/ssh/LogFragment;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const p1, 0x7f0901d2

    invoke-virtual {p0, p1}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "\u2f81"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "\u2f82"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lapp/fast/ssh/adapter/MyPagerAdapter;

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, v0, v3, v5, v1}, Lapp/fast/ssh/adapter/MyPagerAdapter;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {p1, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {v4}, Lapp/fast/ssh/adapter/MyPagerAdapter;->notifyDataSetChanged()V

    const v0, 0x7f090255

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const p1, 0x7f0901a0

    invoke-virtual {p0, p1}, Lapp/fast/ssh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, v2}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f09029d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->appVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    const-string/jumbo v1, "\u2f83"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;-><init>(Lapp/fast/ssh/MainActivity;Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    iget-object p1, p0, Lapp/fast/ssh/MainActivity;->resourceUpdater:Lapp/fast/ssh/util/ResourceUpdater;

    new-instance v0, Lapp/fast/ssh/MainActivity$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/MainActivity$1;-><init>(Lapp/fast/ssh/MainActivity;)V

    invoke-virtual {p1, v0}, Lapp/fast/ssh/util/ResourceUpdater;->requestUpdate(Lapp/fast/ssh/util/ResourceUpdater$UpdateListener;)V

    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->initAds()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lapp/fast/ssh/MainActivity;->handleImportIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->drawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lapp/fast/ssh/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->importConfig()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->exportConfig()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/core/VpnStatus;->removeVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->stopCurrentProfile()V

    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->stopService()V

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->finish()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->debugFragment:Lapp/fast/ssh/LogFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/LogFragment;->clear()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lapp/fast/ssh/MainActivity;->startResourceUpdate()V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lapp/fast/ssh/AppsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lapp/fast/ssh/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005a -> :sswitch_6
        0x7f090099 -> :sswitch_5
        0x7f09009f -> :sswitch_4
        0x7f0900ed -> :sswitch_3
        0x7f0900f2 -> :sswitch_2
        0x7f090138 -> :sswitch_1
        0x7f090225 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/fast/ssh/MainActivity;->inBackground:Z

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lapp/fast/ssh/FastSSH;

    invoke-virtual {v0}, Lapp/fast/ssh/FastSSH;->getBillingManager()Lapp/fast/ssh/BillingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/fast/ssh/MainActivity;->inBackground:Z

    const-string/jumbo v1, "\u2f84"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->debugState()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p0}, Lapp/fast/ssh/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lapp/fast/ssh/FastSSH;

    invoke-virtual {v1}, Lapp/fast/ssh/FastSSH;->getBillingManager()Lapp/fast/ssh/BillingManager;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/MainActivity;->homeFragment:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v1, v2}, Lapp/fast/ssh/BillingManager;->setStateListener(Lapp/fast/ssh/BillingManager$StateListener;)V

    invoke-virtual {v1}, Lapp/fast/ssh/BillingManager;->refreshIfNeeded()V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    new-instance v2, Lapp/fast/ssh/Subscription;

    new-instance v3, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v3, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v2}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    iget-object v1, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
