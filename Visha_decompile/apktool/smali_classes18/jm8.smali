.class public abstract Ljm8;
.super Lpm8;
.source "SourceFile"

# interfaces
.implements Ly14;
.implements Lgm8;


# instance fields
.field protected volatile cancelled:Z

.field protected volatile done:Z

.field protected final downstream:Ld2a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld2a;"
        }
    .end annotation
.end field

.field protected error:Ljava/lang/Throwable;

.field protected final queue:Lnm9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnm9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld2a;Lnm9;)V
    .locals 0

    invoke-direct {p0}, Lpm8;-><init>()V

    iput-object p1, p0, Ljm8;->downstream:Ld2a;

    iput-object p2, p0, Ljm8;->queue:Lnm9;

    return-void
.end method


# virtual methods
.method public accept(Ld2a;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2a;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final cancelled()Z
    .locals 0

    iget-boolean p0, p0, Ljm8;->cancelled:Z

    return p0
.end method

.method public final done()Z
    .locals 0

    iget-boolean p0, p0, Ljm8;->done:Z

    return p0
.end method

.method public final enter()Z
    .locals 0

    iget-object p0, p0, Lqm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final error()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Ljm8;->error:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final fastEnter()Z
    .locals 2

    iget-object v0, p0, Lqm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lqm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final fastPathEmitMax(Ljava/lang/Object;ZLrc2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lrc2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ljm8;->downstream:Ld2a;

    iget-object v1, p0, Ljm8;->queue:Lnm9;

    invoke-virtual {p0}, Ljm8;->fastEnter()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, p1}, Ljm8;->accept(Ld2a;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljm8;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljm8;->leave(I)I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_1
    invoke-interface {p3}, Lrc2;->dispose()V

    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p1, "Could not emit buffer due to lack of requests"

    invoke-direct {p0, p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljm8;->enter()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {v1, v0, p2, p3, p0}, Lhm8;->e(Lnm9;Ld2a;ZLrc2;Lgm8;)V

    return-void
.end method

.method public final fastPathOrderedEmitMax(Ljava/lang/Object;ZLrc2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lrc2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ljm8;->downstream:Ld2a;

    iget-object v1, p0, Ljm8;->queue:Lnm9;

    invoke-virtual {p0}, Ljm8;->fastEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lom9;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, p1}, Ljm8;->accept(Ld2a;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljm8;->produced(J)J

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljm8;->leave(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_1
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Ljm8;->cancelled:Z

    invoke-interface {p3}, Lrc2;->dispose()V

    new-instance p0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string p1, "Could not emit buffer due to lack of requests"

    invoke-direct {p0, p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {v1, p1}, Lom9;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljm8;->enter()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    :goto_0
    invoke-static {v1, v0, p2, p3, p0}, Lhm8;->e(Lnm9;Ld2a;ZLrc2;Lgm8;)V

    return-void
.end method

.method public final leave(I)I
    .locals 0

    iget-object p0, p0, Lqm8;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method

.method public final produced(J)J
    .locals 0

    iget-object p0, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final requested()J
    .locals 2

    .line 1
    iget-object p0, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final requested(J)V
    .locals 1

    .line 2
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lom8;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, p1, p2}, Li50;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
