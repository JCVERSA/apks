.class public final Lio/appmetrica/analytics/impl/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ListConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/el;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/el;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/el;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/dl;->a:Lio/appmetrica/analytics/impl/el;

    return-void
.end method


# virtual methods
.method public final a([Lio/appmetrica/analytics/impl/k6;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/appmetrica/analytics/impl/k6;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/fl;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/fl;",
            ">;)[",
            "Lio/appmetrica/analytics/impl/k6;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/k6;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/fl;

    .line 3
    iget-object v3, p0, Lio/appmetrica/analytics/impl/dl;->a:Lio/appmetrica/analytics/impl/el;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/impl/el;->a(Lio/appmetrica/analytics/impl/fl;)Lio/appmetrica/analytics/impl/k6;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/dl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, [Lio/appmetrica/analytics/impl/k6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
