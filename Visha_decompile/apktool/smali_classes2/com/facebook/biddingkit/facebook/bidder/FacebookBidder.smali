.class public Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/InternalAuctionBidderWithNotifier;
.implements Lcom/facebook/biddingkit/bidders/BidderWithNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;
    }
.end annotation


# static fields
.field public static NAME:Ljava/lang/String; = "FACEBOOK_BIDDER"

.field private static final TAG:Ljava/lang/String; = "FacebookBidder"


# instance fields
.field protected final mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

.field protected final mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

.field private mFacebookNotifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    .line 5
    new-instance p1, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getFacebookBid()Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/facebook/biddingkit/bidders/BidResponseCallback;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->handleBidCallback(Lcom/facebook/biddingkit/bidders/BidResponseCallback;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    return-void
.end method

.method public static getDefaultInternalNotifier(Ljava/lang/String;)Lcom/facebook/biddingkit/bidders/Notifier;
    .locals 3

    new-instance v0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getConfiguration()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Ljava/lang/String;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V

    return-object v0
.end method

.method private getFacebookBid()Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-static {v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-static {v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->access$000(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-virtual {v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;->getBidUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-virtual {v3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->getTimeoutMS()I

    move-result v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getPayload(J)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/facebook/biddingkit/http/util/RequestSender;->post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidBuilder;->get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object p0

    return-object p0
.end method

.method private getPayload(J)Lorg/json/JSONObject;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-static {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidderPayloadBuilder;->getPayload(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static handleBidCallback(Lcom/facebook/biddingkit/bidders/BidResponseCallback;Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Failed to get a bid"

    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/bidders/BidResponseCallback;->handleBidResponseFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    sget-object v1, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get a bid with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getStatusCode()Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " http status code"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/bidders/BidResponseCallback;->handleBidResponseFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Lcom/facebook/biddingkit/bidders/BidResponseCallback;->handleBidResponse(Lcom/facebook/biddingkit/gen/BidWithNotification;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getPayload(J)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/facebook/biddingkit/waterfall/Waterfall;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FacebookBidder"

    if-nez p2, :cond_0

    const-string p0, "Received null waterfall to notify in bidder winner"

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Facebook Bidder did not get to initialize notifier"

    invoke-static {v0, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "FacebookBidder"

    if-nez p2, :cond_0

    const-string p0, "Received null winner entry to notify in display winner"

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Facebook Bidder did not get to initialize notifier"

    invoke-static {v0, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public requestBid(Ljava/lang/String;)Lcom/facebook/biddingkit/gen/Bid;
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    iget-object v2, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mBidderData:Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;

    iget-object v3, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mConfiguration:Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;

    invoke-direct {v1, v2, v3}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$Builder;Lcom/facebook/biddingkit/facebook/bidder/FacebookConfig;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->getFacebookBid()Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;->mFacebookNotifiers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->setFacebookBid(Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;)V

    goto :goto_0

    :cond_0
    const-string p0, "FacebookBidder"

    const-string p1, "Failed to find bidder in notifiers list"

    invoke-static {p0, p1}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public retrieveBidWithNotificationCompleted(Lcom/facebook/biddingkit/bidders/BidResponseCallback;)V
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/utils/MultiAsyncTaskExecutor;->GENERAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder$1;-><init>(Lcom/facebook/biddingkit/facebook/bidder/FacebookBidder;Lcom/facebook/biddingkit/bidders/BidResponseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
