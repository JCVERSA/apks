.class Lcom/facebook/biddingkit/remote/RemoteNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/bidders/Notifier;


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0x7d0

.field private static final ENDPOINT:Ljava/lang/String; = "/bks/notifyDisplay"

.field private static final TAG:Ljava/lang/String; = "RemoteNotifier"


# instance fields
.field private final mAuctionId:Ljava/lang/String;

.field private final mNotificationData:Ljava/lang/String;

.field private final mRemoteAuctionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mAuctionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mRemoteAuctionUrl:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mNotificationData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildPayload(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "RemoteNotifier"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "auction_id"

    iget-object v3, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mAuctionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "notification_data"

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mNotificationData:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "clearing_price_cents"

    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getCPMCents()D

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p0, "name"

    invoke-interface {p1}, Lcom/facebook/biddingkit/waterfall/WaterfallEntry;->getEntryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to build notification payload"

    invoke-static {v0, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notifying payload: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public notifyBidderWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/Waterfall;)V
    .locals 0

    return-void
.end method

.method public notifyDisplayWinner(Ljava/lang/String;Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteNotifier;->mRemoteAuctionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bks/notifyDisplay"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/facebook/biddingkit/remote/RemoteNotifier;->buildPayload(Lcom/facebook/biddingkit/waterfall/WaterfallEntry;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x7d0

    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/http/util/RequestSender;->post(Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpResponse;

    return-void
.end method
