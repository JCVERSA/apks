.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExactBoundedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5513d3575b2218baL


# instance fields
.field count:J

.field final maxSize:J

.field final restartTimerOnMaxSize:Z

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field final timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

.field window:Lio/reactivex/rxjava3/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Li00/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;IJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "IJZ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide v2, p2

    .line 4
    move-object v4, p4

    .line 5
    move v5, p6

    .line 6
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;-><init>(Li00/c;JLjava/util/concurrent/TimeUnit;I)V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 10
    .line 11
    iput-wide p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->maxSize:J

    .line 12
    .line 13
    iput-boolean p9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 14
    .line 15
    if-eqz p9, :cond_0

    .line 16
    .line 17
    invoke-virtual {p5}, Lio/reactivex/rxjava3/core/Scheduler;->c()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 26
    .line 27
    :goto_0
    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 28
    .line 29
    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method boundary(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->drain()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method cleanupResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method createFirstWindow()V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstreamCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 24
    .line 25
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->windowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->bufferSize:I

    .line 31
    .line 32
    invoke-static {v2, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 37
    .line 38
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    .line 39
    .line 40
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 41
    .line 42
    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 46
    .line 47
    invoke-interface {v3, v2}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;

    .line 51
    .line 52
    invoke-direct {v5, p0, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;J)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 60
    .line 61
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 62
    .line 63
    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->timespan:J

    .line 64
    .line 65
    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 66
    .line 67
    move-wide v6, v8

    .line 68
    invoke-virtual/range {v4 .. v10}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 77
    .line 78
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 79
    .line 80
    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->timespan:J

    .line 81
    .line 82
    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    move-wide v6, v8

    .line 85
    invoke-virtual/range {v4 .. v10}, Lio/reactivex/rxjava3/core/Scheduler;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 99
    .line 100
    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 101
    .line 102
    .line 103
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 104
    .line 105
    const-wide v1, 0x7fffffffffffffffL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v1, v2}, Li00/d;->request(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 115
    .line 116
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 120
    .line 121
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 122
    .line 123
    invoke-static {v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed;->h(J)Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v0, v1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cleanupResources()V

    .line 131
    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 135
    .line 136
    :cond_3
    :goto_1
    return-void
.end method

.method createNewWindow(Lio/reactivex/rxjava3/processors/UnicastProcessor;)Lio/reactivex/rxjava3/processors/UnicastProcessor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;",
            ")",
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstreamCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cleanupResources()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 20
    .line 21
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v2, v2, v0

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 32
    .line 33
    invoke-interface {v2}, Li00/d;->cancel()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cleanupResources()V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 41
    .line 42
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed;->h(J)Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v2, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/16 v2, 0x1

    .line 53
    .line 54
    add-long/2addr v0, v2

    .line 55
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 56
    .line 57
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->windowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->bufferSize:I

    .line 63
    .line 64
    invoke-static {p1, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 69
    .line 70
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    .line 71
    .line 72
    invoke-direct {v2, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 76
    .line 77
    invoke-interface {v3, v2}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->timer:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 85
    .line 86
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 87
    .line 88
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;

    .line 89
    .line 90
    invoke-direct {v5, p0, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;J)V

    .line 91
    .line 92
    .line 93
    iget-wide v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->timespan:J

    .line 94
    .line 95
    iget-object v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 96
    .line 97
    move-wide v6, v8

    .line 98
    invoke-virtual/range {v4 .. v10}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->update(Lio/reactivex/rxjava3/disposables/c;)Z

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_0
    return-object p1
.end method

.method drain()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 9
    .line 10
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 11
    .line 12
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    move v4, v3

    .line 16
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 17
    .line 18
    if-eqz v5, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->window:Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->done:Z

    .line 28
    .line 29
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-nez v6, :cond_3

    .line 34
    .line 35
    move v7, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const/4 v7, 0x0

    .line 38
    :goto_1
    if-eqz v5, :cond_7

    .line 39
    .line 40
    if-eqz v7, :cond_7

    .line 41
    .line 42
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->error:Ljava/lang/Throwable;

    .line 43
    .line 44
    if-eqz v5, :cond_5

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-interface {v1, v5}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    if-eqz v2, :cond_6

    .line 56
    .line 57
    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 58
    .line 59
    .line 60
    :cond_6
    invoke-interface {v1}, Li00/c;->onComplete()V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->cleanupResources()V

    .line 64
    .line 65
    .line 66
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    if-nez v7, :cond_b

    .line 70
    .line 71
    instance-of v5, v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;

    .line 72
    .line 73
    const-wide/16 v7, 0x0

    .line 74
    .line 75
    if-eqz v5, :cond_9

    .line 76
    .line 77
    check-cast v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;

    .line 78
    .line 79
    iget-wide v5, v6, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$WindowBoundaryRunnable;->index:J

    .line 80
    .line 81
    iget-wide v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 82
    .line 83
    cmp-long v5, v5, v9

    .line 84
    .line 85
    if-eqz v5, :cond_8

    .line 86
    .line 87
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    .line 88
    .line 89
    if-nez v5, :cond_1

    .line 90
    .line 91
    :cond_8
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->createNewWindow(Lio/reactivex/rxjava3/processors/UnicastProcessor;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_0

    .line 98
    :cond_9
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-virtual {v2, v6}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 104
    .line 105
    const-wide/16 v9, 0x1

    .line 106
    .line 107
    add-long/2addr v5, v9

    .line 108
    iget-wide v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->maxSize:J

    .line 109
    .line 110
    cmp-long v9, v5, v9

    .line 111
    .line 112
    if-nez v9, :cond_a

    .line 113
    .line 114
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->createNewWindow(Lio/reactivex/rxjava3/processors/UnicastProcessor;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    :cond_a
    iput-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber;->count:J

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_b
    :goto_3
    neg-int v4, v4

    .line 125
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_1

    .line 130
    .line 131
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->windowDone()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
