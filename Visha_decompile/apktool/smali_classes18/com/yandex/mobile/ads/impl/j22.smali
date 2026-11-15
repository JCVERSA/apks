.class public final Lcom/yandex/mobile/ads/impl/j22;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/StackTraceElement;Ljava/util/Set;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/e60;

    .line 3
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/e60;->a()Lcom/yandex/mobile/ads/impl/f60;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/f60;->b:Lcom/yandex/mobile/ads/impl/f60;

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/e60;

    .line 7
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e60;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method public static a([Ljava/lang/StackTraceElement;Ljava/util/Set;)Z
    .locals 11

    .line 8
    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exclusions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/e60;

    .line 11
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/e60;->a()Lcom/yandex/mobile/ads/impl/f60;

    move-result-object v3

    sget-object v4, Lcom/yandex/mobile/ads/impl/f60;->c:Lcom/yandex/mobile/ads/impl/f60;

    if-ne v3, v4, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/e60;

    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString(...)"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/e60;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v4, v3, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    .line 16
    :cond_4
    :goto_1
    array-length v0, p0

    move v1, v4

    :goto_2
    const/4 v5, -0x1

    const-string v6, "com.monetization.ads"

    const-string v7, "com.yandex.mobile.ads"

    if-ge v1, v0, :cond_7

    .line 17
    aget-object v8, p0, v1

    .line 18
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "getClassName(...)"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {v9, v7, v4, v3, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 20
    invoke-static {v9, v6, v4, v3, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 21
    :cond_5
    invoke-static {v8, p1}, Lcom/yandex/mobile/ads/impl/j22;->a(Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v5

    :goto_3
    if-ne v1, v5, :cond_8

    return v4

    :cond_8
    :goto_4
    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 22
    invoke-static {p0, v1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    const-class v8, Lcom/monetization/ads/core/utils/CallbackStackTraceMarker;

    if-eqz v5, :cond_a

    invoke-static {v5, p1}, Lcom/yandex/mobile/ads/impl/j22;->a(Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 23
    invoke-static {p0, v1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 24
    invoke-static {v5, v7, v4, v3, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 25
    invoke-static {v5, v6, v4, v3, v2}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 26
    :cond_9
    invoke-static {p0, v1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 27
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_4

    .line 28
    :cond_a
    invoke-static {p0, v1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StackTraceElement;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 29
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_b

    move v4, v0

    :cond_b
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method
