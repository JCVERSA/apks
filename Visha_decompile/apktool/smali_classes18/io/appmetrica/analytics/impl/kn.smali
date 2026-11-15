.class public final Lio/appmetrica/analytics/impl/kn;
.super Lio/appmetrica/analytics/impl/ph;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/ph;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;)V

    iput p3, p0, Lio/appmetrica/analytics/impl/kn;->e:I

    iput-object p4, p0, Lio/appmetrica/analytics/impl/kn;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
    .locals 1

    iget v0, p0, Lio/appmetrica/analytics/impl/kn;->e:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kn;->f:Landroid/os/Bundle;

    invoke-interface {p1, v0, p0}, Lio/appmetrica/analytics/internal/IAppMetricaService;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method
