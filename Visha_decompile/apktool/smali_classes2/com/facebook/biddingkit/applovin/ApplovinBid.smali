.class Lcom/facebook/biddingkit/applovin/ApplovinBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/gen/Bid;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplovinBid"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mLurl:Ljava/lang/String;

.field private mNurl:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCpmCents:D


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/http/client/HttpResponse;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPayload:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPlacementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mCurrency:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mLurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mNurl:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "seatbid"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

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

    iput-object v1, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mLurl:Ljava/lang/String;

    const-string v1, "nurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mNurl:Ljava/lang/String;

    const-string v1, "adm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPayload:Ljava/lang/String;

    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPriceCpmCents:D

    iput-object v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPlacementId:Ljava/lang/String;

    const-string p1, "USD"

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mCurrency:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ApplovinBid"

    const-string v0, "Failed to parse response body"

    invoke-static {p1, v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/facebook/biddingkit/applovin/AppLovinBidder;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getLurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mLurl:Ljava/lang/String;

    return-object p0
.end method

.method public getNurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mNurl:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/applovin/ApplovinBid;->mPriceCpmCents:D

    return-wide v0
.end method
