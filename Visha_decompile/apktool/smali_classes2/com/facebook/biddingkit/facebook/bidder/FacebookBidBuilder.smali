.class Lcom/facebook/biddingkit/facebook/bidder/FacebookBidBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_HEADER_NAME:Ljava/lang/String; = "x-fb-an-errors"

.field private static final REQUEST_ID_HEADER_NAME:Ljava/lang/String; = "x-fb-an-request-id"

.field private static final TAG:Ljava/lang/String; = "FacebookBidBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/facebook/biddingkit/http/client/HttpResponse;J)Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
    .locals 4

    const-string v0, "FacebookBidBuilder"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Got empty http response"

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3, p1, p2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidBuilder;->getBidderLogMessage(ILjava/util/Map;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bid response from Facebook: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;

    invoke-direct {v1, p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;-><init>(Lcom/facebook/biddingkit/http/client/HttpResponse;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBidBuilder;->getBidderErrorMessage(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private static getBidderErrorMessage(ILjava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "x-fb-an-errors"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static getBidderLogMessage(ILjava/util/Map;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bid request for facebook finished. HTTP status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo p0, "x-fb-an-request-id"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Time taken: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
