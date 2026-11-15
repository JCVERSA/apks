.class public final Lio/appmetrica/analytics/impl/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ca;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ca;

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    const/16 v3, 0x5000

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/Ca;-><init>(III)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/je;-><init>(Lio/appmetrica/analytics/impl/Ca;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ca;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Ca;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/je;->a:Lio/appmetrica/analytics/impl/Ca;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/ti;
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/je;->a:Lio/appmetrica/analytics/impl/Ca;

    .line 2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ca;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/jn;

    move-result-object p0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/r8;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/r8;-><init>()V

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jn;->b:Lio/appmetrica/analytics/impl/v3;

    check-cast v0, Lio/appmetrica/analytics/impl/E4;

    iget v0, v0, Lio/appmetrica/analytics/impl/E4;->b:I

    iput v0, p1, Lio/appmetrica/analytics/impl/r8;->b:I

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/q8;

    iput-object v1, p1, Lio/appmetrica/analytics/impl/r8;->a:[Lio/appmetrica/analytics/impl/q8;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    iget-object v3, p1, Lio/appmetrica/analytics/impl/r8;->a:[Lio/appmetrica/analytics/impl/q8;

    new-instance v4, Lio/appmetrica/analytics/impl/q8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/q8;-><init>()V

    aput-object v4, v3, v1

    .line 9
    iget-object v3, p1, Lio/appmetrica/analytics/impl/r8;->a:[Lio/appmetrica/analytics/impl/q8;

    aget-object v3, v3, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lio/appmetrica/analytics/impl/q8;->a:[B

    .line 10
    iget-object v3, p1, Lio/appmetrica/analytics/impl/r8;->a:[Lio/appmetrica/analytics/impl/q8;

    aget-object v3, v3, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v3, Lio/appmetrica/analytics/impl/q8;->b:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/jn;->b:Lio/appmetrica/analytics/impl/v3;

    move-object v0, p0

    check-cast v0, Lio/appmetrica/analytics/impl/E4;

    iget v0, v0, Lio/appmetrica/analytics/impl/u3;->a:I

    .line 12
    new-instance v0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/ti;)Ljava/util/Map;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/ti;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/ti;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/je;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/ti;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
