.class public final Lio/reactivex/processors/UnicastProcessor;
.super Lx14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;
    }
.end annotation


# instance fields
.field public final c:Lmv9;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Z

.field public volatile f:Z

.field public g:Ljava/lang/Throwable;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;

.field public volatile i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

.field public final l:Ljava/util/concurrent/atomic/AtomicLong;

.field public m:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lx14;-><init>()V

    .line 4
    new-instance v0, Lmv9;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lac7;->e(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lmv9;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->c:Lmv9;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-boolean p3, p0, Lio/reactivex/processors/UnicastProcessor;->e:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance p1, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;

    invoke-direct {p1, p0}, Lio/reactivex/processors/UnicastProcessor$UnicastQueueSubscription;-><init>(Lio/reactivex/processors/UnicastProcessor;)V

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->l:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static v(I)Lio/reactivex/processors/UnicastProcessor;
    .locals 1

    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {v0, p0}, Lio/reactivex/processors/UnicastProcessor;-><init>(I)V

    return-object v0
.end method

.method public static w(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;
    .locals 1

    const-string v0, "onTerminate"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/processors/UnicastProcessor;

    invoke-direct {v0, p0, p1}, Lio/reactivex/processors/UnicastProcessor;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public A(Ld2a;)V
    .locals 17

    move-object/from16 v6, p0

    iget-object v7, v6, Lio/reactivex/processors/UnicastProcessor;->c:Lmv9;

    iget-boolean v0, v6, Lio/reactivex/processors/UnicastProcessor;->e:Z

    const/4 v8, 0x1

    xor-int/lit8 v9, v0, 0x1

    move v10, v8

    :goto_0
    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v15, v11, v4

    if-eqz v15, :cond_3

    iget-boolean v2, v6, Lio/reactivex/processors/UnicastProcessor;->f:Z

    invoke-virtual {v7}, Lmv9;->poll()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move/from16 v16, v8

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    move v1, v9

    move-object v8, v3

    move/from16 v3, v16

    move-wide v13, v4

    move-object/from16 v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/processors/UnicastProcessor;->u(ZZZLd2a;Lmv9;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz v16, :cond_2

    :goto_3
    move-object/from16 v5, p1

    goto :goto_4

    :cond_2
    move-object/from16 v5, p1

    invoke-interface {v5, v8}, Ld2a;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, v13

    move-wide v4, v0

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move-wide v13, v4

    goto :goto_3

    :goto_4
    if-nez v15, :cond_4

    iget-boolean v2, v6, Lio/reactivex/processors/UnicastProcessor;->f:Z

    invoke-virtual {v7}, Lmv9;->isEmpty()Z

    move-result v3

    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/processors/UnicastProcessor;->u(ZZZLd2a;Lmv9;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-eqz v0, :cond_5

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v11, v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->l:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_5
    iget-object v0, v6, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v1, v10

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v10

    if-nez v10, :cond_6

    return-void

    :cond_6
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->x()V

    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->x()V

    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->y()V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->c:Lmv9;

    invoke-virtual {v0, p1}, Lmv9;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lf2a;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lf2a;->request(J)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lf2a;->cancel()V

    :goto_1
    return-void
.end method

.method public q(Ld2a;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-interface {p1, v0}, Ld2a;->onSubscribe(Lf2a;)V

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/processors/UnicastProcessor;->y()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This processor allows only a single Subscriber"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Ld2a;)V

    :goto_0
    return-void
.end method

.method public u(ZZZLd2a;Lmv9;)Z
    .locals 3

    iget-boolean v0, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p5}, Lmv9;->clear()V

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-virtual {p5}, Lmv9;->clear()V

    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    invoke-interface {p4, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p3, :cond_3

    iget-object p1, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-interface {p4, p1}, Ld2a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Ld2a;->onComplete()V

    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public x()V
    .locals 1

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2a;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lio/reactivex/processors/UnicastProcessor;->m:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/reactivex/processors/UnicastProcessor;->z(Ld2a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lio/reactivex/processors/UnicastProcessor;->A(Ld2a;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2a;

    goto :goto_0
.end method

.method public z(Ld2a;)V
    .locals 6

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->c:Lmv9;

    iget-boolean v1, p0, Lio/reactivex/processors/UnicastProcessor;->e:Z

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->i:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v3, p0, Lio/reactivex/processors/UnicastProcessor;->f:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lmv9;->clear()V

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-interface {p1, v4}, Ld2a;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    iget-object v0, p0, Lio/reactivex/processors/UnicastProcessor;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/processors/UnicastProcessor;->g:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    invoke-interface {p1, p0}, Ld2a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ld2a;->onComplete()V

    :goto_0
    return-void

    :cond_4
    iget-object v3, p0, Lio/reactivex/processors/UnicastProcessor;->k:Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method
