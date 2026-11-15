.class public final Lcom/yandex/mobile/ads/impl/gl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uz0;

.field private final b:Lu95;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/uz0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/uz0;-><init>()V

    .line 2
    sget-object v1, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vq0;->a()Lu95;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/gl;-><init>(Lcom/yandex/mobile/ads/impl/uz0;Lu95;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uz0;Lu95;)V
    .locals 1

    .line 4
    const-string v0, "mediationNetworkParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gl;->a:Lcom/yandex/mobile/ads/impl/uz0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gl;->b:Lu95;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ba;
    .locals 8

    const-string v0, "adUnitIdBiddingSettingsJson"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    const-string v2, "ad_unit_id"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    const-string v2, "block_id"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "networks"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/gl;->a:Lcom/yandex/mobile/ads/impl/uz0;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/uz0;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lcom/yandex/mobile/ads/impl/ba;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, v3}, Lcom/yandex/mobile/ads/impl/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/fl;
    .locals 7

    const-string v0, "jsonBiddingSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mediation_prefetch_settings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "ad_unit_id_settings"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "block_id_settings"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/yandex/mobile/ads/impl/gl;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ba;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gl;->b:Lu95;

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    sget-object v3, Lcom/yandex/mobile/ads/impl/h01;->Companion:Lcom/yandex/mobile/ads/impl/h01$b;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/h01$b;->serializer()Lef5;

    move-result-object v3

    invoke-static {v3}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lu95;->c(Lk92;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/h01;

    goto :goto_3

    :cond_4
    :goto_2
    move-object p0, v0

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p0, :cond_6

    :cond_5
    new-instance v1, Lcom/yandex/mobile/ads/impl/fl;

    invoke-direct {v1, p1, p0}, Lcom/yandex/mobile/ads/impl/fl;-><init>(Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/h01;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_4

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return-object v0
.end method
