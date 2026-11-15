.class public Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/tapjoy/TapjoyBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final IMPRESSION_ID:Ljava/lang/String; = "Tapjoy Ad Impression"


# instance fields
.field private mAdFormat:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

.field private mAppId:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mBidToken:Ljava/lang/String;

.field private mCoppa:Z

.field private mPlacementId:Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/TapjoyAdFormat;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mPlacementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    iput-object p4, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mBidToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/biddingkit/bidders/Bidder;
    .locals 2

    new-instance v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder;-><init>(Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$1;)V

    return-object v0
.end method

.method public getAdFormat()Lcom/facebook/biddingkit/gen/TapjoyAdFormat;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mBidToken:Ljava/lang/String;

    return-object p0
.end method

.method public getCoppa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mCoppa:Z

    return p0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 0

    const-string p0, "Tapjoy Ad Impression"

    return-object p0
.end method

.method public getLmt()Z
    .locals 0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/biddingkit/utils/Utils;->getLimitAdTrackingEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getTestMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mTestMode:Z

    return p0
.end method

.method public getTimeoutMS()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public setCoppa(Z)Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mCoppa:Z

    return-object p0
.end method

.method public setTestMode(Z)Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->mTestMode:Z

    return-object p0
.end method
