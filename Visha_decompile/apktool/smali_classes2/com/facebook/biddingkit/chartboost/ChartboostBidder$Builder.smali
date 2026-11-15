.class public Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/chartboost/ChartboostBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field protected static final IMPRESSION_ID:Ljava/lang/String; = "FB Ad Impression"


# instance fields
.field private mAdFormat:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

.field private mAppId:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mCategories:[Ljava/lang/String;

.field private mConsent:Z

.field private mCoppa:Z

.field private final mDisplayManagerVersion:Ljava/lang/String;

.field private mGdpr:Z

.field private mMaxVideoDuration:I

.field private mMinVideoDuration:I

.field private mPlacementId:Ljava/lang/String;

.field private mPublisherId:Ljava/lang/String;

.field private mPublisherName:Ljava/lang/String;

.field private mSkippable:Z

.field private mStoreUrl:Ljava/lang/String;

.field private mTestMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/ChartboostAdFormat;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMinVideoDuration:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMaxVideoDuration:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mSkippable:Z

    iput-boolean v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mConsent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mGdpr:Z

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPlacementId:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    iput-object p6, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mStoreUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPublisherId:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mCategories:[Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPublisherName:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mDisplayManagerVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/biddingkit/bidders/Bidder;
    .locals 1

    new-instance v0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;

    invoke-direct {v0, p0}, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;-><init>(Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;)V

    return-object v0
.end method

.method public getAdFormat()Lcom/facebook/biddingkit/gen/ChartboostAdFormat;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/ChartboostAdFormat;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public getCategories()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public getConsent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mConsent:Z

    return p0
.end method

.method public getCoppa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mCoppa:Z

    return p0
.end method

.method public getDisplayManagerVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mDisplayManagerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getGdpr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mGdpr:Z

    return p0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 0

    const-string p0, "FB Ad Impression"

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

.method public getMaxVideoDuration()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMaxVideoDuration:I

    return p0
.end method

.method public getMinVideoDuration()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMinVideoDuration:I

    return p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPublisherId:Ljava/lang/String;

    return-object p0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mPublisherName:Ljava/lang/String;

    return-object p0
.end method

.method public getSkippable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mSkippable:Z

    return p0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mStoreUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTestMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mTestMode:Z

    return p0
.end method

.method public getTimeoutMS()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public setConsent(Z)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mConsent:Z

    return-object p0
.end method

.method public setCoppa(Z)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mCoppa:Z

    return-object p0
.end method

.method public setGdpr(Z)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mGdpr:Z

    return-object p0
.end method

.method public setMaxVideoDuration(I)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMaxVideoDuration:I

    return-object p0
.end method

.method public setMinVideoDuration(I)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mMinVideoDuration:I

    return-object p0
.end method

.method public setSkippable(Z)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mSkippable:Z

    return-object p0
.end method

.method public setTestMode(Z)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->mTestMode:Z

    return-object p0
.end method
