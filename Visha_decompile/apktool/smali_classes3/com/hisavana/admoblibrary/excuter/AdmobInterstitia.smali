.class public Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field public b:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field public c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "AdmobInterstitia"

    const-string p2, "Admob Interstitial"

    invoke-virtual {p0, p1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)Lcom/hisavana/admoblibrary/check/ExistsCheck$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;JLjava/lang/String;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hisavana/common/base/BaseAd;->onAdditionalShowed(JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;->setMediatorInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->b:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 4

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdmobInterstitia"

    invoke-virtual {v0, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->b:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->b:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    :cond_1
    iput-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    return-void
.end method

.method public initInterstitial()V
    .locals 1

    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$b;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->b:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    return-void
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterstitialShow(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$c;

    invoke-direct {v1, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$c;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->a:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The ad wasn\'t ready or activity is null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdmobInterstitia"

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$a;

    invoke-direct {v0, p0}, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia$a;-><init>(Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;)V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/admoblibrary/excuter/AdmobInterstitia;->c:Lcom/hisavana/admoblibrary/check/ExistsCheck$a;

    invoke-static {v0, v1}, Lcom/hisavana/admoblibrary/check/ExistsCheck;->a(Landroid/content/Context;Lcom/hisavana/admoblibrary/check/ExistsCheck$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialStartLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdmobInterstitia"

    invoke-virtual {v1, v3, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7533

    invoke-direct {v1, v2, v0}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void
.end method

.method public supportTimer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
