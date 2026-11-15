.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/b;
.source "source.java"

# interfaces
.implements Li00/d;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/rxjava3/internal/subscribers/b;",
        "Li00/d;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/rxjava3/disposables/c;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final bufferSupplier:Lyx/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/k;"
        }
    .end annotation
.end field

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final timer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/disposables/c;",
            ">;"
        }
    .end annotation
.end field

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Li00/d;


# direct methods
.method constructor <init>(Li00/c;Lyx/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "Lyx/k;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/MpscLinkedQueue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/subscribers/b;-><init>(Li00/c;Lio/reactivex/rxjava3/operators/f;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->bufferSupplier:Lyx/k;

    .line 17
    .line 18
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timespan:J

    .line 19
    .line 20
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Li00/c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->accept(Li00/c;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public accept(Li00/c;Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "TU;)Z"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    invoke-interface {p1, p2}, Li00/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->upstream:Li00/d;

    .line 5
    .line 6
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 17
    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->done:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->enter()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 34
    .line 35
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v0, v2, v3, v1, p0}, Lio/reactivex/rxjava3/internal/util/i;->e(Lio/reactivex/rxjava3/operators/f;Li00/c;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/h;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public onSubscribe(Li00/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->upstream:Li00/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Li00/d;Li00/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->upstream:Li00/d;

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->bufferSupplier:Lyx/k;

    .line 12
    .line 13
    invoke-interface {v0}, Lyx/k;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "The supplied buffer is null"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 25
    .line 26
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Li00/c;->onSubscribe(Li00/d;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-wide v0, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 44
    .line 45
    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timespan:J

    .line 46
    .line 47
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    move-object v3, p0

    .line 50
    move-wide v4, v6

    .line 51
    invoke-virtual/range {v2 .. v8}, Lio/reactivex/rxjava3/core/Scheduler;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/j0;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->cancel()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 76
    .line 77
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Li00/c;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/subscribers/b;->requested(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->bufferSupplier:Lyx/k;

    .line 2
    .line 3
    invoke-interface {v0}, Lyx/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "The supplied buffer is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->buffer:Ljava/util/Collection;

    .line 24
    .line 25
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->fastPathEmitMax(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber;->cancel()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 41
    .line 42
    invoke-interface {v1, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
