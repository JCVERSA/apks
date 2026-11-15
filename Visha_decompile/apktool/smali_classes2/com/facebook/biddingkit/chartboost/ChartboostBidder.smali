.class public Lcom/facebook/biddingkit/chartboost/ChartboostBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;
    }
.end annotation


# static fields
.field public static NAME:Ljava/lang/String; = "CHARTBOOST_BIDDER"

.field private static final TAG:Ljava/lang/String; = "ChartboostBidder"


# instance fields
.field protected final mBidderData:Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

.field private final mConfiguration:Lcom/facebook/biddingkit/chartboost/ChartboostConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mBidderData:Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

    new-instance p1, Lcom/facebook/biddingkit/chartboost/ChartboostConfig;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/biddingkit/chartboost/ChartboostConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mConfiguration:Lcom/facebook/biddingkit/chartboost/ChartboostConfig;

    return-void
.end method

.method private getPayload(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mBidderData:Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

    .line 4
    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mBidderData:Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

    invoke-static {p0, p2, p3}, Lcom/facebook/biddingkit/chartboost/ChartboostBidderPayloadBuilder;->getPayload(Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->getPayload(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/facebook/biddingkit/waterfall/Waterfall;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public requestBid(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/Bid;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mConfiguration:Lcom/facebook/biddingkit/chartboost/ChartboostConfig;

    invoke-virtual {v2}, Lcom/facebook/biddingkit/chartboost/ChartboostConfig;->getBidUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->mBidderData:Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;

    invoke-virtual {v3}, Lcom/facebook/biddingkit/chartboost/ChartboostBidder$Builder;->getTimeoutMS()I

    move-result v3

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->getPayload(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/facebook/biddingkit/http/util/RequestSender;->post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/facebook/biddingkit/chartboost/ChartboostBidBuilder;->get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/chartboost/ChartboostBid;

    move-result-object p0

    return-object p0
.end method
