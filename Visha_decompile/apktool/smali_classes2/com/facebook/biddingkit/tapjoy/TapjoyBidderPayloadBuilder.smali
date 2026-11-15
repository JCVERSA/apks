.class Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyBidderPayloadBuilder"

.field private static isTestMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    return-void
.end method

.method private static getFormatField(Lcom/facebook/biddingkit/gen/TapjoyAdFormat;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->isRewarded()I

    move-result v2

    const-string v3, "rewarded"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isSkippable"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->isSkippable()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "ext"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getIdfa()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/biddingkit/utils/Utils;->getIdfa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImpFieldFromFormat(Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getAdFormat()Lcom/facebook/biddingkit/gen/TapjoyAdFormat;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getImpressionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "displaymanager"

    const-string v3, "facebook"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0}, Lcom/facebook/biddingkit/gen/TapjoyAdFormat;->getFormatLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getFormatField(Lcom/facebook/biddingkit/gen/TapjoyAdFormat;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static getModel()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/biddingkit/bridge/BiddingKit;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPayload(Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "TapjoyBidderPayloadBuilder"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getAuctionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "imp"

    invoke-static {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getImpFieldFromFormat(Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "bundle"

    invoke-static {}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ext"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sdk_key"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "placement_name"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getPlacementId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getBidToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "ifa"

    invoke-static {}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getIdfa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "lmt"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getLmt()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "make"

    invoke-static {}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "model"

    invoke-static {}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "os"

    const-string v5, "Android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "osv"

    invoke-static {}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->getRelease()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "regs"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "coppa"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getCoppa()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "at"

    sget-object v3, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->FIRST_PRICE:Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;

    invoke-virtual {v3}, Lcom/facebook/biddingkit/gen/FBAdBidAuctionType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "test"

    invoke-virtual {p0}, Lcom/facebook/biddingkit/tapjoy/TapjoyBidder$Builder;->getTestMode()Z

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Creating Tapjoy Bidder Payload failed"

    invoke-static {v0, v2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bid request for Tapjoy: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getRelease()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/facebook/biddingkit/tapjoy/TapjoyBidderPayloadBuilder;->isTestMode:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
