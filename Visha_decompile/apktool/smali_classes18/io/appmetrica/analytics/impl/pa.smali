.class public final Lio/appmetrica/analytics/impl/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/U9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/N8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/N8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/N8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/pa;->a:Lio/appmetrica/analytics/impl/N8;

    return-void
.end method


# virtual methods
.method public final a([B)[Lio/appmetrica/analytics/impl/i9;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pa;->a:Lio/appmetrica/analytics/impl/N8;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/N8;->a([B)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Lio/appmetrica/analytics/impl/i9;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Ljava/util/Map$Entry;

    new-instance v3, Lio/appmetrica/analytics/impl/i9;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/i9;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lqv0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v3, Lio/appmetrica/analytics/impl/i9;->a:[B

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v3, Lio/appmetrica/analytics/impl/i9;->b:[B

    aput-object v3, p1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-array p0, v0, [Lio/appmetrica/analytics/impl/i9;

    return-object p0
.end method
