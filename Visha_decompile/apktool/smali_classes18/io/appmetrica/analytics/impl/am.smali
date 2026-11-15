.class public final Lio/appmetrica/analytics/impl/am;
.super Lio/appmetrica/analytics/impl/O2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/O2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/Zl;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Lio/appmetrica/analytics/impl/Zl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zl;-><init>()V

    invoke-static {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Zl;

    return-object p0
.end method

.method public final bridge synthetic a()Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/am;->b()Lio/appmetrica/analytics/impl/Zl;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Zl;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/Zl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zl;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ul;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ul;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Zl;->i:Lio/appmetrica/analytics/impl/Ul;

    return-object p0
.end method

.method public final bridge synthetic defaultValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/am;->b()Lio/appmetrica/analytics/impl/Zl;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toState([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/am;->a([B)Lio/appmetrica/analytics/impl/Zl;

    move-result-object p0

    return-object p0
.end method
