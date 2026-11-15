.class public final Lio/appmetrica/analytics/impl/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/U;

.field public final b:Lio/appmetrica/analytics/impl/mf;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/U;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/U;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/mf;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/mf;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/lf;-><init>(Lio/appmetrica/analytics/impl/U;Lio/appmetrica/analytics/impl/mf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/U;Lio/appmetrica/analytics/impl/mf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/lf;->a:Lio/appmetrica/analytics/impl/U;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/lf;->b:Lio/appmetrica/analytics/impl/mf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/nf;
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
            "Lio/appmetrica/analytics/impl/nf;"
        }
    .end annotation

    .line 17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/nf;)Lio/appmetrica/analytics/impl/ti;
    .locals 9
    .param p1    # Lio/appmetrica/analytics/impl/nf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/nf;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    new-instance v1, Lio/appmetrica/analytics/impl/s8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/s8;-><init>()V

    .line 2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/lf;->a:Lio/appmetrica/analytics/impl/U;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/nf;->a:Lio/appmetrica/analytics/impl/V;

    .line 3
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/U;->a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v2

    .line 4
    iget-object v3, v2, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/i8;

    iput-object v3, v1, Lio/appmetrica/analytics/impl/s8;->a:Lio/appmetrica/analytics/impl/i8;

    .line 5
    iget-object v3, p0, Lio/appmetrica/analytics/impl/lf;->b:Lio/appmetrica/analytics/impl/mf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nf;->b:Ljava/util/List;

    .line 6
    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/impl/xa;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/jn;

    move-result-object p1

    .line 7
    iget-object v3, p1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 8
    iget-object v3, p1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lio/appmetrica/analytics/impl/i8;

    iput-object v3, v1, Lio/appmetrica/analytics/impl/s8;->b:[Lio/appmetrica/analytics/impl/i8;

    move v3, v4

    move v5, v3

    .line 9
    :goto_0
    iget-object v6, p1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 10
    iget-object v6, p0, Lio/appmetrica/analytics/impl/lf;->a:Lio/appmetrica/analytics/impl/U;

    iget-object v7, p1, Lio/appmetrica/analytics/impl/jn;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appmetrica/analytics/impl/V;

    invoke-virtual {v6, v7}, Lio/appmetrica/analytics/impl/U;->a(Lio/appmetrica/analytics/impl/V;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v6

    .line 11
    iget-object v7, v1, Lio/appmetrica/analytics/impl/s8;->b:[Lio/appmetrica/analytics/impl/i8;

    iget-object v8, v6, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v8, Lio/appmetrica/analytics/impl/i8;

    aput-object v8, v7, v3

    .line 12
    iget-object v6, v6, Lio/appmetrica/analytics/impl/ti;->b:Lio/appmetrica/analytics/impl/v3;

    invoke-interface {v6}, Lio/appmetrica/analytics/impl/v3;->getBytesTruncated()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    move v5, v4

    .line 13
    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-direct {p0, v5}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [Lio/appmetrica/analytics/impl/v3;

    aput-object v2, v3, v4

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p0, v3, p1

    .line 15
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 16
    new-instance p1, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p1, v1, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    return-object p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/lf;->a(Lio/appmetrica/analytics/impl/nf;)Lio/appmetrica/analytics/impl/ti;

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
