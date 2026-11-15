.class Lcom/facebook/biddingkit/auction/Auction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction;->startAuction(Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/auction/Auction;

.field final synthetic val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

.field final synthetic val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    iput-object p2, p0, Lcom/facebook/biddingkit/auction/Auction$1;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    iput-object p3, p0, Lcom/facebook/biddingkit/auction/Auction$1;->val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction$1;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    invoke-interface {v2}, Lcom/facebook/biddingkit/waterfall/Waterfall;->createWaterfallCopy()Lcom/facebook/biddingkit/waterfall/Waterfall;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v3}, Lcom/facebook/biddingkit/auction/Auction;->access$000(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v4}, Lcom/facebook/biddingkit/auction/Auction;->access$100(Lcom/facebook/biddingkit/auction/Auction;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v5}, Lcom/facebook/biddingkit/auction/Auction;->access$200(Lcom/facebook/biddingkit/auction/Auction;)Lcom/facebook/biddingkit/auction/AuctionConfig;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/biddingkit/auction/AuctionRunner;->getBids(Ljava/lang/String;Ljava/util/List;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/biddingkit/gen/Bid;

    invoke-interface {v2, v4}, Lcom/facebook/biddingkit/waterfall/Waterfall;->insert(Lcom/facebook/biddingkit/gen/Bid;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auction finished after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auction"

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/biddingkit/auction/Auction$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/biddingkit/auction/Auction$1$1;-><init>(Lcom/facebook/biddingkit/auction/Auction$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$1;->val$listener:Lcom/facebook/biddingkit/auction/AuctionListener;

    invoke-interface {p0, v2}, Lcom/facebook/biddingkit/auction/AuctionListener;->onAuctionCompleted(Lcom/facebook/biddingkit/waterfall/Waterfall;)V

    return-void
.end method
