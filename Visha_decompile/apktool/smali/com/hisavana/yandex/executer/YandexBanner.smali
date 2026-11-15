.class public Lcom/hisavana/yandex/executer/YandexBanner;
.super Lcom/hisavana/common/base/BaseBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    const-string p1, "YandexBanner"

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/yandex/executer/YandexBanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/yandex/executer/YandexBanner;->lambda$onBannerLoad$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/hisavana/yandex/executer/YandexBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private synthetic lambda$onBannerLoad$0()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getBanner()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    const-string v1, "YandexBanner"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-nez v2, :cond_2

    new-instance v2, Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iget-object v3, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    new-instance v3, Lcom/hisavana/yandex/executer/YandexBanner$1;

    invoke-direct {v3, p0}, Lcom/hisavana/yandex/executer/YandexBanner$1;-><init>(Lcom/hisavana/yandex/executer/YandexBanner;)V

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    :cond_2
    :try_start_0
    iget v2, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    iget v2, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdMaxHeight:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iget v3, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/banner/BannerAdSize;->stickySize(Landroid/content/Context;I)Lcom/yandex/mobile/ads/banner/BannerAdSize;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iget v4, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    invoke-static {v0, v4, v2}, Lcom/yandex/mobile/ads/banner/BannerAdSize;->inlineSize(Landroid/content/Context;II)Lcom/yandex/mobile/ads/banner/BannerAdSize;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setAdSize(Lcom/yandex/mobile/ads/banner/BannerAdSize;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    return-object p0

    :cond_5
    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "banner load error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", network :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public onBannerDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/banner/BannerAdView;->setBannerAdEventListener(Lcom/yandex/mobile/ads/banner/BannerAdEventListener;)V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/banner/BannerAdView;->destroy()V

    iput-object v1, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    :cond_0
    return-void
.end method

.method public onBannerLoad()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load error: bannerAdView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/yandex/executer/YandexBanner;->bannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YandexBanner"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    new-instance v0, Lesc;

    invoke-direct {v0, p0}, Lesc;-><init>(Lcom/hisavana/yandex/executer/YandexBanner;)V

    invoke-static {v0}, Lcom/hisavana/yandex/check/ExistsCheck;->initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    return-void
.end method

.method public showBanner()V
    .locals 0

    return-void
.end method
