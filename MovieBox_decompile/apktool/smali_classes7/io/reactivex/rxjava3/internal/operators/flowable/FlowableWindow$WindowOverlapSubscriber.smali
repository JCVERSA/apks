.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
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
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/f;",
        "Li00/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21b3dc811227de88L


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Li00/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li00/c;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field produced:J

.field final queue:Lio/reactivex/rxjava3/operators/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/h;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final size:J

.field final skip:J

.field upstream:Li00/d;

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/rxjava3/processors/UnicastProcessor;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Li00/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "JJI)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Li00/c;

    .line 6
    .line 7
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    .line 8
    .line 9
    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 10
    .line 11
    new-instance p1, Lio/reactivex/rxjava3/operators/h;

    .line 12
    .line 13
    invoke-direct {p1, p6}, Lio/reactivex/rxjava3/operators/h;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 3
    .line 4
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->run()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method checkTerminated(ZZLi00/c;Lio/reactivex/rxjava3/operators/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Li00/c;",
            "Lio/reactivex/rxjava3/operators/h;",
            ")Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p4}, Lio/reactivex/rxjava3/operators/h;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p3}, Li00/c;->onComplete()V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method drain()V
    .locals 15

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Li00/c;

    .line 11
    .line 12
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    move v3, v2

    .line 16
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    :goto_1
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 25
    .line 26
    if-eqz v4, :cond_b

    .line 27
    .line 28
    invoke-virtual {v4}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    move-wide v8, v6

    .line 41
    :goto_2
    cmp-long v10, v8, v4

    .line 42
    .line 43
    if-eqz v10, :cond_8

    .line 44
    .line 45
    iget-boolean v11, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 46
    .line 47
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->poll()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 52
    .line 53
    if-nez v12, :cond_3

    .line 54
    .line 55
    move v13, v2

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    const/4 v13, 0x0

    .line 58
    :goto_3
    iget-boolean v14, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 59
    .line 60
    if-eqz v14, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p0, v11, v13, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLi00/c;Lio/reactivex/rxjava3/operators/h;)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    if-eqz v13, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/flowable/g;

    .line 74
    .line 75
    invoke-direct {v10, v12}, Lio/reactivex/rxjava3/internal/operators/flowable/g;-><init>(Lio/reactivex/rxjava3/processors/a;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v10}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10}, Lio/reactivex/rxjava3/internal/operators/flowable/g;->h()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_7

    .line 86
    .line 87
    invoke-virtual {v12}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->onComplete()V

    .line 88
    .line 89
    .line 90
    :cond_7
    const-wide/16 v10, 0x1

    .line 91
    .line 92
    add-long/2addr v8, v10

    .line 93
    goto :goto_2

    .line 94
    :cond_8
    :goto_4
    if-nez v10, :cond_a

    .line 95
    .line 96
    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 97
    .line 98
    if-eqz v10, :cond_9

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    iget-boolean v10, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 102
    .line 103
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/h;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    invoke-virtual {p0, v10, v11, v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLi00/c;Lio/reactivex/rxjava3/operators/h;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_a

    .line 112
    .line 113
    return-void

    .line 114
    :cond_a
    cmp-long v6, v8, v6

    .line 115
    .line 116
    if-eqz v6, :cond_b

    .line 117
    .line 118
    const-wide v6, 0x7fffffffffffffffL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    cmp-long v4, v4, v6

    .line 124
    .line 125
    if-eqz v4, :cond_b

    .line 126
    .line 127
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    .line 129
    neg-long v5, v8

    .line 130
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 131
    .line 132
    .line 133
    :cond_b
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    .line 135
    neg-int v3, v3

    .line 136
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-nez v3, :cond_1

    .line 141
    .line 142
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Li00/a;

    .line 18
    .line 19
    invoke-interface {v1}, Li00/c;->onComplete()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Li00/a;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 14
    .line 15
    .line 16
    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    .line 17
    .line 18
    invoke-static {v4, p0}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->i(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/UnicastProcessor;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    :goto_0
    const-wide/16 v5, 0x1

    .line 30
    .line 31
    add-long/2addr v0, v5

    .line 32
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Li00/a;

    .line 49
    .line 50
    invoke-interface {v8, p1}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-eqz v4, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/rxjava3/operators/h;

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/operators/h;->offer(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    .line 65
    .line 66
    add-long/2addr v7, v5

    .line 67
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    .line 68
    .line 69
    cmp-long p1, v7, v4

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 74
    .line 75
    sub-long/2addr v7, v4

    .line 76
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    .line 77
    .line 78
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Li00/a;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-interface {p1}, Li00/c;->onComplete()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    .line 93
    .line 94
    :cond_4
    :goto_2
    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 95
    .line 96
    cmp-long p1, v0, v4

    .line 97
    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    iput-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    .line 104
    .line 105
    :goto_3
    return-void
.end method

.method public onSubscribe(Li00/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Li00/d;

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Li00/d;

    .line 10
    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Li00/c;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Li00/c;->onSubscribe(Li00/d;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 31
    .line 32
    const-wide/16 v2, 0x1

    .line 33
    .line 34
    sub-long/2addr p1, v2

    .line 35
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->c(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    .line 40
    .line 41
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->b(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Li00/d;

    .line 46
    .line 47
    invoke-interface {v0, p1, p2}, Li00/d;->request(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    .line 52
    .line 53
    invoke-static {v0, v1, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->c(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Li00/d;

    .line 58
    .line 59
    invoke-interface {v0, p1, p2}, Li00/d;->request(J)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Li00/d;

    .line 8
    .line 9
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
