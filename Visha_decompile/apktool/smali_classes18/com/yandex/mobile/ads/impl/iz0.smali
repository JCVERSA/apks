.class public final Lcom/yandex/mobile/ads/impl/iz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hr1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/hr1<",
        "Lcom/yandex/mobile/ads/impl/hz0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zc1;

.field private final b:Lcom/yandex/mobile/ads/impl/uz0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ad1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ad1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/uz0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/uz0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/iz0;-><init>(Lcom/yandex/mobile/ads/impl/zc1;Lcom/yandex/mobile/ads/impl/uz0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zc1;Lcom/yandex/mobile/ads/impl/uz0;)V
    .locals 1

    .line 4
    const-string v0, "networkResponseDecoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworkParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/iz0;->a:Lcom/yandex/mobile/ads/impl/zc1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/iz0;->b:Lcom/yandex/mobile/ads/impl/uz0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/iz0;->b(Lcom/yandex/mobile/ads/impl/wq1;)Lcom/yandex/mobile/ads/impl/hz0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/wq1;)Lcom/yandex/mobile/ads/impl/hz0;
    .locals 8

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/iz0;->a:Lcom/yandex/mobile/ads/impl/zc1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/zc1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "passback_parameters"

    sget-object v3, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    const-string v3, "parent"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "keys(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {v3}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "networks"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/iz0;->b:Lcom/yandex/mobile/ads/impl/uz0;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lcom/yandex/mobile/ads/impl/uz0;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/lz0;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Lcom/yandex/mobile/ads/impl/hz0;

    invoke-direct {p0, v3, p1}, Lcom/yandex/mobile/ads/impl/hz0;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    move-object v0, p0

    goto :goto_3

    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-object v0
.end method
