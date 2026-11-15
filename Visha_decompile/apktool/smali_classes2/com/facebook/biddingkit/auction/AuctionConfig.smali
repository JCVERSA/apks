.class Lcom/facebook/biddingkit/auction/AuctionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_TIMEOUT_MS:I = 0x2710

.field private static final ROOT:Ljava/lang/String; = "auction"

.field private static final TAG:Ljava/lang/String; = "AuctionConfig"

.field private static final TIMEOUT_TAG:Ljava/lang/String; = "timeout_ms"


# instance fields
.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "timeout_ms"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x2710

    iput v1, p0, Lcom/facebook/biddingkit/auction/AuctionConfig;->mTimeoutMs:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "AuctionConfig"

    if-eqz v1, :cond_0

    const-string p0, "Empty configuration"

    invoke-static {v2, p0}, Lcom/facebook/biddingkit/logging/BkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "auction"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/biddingkit/auction/AuctionConfig;->mTimeoutMs:I
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
.method public getTimeoutMs()I
    .locals 0

    iget p0, p0, Lcom/facebook/biddingkit/auction/AuctionConfig;->mTimeoutMs:I

    return p0
.end method
