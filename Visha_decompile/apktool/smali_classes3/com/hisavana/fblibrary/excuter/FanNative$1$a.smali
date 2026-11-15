.class public Lcom/hisavana/fblibrary/excuter/FanNative$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/FanNative$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/hisavana/fblibrary/excuter/FanNative$1;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/FanNative$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iput-wide p2, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->a:J

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

    iget-wide v4, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FanNative"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v0, v0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v0, v0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/FanNative;->b(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p1, p1, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->k(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p1, p1, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->l(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object p1

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p1, p1, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v0, v0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v0}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->m(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p0

    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-interface {p0, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p0

    invoke-interface {p0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p1, p1, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p1}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;

    move-result-object p1

    iget-object v1, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v1, v1, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v1}, Lcom/hisavana/fblibrary/excuter/FanNative;->a(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdBase;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v2, v2, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v2}, Lcom/hisavana/fblibrary/excuter/FanNative;->m(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-interface {v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object v2, v2, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {v2}, Lcom/hisavana/fblibrary/excuter/FanNative;->n(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/IBidWithNotify;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/ads/NativeAdBase;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    invoke-static {p0}, Lcom/hisavana/fblibrary/excuter/FanNative;->o(Lcom/hisavana/fblibrary/excuter/FanNative;)Lcom/hisavana/common/bean/Network;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/hisavana/common/bean/Network;->setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1$a;->b:Lcom/hisavana/fblibrary/excuter/FanNative$1;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/FanNative$1;->this$0:Lcom/hisavana/fblibrary/excuter/FanNative;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    if-nez p1, :cond_4

    const-string p1, ""

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const/16 v1, 0x7531

    invoke-direct {v0, v1, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hisavana/fblibrary/excuter/FanNative;->b(Lcom/hisavana/fblibrary/excuter/FanNative;Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
