.class public Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/abtesting/ABAuction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

.field private mAuctionExperiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/auction/Auction$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/abtesting/ABTest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    return-void
.end method

.method private addSegment(Lcom/facebook/biddingkit/abtesting/ABTestSegment;)Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;
    .locals 2

    iget-object v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    invoke-interface {p1}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/auction/Auction$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-direct {v0}, Lcom/facebook/biddingkit/auction/Auction$Builder;-><init>()V

    iget-object v1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    invoke-interface {p1}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public addBidder(Lcom/facebook/biddingkit/abtesting/ABTestSegment;Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;
    .locals 1
    .param p2    # Lcom/facebook/biddingkit/bidders/Bidder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->addSegment(Lcom/facebook/biddingkit/abtesting/ABTestSegment;)Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;

    iget-object v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    invoke-interface {p1}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/biddingkit/auction/Auction$Builder;

    invoke-virtual {p1, p2}, Lcom/facebook/biddingkit/auction/Auction$Builder;->addBidder(Lcom/facebook/biddingkit/bidders/Bidder;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    return-object p0
.end method

.method public build()Lcom/facebook/biddingkit/abtesting/ABAuction;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAuctionExperiments:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/biddingkit/auction/Auction$Builder;

    iget-object v4, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    invoke-interface {v4}, Lcom/facebook/biddingkit/abtesting/ABTest;->getCurrent()Lcom/facebook/biddingkit/abtesting/ABTestSegment;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/biddingkit/auction/Auction$Builder;->setTestSegment(Ljava/lang/String;)Lcom/facebook/biddingkit/auction/Auction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/biddingkit/auction/Auction$Builder;->build()Lcom/facebook/biddingkit/auction/Auction;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/biddingkit/abtesting/ABAuction;

    iget-object p0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/facebook/biddingkit/abtesting/ABAuction;-><init>(Lcom/facebook/biddingkit/abtesting/ABTest;Ljava/util/Map;Lcom/facebook/biddingkit/abtesting/ABAuction$1;)V

    return-object v1
.end method
