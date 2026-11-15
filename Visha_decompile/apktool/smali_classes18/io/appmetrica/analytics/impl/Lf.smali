.class public final Lio/appmetrica/analytics/impl/Lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Jf;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Rf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Rf;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lf;->a:Lio/appmetrica/analytics/impl/Rf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lf;->a:Lio/appmetrica/analytics/impl/Rf;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rf;->b:Lio/appmetrica/analytics/impl/Ga;

    new-instance v1, Lio/appmetrica/analytics/impl/Kf;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Kf;-><init>(Lio/appmetrica/analytics/impl/Rf;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lio/appmetrica/analytics/impl/Fa;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/Fa;-><init>(Lio/appmetrica/analytics/impl/Ga;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/ua;->d:Lio/appmetrica/analytics/impl/Uj;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Uj;->a:Lio/appmetrica/analytics/impl/Tj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "IAA-SHMSR"

    new-instance v4, Lio/appmetrica/analytics/impl/yd;

    new-instance v4, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/appmetrica/analytics/impl/yd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/cg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/Rf;)Lio/appmetrica/analytics/impl/Jf;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/Rf;Lio/appmetrica/analytics/impl/cg;Lio/appmetrica/analytics/impl/Jf;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/Kf;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ga;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/In;->a(Landroid/database/Cursor;)V

    throw p0
.end method
