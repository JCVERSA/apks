.class public Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/applovin/AppLovinBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field protected static final IMPRESSION_ID:Ljava/lang/String; = "AppLovin Ad Impression"


# instance fields
.field private mAdFormat:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

.field private mAppId:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private final mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

.field private mBidToken:Ljava/lang/String;

.field private mCoppa:Z

.field private mPlatformId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/gen/AppLovinAdFormat;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mPlatformId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    iput-object p4, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mBidToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/biddingkit/bidders/Bidder;
    .locals 2

    new-instance v0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/applovin/AppLovinBidder;-><init>(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;Lcom/facebook/biddingkit/applovin/AppLovinBidder$1;)V

    return-object v0
.end method

.method public getAdFormat()Lcom/facebook/biddingkit/gen/AppLovinAdFormat;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAdFormat:Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public getAuctionType()Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAuctionType:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    return-object p0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mBidToken:Ljava/lang/String;

    return-object p0
.end method

.method public getCoppa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mCoppa:Z

    return p0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 0

    const-string p0, "AppLovin Ad Impression"

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

.method public getPlatformId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mPlatformId:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeoutMS()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mAuctionId:Ljava/lang/String;

    return-object p0
.end method

.method public setCoppa(Z)Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->mCoppa:Z

    return-object p0
.end method
