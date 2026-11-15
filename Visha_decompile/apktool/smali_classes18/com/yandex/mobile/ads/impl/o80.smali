.class public final Lcom/yandex/mobile/ads/impl/o80;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q80;

.field private final b:Lcom/yandex/mobile/ads/impl/g;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/yandex/mobile/ads/impl/q80;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/q80;-><init>()V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/g;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/o80;-><init>(Lcom/yandex/mobile/ads/impl/q80;Lcom/yandex/mobile/ads/impl/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q80;Lcom/yandex/mobile/ads/impl/g;)V
    .locals 1

    .line 4
    const-string v0, "falseClickFormatter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abExperimentDataConverter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/o80;->a:Lcom/yandex/mobile/ads/impl/q80;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/o80;->b:Lcom/yandex/mobile/ads/impl/g;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 19
    const-string v1, "report_data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 23
    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    .line 24
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/n80;
    .locals 14

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/yandex/mobile/ads/impl/ts;->c:Lcom/yandex/mobile/ads/impl/ts$a;

    const-string v2, "ad_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "value"

    invoke-static {v2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ts;->values()[Lcom/yandex/mobile/ads/impl/ts;

    move-result-object p1

    .line 4
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p1, v5

    .line 5
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v0

    :goto_1
    if-nez v7, :cond_3

    return-object v0

    .line 6
    :cond_3
    const-string p1, "start_time"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 7
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/o80;->a:Lcom/yandex/mobile/ads/impl/q80;

    const-string v2, "false_click"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    const-string v3, "interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 11
    new-instance p1, Lcom/yandex/mobile/ads/impl/m80;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p1, v2, v5, v6}, Lcom/yandex/mobile/ads/impl/m80;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, p1

    goto :goto_3

    :catch_0
    :goto_2
    move-object v11, v0

    .line 12
    :goto_3
    :try_start_2
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/o80;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v12

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o80;->b:Lcom/yandex/mobile/ads/impl/g;

    const-string p1, "ab_experiments"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f;

    move-result-object v13

    .line 14
    invoke-static {}, Lcom/yandex/mobile/ads/impl/o0$a;->values()[Lcom/yandex/mobile/ads/impl/o0$a;

    move-result-object p0

    array-length p1, p0

    :goto_4
    if-ge v4, p1, :cond_6

    aget-object v2, p0, v4

    .line 15
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o0$a;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object v10, v0

    :goto_5
    if-nez v10, :cond_7

    return-object v0

    .line 16
    :cond_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/n80;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/yandex/mobile/ads/impl/n80;-><init>(Lcom/yandex/mobile/ads/impl/ts;JLcom/yandex/mobile/ads/impl/o0$a;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    :catchall_0
    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/n80;)Ljava/lang/String;
    .locals 7

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->c()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->f()J

    move-result-wide v1

    const-string v3, "start_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->b()Lcom/yandex/mobile/ads/impl/o0$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o0$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/o80;->a:Lcom/yandex/mobile/ads/impl/q80;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->d()Lcom/yandex/mobile/ads/impl/m80;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/m80;->c()J

    move-result-wide v4

    const-string v6, "interval"

    invoke-virtual {v3, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/m80;->d()Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 34
    :goto_0
    const-string v3, "false_click"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->e()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 36
    const-string v3, "report_data"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/o80;->b:Lcom/yandex/mobile/ads/impl/g;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n80;->a()Lcom/yandex/mobile/ads/impl/f;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 38
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "experiments"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/f;->b()Ljava/util/Set;

    move-result-object p1

    const-string v1, "test_ids"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_1
    const-string p0, "ab_experiments"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
