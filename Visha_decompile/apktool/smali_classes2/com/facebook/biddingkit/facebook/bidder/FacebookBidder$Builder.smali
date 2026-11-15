.class public Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field protected static final IMPRESSION_ID:Ljava/lang/String; = "FB Ad Impression"


# instance fields
.field private mAdFormat:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAppId:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

.field private mBidToken:Ljava/lang/String;

.field private mBidUrlOverride:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCoppa:Z

.field private mIsStandalone:Z

.field private mLimitedDataUse:Z

.field private mPlacementId:Ljava/lang/String;

.field private mPlatformId:Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;Ljava/lang/String;)V
    .locals 1
    .param p3    # Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mPlacementId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mBidToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mPlatformId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mBidUrlOverride:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/biddingkit/bidders/Bidder;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mIsStandalone:Z

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;)V

    return-object v0
.end method

.method public buildWithNotifier()Lcom/facebook/biddingkit/bidders/BidderWithNotifier;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mIsStandalone:Z

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;)V

    return-object v0
.end method

.method public getAdFormat()Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/FacebookAdBidFormat;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionType()Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-object p0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mBidToken:Ljava/lang/String;

    return-object p0
.end method

.method public getBiddingKitSource()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mIsStandalone:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "standalone"

    goto :goto_0

    :cond_0
    const-string p0, "auction"

    :goto_0
    return-object p0
.end method

.method public getCoppa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mCoppa:Z

    return p0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 0

    const-string p0, "FB Ad Impression"

    return-object p0
.end method

.method public getLimitedDataUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mLimitedDataUse:Z

    return p0
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

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mPlatformId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAppId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getTestMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mTestMode:Z

    return p0
.end method

.method public getTimeoutMS()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public setAuctionType(Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-object p0
.end method

.method public setBidUrlOverride(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mBidUrlOverride:Ljava/lang/String;

    return-object p0
.end method

.method public setCoppa(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mCoppa:Z

    return-object p0
.end method

.method public setLimitedDataUse(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mLimitedDataUse:Z

    return-object p0
.end method

.method public setPlatformId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mPlatformId:Ljava/lang/String;

    return-object p0
.end method

.method public setTestMode(Z)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->mTestMode:Z

    return-object p0
.end method
