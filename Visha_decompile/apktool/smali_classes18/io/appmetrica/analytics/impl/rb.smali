.class public final Lio/appmetrica/analytics/impl/rb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Sc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Sc;

    new-instance v1, Lio/appmetrica/analytics/impl/on;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/on;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Sc;-><init>(Lio/appmetrica/analytics/impl/on;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/rb;-><init>(Lio/appmetrica/analytics/impl/Sc;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Sc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/rb;->a:Lio/appmetrica/analytics/impl/Sc;

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/nn;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/nn;)[B
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rb;->a:Lio/appmetrica/analytics/impl/Sc;

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Sc;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;

    .line 3
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

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

    check-cast p1, Lio/appmetrica/analytics/impl/nn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/rb;->a(Lio/appmetrica/analytics/impl/nn;)[B

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

    check-cast p1, [B

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
