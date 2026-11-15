.class public Lcom/hisavana/fblibrary/excuter/FanVideo;
.super Lcom/hisavana/common/base/BaseVideo;
.source "SourceFile"


# instance fields
.field public a:Lcom/facebook/ads/RewardedVideoAd;

.field public b:Lcom/facebook/ads/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseVideo;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanVideo;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/FanVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/FanVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic c(Lcom/hisavana/fblibrary/excuter/FanVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->onReward()V

    return-void
.end method

.method public static synthetic d(Lcom/hisavana/fblibrary/excuter/FanVideo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static synthetic e(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic g(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAdListener;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->b:Lcom/facebook/ads/RewardedVideoAdListener;

    return-object p0
.end method

.method public static synthetic i(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->loadAd()V

    return-void
.end method

.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseVideo;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->b:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->b:Lcom/facebook/ads/RewardedVideoAdListener;

    :cond_1
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

    const-string v1, "video"

    invoke-virtual {v0, v1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initVideo()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    new-instance v0, Lcom/hisavana/fblibrary/excuter/FanVideo$a;

    invoke-direct {v0, p0}, Lcom/hisavana/fblibrary/excuter/FanVideo$a;-><init>(Lcom/hisavana/fblibrary/excuter/FanVideo;)V

    iput-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->b:Lcom/facebook/ads/RewardedVideoAdListener;

    :cond_1
    :goto_0
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
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/RewardedVideoAd;->isAdInvalidated()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportStopRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadAd()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a()V

    return-void
.end method

.method public onVideoShow(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    const-string v0, "video"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FanVideo --> onVideoShow."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "FanVideo --> The rewarded ad wasn\'t ready yet."

    invoke-virtual {p0, v0, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onVideoStartLoad()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->a:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo;->b:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/hisavana/fblibrary/excuter/FanVideo$b;

    invoke-direct {v3, p0, v0, v1}, Lcom/hisavana/fblibrary/excuter/FanVideo$b;-><init>(Lcom/hisavana/fblibrary/excuter/FanVideo;J)V

    invoke-static {v2, v3}, Lcom/hisavana/fblibrary/excuter/check/ExistsCheck;->initFan(Landroid/content/Context;Lcom/facebook/ads/AudienceNetworkAds$InitListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FanVideo"

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
