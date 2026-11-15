.class public final Lio/appmetrica/analytics/impl/Xd;
.super Lio/appmetrica/analytics/impl/K4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;DLio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/appmetrica/analytics/impl/Pn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/appmetrica/analytics/impl/U2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lio/appmetrica/analytics/impl/Pn;",
            "Lio/appmetrica/analytics/impl/U2;",
            ")V"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/K4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Cn;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Cn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Cn;->d:Lio/appmetrica/analytics/impl/En;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K4;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/En;->b:D

    return-void
.end method
