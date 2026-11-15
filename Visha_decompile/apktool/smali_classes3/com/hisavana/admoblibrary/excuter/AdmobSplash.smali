.class public Lcom/hisavana/admoblibrary/excuter/AdmobSplash;
.super Lcom/hisavana/common/base/BaseSplash;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdmobSplash"

.field private static isShowingAd:Z = false


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private currentActivity:Landroid/app/Activity;

.field private loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private mInitListener:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method public static synthetic access$000(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;JLjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->onAdditionalShowed(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->isShowingAd:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSkipClick()V

    return-void
.end method

.method public static synthetic access$500(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$602(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->mInitListener:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    :cond_1
    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->mInitListener:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AdmobSplash"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fetchAd()V
    .locals 3

    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$a;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    :try_start_0
    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$b;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$b;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->mInitListener:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->mInitListener:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7533

    invoke-direct {v1, v2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public getSplash()Landroid/view/View;
    .locals 1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/View;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAdAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSplashShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->showAdIfAvailable()V

    return-void
.end method

.method public onSplashStartLoad()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->fetchAd()V

    return-void
.end method

.method public showAdIfAvailable()V
    .locals 5

    sget-boolean v0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->isShowingAd:Z

    const-string v1, "AdmobSplash"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v2, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$c;

    invoke-direct {v2, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobSplash$c;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobSplash;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v2, p0, Lcom/hisavana/admoblibrary/excuter/AdmobSplash;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const v4, 0xc351

    invoke-direct {v2, v4, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAdIfAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "showAdIfAvailable,show error,ad is showing or ad is not available"

    invoke-virtual {p0, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportTimer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
