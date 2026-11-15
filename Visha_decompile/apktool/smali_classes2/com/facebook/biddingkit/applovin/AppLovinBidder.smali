.class public Lcom/facebook/biddingkit/applovin/AppLovinBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;
    }
.end annotation


# static fields
.field public static NAME:Ljava/lang/String; = "APPLOVIN_BIDDER"

.field private static final TAG:Ljava/lang/String; = "AppLovinBidder"


# instance fields
.field protected final mBidderData:Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

.field private final mConfiguration:Lcom/facebook/biddingkit/applovin/ApplovinConfig;

.field private mNotifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/applovin/ApplovinNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mBidderData:Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mNotifiers:Ljava/util/Map;

    .line 5
    new-instance p1, Lcom/facebook/biddingkit/applovin/ApplovinConfig;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/biddingkit/applovin/ApplovinConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mConfiguration:Lcom/facebook/biddingkit/applovin/ApplovinConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;Lcom/facebook/biddingkit/applovin/AppLovinBidder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/applovin/AppLovinBidder;-><init>(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)V

    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mBidderData:Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mBidderData:Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

    invoke-static {p0}, Lcom/facebook/biddingkit/applovin/ApplovinBidderPayloadBuilder;->getPayload(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)Lorg/json/JSONObject;

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
    .locals 1
    .param p2    # Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "AppLovinBidder"

    if-nez p2, :cond_0

    const-string p0, "Received null winner entry to notify in display winner"

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mNotifiers:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Applovin Bidder did not get to initialize notifier"

    invoke-static {v0, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestBid(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/Bid;
    .locals 5

    iget-object v0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mNotifiers:Ljava/util/Map;

    new-instance v1, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;

    invoke-direct {v1}, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mConfiguration:Lcom/facebook/biddingkit/applovin/ApplovinConfig;

    invoke-virtual {v2}, Lcom/facebook/biddingkit/applovin/ApplovinConfig;->getBidUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mBidderData:Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;

    invoke-virtual {v3}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getTimeoutMS()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->getPayload(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/biddingkit/http/util/RequestSender;->post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/facebook/biddingkit/applovin/ApplovinBidBuilder;->get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/applovin/ApplovinBid;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mNotifiers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->mNotifiers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/applovin/ApplovinNotifier;->setBid(Lcom/facebook/biddingkit/applovin/ApplovinBid;)V

    goto :goto_0

    :cond_0
    const-string p0, "AppLovinBidder"

    const-string p1, "Failed to find bidder in notifiers list"

    invoke-static {p0, p1}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
