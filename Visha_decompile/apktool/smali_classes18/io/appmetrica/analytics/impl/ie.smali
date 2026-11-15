.class public final Lio/appmetrica/analytics/impl/ie;
.super Lio/appmetrica/analytics/impl/ph;
.source "SourceFile"


# instance fields
.field public final e:Lio/appmetrica/analytics/impl/pf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;Lio/appmetrica/analytics/impl/pf;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/ph;-><init>(Lio/appmetrica/analytics/impl/i0;Lio/appmetrica/analytics/impl/Ck;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/ie;->e:Lio/appmetrica/analytics/impl/pf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ie;->e:Lio/appmetrica/analytics/impl/pf;

    monitor-enter p0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/internal/IAppMetricaService;->pauseUserSession(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
