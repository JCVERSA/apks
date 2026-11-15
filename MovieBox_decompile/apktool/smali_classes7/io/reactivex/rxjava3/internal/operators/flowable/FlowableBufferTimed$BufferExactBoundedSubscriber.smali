.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;
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

.field consumerIndex:J

.field final maxSize:I

.field producerIndex:J

.field final restartTimerOnMaxSize:Z

.field timer:Lio/reactivex/rxjava3/disposables/c;

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Li00/d;

.field final w:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Li00/c;Lyx/k;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "Lyx/k;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
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
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Lyx/k;

    .line 10
    .line 11
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    .line 12
    .line 13
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->maxSize:I

    .line 16
    .line 17
    iput-boolean p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 18
    .line 19
    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Li00/c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->accept(Li00/c;Ljava/util/Collection;)Z

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
    invoke-interface {p1, p2}, Li00/c;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->upstream:Li00/d;

    .line 7
    .line 8
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 12
    .line 13
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onComplete()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 6
    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->done:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->enter()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 25
    .line 26
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {v0, v1, v2, p0, p0}, Lio/reactivex/rxjava3/internal/util/i;->e(Lio/reactivex/rxjava3/operators/f;Li00/c;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/h;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 33
    .line 34
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 35
    .line 36
    .line 37
    :cond_1
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
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 12
    .line 13
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

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
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->maxSize:I

    .line 18
    .line 19
    if-ge p1, v1, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 25
    .line 26
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    .line 27
    .line 28
    const-wide/16 v3, 0x1

    .line 29
    .line 30
    add-long/2addr v1, v3

    .line 31
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    .line 32
    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/disposables/c;

    .line 39
    .line 40
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Lyx/k;

    .line 48
    .line 49
    invoke-interface {p1}, Lyx/k;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "The supplied buffer is null"

    .line 54
    .line 55
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    .line 60
    monitor-enter p0

    .line 61
    :try_start_2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 62
    .line 63
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    .line 64
    .line 65
    add-long/2addr v0, v3

    .line 66
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    .line 67
    .line 68
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 74
    .line 75
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    .line 76
    .line 77
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 78
    .line 79
    move-object v1, p0

    .line 80
    move-wide v2, v4

    .line 81
    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/disposables/c;

    .line 86
    .line 87
    :cond_3
    return-void

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    throw p1

    .line 91
    :catchall_2
    move-exception p1

    .line 92
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancel()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 99
    .line 100
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    throw p1
.end method

.method public onSubscribe(Li00/d;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->upstream:Li00/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Li00/d;Li00/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->upstream:Li00/d;

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Lyx/k;

    .line 13
    .line 14
    invoke-interface {v0}, Lyx/k;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "The supplied buffer is null"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 26
    .line 27
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 28
    .line 29
    invoke-interface {v0, p0}, Li00/c;->onSubscribe(Li00/d;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 33
    .line 34
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    .line 35
    .line 36
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    move-object v2, p0

    .line 39
    move-wide v3, v5

    .line 40
    invoke-virtual/range {v1 .. v7}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/disposables/c;

    .line 45
    .line 46
    const-wide v0, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 60
    .line 61
    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Li00/d;->cancel()V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 68
    .line 69
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Li00/c;)V

    .line 70
    .line 71
    .line 72
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
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Lyx/k;

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
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    .line 20
    .line 21
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    .line 29
    .line 30
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v1, v0, p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw v0

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancel()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 50
    .line 51
    invoke-interface {v1, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
