.class final Lio/reactivex/internal/operators/parallel/ParallelRunOn$RunOnConditionalSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeeb976b788f368aL


# instance fields
.field final downstream:Lne1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lne1;ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne1;",
            "I",
            "Lio/reactivex/internal/queue/SpscArrayQueue<",
            "TT;>;",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;-><init>(ILio/reactivex/internal/queue/SpscArrayQueue;Lio/reactivex/Scheduler$Worker;)V

    return-void
.end method


# virtual methods
.method public onSubscribe(Lf2a;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lf2a;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lf2a;Lf2a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->upstream:Lf2a;

    const/4 p0, 0x0

    throw p0
.end method

.method public run()V
    .locals 12

    iget v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    :goto_0
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v4

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    iget-boolean v10, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    return-void

    :cond_1
    iget-boolean v10, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v10, :cond_3

    iget-object v11, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    throw v9

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    move v11, v2

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-eqz v10, :cond_6

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    throw v9

    :cond_6
    :goto_3
    if-eqz v11, :cond_7

    goto :goto_4

    :cond_7
    throw v9

    :cond_8
    :goto_4
    if-nez v8, :cond_c

    iget-boolean v8, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->cancelled:Z

    if-eqz v8, :cond_9

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    return-void

    :cond_9
    iget-boolean v8, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->done:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->error:Ljava/lang/Throwable;

    if-nez v8, :cond_b

    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    throw v9

    :cond_b
    invoke-virtual {v1}, Lio/reactivex/internal/queue/SpscArrayQueue;->clear()V

    throw v9

    :cond_c
    :goto_5
    cmp-long v8, v6, v6

    if-eqz v8, :cond_d

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v4, v8

    if-eqz v4, :cond_d

    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v3, :cond_e

    iput v0, p0, Lio/reactivex/internal/operators/parallel/ParallelRunOn$BaseRunOnSubscriber;->consumed:I

    neg-int v3, v3

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_e
    move v3, v4

    goto :goto_0
.end method
