.class Lcom/facebook/biddingkit/chartboost/ChartboostBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/gen/Bid;


# static fields
.field private static final TAG:Ljava/lang/String; = "ChartboostBid"


# instance fields
.field private mCurrency:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCpmCents:D


# direct methods
.method public constructor <init>(Lcom/facebook/biddingkit/http/client/HttpResponse;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPayload:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPlacementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mCurrency:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "seatbid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "bid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/biddingkit/http/client/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPayload:Ljava/lang/String;

    const-string p1, "price"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPriceCpmCents:D

    iput-object v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPlacementId:Ljava/lang/String;

    const-string p1, "cur"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mCurrency:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ChartboostBid"

    const-string v0, "Failed to parse response body"

    invoke-static {p1, v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/facebook/biddingkit/chartboost/ChartboostBidder;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/chartboost/ChartboostBid;->mPriceCpmCents:D

    return-wide v0
.end method
