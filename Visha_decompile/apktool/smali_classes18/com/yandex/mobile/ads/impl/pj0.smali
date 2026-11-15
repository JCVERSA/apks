.class public final Lcom/yandex/mobile/ads/impl/pj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q82;

.field private final b:Lcom/yandex/mobile/ads/impl/s02;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/q82;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/q82;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/s02;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/s02;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/pj0;-><init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/s02;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/s02;)V
    .locals 1

    .line 4
    const-string v0, "urlJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartCenterSettingsParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pj0;->a:Lcom/yandex/mobile/ads/impl/q82;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pj0;->b:Lcom/yandex/mobile/ads/impl/s02;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/xj0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "imageObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "w"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "h"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pj0;->a:Lcom/yandex/mobile/ads/impl/q82;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "url"

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "smartCenterSettings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pj0;->b:Lcom/yandex/mobile/ads/impl/s02;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "getJSONObject(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/s02;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/r02;

    move-result-object p0

    move-object v6, p0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    const-string p0, "sizeType"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v5

    :goto_1
    const-string v0, "preload"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "preview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v8, p1

    goto :goto_2

    :cond_2
    move-object v8, v5

    :goto_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/xj0;

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/xj0;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/r02;ZLjava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/pj0;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/xj0;

    move-result-object p0

    return-object p0
.end method
