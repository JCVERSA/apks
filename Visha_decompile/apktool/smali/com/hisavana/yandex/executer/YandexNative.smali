.class public Lcom/hisavana/yandex/executer/YandexNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

.field private mAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/nativeads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    const-string p1, "YandexNative"

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/yandex/executer/YandexNative;)V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/yandex/executer/YandexNative;->lambda$onNativeAdStartLoad$0()V

    return-void
.end method

.method public static synthetic access$002(Lcom/hisavana/yandex/executer/YandexNative;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAds:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/hisavana/yandex/executer/YandexNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method public static synthetic access$200(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/hisavana/yandex/executer/YandexNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private synthetic lambda$onNativeAdStartLoad$0()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration$Builder;->build()Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;

    move-result-object v1

    iget p0, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;->loadAds(Lcom/yandex/mobile/ads/nativeads/NativeAdRequestConfiguration;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;->setNativeBulkAdLoadListener(Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;)V

    iput-object v1, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    :cond_0
    return-void
.end method

.method public initNative()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    new-instance v1, Lcom/hisavana/yandex/executer/YandexNative$2;

    invoke-direct {v1, p0}, Lcom/hisavana/yandex/executer/YandexNative$2;-><init>(Lcom/hisavana/yandex/executer/YandexNative;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;->setNativeBulkAdLoadListener(Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoadListener;)V

    :cond_0
    return-void
.end method

.method public onNativeAdStartLoad()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/yandex/executer/YandexNative;->mAdLoader:Lcom/yandex/mobile/ads/nativeads/NativeBulkAdLoader;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    new-instance v0, Lgsc;

    invoke-direct {v0, p0}, Lgsc;-><init>(Lcom/hisavana/yandex/executer/YandexNative;)V

    invoke-static {v0}, Lcom/hisavana/yandex/check/ExistsCheck;->initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    return-void
.end method

.method public registerImpression(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 2
    .param p1    # Lcom/hisavana/common/bean/AdNativeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/mobile/ads/nativeads/NativeAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeAd;

    new-instance v1, Lcom/hisavana/yandex/executer/YandexNative$1;

    invoke-direct {v1, p0, p1}, Lcom/hisavana/yandex/executer/YandexNative$1;-><init>(Lcom/hisavana/yandex/executer/YandexNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAd;->setNativeAdEventListener(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/hisavana/common/bean/AdNativeInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    return-void
.end method
