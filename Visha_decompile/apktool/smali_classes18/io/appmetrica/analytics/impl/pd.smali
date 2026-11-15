.class public final Lio/appmetrica/analytics/impl/pd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pd;->a:Lio/appmetrica/analytics/impl/bk;

    return-void
.end method


# virtual methods
.method public final a([Lio/appmetrica/analytics/impl/Vl;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/appmetrica/analytics/impl/Vl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pd;->a:Lio/appmetrica/analytics/impl/bk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/bk;->c()Ljava/util/Map;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 16
    iget-object v4, v3, Lio/appmetrica/analytics/impl/Vl;->a:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/dd;

    if-eqz v4, :cond_0

    .line 17
    iget-object v5, v3, Lio/appmetrica/analytics/impl/Vl;->a:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Vl;->b:[B

    .line 18
    iget-object v4, v4, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {v4, v3}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->toModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-static {v5, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v0}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Vl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lio/appmetrica/analytics/impl/Vl;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pd;->a:Lio/appmetrica/analytics/impl/bk;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/bk;->c()Ljava/util/Map;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/dd;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 6
    new-instance v4, Lio/appmetrica/analytics/impl/Vl;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Vl;-><init>()V

    .line 7
    iput-object v2, v4, Lio/appmetrica/analytics/impl/Vl;->a:Ljava/lang/String;

    .line 8
    iget-object v2, v3, Lio/appmetrica/analytics/impl/dd;->c:Lio/appmetrica/analytics/coreapi/internal/data/Converter;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 9
    iput-object v1, v4, Lio/appmetrica/analytics/impl/Vl;->b:[B

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 10
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Lio/appmetrica/analytics/impl/Vl;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [Lio/appmetrica/analytics/impl/Vl;

    return-object p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pd;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Vl;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lio/appmetrica/analytics/impl/Vl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/pd;->a([Lio/appmetrica/analytics/impl/Vl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
