.class public final Lio/appmetrica/analytics/impl/Ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/h8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oi;

.field public final b:Lio/appmetrica/analytics/impl/rf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Oi;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Oi;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/rf;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/rf;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Ek;-><init>(Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/rf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oi;Lio/appmetrica/analytics/impl/rf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/Oi;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ek;->b:Lio/appmetrica/analytics/impl/rf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Dk;
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
            "Lio/appmetrica/analytics/impl/Dk;"
        }
    .end annotation

    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Dk;)Ljava/util/List;
    .locals 5
    .param p1    # Lio/appmetrica/analytics/impl/Dk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Dk;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/ti;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/A8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A8;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Lio/appmetrica/analytics/impl/A8;->a:I

    .line 3
    new-instance v2, Lio/appmetrica/analytics/impl/x8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/x8;-><init>()V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/A8;->c:Lio/appmetrica/analytics/impl/x8;

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/Oi;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Dk;->b:Lio/appmetrica/analytics/impl/Si;

    .line 5
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Oi;->a(Lio/appmetrica/analytics/impl/Si;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v2

    .line 6
    iget-object v3, v0, Lio/appmetrica/analytics/impl/A8;->c:Lio/appmetrica/analytics/impl/x8;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v4, Lio/appmetrica/analytics/impl/w8;

    iput-object v4, v3, Lio/appmetrica/analytics/impl/x8;->b:Lio/appmetrica/analytics/impl/w8;

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ek;->b:Lio/appmetrica/analytics/impl/rf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Dk;->a:Lio/appmetrica/analytics/impl/uf;

    .line 8
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/rf;->a(Lio/appmetrica/analytics/impl/uf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 9
    iget-object p1, v0, Lio/appmetrica/analytics/impl/A8;->c:Lio/appmetrica/analytics/impl/x8;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/t8;

    iput-object v3, p1, Lio/appmetrica/analytics/impl/x8;->a:Lio/appmetrica/analytics/impl/t8;

    .line 10
    new-array p1, v1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v1, 0x0

    aput-object v2, p1, v1

    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 11
    new-instance p0, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 12
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

    check-cast p1, Lio/appmetrica/analytics/impl/Dk;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/Dk;)Ljava/util/List;

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
