.class public Lcom/hisavana/yandex/check/ExistsCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBaseAdSummary;


# static fields
.field private static final isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/hisavana/yandex/check/ExistsCheck;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/hisavana/yandex/check/ExistsCheck;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static initYandex(Lcom/yandex/mobile/ads/common/InitializationListener;)V
    .locals 2

    sget-boolean v0, Lcom/hisavana/common/bean/AppStartInfo;->userConsent:Z

    invoke-static {v0}, Lcom/yandex/mobile/ads/common/MobileAds;->setUserConsent(Z)V

    sget-boolean v0, Lcom/hisavana/common/bean/AppStartInfo;->ageRestrictedUser:Z

    invoke-static {v0}, Lcom/yandex/mobile/ads/common/MobileAds;->setAgeRestrictedUser(Z)V

    sget-object v0, Lcom/hisavana/yandex/check/ExistsCheck;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/common/InitializationListener;->onInitializationCompleted()V

    return-void

    :cond_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/hisavana/yandex/check/ExistsCheck$1;

    invoke-direct {v1, p0}, Lcom/hisavana/yandex/check/ExistsCheck$1;-><init>(Lcom/yandex/mobile/ads/common/InitializationListener;)V

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/common/MobileAds;->initialize(Landroid/content/Context;Lcom/yandex/mobile/ads/common/InitializationListener;)V

    return-void
.end method


# virtual methods
.method public getBanner(Landroid/content/Context;Lcom/hisavana/common/bean/Network;II)Lcom/hisavana/common/base/BaseBanner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hisavana/common/bean/Network;",
            "II)",
            "Lcom/hisavana/common/base/BaseBanner<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/hisavana/yandex/executer/YandexBanner;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/yandex/executer/YandexBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getInterstitial(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseInterstitial;
    .locals 0

    new-instance p0, Lcom/hisavana/yandex/executer/YandexInterstitial;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/yandex/executer/YandexInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getNative(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)Lcom/hisavana/common/base/BaseNative;
    .locals 0

    new-instance p0, Lcom/hisavana/yandex/executer/YandexNative;

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/yandex/executer/YandexNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-object p0
.end method

.method public getNativeViewHolder()Lcom/hisavana/common/base/BaseNativeViewHolder;
    .locals 0

    new-instance p0, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;

    invoke-direct {p0}, Lcom/hisavana/yandex/holder/YandexNativeViewHolder;-><init>()V

    return-object p0
.end method

.method public getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSplash(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseSplash;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hisavana/common/bean/Network;",
            ")",
            "Lcom/hisavana/common/base/BaseSplash<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/hisavana/yandex/executer/YandexSplash;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/yandex/executer/YandexSplash;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public getVideo(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseVideo;
    .locals 0

    new-instance p0, Lcom/hisavana/yandex/executer/YandexVideo;

    invoke-direct {p0, p1, p2}, Lcom/hisavana/yandex/executer/YandexVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/hisavana/common/bean/AdSourceConfig;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p0, p2, Lcom/hisavana/common/bean/AdSourceConfig;->isDebug:Z

    invoke-static {p0}, Lcom/yandex/mobile/ads/common/MobileAds;->enableLogging(Z)V

    return-void
.end method
