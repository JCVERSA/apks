.class public final Lcom/yandex/mobile/ads/impl/r61;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;
    .locals 1

    .line 1
    const-string v0, "nativeAdPrivate"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/r61;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/t20;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/t20;)Ljava/util/Set;
    .locals 3

    .line 3
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/q61;->c()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/yandex/mobile/ads/impl/b30;

    .line 7
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b30;->a()Ljava/util/Set;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/s20;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/s20;->b()Lcom/yandex/mobile/ads/impl/t20;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 12
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/yandex/mobile/ads/impl/s20;

    .line 16
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/s20;->a()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {p1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static b(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;
    .locals 1

    const-string v0, "nativeAdPrivate"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/t20;->b:Lcom/yandex/mobile/ads/impl/t20;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/r61;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/t20;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/yandex/mobile/ads/impl/q61;)Ljava/util/Set;
    .locals 1

    const-string v0, "nativeAdPrivate"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/t20;->c:Lcom/yandex/mobile/ads/impl/t20;

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/r61;->a(Lcom/yandex/mobile/ads/impl/q61;Lcom/yandex/mobile/ads/impl/t20;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
