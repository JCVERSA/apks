.class final Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventLoopWorker"
.end annotation


# instance fields
.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field private final tasks:Lgd1;

.field private final threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lgd1;

    invoke-virtual {p1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->get()Lio/reactivex/internal/schedulers/IoScheduler$a;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lgd1;

    invoke-virtual {v0}, Lgd1;->dispose()V

    sget-boolean v0, Lio/reactivex/internal/schedulers/IoScheduler;->j:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lsc2;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object p0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->release(Lio/reactivex/internal/schedulers/IoScheduler$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object p0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->release(Lio/reactivex/internal/schedulers/IoScheduler$a;)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lgd1;

    invoke-virtual {v0}, Lgd1;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex/internal/schedulers/IoScheduler$a;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lgd1;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/a;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lsc2;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method
