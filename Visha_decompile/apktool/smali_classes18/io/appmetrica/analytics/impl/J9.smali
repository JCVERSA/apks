.class public final Lio/appmetrica/analytics/impl/J9;
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
.method public final a(Lio/appmetrica/analytics/impl/Tl;)Lio/appmetrica/analytics/impl/I9;
    .locals 2

    .line 4
    new-instance p0, Lio/appmetrica/analytics/impl/I9;

    .line 5
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Tl;->a:J

    .line 6
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/I9;-><init>(J)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/I9;)Lio/appmetrica/analytics/impl/Tl;
    .locals 2

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Tl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Tl;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/I9;->a:J

    .line 3
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Tl;->a:J

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/I9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/J9;->a(Lio/appmetrica/analytics/impl/I9;)Lio/appmetrica/analytics/impl/Tl;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lio/appmetrica/analytics/impl/Tl;

    new-instance p0, Lio/appmetrica/analytics/impl/I9;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Tl;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/I9;-><init>(J)V

    return-object p0
.end method
