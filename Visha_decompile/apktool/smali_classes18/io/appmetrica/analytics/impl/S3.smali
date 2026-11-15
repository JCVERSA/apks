.class public final Lio/appmetrica/analytics/impl/S3;
.super Lio/appmetrica/analytics/impl/O2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/O2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Lio/appmetrica/analytics/impl/R3;
    .locals 0

    .line 2
    new-instance p0, Lio/appmetrica/analytics/impl/R3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/R3;-><init>()V

    invoke-static {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/R3;

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    new-instance p0, Lio/appmetrica/analytics/impl/R3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/R3;-><init>()V

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/R3;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/R3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/R3;-><init>()V

    return-object p0
.end method

.method public final defaultValue()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/R3;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/R3;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic toState([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/S3;->a([B)Lio/appmetrica/analytics/impl/R3;

    move-result-object p0

    return-object p0
.end method
