.class public Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/remote/RemoteBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuctionId:Ljava/lang/String;

.field private mAuctionUrlBase:Ljava/lang/String;

.field private mBidders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionUrlBase:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mBidders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/biddingkit/bidders/Bidder;
    .locals 2

    new-instance v0, Lcom/facebook/biddingkit/remote/RemoteBidder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/remote/RemoteBidder;-><init>(Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;Lcom/facebook/biddingkit/remote/RemoteBidder$1;)V

    return-object v0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionUrlBase()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionUrlBase:Ljava/lang/String;

    return-object p0
.end method

.method public getBidders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mBidders:Ljava/util/List;

    return-object p0
.end method

.method public setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public setAuctionUrlBase(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mAuctionUrlBase:Ljava/lang/String;

    return-object p0
.end method

.method public setBidders(Ljava/util/List;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;)",
            "Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->mBidders:Ljava/util/List;

    return-object p0
.end method
