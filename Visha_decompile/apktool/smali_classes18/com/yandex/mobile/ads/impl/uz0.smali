.class public final Lcom/yandex/mobile/ads/impl/uz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jz0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/jz0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jz0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/uz0;-><init>(Lcom/yandex/mobile/ads/impl/jz0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jz0;)V
    .locals 1

    .line 3
    const-string v0, "impressionDataParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uz0;->a:Lcom/yandex/mobile/ads/impl/jz0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/lz0;
    .locals 13

    const-string v0, "impression_data"

    const-string v1, "jsonMediationNetwork"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    const-string v4, "adapter"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "network_data"

    const-string v4, "parent"

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const-string v7, "keys(...)"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(...)"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "click_tracking_urls"

    invoke-static {v3, p1}, Lcom/yandex/mobile/ads/impl/vq0;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v9

    const-string v3, "impression_tracking_urls"

    invoke-static {v3, p1}, Lcom/yandex/mobile/ads/impl/vq0;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v8

    const-string v3, "ad_response_tracking_urls"

    invoke-static {v3, p1}, Lcom/yandex/mobile/ads/impl/vq0;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v10

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uz0;->a:Lcom/yandex/mobile/ads/impl/jz0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "jsonObject"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "attributeName"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "jsonAsset"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "jsonAttribute"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "null"

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/yandex/mobile/ads/impl/t4;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/t4;-><init>(Ljava/lang/String;)V

    move-object v11, p1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "Json has not required attributes"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_2
    move-object v11, v2

    :goto_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/lz0;

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/yandex/mobile/ads/impl/lz0;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/mobile/ads/impl/t4;Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, p0

    goto :goto_2

    :catch_1
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-object v2
.end method
