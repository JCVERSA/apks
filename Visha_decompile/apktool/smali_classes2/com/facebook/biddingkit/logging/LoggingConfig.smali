.class Lcom/facebook/biddingkit/logging/LoggingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CYCLE_SEPARATION_TAG:Ljava/lang/String; = "cycle_separation_ms"

.field static final DEFAULT_CYCLE_SEPARATION_MS:I = 0x3a98

.field static final DEFAULT_DISPATCHER_URL:Ljava/lang/String; = "https://www.facebook.com/audiencenetwork/bidding_kit_logging"

.field static final DEFAULT_NETWORK_WAIT_ON_FAILURE_MS:I = 0xea60

.field private static final DISPATCHER_URL_TAG:Ljava/lang/String; = "dispatcher_url"

.field private static final NETWORK_WAIT_ON_FAILURE_TAG:Ljava/lang/String; = "network_wait_on_failure_ms"

.field private static final ROOT:Ljava/lang/String; = "logging"

.field private static final TAG:Ljava/lang/String; = "LoggingConfig"


# instance fields
.field private mCycleSparationMs:I

.field private mDispatcherUrl:Ljava/lang/String;

.field private mNetworkErrorCycleSparationMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-string v0, "dispatcher_url"

    const-string v1, "network_wait_on_failure_ms"

    const-string v2, "cycle_separation_ms"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x3a98

    iput v3, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mCycleSparationMs:I

    const v3, 0xea60

    iput v3, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mNetworkErrorCycleSparationMs:I

    const-string v3, "https://www.facebook.com/audiencenetwork/bidding_kit_logging"

    iput-object v3, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mDispatcherUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "logging"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mCycleSparationMs:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mNetworkErrorCycleSparationMs:I

    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mDispatcherUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "LoggingConfig"

    const-string v0, "Failed to parse configuration."

    invoke-static {p1, v0, p0}, Lcom/facebook/biddingkit/logging/BkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getCycleSeparationMs()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mCycleSparationMs:I

    return p0
.end method

.method public getDispatcherUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mDispatcherUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkErrorCycleSparationMs()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/logging/LoggingConfig;->mNetworkErrorCycleSparationMs:I

    return p0
.end method
