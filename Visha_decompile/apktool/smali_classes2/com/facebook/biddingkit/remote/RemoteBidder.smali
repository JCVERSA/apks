.class public Lcom/facebook/biddingkit/remote/RemoteBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/Bidder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0x3e8

.field private static final ENDPOINT:Ljava/lang/String; = "/bks/auction"

.field public static final NAME:Ljava/lang/String; = "REMOTE_BIDDER"

.field private static final TAG:Ljava/lang/String; = "RemoteBidder"


# instance fields
.field protected final mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

.field private final mRemoteNotifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/biddingkit/remote/RemoteNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mRemoteNotifiers:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;Lcom/facebook/biddingkit/remote/RemoteBidder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/biddingkit/remote/RemoteBidder;-><init>(Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;)V

    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    const-string p0, "REMOTE_BIDDER"

    return-object p0
.end method

.method public getPayload(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    invoke-virtual {v0, p1}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->setAuctionId(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    invoke-static {p0}, Lcom/facebook/biddingkit/remote/RemoteBidderPayloadBuilder;->getPayload(Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;Ljava/lang/String;)V
    .locals 1
    .param p2    # Lcom/facebook/biddingkit/waterfall/WaterfallEntry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "RemoteBidder"

    if-nez p2, :cond_0

    const-string p0, "Received null winner entry to notify in display winner"

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mRemoteNotifiers:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Remote Bidder did not get to initialize notifier"

    invoke-static {v0, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/biddingkit/remote/RemoteNotifier;->notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V

    :goto_0
    return-void
.end method

.method public requestBids(Ljava/lang/String;)Lcom/facebook/biddingkit/remote/RemoteAuctionResult;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    invoke-virtual {v3}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->getAuctionUrlBase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/bks/auction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/facebook/biddingkit/remote/RemoteBidder;->getPayload(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v4, v3}, Lcom/facebook/biddingkit/http/util/RequestSender;->post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;->get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/remote/RemoteAuctionResult;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mRemoteNotifiers:Ljava/util/Map;

    new-instance v2, Lcom/facebook/biddingkit/remote/RemoteNotifier;

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBidder;->mBidderData:Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;

    invoke-virtual {p0}, Lcom/facebook/biddingkit/remote/RemoteBidder$Builder;->getAuctionUrlBase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;->getNotificationData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/facebook/biddingkit/remote/RemoteNotifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
