.class public Lcom/facebook/biddingkit/remote/RemoteAuctionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/remote/RemoteBid;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatency:J

.field private final mNotificationData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/remote/RemoteBid;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mNotificationData:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mBids:Ljava/util/List;

    iput-wide p3, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mLatency:J

    return-void
.end method


# virtual methods
.method public getBids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/remote/RemoteBid;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mBids:Ljava/util/List;

    return-object p0
.end method

.method public getLatency()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mLatency:J

    return-wide v0
.end method

.method public getNotificationData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->mNotificationData:Ljava/lang/String;

    return-object p0
.end method
