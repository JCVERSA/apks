.class public Lcom/facebook/biddingkit/auction/Auction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/auction/Auction$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Auction"


# instance fields
.field private auctionCalled:Z

.field private final mAuctionId:Ljava/lang/String;

.field private mBidderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Lcom/facebook/biddingkit/auction/AuctionConfig;

.field private mRemoteBidder:Lcom/facebook/biddingkit/remote/RemoteBidder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTestSegment:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/facebook/biddingkit/auction/Auction;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/bidders/Bidder;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/facebook/biddingkit/auction/Auction;->auctionCalled:Z

    .line 5
    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction;->mBidderList:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/facebook/biddingkit/utils/RandomString;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/facebook/biddingkit/auction/Auction;->mTestSegment:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/facebook/biddingkit/auction/AuctionConfig;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getConfiguration()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/biddingkit/auction/AuctionConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction;->mConfiguration:Lcom/facebook/biddingkit/auction/AuctionConfig;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/facebook/biddingkit/auction/Auction$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/biddingkit/auction/Auction;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/facebook/biddingkit/auction/Auction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mBidderList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/facebook/biddingkit/auction/Auction;)Lcom/facebook/biddingkit/auction/AuctionConfig;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mConfiguration:Lcom/facebook/biddingkit/auction/AuctionConfig;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/facebook/biddingkit/auction/Auction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mTestSegment:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/facebook/biddingkit/auction/Auction;)Lcom/facebook/biddingkit/remote/RemoteBidder;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mRemoteBidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/auction/Auction;->notifyDisplayWinnerFromClient(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/auction/Auction;->notifyDisplayWinnerFromServer(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    return-void
.end method

.method private notifyDisplayWinnerFromClient(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction;->mBidderList:Ljava/util/List;

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

    iget-object v4, p0, Lcom/facebook/biddingkit/auction/Auction;->mTestSegment:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    invoke-interface {v3, v4, p1, v5}, Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V

    :cond_1
    instance-of v2, v2, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getDefaultInternalNotifier(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/Notifier;

    move-result-object v0

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mTestSegment:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/facebook/biddingkit/bidders/Notifier;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    :cond_3
    return-void
.end method

.method private notifyDisplayWinnerFromServer(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction;->mRemoteBidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    iget-object v1, p0, Lcom/facebook/biddingkit/auction/Auction;->mTestSegment:Ljava/lang/String;

    iget-object p0, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/facebook/biddingkit/remote/RemoteBidder;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyDisplayWinner(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/biddingkit/auction/Auction$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/biddingkit/auction/Auction$3;-><init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAuction(Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/biddingkit/auction/Auction;->auctionCalled:Z

    const-string v1, "Auction"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auction started. Auction ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/biddingkit/auction/Auction$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/biddingkit/auction/Auction$1;-><init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/biddingkit/auction/Auction;->auctionCalled:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should not call startAuction more than once on a given instance. Create a new instance of Auction and run startAuction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p1, "Failed to get AdvertisingIdClient: "

    invoke-static {v1, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public startRemoteAuction(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Auction"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/auction/Auction;->auctionCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/biddingkit/auction/Auction;->auctionCalled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote auction started. Auction ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/biddingkit/auction/Auction;->mAuctionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    invoke-direct {v0}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->setAuctionUrlBase(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/biddingkit/auction/Auction;->mBidderList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->setBidders(Ljava/util/List;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->build()Lcom/facebook/biddingkit/bidders/Bidder;

    move-result-object p1

    check-cast p1, Lcom/facebook/biddingkit/remote/RemoteBidder;

    iput-object p1, p0, Lcom/facebook/biddingkit/auction/Auction;->mRemoteBidder:Lcom/facebook/biddingkit/remote/RemoteBidder;

    sget-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/biddingkit/auction/Auction$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/biddingkit/auction/Auction$2;-><init>(Lcom/facebook/biddingkit/auction/Auction;Lcom/facebook/biddingkit/remote/RemoteBidder;Lcom/facebook/biddingkit/waterfall/Waterfall;Lcom/facebook/biddingkit/auction/AuctionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should not call startAuction or startRemoteAuction more than once on a given instance. Create a new instance of Auction and run startRemoteAuction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p1, "Multiple attempts to starting auction: "

    invoke-static {v1, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For running auction remotely, you have to supply the base URL of your bidding server that runs the auction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "Failed to start remote auction: "

    invoke-static {v1, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
