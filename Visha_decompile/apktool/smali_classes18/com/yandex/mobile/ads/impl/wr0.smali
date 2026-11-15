.class public final Lcom/yandex/mobile/ads/impl/wr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/c0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/c0;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/c0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/wr0;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/c0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/c0;)V
    .locals 1

    .line 3
    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actionParserProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/wr0;->a:Lcom/yandex/mobile/ads/impl/c0;

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "jsonAsset"

    const-string v1, "jsonAttribute"

    invoke-static {p1, v0, p0, v1, p0}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null"

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/vr0;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    .line 6
    const-string v0, "jsonLink"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64EncodingParameters"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    .line 10
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/wr0;->a:Lcom/yandex/mobile/ads/impl/c0;

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v7, v6, p2}, Lcom/yandex/mobile/ads/impl/c0;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/b0;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 12
    invoke-interface {v7, v6}, Lcom/yandex/mobile/ads/impl/b0;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/x;

    move-result-object v6

    .line 13
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v7, v2

    .line 14
    :goto_1
    const-string p0, "falseClickUrl"

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wr0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string p2, "falseClickInterval"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-eqz p0, :cond_3

    .line 16
    new-instance p2, Lcom/yandex/mobile/ads/impl/m80;

    invoke-direct {p2, p0, v5, v6}, Lcom/yandex/mobile/ads/impl/m80;-><init>(Ljava/lang/String;J)V

    move-object v8, p2

    goto :goto_2

    :cond_3
    move-object v8, v2

    .line 17
    :goto_2
    invoke-static {}, Lxe9;->b()Ljava/util/Set;

    move-result-object p0

    .line 18
    const-string p2, "trackingUrl"

    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/wr0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 19
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_4
    const-string p2, "trackingUrls"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 21
    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_6

    .line 23
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 24
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v5

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v5}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 26
    :goto_4
    invoke-static {v5}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/String;

    .line 27
    invoke-static {v5}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 28
    :cond_6
    invoke-static {v0}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    .line 29
    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_8
    invoke-static {p0}, Lxe9;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 31
    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    .line 32
    const-string p0, "url"

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wr0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    .line 33
    const-string p0, "clickableDelay"

    invoke-virtual {p1, p0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 34
    new-instance p0, Lcom/yandex/mobile/ads/impl/vr0;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/yandex/mobile/ads/impl/vr0;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/m80;Ljava/util/List;Ljava/lang/String;J)V

    return-object p0
.end method
