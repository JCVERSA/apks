.class public final Lio/appmetrica/analytics/impl/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/i0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/g0;->a:Lio/appmetrica/analytics/impl/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g0;->a:Lio/appmetrica/analytics/impl/i0;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/i0;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/i0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/i0;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/i0;->i:Lio/appmetrica/analytics/impl/h0;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    :cond_0
    :goto_0
    :try_start_2
    iput-object v1, p0, Lio/appmetrica/analytics/impl/i0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
