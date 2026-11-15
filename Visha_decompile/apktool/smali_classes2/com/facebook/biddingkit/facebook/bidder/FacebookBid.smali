.class Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/gen/Bid;
.implements Lcom/facebook/biddingkit/gen/BidWithNotification;


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookBid"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mLurl:Ljava/lang/String;

.field private mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCpmCents:D

.field private mStatusCode:Lcom/facebook/biddingkit/http/util/HttpStatusCode;


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/http/client/HttpResponse;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "seatbid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "bid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "lurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    const-string v1, "adm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPriceCpmCents:D

    new-instance p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "resolved_placement_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    const-string p1, "cur"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FacebookBid"

    const-string v0, "Failed to parse response body"

    invoke-static {p1, v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    const-string p0, "FACEBOOK_BIDDER"

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getLurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mLurl:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mPriceCpmCents:D

    return-wide v0
.end method

.method public getStatusCode()Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mStatusCode:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object p0
.end method

.method public notifyLoss()V
    .locals 4

    iget-object p0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "OTHER"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    :cond_0
    return-void
.end method

.method public notifyWin()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getBidderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->getPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;->notifyWinner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Z)V

    :cond_0
    return-void
.end method

.method public setNotifier(Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/FacebookBid;->mNotifier:Lcom/facebook/biddingkit/facebook/bidder/FacebookNotifier;

    return-void
.end method
