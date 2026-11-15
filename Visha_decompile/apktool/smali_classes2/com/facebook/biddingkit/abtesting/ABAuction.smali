.class public Lcom/facebook/biddingkit/abtesting/ABAuction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/abtesting/ABAuction$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ABAuction"


# instance fields
.field private mAbAuctionCalled:Z

.field private final mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

.field private final mAuctionExperiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/auction/Auction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/biddingkit/abtesting/ABTest;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/biddingkit/abtesting/ABTest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/auction/Auction;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbAuctionCalled:Z

    .line 4
    iput-object p2, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAuctionExperiments:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/biddingkit/abtesting/ABTest;Ljava/util/Map;Lcom/facebook/biddingkit/abtesting/ABAuction$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/abtesting/ABAuction;-><init>(Lcom/facebook/biddingkit/abtesting/ABTest;Ljava/util/Map;)V

    return-void
.end method

.method private internalStartABAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbAuctionCalled:Z

    const-string v1, "ABAuction"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAuctionExperiments:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    invoke-interface {v2}, Lcom/facebook/biddingkit/abtesting/ABTest;->getCurrent()Lcom/facebook/biddingkit/abtesting/ABTestSegment;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/auction/Auction;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/facebook/biddingkit/auction/Auction;->startAuction(Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/biddingkit/auction/Auction;->startRemoteAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Called startABAuction for unknown experiment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    invoke-interface {p2}, Lcom/facebook/biddingkit/abtesting/ABTest;->getCurrent()Lcom/facebook/biddingkit/abtesting/ABTestSegment;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbAuctionCalled:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should not call startABAuction more than once on a given instance. Create a new instance of ABAuction and run startABAuction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p1, "Failed AbAuction: "

    invoke-static {v1, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public notifyDisplayWinner(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAuctionExperiments:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    invoke-interface {v1}, Lcom/facebook/biddingkit/abtesting/ABTest;->getCurrent()Lcom/facebook/biddingkit/abtesting/ABTestSegment;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/biddingkit/abtesting/ABTestSegment;->getSegment()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/biddingkit/auction/Auction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/auction/Auction;->notifyDisplayWinner(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Called notifyDisplayWinner for unknown experiment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/facebook/biddingkit/abtesting/ABAuction;->mAbTest:Lcom/facebook/biddingkit/abtesting/ABTest;

    invoke-interface {p0}, Lcom/facebook/biddingkit/abtesting/ABTest;->getCurrent()Lcom/facebook/biddingkit/abtesting/ABTestSegment;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ABAuction"

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startABAuction(Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/biddingkit/abtesting/ABAuction;->internalStartABAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    return-void
.end method

.method public startRemoteABAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/biddingkit/abtesting/ABAuction;->internalStartABAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For running auction remotely, you have to supply the base URL of your bidding server that runs the auction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "ABAuction"

    const-string p2, "Failed remote ABAuction."

    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
