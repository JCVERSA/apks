.class public final Lio/appmetrica/analytics/impl/V4;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/O4;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/qf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/O4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/qf;",
            "Lio/appmetrica/analytics/impl/O4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/qf;Lio/appmetrica/analytics/impl/La;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/L4;)Z
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/L4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/appmetrica/analytics/impl/U4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/U4;-><init>(Lio/appmetrica/analytics/impl/L4;)V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Q2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/P2;)Z

    move-result p0

    return p0
.end method
