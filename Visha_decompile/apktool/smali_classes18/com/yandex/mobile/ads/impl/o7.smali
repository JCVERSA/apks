.class public final Lcom/yandex/mobile/ads/impl/o7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/b7;)Lcom/yandex/mobile/ads/impl/d7;
    .locals 11

    const-string v0, "sdkAdQualityConfiguration"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/d7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->g()I

    move-result v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->e()Z

    move-result v3

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->c()Z

    move-result v4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->a()Ljava/util/Map;

    move-result-object v1

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    sget-object v7, Lcom/yandex/mobile/ads/impl/z6;->c:Lcom/yandex/mobile/ads/impl/z6$a;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "value"

    invoke-static {v8, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/z6;->a()Ldb3;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/yandex/mobile/ads/impl/z6;

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/z6;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    check-cast v9, Lcom/yandex/mobile/ads/impl/z6;

    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/z6$a;->a(Lcom/yandex/mobile/ads/impl/z6;)Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifiableNetwork;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Lcom/yandex/mobile/ads/impl/m7;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/mobile/ads/impl/c7;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/c7;->b()I

    move-result v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/c7;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/c7;->a()Z

    move-result v6

    invoke-direct {v8, v6, v9}, Lcom/yandex/mobile/ads/impl/m7;-><init>(ZI)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->f()Ljava/util/Set;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/d7;-><init>(IZZLjava/util/LinkedHashMap;Ljava/util/Set;)V

    return-object v0
.end method
