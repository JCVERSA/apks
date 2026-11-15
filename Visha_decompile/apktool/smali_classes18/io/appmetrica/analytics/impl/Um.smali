.class public final Lio/appmetrica/analytics/impl/Um;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/dl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/dl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/dl;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Um;-><init>(Lio/appmetrica/analytics/impl/dl;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/dl;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Um;->a:Lio/appmetrica/analytics/impl/dl;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/l6;)Lio/appmetrica/analytics/impl/Tm;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/l6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Tm;)Lio/appmetrica/analytics/impl/l6;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/Tm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/l6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/l6;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Tm;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, v0, Lio/appmetrica/analytics/impl/l6;->e:I

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Tm;->d:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/l6;->d:Ljava/lang/String;

    .line 4
    iget v1, p1, Lio/appmetrica/analytics/impl/Tm;->b:I

    iput v1, v0, Lio/appmetrica/analytics/impl/l6;->b:I

    .line 5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Tm;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/l6;->a:Ljava/lang/String;

    .line 6
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Tm;->c:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/l6;->c:J

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Um;->a:Lio/appmetrica/analytics/impl/dl;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Tm;->f:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StackTraceElement;

    .line 10
    new-instance v3, Lio/appmetrica/analytics/impl/fl;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/fl;-><init>(Ljava/lang/StackTraceElement;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/dl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/l6;->f:[Lio/appmetrica/analytics/impl/k6;

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

    check-cast p1, Lio/appmetrica/analytics/impl/Tm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Um;->a(Lio/appmetrica/analytics/impl/Tm;)Lio/appmetrica/analytics/impl/l6;

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

    check-cast p1, Lio/appmetrica/analytics/impl/l6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
