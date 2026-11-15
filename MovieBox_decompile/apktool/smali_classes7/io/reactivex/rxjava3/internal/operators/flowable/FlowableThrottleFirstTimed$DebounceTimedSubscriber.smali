.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Li00/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/rxjava3/core/f;",
        "Li00/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e5310a1f6e139dcL


# instance fields
.field done:Z

.field final downstream:Li00/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li00/c;"
        }
    .end annotation
.end field

.field volatile gate:Z

.field final onDropped:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field

.field final timeout:J

.field final timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Li00/d;

.field final worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Li00/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler$Worker;Lyx/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            "Lyx/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 10
    .line 11
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 12
    .line 13
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timeout:J

    .line 14
    .line 15
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 18
    .line 19
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->onDropped:Lyx/f;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->upstream:Li00/d;

    .line 2
    .line 3
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 8
    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 10
    .line 11
    invoke-interface {v0}, Li00/c;->onComplete()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 15
    .line 16
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 11
    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 18
    .line 19
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x1

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lio/reactivex/rxjava3/internal/util/a;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lio/reactivex/rxjava3/disposables/c;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 47
    .line 48
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 49
    .line 50
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->timeout:J

    .line 51
    .line 52
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-virtual {v0, p0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->upstream:Li00/d;

    .line 63
    .line 64
    invoke-interface {p1}, Li00/d;->cancel()V

    .line 65
    .line 66
    .line 67
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 68
    .line 69
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 70
    .line 71
    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 79
    .line 80
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->onDropped:Lyx/f;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    :try_start_0
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->upstream:Li00/d;

    .line 97
    .line 98
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 99
    .line 100
    .line 101
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->done:Z

    .line 102
    .line 103
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 109
    .line 110
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method public onSubscribe(Li00/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->upstream:Li00/d;

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->upstream:Li00/d;

    .line 10
    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->downstream:Li00/c;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Li00/c;->onSubscribe(Li00/d;)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber;->gate:Z

    .line 3
    .line 4
    return-void
.end method
