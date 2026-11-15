.class public Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteBidsBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/remote/RemoteAuctionResult;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const-string p2, "RemoteBidsBuilder"

    const-string v2, ""

    if-nez p0, :cond_0

    const-string p0, "Got empty http response"

    invoke-static {p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result v3

    invoke-static {v3, v0, v1}, Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;->getBidderLogMessage(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bid response from Server: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;->parseBidResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;->parseNotificationDataResponse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v3, "Failed to parse response json."

    invoke-static {p2, v3, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p0

    invoke-static {p0}, Lcom/facebook/biddingkit/remote/RemoteBidsBuilder;->getBidderErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p0, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/facebook/biddingkit/remote/RemoteAuctionResult;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    return-object p0
.end method

.method private static getBidderErrorMessage(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBidderLogMessage(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bid request for remote finished. HTTP status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Time taken: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseBidResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/biddingkit/remote/RemoteBid;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :try_start_0
    const-string v1, "bids"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "is_bidder"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/facebook/biddingkit/remote/RemoteBid;

    invoke-direct {v3, v2}, Lcom/facebook/biddingkit/remote/RemoteBid;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    const-string v1, "RemoteBidsBuilder"

    const-string v2, "Failed to parse remote bid response"

    invoke-static {v1, v2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static parseNotificationDataResponse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "notification_data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
