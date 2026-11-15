.class public Lcom/facebook/biddingkit/auction/Auction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/auction/Auction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBidderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;"
        }
    .end annotation
.end field

.field private mTestSegment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mBidderList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mTestSegment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;
    .locals 1
    .param p1    # Lcom/facebook/biddingkit/bidders/Bidder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mBidderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lcom/facebook/biddingkit/auction/Auction;
    .locals 3

    new-instance v0, Lcom/facebook/biddingkit/auction/Auction;

    iget-object v1, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mBidderList:Ljava/util/List;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mTestSegment:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/biddingkit/auction/Auction;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/facebook/biddingkit/auction/Auction$1;)V

    return-object v0
.end method

.method public setTestSegment(Ljava/lang/String;)Lcom/facebook/biddingkit/auction/Auction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction$Builder;->mTestSegment:Ljava/lang/String;

    return-object p0
.end method
