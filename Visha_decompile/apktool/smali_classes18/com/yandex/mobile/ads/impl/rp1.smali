.class public final Lcom/yandex/mobile/ads/impl/rp1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/op1$b;Ljava/util/Map;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t4;)Lcom/yandex/mobile/ads/impl/je;
    .locals 2

    .line 1
    const-string v0, "reportType"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v1, 0x4

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-eq p0, v1, :cond_3

    const/16 v1, 0x15

    if-eq p0, v1, :cond_2

    const/16 p3, 0x1a

    if-eq p0, p3, :cond_1

    const/16 p3, 0x25

    if-eq p0, p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 4
    sget-object p3, Lcom/yandex/mobile/ads/impl/ke;->h:Lcom/yandex/mobile/ads/impl/ke;

    .line 5
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/rp1;->d(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-direct {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 8
    sget-object p3, Lcom/yandex/mobile/ads/impl/ke;->g:Lcom/yandex/mobile/ads/impl/ke;

    .line 9
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/rp1;->b(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    invoke-direct {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 12
    sget-object v1, Lcom/yandex/mobile/ads/impl/ke;->f:Lcom/yandex/mobile/ads/impl/ke;

    .line 13
    invoke-static {p1, p3, p2}, Lcom/yandex/mobile/ads/impl/rp1;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/t4;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    invoke-direct {p0, v1, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 16
    sget-object p2, Lcom/yandex/mobile/ads/impl/ke;->c:Lcom/yandex/mobile/ads/impl/ke;

    .line 17
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/rp1;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 19
    :cond_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 20
    sget-object p3, Lcom/yandex/mobile/ads/impl/ke;->d:Lcom/yandex/mobile/ads/impl/ke;

    .line 21
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/rp1;->a(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 22
    invoke-direct {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 23
    :cond_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/je;

    .line 24
    sget-object p3, Lcom/yandex/mobile/ads/impl/ke;->e:Lcom/yandex/mobile/ads/impl/ke;

    .line 25
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/rp1;->c(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 26
    invoke-direct {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/je;-><init>(Lcom/yandex/mobile/ads/impl/ke;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 27
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    const-string v1, "ad_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "block_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "sdk_version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    .line 32
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    const-string p1, "ad_network"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string v1, "ad_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "block_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "sdk_version"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Lcom/yandex/mobile/ads/impl/t4;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    const-string v1, "ad_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "block_id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "sdk_version"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    .line 37
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toLowerCase(...)"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_4

    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    const-string v1, "ad_network"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string p2, "ad_id"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 39
    const-string p2, "banner_id"

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const/4 p0, 0x0

    if-eqz p1, :cond_6

    .line 40
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/t4;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_7

    .line 41
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p2

    goto :goto_1

    :catchall_0
    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    sget p2, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    const-string p2, "args"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-eqz p0, :cond_8

    .line 43
    const-string p1, "revenue"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_9
    const-string p2, "ad_revenue"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string p1, "currency"

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_b

    :cond_a
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_b
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string p1, "precision"

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    :cond_c
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_d
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "block_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    const-string v1, "ad_network"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ad_id"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "banner_id"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "block_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    const-string v1, "ad_network"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ad_id"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, "banner_id"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "block_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toLowerCase(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_4
    const-string p1, "ad_network"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
