.class public Lcom/hisavana/fblibrary/excuter/FanNative;
.super Lcom/hisavana/common/base/BaseNative;
.source "SourceFile"


# instance fields
.field public a:Lcom/facebook/ads/NativeAdBase;

.field public b:Lcom/facebook/ads/NativeAdListener;

.field public c:Lcom/hisavana/common/bean/AdNativeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/common/base/BaseNative;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->filter(Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNative;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic f(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/AdNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->c:Lcom/hisavana/common/bean/AdNativeInfo;

    return-object p0
.end method

.method public static synthetic g(Lcom/hisavana/fblibrary/excuter/FanNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method

.method public static synthetic h(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic i(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lcom/hisavana/fblibrary/excuter/FanNative;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseNative;->mNatives:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic l(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic m(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->b:Lcom/facebook/ads/NativeAdListener;

    return-object p0
.end method

.method public static synthetic n(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic o(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic p(Lcom/hisavana/fblibrary/excuter/FanNative;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 4
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->loadAd()V

    .line 5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fan native load mPlacementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanNative"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNative;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->destroy()V

    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    :cond_0
    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->c:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fan destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanNative"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initNative()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/hisavana/common/base/BaseNative;->mAdt:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeBannerAd;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    new-instance v0, Lcom/hisavana/fblibrary/excuter/FanNative$a;

    invoke-direct {v0, p0}, Lcom/hisavana/fblibrary/excuter/FanNative$a;-><init>(Lcom/hisavana/fblibrary/excuter/FanNative;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->b:Lcom/facebook/ads/NativeAdListener;

    :cond_1
    return-void
.end method

.method public isExpired()Z
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->isAdInvalidated()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

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

    invoke-virtual {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->a()V

    return-void
.end method

.method public onNativeAdStartLoad()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->a:Lcom/facebook/ads/NativeAdBase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/hisavana/fblibrary/excuter/FanNative$1;

    invoke-direct {v1, p0}, Lcom/hisavana/fblibrary/excuter/FanNative$1;-><init>(Lcom/hisavana/fblibrary/excuter/FanNative;)V

    invoke-virtual {p0, v0, v1}, Lcom/hisavana/common/base/BaseAd;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 6
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

    iput-object p3, p0, Lcom/hisavana/fblibrary/excuter/FanNative;->c:Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {p0, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    invoke-virtual {p3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdBase;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/hisavana/fblibrary/excuter/FanNative;->unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1}, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->findFbMediaViewAndIconView(Landroid/view/ViewGroup;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    instance-of v5, v4, Lcom/facebook/ads/MediaView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Lcom/hisavana/common/view/TIconView;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/facebook/ads/MediaView;

    goto :goto_0

    :cond_1
    move-object v2, v4

    check-cast v2, Lcom/facebook/ads/MediaView;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/facebook/ads/NativeAd;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    invoke-virtual {p0, p1, p3}, Lcom/hisavana/common/base/BaseNative;->setNativeCloseListener(Landroid/view/ViewGroup;Lcom/hisavana/common/bean/AdNativeInfo;)V

    goto :goto_1

    :cond_3
    instance-of p0, v0, Lcom/facebook/ads/NativeBannerAd;

    if-eqz p0, :cond_5

    check-cast v0, Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0, p1, v3, p2}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p3, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "FanNative"

    const-string p2, "registerViewForInteraction show error,adBase is null or expired"

    invoke-virtual {p0, p1, p2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public unregisterView(Lcom/hisavana/common/bean/AdNativeInfo;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAdBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdBase;->unregisterView()V

    :cond_0
    return-void
.end method
