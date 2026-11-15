.class public abstract Lio/reactivex/rxjava3/internal/subscribers/b;
.super Lio/reactivex/rxjava3/internal/subscribers/f;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Lio/reactivex/rxjava3/internal/util/h;


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Li00/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li00/c;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lio/reactivex/rxjava3/operators/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li00/c;Lio/reactivex/rxjava3/operators/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/subscribers/f;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 5
    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract accept(Li00/c;Ljava/lang/Object;)Z
.end method

.method public final cancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final done()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->done:Z

    .line 2
    .line 3
    return v0
.end method

.method public final enter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/g;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->error:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final fastEnter()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/g;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/g;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    return v1
.end method

.method protected final fastPathEmitMax(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lio/reactivex/rxjava3/disposables/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->fastEnter()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/b;->accept(Li00/c;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-wide v4, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmp-long p1, v2, v4

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const-wide/16 v2, 0x1

    .line 39
    .line 40
    invoke-virtual {p0, v2, v3}, Lio/reactivex/rxjava3/internal/subscribers/b;->produced(J)J

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/b;->leave(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->enter()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/rxjava3/internal/util/i;->e(Lio/reactivex/rxjava3/operators/f;Li00/c;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/h;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method protected final fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lio/reactivex/rxjava3/disposables/c;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->downstream:Li00/c;

    .line 2
    .line 3
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->queue:Lio/reactivex/rxjava3/operators/f;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->fastEnter()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/b;->accept(Li00/c;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-wide v4, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long p1, v2, v4

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const-wide/16 v2, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v2, v3}, Lio/reactivex/rxjava3/internal/subscribers/b;->produced(J)J

    .line 47
    .line 48
    .line 49
    :cond_0
    const/4 p1, -0x1

    .line 50
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/b;->leave(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/subscribers/b;->cancelled:Z

    .line 63
    .line 64
    invoke-interface {p3}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-interface {v1, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/b;->enter()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lio/reactivex/rxjava3/internal/util/i;->e(Lio/reactivex/rxjava3/operators/f;Li00/c;ZLio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/internal/util/h;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final leave(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/g;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final produced(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    neg-long p1, p1

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    return-wide p1
.end method

.method public final requested()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final requested(J)V
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/e;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
