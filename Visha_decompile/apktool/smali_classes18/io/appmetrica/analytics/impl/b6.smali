.class public final Lio/appmetrica/analytics/impl/b6;
.super Lio/appmetrica/analytics/impl/K4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/vb;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/vb;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/J4;

    new-instance p2, Lio/appmetrica/analytics/impl/Lb;

    new-instance p3, Lio/appmetrica/analytics/impl/D4;

    const/16 v0, 0x64

    invoke-direct {p3, v0}, Lio/appmetrica/analytics/impl/D4;-><init>(I)V

    invoke-direct {p2, p3}, Lio/appmetrica/analytics/impl/Lb;-><init>(Lio/appmetrica/analytics/impl/D4;)V

    invoke-direct {v5, p2}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/K4;-><init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Cn;)V
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/Cn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Cn;->d:Lio/appmetrica/analytics/impl/En;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/En;->c:D

    iget-object p0, p0, Lio/appmetrica/analytics/impl/K4;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v2, v0

    iput-wide v2, p1, Lio/appmetrica/analytics/impl/En;->c:D

    return-void
.end method
