.class public final Lio/appmetrica/analytics/impl/C3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/h8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/D3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/D3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/D3;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/C3;-><init>(Lio/appmetrica/analytics/impl/D3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/D3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/C3;->a:Lio/appmetrica/analytics/impl/D3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/B3;
    .locals 0
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
            "Lio/appmetrica/analytics/impl/ti;",
            ">;)",
            "Lio/appmetrica/analytics/impl/B3;"
        }
    .end annotation

    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/B3;)Ljava/util/List;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/B3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/B3;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/ti;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/A8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A8;-><init>()V

    .line 2
    new-instance v1, Lio/appmetrica/analytics/impl/j8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/j8;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/A8;->e:Lio/appmetrica/analytics/impl/j8;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/C3;->a:Lio/appmetrica/analytics/impl/D3;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/B3;->b:Lio/appmetrica/analytics/impl/E3;

    .line 4
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/D3;->a(Lio/appmetrica/analytics/impl/E3;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 5
    iget-object v1, v0, Lio/appmetrica/analytics/impl/A8;->e:Lio/appmetrica/analytics/impl/j8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/k8;

    iput-object v2, v1, Lio/appmetrica/analytics/impl/j8;->a:Lio/appmetrica/analytics/impl/k8;

    .line 6
    iget p1, p1, Lio/appmetrica/analytics/impl/B3;->a:I

    iput p1, v0, Lio/appmetrica/analytics/impl/A8;->a:I

    const/4 p1, 0x1

    .line 7
    new-array p1, p1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 8
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 9
    new-instance p1, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/B3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C3;->a(Lio/appmetrica/analytics/impl/B3;)Ljava/util/List;

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

    check-cast p1, Ljava/util/List;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
