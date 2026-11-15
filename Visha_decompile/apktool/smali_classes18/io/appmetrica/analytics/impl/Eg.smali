.class public Lio/appmetrica/analytics/impl/Eg;
.super Lio/appmetrica/analytics/impl/ph;
.source "SourceFile"


# instance fields
.field public final e:Lio/appmetrica/analytics/impl/nh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/nh;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/ph;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/nh;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
    .locals 2

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/nh;

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/nh;->a:Lio/appmetrica/analytics/impl/a6;

    .line 4
    iget-object v1, p0, Lio/appmetrica/analytics/impl/nh;->e:Lio/appmetrica/analytics/impl/xh;

    .line 5
    iget p0, p0, Lio/appmetrica/analytics/impl/nh;->c:I

    .line 6
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/xh;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/a6;->d(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 7
    invoke-interface {p1, p0, v0}, Lio/appmetrica/analytics/internal/IAppMetricaService;->reportData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method
