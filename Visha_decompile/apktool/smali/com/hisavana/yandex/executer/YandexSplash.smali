.class public Lcom/hisavana/yandex/executer/YandexSplash;
.super Lcom/hisavana/common/base/BaseSplash;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseSplash<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

.field private mAppOpenAdLoader:Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const-string p1, "YandexSplash"

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexSplash;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/yandex/executer/YandexSplash;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/yandex/executer/YandexSplash;->lambda$onSplashStartLoad$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/hisavana/yandex/executer/YandexSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/hisavana/yandex/executer/YandexSplash;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic access$202(Lcom/hisavana/yandex/executer/YandexSplash;Lcom/yandex/mobile/ads/appopenad/AppOpenAd;)Lcom/yandex/mobile/ads/appopenad/AppOpenAd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/hisavana/yandex/executer/YandexSplash;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private synthetic lambda$onSplashStartLoad$0()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAdLoader:Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAdLoader:Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAdLoader:Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    new-instance v1, Lcom/hisavana/yandex/executer/YandexSplash$1;

    invoke-direct {v1, p0}, Lcom/hisavana/yandex/executer/YandexSplash$1;-><init>(Lcom/hisavana/yandex/executer/YandexSplash;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;->setAdLoadListener(Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;)V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAdLoader:Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    new-instance v1, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/common/AdRequestConfiguration$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequestConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequestConfiguration;)V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->setAdEventListener(Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;)V

    iput-object v1, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    :cond_0
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

.method public onSplashShow()V
    .locals 4

    :try_start_0
    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/hisavana/yandex/executer/YandexSplash$2;

    invoke-direct {v2, p0}, Lcom/hisavana/yandex/executer/YandexSplash$2;-><init>(Lcom/hisavana/yandex/executer/YandexSplash;)V

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->setAdEventListener(Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;)V

    iget-object v1, p0, Lcom/hisavana/yandex/executer/YandexSplash;->mAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->show(Landroid/app/Activity;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yandex onSplashShow error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "YandexSplash"

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_2
    return-void
.end method

.method public onSplashStartLoad()V
    .locals 1

    new-instance v0, Lhsc;

    invoke-direct {v0, p0}, Lhsc;-><init>(Lcom/hisavana/yandex/executer/YandexSplash;)V

    invoke-static {v0}, Lcom/hisavana/yandex/check/ExistsCheck;->initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    return-void
.end method
