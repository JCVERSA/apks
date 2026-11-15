.class public final Lcom/yandex/mobile/ads/impl/bk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q82;

.field private final b:Lcom/yandex/mobile/ads/impl/h80;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q82;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/h80;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/h80;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/bk1;-><init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/h80;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q82;Lcom/yandex/mobile/ads/impl/h80;)V
    .locals 1

    .line 3
    const-string v0, "urlJsonParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bk1;->a:Lcom/yandex/mobile/ads/impl/q82;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/bk1;->b:Lcom/yandex/mobile/ads/impl/h80;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/zj1;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonAsset"

    const-string v1, "jsonAttribute"

    const-string v2, "package"

    invoke-static {p1, v0, v2, v1, v2}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "null"

    invoke-static {v4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bk1;->a:Lcom/yandex/mobile/ads/impl/q82;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "url"

    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/q82;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "extras"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bk1;->b:Lcom/yandex/mobile/ads/impl/h80;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/h80;->a(Lorg/json/JSONObject;)Ljava/util/LinkedHashMap;

    move-result-object v6

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    const-string v0, "flags"

    invoke-static {v0, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    move-object v7, p0

    check-cast v7, Ljava/lang/Integer;

    const-string p0, "launchMode"

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wq0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/xy;->b:Lcom/yandex/mobile/ads/impl/xy$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/xy;->a()Ldb3;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/yandex/mobile/ads/impl/xy;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    check-cast v1, Lcom/yandex/mobile/ads/impl/xy;

    if-nez v1, :cond_3

    sget-object p0, Lcom/yandex/mobile/ads/impl/xy;->c:Lcom/yandex/mobile/ads/impl/xy;

    move-object v8, p0

    goto :goto_1

    :cond_3
    move-object v8, v1

    :goto_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/zj1;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/zj1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/Integer;Lcom/yandex/mobile/ads/impl/xy;)V

    return-object p0

    :cond_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/t61;

    const-string p1, "Native Ad json has not required attributes"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw p0
.end method
