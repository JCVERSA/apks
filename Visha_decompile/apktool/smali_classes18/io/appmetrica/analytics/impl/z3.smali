.class public final Lio/appmetrica/analytics/impl/z3;
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
.method public final a(Lio/appmetrica/analytics/impl/x3;)Lio/appmetrica/analytics/impl/Rl;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/x3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Rl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Rl;-><init>()V

    .line 2
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/x3;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Rl;->a:J

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Rl;)Lio/appmetrica/analytics/impl/x3;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Rl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance p0, Lio/appmetrica/analytics/impl/x3;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Rl;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/x3;-><init>(J)V

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/x3;

    new-instance p0, Lio/appmetrica/analytics/impl/Rl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Rl;-><init>()V

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/x3;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Rl;->a:J

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Rl;

    new-instance p0, Lio/appmetrica/analytics/impl/x3;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Rl;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/x3;-><init>(J)V

    return-object p0
.end method
