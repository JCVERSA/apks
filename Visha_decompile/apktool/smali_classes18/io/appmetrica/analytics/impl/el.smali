.class public final Lio/appmetrica/analytics/impl/el;
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
.method public final a(Lio/appmetrica/analytics/impl/k6;)Lio/appmetrica/analytics/impl/fl;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/k6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/fl;)Lio/appmetrica/analytics/impl/k6;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/fl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/k6;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/k6;-><init>()V

    .line 2
    iget-object v0, p1, Lio/appmetrica/analytics/impl/fl;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/k6;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lio/appmetrica/analytics/impl/fl;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k6;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/k6;->b:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lio/appmetrica/analytics/impl/fl;->c:Ljava/lang/Integer;

    .line 7
    iget v1, p0, Lio/appmetrica/analytics/impl/k6;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/k6;->c:I

    .line 8
    iget-object v0, p1, Lio/appmetrica/analytics/impl/fl;->d:Ljava/lang/Integer;

    .line 9
    iget v1, p0, Lio/appmetrica/analytics/impl/k6;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/impl/k6;->f:I

    .line 10
    iget-object v0, p1, Lio/appmetrica/analytics/impl/fl;->e:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k6;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/k6;->d:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lio/appmetrica/analytics/impl/fl;->f:Ljava/lang/Boolean;

    .line 13
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/k6;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/k6;->e:Z

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

    check-cast p1, Lio/appmetrica/analytics/impl/fl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/el;->a(Lio/appmetrica/analytics/impl/fl;)Lio/appmetrica/analytics/impl/k6;

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

    check-cast p1, Lio/appmetrica/analytics/impl/k6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
