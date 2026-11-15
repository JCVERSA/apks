.class final Lcom/facebook/biddingkit/auction/AuctionRunner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/AuctionRunner;->getPendingBiddingRequestsMap(Ljava/util/List;Ljava/lang/String;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/util/Pair<",
        "Lcom/facebook/biddingkit/gen/Bid;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$auctionId:Ljava/lang/String;

.field final synthetic val$bidder:Lcom/facebook/biddingkit/bidders/Bidder;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/bidders/Bidder;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$bidder:Lcom/facebook/biddingkit/bidders/Bidder;

    iput-object p2, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$auctionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/facebook/biddingkit/gen/Bid;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$bidder:Lcom/facebook/biddingkit/bidders/Bidder;

    instance-of v3, v2, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;

    iget-object v3, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$auctionId:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3}, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;->requestBid(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/Bid;

    move-result-object v2

    .line 6
    iget-object p0, p0, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 8
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/auction/AuctionRunner$1;->call()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
