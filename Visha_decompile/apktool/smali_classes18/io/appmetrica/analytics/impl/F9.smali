.class public final Lio/appmetrica/analytics/impl/F9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Uj;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->w()Lio/appmetrica/analytics/impl/Uj;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F9;->a:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Uj;->c()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-void
.end method


# virtual methods
.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F9;->a:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Uj;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final getInterruptionThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/impl/yd;

    new-instance p1, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/appmetrica/analytics/impl/yd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p3, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getModuleExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-object p0
.end method

.method public final getSupportIOExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F9;->a:Lio/appmetrica/analytics/impl/Uj;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Uj;->f:Lio/appmetrica/analytics/impl/G9;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Uj;->f:Lio/appmetrica/analytics/impl/G9;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Uj;->a:Lio/appmetrica/analytics/impl/Tj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/G9;

    const-string v1, "IAA-SIO"

    invoke-static {v1}, Lio/appmetrica/analytics/impl/G9;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/ib;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/G9;-><init>(Lio/appmetrica/analytics/impl/ib;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Uj;->f:Lio/appmetrica/analytics/impl/G9;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Uj;->f:Lio/appmetrica/analytics/impl/G9;

    return-object p0
.end method

.method public final getUiExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F9;->a:Lio/appmetrica/analytics/impl/Uj;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Uj;->f()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
