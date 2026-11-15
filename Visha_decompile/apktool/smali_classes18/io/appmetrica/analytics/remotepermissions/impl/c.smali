.class public final Lio/appmetrica/analytics/remotepermissions/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/remotepermissions/impl/f;)Lio/appmetrica/analytics/remotepermissions/impl/a;
    .locals 5

    .line 10
    iget-object p0, p1, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:[[B

    if-eqz p0, :cond_1

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 13
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    .line 15
    :cond_2
    new-instance p1, Lio/appmetrica/analytics/remotepermissions/impl/a;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/remotepermissions/impl/a;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/remotepermissions/impl/a;)Lio/appmetrica/analytics/remotepermissions/impl/f;
    .locals 3

    .line 1
    new-instance p0, Lio/appmetrica/analytics/remotepermissions/impl/f;

    invoke-direct {p0}, Lio/appmetrica/analytics/remotepermissions/impl/f;-><init>()V

    .line 2
    iget-object p1, p1, Lio/appmetrica/analytics/remotepermissions/impl/a;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    sget-object v2, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [[B

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [[B

    .line 8
    iput-object p1, p0, Lio/appmetrica/analytics/remotepermissions/impl/f;->a:[[B

    return-object p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/impl/a;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/a;)Lio/appmetrica/analytics/remotepermissions/impl/f;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/remotepermissions/impl/f;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/remotepermissions/impl/c;->a(Lio/appmetrica/analytics/remotepermissions/impl/f;)Lio/appmetrica/analytics/remotepermissions/impl/a;

    move-result-object p0

    return-object p0
.end method
