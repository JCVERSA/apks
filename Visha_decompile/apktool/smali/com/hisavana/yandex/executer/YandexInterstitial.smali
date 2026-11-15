.class public Lcom/hisavana/yandex/executer/YandexInterstitial;
.super Lcom/hisavana/common/base/BaseInterstitial;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

.field private mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const-string p1, "YandexInterstitial"

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/yandex/executer/YandexInterstitial;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/yandex/executer/YandexInterstitial;->lambda$onInterstitialStartLoad$0()V

    return-void
.end method

.method public static synthetic access$002(Lcom/hisavana/yandex/executer/YandexInterstitial;Lcom/yandex/mobile/ads/interstitial/InterstitialAd;)Lcom/yandex/mobile/ads/interstitial/InterstitialAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/hisavana/yandex/executer/YandexInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/hisavana/yandex/executer/YandexInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/hisavana/yandex/executer/YandexInterstitial;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method private synthetic lambda$onInterstitialStartLoad$0()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequestConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequestConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;->cancelLoading()V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;->setAdLoadListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;)V

    iput-object v1, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAd;->setAdEventListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;)V

    iput-object v1, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    :cond_1
    return-void
.end method

.method public initInterstitial()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    new-instance v1, Lcom/hisavana/yandex/executer/YandexInterstitial$1;

    invoke-direct {v1, p0}, Lcom/hisavana/yandex/executer/YandexInterstitial$1;-><init>(Lcom/hisavana/yandex/executer/YandexInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;->setAdLoadListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoadListener;)V

    :cond_0
    return-void
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

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

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hisavana/yandex/executer/YandexInterstitial$2;

    invoke-direct {v1, p0}, Lcom/hisavana/yandex/executer/YandexInterstitial$2;-><init>(Lcom/hisavana/yandex/executer/YandexInterstitial;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAd;->setAdEventListener(Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;)V

    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAd:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public onInterstitialStartLoad()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexInterstitial;->mInterstitialAdLoader:Lcom/yandex/mobile/ads/interstitial/InterstitialAdLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lfsc;

    invoke-direct {v0, p0}, Lfsc;-><init>(Lcom/hisavana/yandex/executer/YandexInterstitial;)V

    invoke-static {v0}, Lcom/hisavana/yandex/check/ExistsCheck;->initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
