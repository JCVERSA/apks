.class final Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/biddingkit/auction/RemoteAuctionRunner;->getRemoteBids(Ljava/lang/String;Lcom/facebook/biddingkit/remote/RemoteBidder;Lcom/facebook/biddingkit/auction/AuctionConfig;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/biddingkit/remote/RemoteAuctionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$auctionId:Ljava/lang/String;

.field final synthetic val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/remote/RemoteBidder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;->val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    iput-object p2, p0, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;->val$auctionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/biddingkit/remote/RemoteAuctionResult;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;->val$bidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;->val$auctionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/facebook/biddingkit/remote/RemoteBidder;->requestBids(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteAuctionResult;

    move-result-object p0

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
    invoke-virtual {p0}, Lcom/facebook/biddingkit/auction/RemoteAuctionRunner$1;->call()Lcom/facebook/biddingkit/remote/RemoteAuctionResult;

    move-result-object p0

    return-object p0
.end method
