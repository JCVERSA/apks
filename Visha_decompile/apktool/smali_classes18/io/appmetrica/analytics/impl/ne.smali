.class public final Lio/appmetrica/analytics/impl/ne;
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
.method public final a(Lio/appmetrica/analytics/impl/me;)Lio/appmetrica/analytics/impl/Wl;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/me;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Wl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Wl;-><init>()V

    .line 2
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/me;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Wl;->a:J

    .line 3
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/me;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Wl;->b:J

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Wl;)Lio/appmetrica/analytics/impl/me;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/Wl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    new-instance p0, Lio/appmetrica/analytics/impl/me;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Wl;->a:J

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Wl;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/me;-><init>(JJ)V

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

    check-cast p1, Lio/appmetrica/analytics/impl/me;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ne;->a(Lio/appmetrica/analytics/impl/me;)Lio/appmetrica/analytics/impl/Wl;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Wl;

    new-instance p0, Lio/appmetrica/analytics/impl/me;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Wl;->a:J

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Wl;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/me;-><init>(JJ)V

    return-object p0
.end method
