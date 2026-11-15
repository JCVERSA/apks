.class public final Lio/appmetrica/analytics/impl/gm;
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
.method public final a(Lio/appmetrica/analytics/impl/fm;)Lio/appmetrica/analytics/impl/Xl;
    .locals 0

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/Xl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Xl;-><init>()V

    .line 2
    iget p1, p1, Lio/appmetrica/analytics/impl/fm;->a:I

    .line 3
    iput p1, p0, Lio/appmetrica/analytics/impl/Xl;->a:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Xl;)Lio/appmetrica/analytics/impl/fm;
    .locals 0

    .line 4
    new-instance p0, Lio/appmetrica/analytics/impl/fm;

    iget p1, p1, Lio/appmetrica/analytics/impl/Xl;->a:I

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/fm;-><init>(I)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/fm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/gm;->a(Lio/appmetrica/analytics/impl/fm;)Lio/appmetrica/analytics/impl/Xl;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Xl;

    new-instance p0, Lio/appmetrica/analytics/impl/fm;

    iget p1, p1, Lio/appmetrica/analytics/impl/Xl;->a:I

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/fm;-><init>(I)V

    return-object p0
.end method
