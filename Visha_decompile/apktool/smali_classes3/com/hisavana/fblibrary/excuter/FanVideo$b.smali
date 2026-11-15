.class public Lcom/hisavana/fblibrary/excuter/FanVideo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/FanVideo;->onVideoStartLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/hisavana/fblibrary/excuter/FanVideo;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/FanVideo;J)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    iput-wide p2, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitialized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FanVideo"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->e(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->f(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->g(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object p1

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {v1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {v3}, Lcom/hisavana/fblibrary/excuter/FanVideo;->i(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {v3}, Lcom/hisavana/fblibrary/excuter/FanVideo;->h(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanVideo;->b(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/hisavana/common/bean/Network;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/bean/Network;->setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/FanVideo;->a(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanVideo;->h(Lcom/hisavana/fblibrary/excuter/FanVideo;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanVideo$b;->b:Lcom/hisavana/fblibrary/excuter/FanVideo;

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-static {p0, p1}, Lcom/hisavana/fblibrary/excuter/FanVideo;->b(Lcom/hisavana/fblibrary/excuter/FanVideo;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
