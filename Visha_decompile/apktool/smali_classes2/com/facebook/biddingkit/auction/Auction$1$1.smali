.class Lcom/facebook/biddingkit/auction/Auction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/Auction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/biddingkit/auction/Auction$1;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/auction/Auction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object v0, v0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/Auction;->access$100(Lcom/facebook/biddingkit/auction/Auction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/biddingkit/bidders/Bidder;

    instance-of v3, v2, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;

    iget-object v4, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object v4, v4, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v4}, Lcom/facebook/biddingkit/auction/Auction;->access$300(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object v6, v5, Lcom/facebook/biddingkit/auction/Auction$1;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    iget-object v5, v5, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v5}, Lcom/facebook/biddingkit/auction/Auction;->access$000(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;->notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Ljava/lang/String;)V

    :cond_1
    instance-of v2, v2, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object v0, v0, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v0}, Lcom/facebook/biddingkit/auction/Auction;->access$000(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getDefaultInternalNotifier(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object v1, v1, Lcom/facebook/biddingkit/auction/Auction$1;->this$0:Lcom/facebook/biddingkit/auction/Auction;

    invoke-static {v1}, Lcom/facebook/biddingkit/auction/Auction;->access$300(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$1$1;->this$1:Lcom/facebook/biddingkit/auction/Auction$1;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$1;->val$waterfall:Lcom/facebook/biddingkit/waterfall/Waterfall;

    invoke-interface {v0, v1, p0}, Lcom/facebook/biddingkit/bidders/Notifier;->notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;)V

    :cond_3
    return-void
.end method
