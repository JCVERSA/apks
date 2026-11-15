.class public final Lio/appmetrica/analytics/impl/Ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/h8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Oi;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Oi;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Ik;-><init>(Lio/appmetrica/analytics/impl/Oi;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ik;->a:Lio/appmetrica/analytics/impl/Oi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Hk;
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
            "Lio/appmetrica/analytics/impl/Hk;"
        }
    .end annotation

    .line 11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hk;)Ljava/util/List;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/Hk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Hk;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/ti;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/A8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A8;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lio/appmetrica/analytics/impl/A8;->a:I

    .line 3
    new-instance v2, Lio/appmetrica/analytics/impl/z8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/z8;-><init>()V

    iput-object v2, v0, Lio/appmetrica/analytics/impl/A8;->b:Lio/appmetrica/analytics/impl/z8;

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ik;->a:Lio/appmetrica/analytics/impl/Oi;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hk;->a:Lio/appmetrica/analytics/impl/Si;

    .line 5
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Oi;->a(Lio/appmetrica/analytics/impl/Si;)Lio/appmetrica/analytics/impl/ti;

    move-result-object p0

    .line 6
    iget-object p1, v0, Lio/appmetrica/analytics/impl/A8;->b:Lio/appmetrica/analytics/impl/z8;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ti;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/w8;

    iput-object v2, p1, Lio/appmetrica/analytics/impl/z8;->a:Lio/appmetrica/analytics/impl/w8;

    .line 7
    new-array p1, v1, [Lio/appmetrica/analytics/impl/v3;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 8
    new-instance v1, Lio/appmetrica/analytics/impl/u3;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/u3;->b([Lio/appmetrica/analytics/impl/v3;)I

    move-result p1

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/u3;-><init>(I)V

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ti;->b:Lio/appmetrica/analytics/impl/v3;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/v3;->getBytesTruncated()I

    .line 10
    new-instance p0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/ti;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/v3;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

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

    check-cast p1, Lio/appmetrica/analytics/impl/Hk;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ik;->a(Lio/appmetrica/analytics/impl/Hk;)Ljava/util/List;

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
