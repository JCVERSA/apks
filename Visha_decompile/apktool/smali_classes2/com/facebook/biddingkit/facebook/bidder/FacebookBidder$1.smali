.class Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->retrieveBidWithNotificationCompleted(Lcom/facebook/biddingkit/bidders/BidResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

.field final synthetic val$bidResponseCallback:Lcom/facebook/biddingkit/bidders/BidResponseCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;Lcom/facebook/biddingkit/bidders/BidResponseCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->val$bidResponseCallback:Lcom/facebook/biddingkit/bidders/BidResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    iget-object v0, v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-static {}, Lcom/facebook/biddingkit/utils/RandomString;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->access$100(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->this$0:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    iget-object v3, v2, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    iget-object v2, v2, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-direct {v1, v3, v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V

    invoke-virtual {v1, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->setFacebookBid(Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->setNotifier(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)V

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;->val$bidResponseCallback:Lcom/facebook/biddingkit/bidders/BidResponseCallback;

    invoke-static {p0, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->access$200(Lcom/facebook/biddingkit/bidders/BidResponseCallback;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    return-void
.end method
