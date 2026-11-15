.class Lcom/facebook/biddingkit/tapjoy/TapjoyBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/gen/Bid;


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyBid"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mLurl:Ljava/lang/String;

.field private mNurl:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCpmCents:D


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/http/client/HttpResponse;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPayload:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPlacementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mCurrency:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mLurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mNurl:Ljava/lang/String;

    :try_start_0
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

    const-string v1, "ext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "tj_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPayload:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPriceCpmCents:D

    const-string v1, "cur"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mCurrency:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPlacementId:Ljava/lang/String;

    const-string p2, "lurl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mLurl:Ljava/lang/String;

    const-string p2, "nurl"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mNurl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TapjoyBid"

    const-string p2, "Failed to parse response body"

    invoke-static {p1, p2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    const-string p0, "TAPJOY_BIDDER"

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getLurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mLurl:Ljava/lang/String;

    return-object p0
.end method

.method public getNurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mNurl:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/tapjoy/TapjoyBid;->mPriceCpmCents:D

    return-wide v0
.end method
