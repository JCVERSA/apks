.class Lcom/facebook/biddingkit/auction/Auction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction;->startRemoteAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/Auction;

.field final synthetic val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

.field final synthetic val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

.field final synthetic val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/remote/RemoteBidder;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$2;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    iput-object p2, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    iput-object p3, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    iput-object p4, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction$2;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v2}, Lcom/facebook/biddingkit/auction/Auction;->access$000(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    iget-object v4, p0, Lcom/facebook/biddingkit/auction/Auction$2;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v4}, Lcom/facebook/biddingkit/auction/Auction;->access$200(Lcom/facebook/biddingkit/auction/Auction;)Lcom/facebook/biddingkit/auction/AuctionConfig;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner;->getRemoteBids(Ljava/lang/String;Lcom/facebook/biddingkit/remote/RemoteBidder;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    invoke-interface {v3}, Lcom/facebook/biddingkit/waterfall/Waterfall;->createWaterfallCopy()Lcom/facebook/biddingkit/waterfall/Waterfall;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "Auction"

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/biddingkit/remote/RemoteBid;

    invoke-virtual {v4}, Lcom/facebook/biddingkit/remote/RemoteBid;->getCurrency()Ljava/lang/String;

    move-result-object v4

    const-string v6, "priorityInList"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    invoke-interface {v4}, Lcom/facebook/biddingkit/waterfall/Waterfall;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Got non-empty waterfall and bids with priorityInList instead of a monetary value. Inserting them into the waterfall might cause issues."

    invoke-static {v5, v4}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/biddingkit/gen/Bid;

    invoke-interface {v3, v4}, Lcom/facebook/biddingkit/waterfall/Waterfall;->insert(Lcom/facebook/biddingkit/gen/Bid;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auction finished after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$2;->val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

    invoke-interface {p0, v3}, Lcom/facebook/biddingkit/auction/AuctionListener;->onAuctionCompleted(Lcom/facebook/biddingkit/waterfall/Waterfall;)V

    return-void
.end method
