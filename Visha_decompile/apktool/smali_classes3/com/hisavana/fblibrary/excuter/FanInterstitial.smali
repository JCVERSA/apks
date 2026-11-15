.class public Lcom/hisavana/fblibrary/excuter/FanInterstitial;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "SourceFile"


# instance fields
.field public a:Lcom/facebook/ads/InterstitialAd;

.field public b:Lcom/facebook/ads/InterstitialAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/facebook/ads/InterstitialAdListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->b:Lcom/facebook/ads/InterstitialAdListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic g(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->loadAd()V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanInterstitial"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initInterstitial()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Lcom/hisavana/fblibrary/excuter/FanInterstitial$a;

    invoke-direct {v0, p0}, Lcom/hisavana/fblibrary/excuter/FanInterstitial$a;-><init>(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->b:Lcom/facebook/ads/InterstitialAdListener;

    :cond_0
    return-void
.end method

.method public isExpired()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result p0

    return p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportRtBidding()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportStopRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadAd()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a()V

    return-void
.end method

.method public onInterstitialShow(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "FanInterstitial"

    const-string v0, "onInterstitialShow show error,mInterstitialAd is null"

    invoke-virtual {p0, p1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanInterstitial;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/hisavana/fblibrary/excuter/FanInterstitial$1;

    invoke-direct {v1, p0}, Lcom/hisavana/fblibrary/excuter/FanInterstitial$1;-><init>(Lcom/hisavana/fblibrary/excuter/FanInterstitial;)V

    invoke-virtual {p0, v0, v1}, Lcom/hisavana/common/base/BaseAd;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
