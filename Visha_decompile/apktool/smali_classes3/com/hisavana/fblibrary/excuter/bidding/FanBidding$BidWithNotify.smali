.class public Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/IBidWithNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/fblibrary/excuter/bidding/FanBidding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BidWithNotify"
.end annotation


# instance fields
.field public final a:Lcom/facebook/biddingkit/gen/BidWithNotification;

.field public b:Z

.field public c:J


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/gen/BidWithNotification;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->b:Z

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a:Lcom/facebook/biddingkit/gen/BidWithNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)Lcom/facebook/biddingkit/gen/BidWithNotification;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a:Lcom/facebook/biddingkit/gen/BidWithNotification;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->b:Z

    return p1
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a:Lcom/facebook/biddingkit/gen/BidWithNotification;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/biddingkit/gen/Bid;->getPayload()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isExpired()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget p0, Lcom/hisavana/common/constant/ComConstants;->BID_PRICE_CACHE_TIME:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyLoss()V
    .locals 3

    iget-boolean v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "FanBidding"

    const-string v2, "notify fan bidding failed"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$2;

    invoke-direct {v1, p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$2;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a:Lcom/facebook/biddingkit/gen/BidWithNotification;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/facebook/biddingkit/gen/BidWithNotification;->notifyLoss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyWin()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "FanBidding"

    const-string v2, "notify fan bidding win"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;

    invoke-direct {v1, p0}, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify$1;-><init>(Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->a:Lcom/facebook/biddingkit/gen/BidWithNotification;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/biddingkit/gen/BidWithNotification;->notifyWin()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisavana/fblibrary/excuter/bidding/FanBidding$BidWithNotify;->b:Z

    :cond_1
    :goto_0
    return-void
.end method
