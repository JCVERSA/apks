.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;
.super Lio/reactivex/rxjava3/internal/observers/e;
.source "source.java"

# interfaces
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
        "Lio/reactivex/rxjava3/internal/observers/e;",
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

.field upstream:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o;Lyx/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o;",
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
    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/e;-><init>(Lio/reactivex/rxjava3/core/o;Lio/reactivex/rxjava3/operators/f;)V

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Lyx/k;

    .line 17
    .line 18
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timespan:J

    .line 19
    .line 20
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lio/reactivex/rxjava3/core/o;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->accept(Lio/reactivex/rxjava3/core/o;Ljava/util/Collection;)V

    return-void
.end method

.method public accept(Lio/reactivex/rxjava3/core/o;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/o;",
            "TU;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/core/o;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

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
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/e;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 11
    .line 12
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->done:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/e;->enter()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 25
    .line 26
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v2, v3, v1, p0}, Lio/reactivex/rxjava3/internal/util/i;->d(Lio/reactivex/rxjava3/operators/f;Lio/reactivex/rxjava3/core/o;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/e;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    .line 34
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

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
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/disposables/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Lyx/k;

    .line 12
    .line 13
    invoke-interface {p1}, Lyx/k;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "The buffer supplied is null"

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 25
    .line 26
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lio/reactivex/rxjava3/disposables/c;

    .line 38
    .line 39
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 46
    .line 47
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timespan:J

    .line 48
    .line 49
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    move-object v1, p0

    .line 52
    move-wide v2, v4

    .line 53
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/Scheduler;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/c;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->dispose()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    .line 71
    .line 72
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/rxjava3/core/o;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->bufferSupplier:Lyx/k;

    .line 2
    .line 3
    invoke-interface {v0}, Lyx/k;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "The bufferSupplier returned a null buffer"

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
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->buffer:Ljava/util/Collection;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->timer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/rxjava3/internal/observers/e;->fastPathEmit(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v0

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/e;->downstream:Lio/reactivex/rxjava3/core/o;

    .line 45
    .line 46
    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/core/o;->onError(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableBufferTimed$BufferExactUnboundedObserver;->dispose()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
