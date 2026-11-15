.class public final Lio/appmetrica/analytics/impl/km;
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
.method public final a(Lio/appmetrica/analytics/impl/jm;)Lio/appmetrica/analytics/impl/Yl;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/jm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Yl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Yl;-><init>()V

    .line 2
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/jm;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Yl;->a:J

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Yl;)Lio/appmetrica/analytics/impl/jm;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Yl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance p0, Lio/appmetrica/analytics/impl/jm;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Yl;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/jm;-><init>(J)V

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

    check-cast p1, Lio/appmetrica/analytics/impl/jm;

    new-instance p0, Lio/appmetrica/analytics/impl/Yl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Yl;-><init>()V

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/jm;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Yl;->a:J

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

    check-cast p1, Lio/appmetrica/analytics/impl/Yl;

    new-instance p0, Lio/appmetrica/analytics/impl/jm;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Yl;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/jm;-><init>(J)V

    return-object p0
.end method
