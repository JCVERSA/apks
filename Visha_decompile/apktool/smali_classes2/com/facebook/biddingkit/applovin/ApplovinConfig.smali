.class Lcom/facebook/biddingkit/applovin/ApplovinConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BID_URL:Ljava/lang/String; = "bid_url"

.field static final DEFAULT_BID_URL:Ljava/lang/String; = "https://a.applovin.com/header/facebook"

.field private static final ROOT:Ljava/lang/String; = "applovin"

.field private static final TAG:Ljava/lang/String; = "ApplovinConfig"


# instance fields
.field private mBidUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "bid_url"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "https://a.applovin.com/header/facebook"

    iput-object v1, p0, Lcom/facebook/biddingkit/applovin/ApplovinConfig;->mBidUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ApplovinConfig"

    if-eqz v1, :cond_0

    const-string p0, "Empty configuration"

    invoke-static {v2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "applovin"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/applovin/ApplovinConfig;->mBidUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to parse configuration."

    invoke-static {v2, p1, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getBidUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/applovin/ApplovinConfig;->mBidUrl:Ljava/lang/String;

    return-object p0
.end method
