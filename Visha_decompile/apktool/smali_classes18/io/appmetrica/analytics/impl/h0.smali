.class public final Lio/appmetrica/analytics/impl/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/i0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i0;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    invoke-static {p2}, Lio/appmetrica/analytics/internal/IAppMetricaService$Stub;->asInterface(Landroid/os/IBinder;)Lio/appmetrica/analytics/internal/IAppMetricaService;

    move-result-object p2

    iput-object p2, v0, Lio/appmetrica/analytics/impl/i0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/i0;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/h0;->a:Lio/appmetrica/analytics/impl/i0;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
