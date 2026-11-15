.class public final Lio/appmetrica/analytics/impl/Gk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/h8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/rf;

.field public final b:Lio/appmetrica/analytics/impl/Tf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/rf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rf;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Tf;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Tf;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/Gk;-><init>(Lio/appmetrica/analytics/impl/rf;Lio/appmetrica/analytics/impl/Tf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/rf;Lio/appmetrica/analytics/impl/Tf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gk;->a:Lio/appmetrica/analytics/impl/rf;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gk;->b:Lio/appmetrica/analytics/impl/Tf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Fk;
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
            "Lio/appmetrica/analytics/impl/Fk;"
        }
    .end annotation

    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Fk;)Ljava/util/List;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/Fk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Fk;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/ti;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/A8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A8;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Lio/appmetrica/analytics/impl/A8;->a:I

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/y8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/y8;-><init>()V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/A8;->d:Lio/appmetrica/analytics/impl/y8;

    .line 4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Gk;->a:Lio/appmetrica/analytics/impl/rf;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Fk;->a:Lio/appmetrica/analytics/impl/uf;

    .line 5
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/rf;->a(Lio/appmetrica/analytics/impl/uf;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lio/appmetrica/analytics/impl/A8;->d:Lio/appmetrica/analytics/impl/y8;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/t8;

    iput-object v3, v2, Lio/appmetrica/analytics/impl/y8;->a:Lio/appmetrica/analytics/impl/t8;

    .line 7
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Fk;->b:Lio/appmetrica/analytics/impl/mg;

    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gk;->b:Lio/appmetrica/analytics/impl/Tf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tf;->a(Lio/appmetrica/analytics/impl/mg;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 9
    iget-object p1, v0, Lio/appmetrica/analytics/impl/A8;->d:Lio/appmetrica/analytics/impl/y8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/v8;

    iput-object v2, p1, Lio/appmetrica/analytics/impl/y8;->b:Lio/appmetrica/analytics/impl/v8;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    .line 10
    new-array p1, p1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v2, 0x0

    aput-object v1, p1, v2

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

    check-cast p1, Lio/appmetrica/analytics/impl/Fk;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Gk;->a(Lio/appmetrica/analytics/impl/Fk;)Ljava/util/List;

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
