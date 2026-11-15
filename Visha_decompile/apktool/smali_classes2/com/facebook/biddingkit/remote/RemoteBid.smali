.class public Lcom/facebook/biddingkit/remote/RemoteBid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/gen/Bid;


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteBid"


# instance fields
.field private mBidderName:Ljava/lang/String;

.field private mCurrency:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;

.field private mPlacementId:Ljava/lang/String;

.field private mPriceCents:D


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException",
            "BadCatchBlock"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPriceCents:D

    const-string v2, ""

    iput-object v2, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPayload:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPlacementId:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mBidderName:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mCurrency:Ljava/lang/String;

    :try_start_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/biddingkit/gen/biddingConstants;->bidderNameFromRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mBidderName:Ljava/lang/String;

    const-string v2, "price"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPriceCents:D

    const-string v0, "sdk_rendering_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bid_payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPayload:Ljava/lang/String;

    const-string v0, "cur"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mCurrency:Ljava/lang/String;

    const-string v0, "adunit_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPlacementId:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mBidderName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "RemoteBid"

    const-string v0, "Failed to parse bid response body"

    invoke-static {p1, v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getBidderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mBidderName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPlacementId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/facebook/biddingkit/remote/RemoteBid;->mPriceCents:D

    return-wide v0
.end method
