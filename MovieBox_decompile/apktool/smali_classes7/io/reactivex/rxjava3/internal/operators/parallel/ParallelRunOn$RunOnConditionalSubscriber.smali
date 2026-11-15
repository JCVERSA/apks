.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lio/reactivex/rxjava3/operators/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/a;ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/operators/a;",
            "I",
            "Lio/reactivex/rxjava3/operators/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/rxjava3/operators/SpscArrayQueue;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onSubscribe(Li00/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Li00/d;

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Li00/d;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public run()V
    .locals 10

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    move v3, v2

    .line 7
    :cond_0
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    cmp-long v4, v6, v4

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_8

    .line 19
    .line 20
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-boolean v8, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    .line 29
    .line 30
    if-eqz v8, :cond_3

    .line 31
    .line 32
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    .line 33
    .line 34
    if-nez v9, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 38
    .line 39
    .line 40
    throw v5

    .line 41
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->poll()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    if-nez v9, :cond_4

    .line 46
    .line 47
    move v9, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const/4 v9, 0x0

    .line 50
    :goto_1
    if-eqz v8, :cond_6

    .line 51
    .line 52
    if-nez v9, :cond_5

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    throw v5

    .line 56
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_7
    throw v5

    .line 60
    :cond_8
    :goto_3
    if-nez v4, :cond_c

    .line 61
    .line 62
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    .line 63
    .line 64
    if-eqz v4, :cond_9

    .line 65
    .line 66
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_9
    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    .line 71
    .line 72
    if-eqz v4, :cond_c

    .line 73
    .line 74
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    .line 75
    .line 76
    if-nez v4, :cond_b

    .line 77
    .line 78
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_a

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_a
    throw v5

    .line 86
    :cond_b
    invoke-virtual {v1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;->clear()V

    .line 87
    .line 88
    .line 89
    throw v5

    .line 90
    :cond_c
    :goto_4
    cmp-long v4, v6, v6

    .line 91
    .line 92
    if-eqz v4, :cond_d

    .line 93
    .line 94
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 95
    .line 96
    invoke-static {v4, v6, v7}, Lio/reactivex/rxjava3/internal/util/a;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 97
    .line 98
    .line 99
    :cond_d
    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    .line 100
    .line 101
    neg-int v3, v3

    .line 102
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_0

    .line 107
    .line 108
    return-void
.end method
