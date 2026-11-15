.class public Lcom/hisavana/fblibrary/excuter/FanBanner;
.super Lcom/hisavana/common/base/BaseBanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Lcom/facebook/ads/AdView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/facebook/ads/AdView;

.field public b:I

.field public c:Lcom/facebook/ads/AdSize;

.field public d:Lcom/facebook/ads/AdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->b:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bannerSize:="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FanBanner"

    invoke-virtual {p1, p2, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/facebook/ads/AdView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanBanner;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/facebook/ads/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->d:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic g(Lcom/hisavana/fblibrary/excuter/FanBanner;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->loadAd()V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseBanner;->destroyAd()V

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

    const-string v1, "FanBanner"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/fblibrary/excuter/FanBanner;->getBanner()Lcom/facebook/ads/AdView;

    move-result-object p0

    return-object p0
.end method

.method public getBanner()Lcom/facebook/ads/AdView;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 5
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->c:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->c:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->c:Lcom/facebook/ads/AdSize;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->c:Lcom/facebook/ads/AdSize;

    .line 9
    :goto_0
    new-instance v0, Lcom/facebook/ads/AdView;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->c:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    .line 10
    new-instance v0, Lcom/hisavana/fblibrary/excuter/FanBanner$a;

    invoke-direct {v0, p0}, Lcom/hisavana/fblibrary/excuter/FanBanner$a;-><init>(Lcom/hisavana/fblibrary/excuter/FanBanner;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->d:Lcom/facebook/ads/AdListener;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    return-object p0
.end method

.method public isExpired()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->isAdInvalidated()Z

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

    invoke-virtual {p0}, Lcom/hisavana/fblibrary/excuter/FanBanner;->a()V

    return-void
.end method

.method public onBannerDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    :cond_0
    return-void
.end method

.method public onBannerLoad()V
    .locals 2

    sget-object v0, Lcom/hisavana/fblibrary/excuter/util/PltatformUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/hisavana/fblibrary/excuter/FanBanner$2;

    invoke-direct {v1, p0}, Lcom/hisavana/fblibrary/excuter/FanBanner$2;-><init>(Lcom/hisavana/fblibrary/excuter/FanBanner;)V

    invoke-virtual {p0, v0, v1}, Lcom/hisavana/common/base/BaseAd;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showBanner()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanBanner;->a:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "FanBanner"

    const-string v1, "showBanner error,adView is null"

    invoke-virtual {p0, v0, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
