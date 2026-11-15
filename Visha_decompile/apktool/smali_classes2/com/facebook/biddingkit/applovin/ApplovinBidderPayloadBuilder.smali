.class Lcom/facebook/biddingkit/applovin/ApplovinBidderPayloadBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplovinBidderPayloadBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFormatField(Lcom/facebook/biddingkit/gen/AppLovinAdFormat;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/biddingkit/utils/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getHeight(Z)I

    move-result v1

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/biddingkit/utils/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getWidth(Z)I

    move-result v1

    const-string/jumbo v2, "w"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getRewarded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "type"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getRewarded()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "ext"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method private static getImpFieldFromFormat(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getAdFormat()Lcom/facebook/biddingkit/gen/AppLovinAdFormat;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getImpressionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getInstl()I

    move-result v1

    const-string v2, "instl"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getFormatLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getFormatLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/biddingkit/applovin/ApplovinBidderPayloadBuilder;->getFormatField(Lcom/facebook/biddingkit/gen/AppLovinAdFormat;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getSecondFormatLabelLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getSecondFormatLabelLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/AppLovinAdFormat;->getSecondFormatLabelLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/biddingkit/applovin/ApplovinBidderPayloadBuilder;->getFormatField(Lcom/facebook/biddingkit/gen/AppLovinAdFormat;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static getPayload(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "ApplovinBidderPayloadBuilder"

    const-string v1, "id"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getAuctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "imp"

    invoke-static {p0}, Lcom/facebook/biddingkit/applovin/ApplovinBidderPayloadBuilder;->getImpFieldFromFormat(Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "publisher"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "lmt"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getLmt()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "regs"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "coppa"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getCoppa()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "at"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getAuctionType()Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->getValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "tmax"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getTimeoutMS()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ext"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "platformid"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getPlatformId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "user"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "buyeruid"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/applovin/AppLovinBidder$Builder;->getBidToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Creating Applovin Bidder Payload failed"

    invoke-static {v0, v1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bid request for Applovin: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
