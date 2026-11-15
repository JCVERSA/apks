.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;
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
    name = "WindowSkipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;
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
.field static final WINDOW_CLOSE:Ljava/lang/Object;

.field static final WINDOW_OPEN:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x6cfb005a8ed6e316L


# instance fields
.field final timeskip:J

.field final windows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;",
            ">;"
        }
    .end annotation
.end field

.field final worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_OPEN:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_CLOSE:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>(Li00/c;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler$Worker;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-wide v2, p2

    .line 4
    move-object v4, p6

    .line 5
    move v5, p8

    .line 6
    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;-><init>(Li00/c;JLjava/util/concurrent/TimeUnit;I)V

    .line 7
    .line 8
    .line 9
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    .line 10
    .line 11
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method boundary(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_OPEN:Ljava/lang/Object;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_CLOSE:Ljava/lang/Object;

    .line 9
    .line 10
    :goto_0
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->drain()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method cleanupResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method createFirstWindow()V
    .locals 15

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
    if-nez v0, :cond_2

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
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-wide/16 v2, 0x1

    .line 23
    .line 24
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 25
    .line 26
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->windowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->bufferSize:I

    .line 32
    .line 33
    invoke-static {v0, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 48
    .line 49
    invoke-interface {v3, v2}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 53
    .line 54
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v4, p0, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Z)V

    .line 58
    .line 59
    .line 60
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->timespan:J

    .line 61
    .line 62
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v3, v4, v5, v6, v7}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 65
    .line 66
    .line 67
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 68
    .line 69
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;

    .line 70
    .line 71
    invoke-direct {v9, p0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Z)V

    .line 72
    .line 73
    .line 74
    iget-wide v12, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->timeskip:J

    .line 75
    .line 76
    iget-object v14, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 77
    .line 78
    move-wide v10, v12

    .line 79
    invoke-virtual/range {v8 .. v14}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    .line 88
    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 97
    .line 98
    const-wide v1, 0x7fffffffffffffffL

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v1, v2}, Li00/d;->request(J)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 108
    .line 109
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstream:Li00/c;

    .line 113
    .line 114
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 115
    .line 116
    invoke-static {v2, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed;->h(J)Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v0, v2}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cleanupResources()V

    .line 124
    .line 125
    .line 126
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method drain()V
    .locals 12

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
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->windows:Ljava/util/List;

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
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_2
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->done:Z

    .line 29
    .line 30
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x0

    .line 35
    if-nez v6, :cond_3

    .line 36
    .line 37
    move v8, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v8, v7

    .line 40
    :goto_1
    if-eqz v5, :cond_7

    .line 41
    .line 42
    if-eqz v8, :cond_7

    .line 43
    .line 44
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->error:Ljava/lang/Throwable;

    .line 45
    .line 46
    if-eqz v5, :cond_5

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_4

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 63
    .line 64
    invoke-virtual {v7, v5}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-interface {v1, v5}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_6

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 87
    .line 88
    invoke-virtual {v6}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-interface {v1}, Li00/c;->onComplete()V

    .line 93
    .line 94
    .line 95
    :goto_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cleanupResources()V

    .line 96
    .line 97
    .line 98
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    if-nez v8, :cond_c

    .line 102
    .line 103
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_OPEN:Ljava/lang/Object;

    .line 104
    .line 105
    if-ne v6, v5, :cond_a

    .line 106
    .line 107
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->downstreamCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_1

    .line 114
    .line 115
    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 116
    .line 117
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    cmp-long v8, v8, v5

    .line 124
    .line 125
    if-eqz v8, :cond_8

    .line 126
    .line 127
    const-wide/16 v8, 0x1

    .line 128
    .line 129
    add-long/2addr v5, v8

    .line 130
    iput-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->emitted:J

    .line 131
    .line 132
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->windowCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 135
    .line 136
    .line 137
    iget v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->bufferSize:I

    .line 138
    .line 139
    invoke-static {v5, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v6, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    .line 147
    .line 148
    invoke-direct {v6, v5}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v6}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 155
    .line 156
    new-instance v9, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;

    .line 157
    .line 158
    invoke-direct {v9, p0, v7}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$WindowBoundaryRunnable;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;Z)V

    .line 159
    .line 160
    .line 161
    iget-wide v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->timespan:J

    .line 162
    .line 163
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 164
    .line 165
    invoke-virtual {v8, v9, v10, v11, v7}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_1

    .line 173
    .line 174
    invoke-virtual {v5}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstream:Li00/d;

    .line 180
    .line 181
    invoke-interface {v7}, Li00/d;->cancel()V

    .line 182
    .line 183
    .line 184
    invoke-static {v5, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed;->h(J)Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_9

    .line 197
    .line 198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v7, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 203
    .line 204
    invoke-virtual {v7, v5}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onError(Ljava/lang/Throwable;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_9
    invoke-interface {v1, v5}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->cleanupResources()V

    .line 212
    .line 213
    .line 214
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$AbstractWindowSubscriber;->upstreamCancelled:Z

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_a
    sget-object v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;->WINDOW_CLOSE:Ljava/lang/Object;

    .line 219
    .line 220
    if-ne v6, v5, :cond_b

    .line 221
    .line 222
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-nez v5, :cond_1

    .line 227
    .line 228
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 233
    .line 234
    invoke-virtual {v5}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eqz v7, :cond_1

    .line 248
    .line 249
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    check-cast v7, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 254
    .line 255
    invoke-virtual {v7, v6}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_c
    :goto_7
    neg-int v4, v4

    .line 260
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-nez v4, :cond_1

    .line 265
    .line 266
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
