.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8f22a8b85feb275L


# instance fields
.field consumed:J

.field final downstream:Lio/reactivex/rxjava3/operators/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/operators/a;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/operators/a;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;-><init>(Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onSubscribe(Li00/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Li00/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Li00/d;Li00/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Li00/d;

    .line 10
    .line 11
    instance-of v0, p1, Lio/reactivex/rxjava3/operators/d;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Lio/reactivex/rxjava3/operators/d;

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/c;->requestFusion(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    .line 30
    .line 31
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 32
    .line 33
    throw v1

    .line 34
    :cond_0
    iput v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    .line 35
    .line 36
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 37
    .line 38
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    .line 42
    .line 43
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->prefetch:I

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 49
    .line 50
    throw v1

    .line 51
    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->sourceMode:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 15
    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    add-long/2addr v1, v3

    .line 19
    iget v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->limit:I

    .line 20
    .line 21
    int-to-long v3, v3

    .line 22
    cmp-long v3, v1, v3

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 29
    .line 30
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Li00/d;

    .line 31
    .line 32
    invoke-interface {v3, v1, v2}, Li00/d;->request(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-object v0
.end method

.method runAsync()V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    .line 4
    .line 5
    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    move v6, v5

    .line 9
    :cond_0
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 12
    .line 13
    .line 14
    move-result-wide v7

    .line 15
    cmp-long v7, v1, v7

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v7, :cond_4

    .line 19
    .line 20
    iget-boolean v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 21
    .line 22
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-nez v10, :cond_1

    .line 27
    .line 28
    move v10, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v10, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v9, v10, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->checkTerminated(ZZLi00/c;)Z

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    if-eqz v9, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-eqz v10, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    throw v8

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    iput-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 47
    .line 48
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Li00/d;

    .line 49
    .line 50
    invoke-interface {v1}, Li00/d;->cancel()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    .line 54
    .line 55
    .line 56
    throw v8

    .line 57
    :cond_4
    :goto_1
    if-nez v7, :cond_5

    .line 58
    .line 59
    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->done:Z

    .line 60
    .line 61
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    invoke-virtual {p0, v7, v9, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->checkTerminated(ZZLi00/c;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    .line 73
    .line 74
    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;->consumed:J

    .line 75
    .line 76
    neg-int v6, v6

    .line 77
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_0

    .line 82
    .line 83
    return-void
.end method

.method runBackfused()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method runSync()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    move v4, v3

    .line 7
    :cond_0
    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    cmp-long v5, v1, v5

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v5, :cond_3

    .line 17
    .line 18
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 30
    .line 31
    throw v6

    .line 32
    :cond_2
    throw v6

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 38
    .line 39
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->upstream:Li00/d;

    .line 40
    .line 41
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 42
    .line 43
    .line 44
    throw v6

    .line 45
    :cond_3
    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 46
    .line 47
    if-eqz v5, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_5

    .line 55
    .line 56
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->produced:J

    .line 57
    .line 58
    neg-int v4, v4

    .line 59
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    iput-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;->cancelled:Z

    .line 67
    .line 68
    throw v6
.end method
