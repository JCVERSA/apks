.class public final Lio/appmetrica/analytics/impl/D3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/rf;

.field public final b:Lio/appmetrica/analytics/impl/D7;

.field public final c:Lio/appmetrica/analytics/impl/lf;

.field public final d:Lio/appmetrica/analytics/impl/Tf;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/rf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rf;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/D7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/D7;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/lf;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/lf;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/Tf;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Tf;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/D3;-><init>(Lio/appmetrica/analytics/impl/rf;Lio/appmetrica/analytics/impl/D7;Lio/appmetrica/analytics/impl/lf;Lio/appmetrica/analytics/impl/Tf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/rf;Lio/appmetrica/analytics/impl/D7;Lio/appmetrica/analytics/impl/lf;Lio/appmetrica/analytics/impl/Tf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D3;->a:Lio/appmetrica/analytics/impl/rf;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/D3;->b:Lio/appmetrica/analytics/impl/D7;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/D3;->c:Lio/appmetrica/analytics/impl/lf;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/D3;->d:Lio/appmetrica/analytics/impl/Tf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ti;)Lio/appmetrica/analytics/impl/E3;
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
            "Lio/appmetrica/analytics/impl/E3;"
        }
    .end annotation

    .line 15
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/E3;)Lio/appmetrica/analytics/impl/ti;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/E3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/E3;",
            ")",
            "Lio/appmetrica/analytics/impl/ti;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/k8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/k8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/D3;->a:Lio/appmetrica/analytics/impl/rf;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/E3;->a:Lio/appmetrica/analytics/impl/uf;

    .line 3
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/rf;->a(Lio/appmetrica/analytics/impl/uf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/t8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/k8;->a:Lio/appmetrica/analytics/impl/t8;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/D3;->b:Lio/appmetrica/analytics/impl/D7;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/E3;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/D7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/m8;

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/k8;->c:Lio/appmetrica/analytics/impl/m8;

    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/D3;->c:Lio/appmetrica/analytics/impl/lf;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/E3;->c:Lio/appmetrica/analytics/impl/nf;

    .line 7
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/lf;->a(Lio/appmetrica/analytics/impl/nf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v2

    .line 8
    iget-object v3, v2, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/s8;

    iput-object v3, v0, Lio/appmetrica/analytics/impl/k8;->d:Lio/appmetrica/analytics/impl/s8;

    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/E3;->d:Lio/appmetrica/analytics/impl/mg;

    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/D3;->d:Lio/appmetrica/analytics/impl/Tf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tf;->a(Lio/appmetrica/analytics/impl/mg;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 11
    iget-object p1, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast p1, Lio/appmetrica/analytics/impl/v8;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/k8;->b:Lio/appmetrica/analytics/impl/v8;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x3

    .line 12
    new-array p1, p1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const/4 v1, 0x1

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object p0, p1, v1

    .line 13
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 14
    new-instance p1, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

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

    check-cast p1, Lio/appmetrica/analytics/impl/E3;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D3;->a(Lio/appmetrica/analytics/impl/E3;)Lio/appmetrica/analytics/impl/ti;

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
