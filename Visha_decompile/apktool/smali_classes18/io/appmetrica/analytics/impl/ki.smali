.class public final Lio/appmetrica/analytics/impl/ki;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/m5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/qf;",
            "Lio/appmetrica/analytics/impl/m5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/La;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/ji;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ji;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Q2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z

    move-result p0

    return p0
.end method
