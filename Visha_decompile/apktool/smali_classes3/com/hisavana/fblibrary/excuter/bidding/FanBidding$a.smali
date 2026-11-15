.class public Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/BidResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;->queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hisavana/common/bean/Network;

.field public final synthetic b:J

.field public final synthetic c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;


# direct methods
.method public constructor <init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;Lcom/hisavana/common/bean/Network;J)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    iput-object p2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    iput-wide p3, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBidResponse(Lcom/facebook/biddingkit/gen/BidWithNotification;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/facebook/biddingkit/gen/Bid;->getPrice()D

    move-result-wide v0

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    invoke-virtual {v2, v0, v1}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingSuccess(D)V

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    iget-object v2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    new-instance v3, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;

    invoke-direct {v3, p1}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;-><init>(Lcom/facebook/biddingkit/gen/BidWithNotification;)V

    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/Network;->setBidInfo(Lcom/hisavana/common/interfacz/IBidWithNotify;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> fan bidding success ---,price is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FanBidding"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;

    invoke-direct {p1, p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$a;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleBidResponseFailure(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->b:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> bidding request fail --- :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",time use:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FanBidding"

    invoke-virtual {v2, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->a:Lcom/hisavana/common/bean/Network;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;->c:Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;

    const/16 v1, 0x7536

    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/base/BaseQueryPrice;->trackingBiddingFailed(ILjava/lang/String;)V

    new-instance p1, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;

    invoke-direct {p1, p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a$b;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$a;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method
