.class public final Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ly14;
.implements Lf2a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lf2a;",
        ">;",
        "Ly14;",
        "Lf2a;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51462814a312b8L


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final limit:I

.field final parent:Lm05;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm05;"
        }
    .end annotation
.end field

.field final prefetch:I

.field produced:J

.field volatile queue:Lom9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lom9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm05;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm05;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput p2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->limit:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->done:Z

    return p0
.end method

.method public onComplete()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget p0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    const/4 p1, 0x0

    if-nez p0, :cond_0

    throw p1

    :cond_0
    throw p1
.end method

.method public onSubscribe(Lf2a;)V
    .locals 3

    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lf2a;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Ltm8;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ltm8;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lsm8;->requestFusion(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue:Lom9;

    iget p0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    invoke-static {p1, p0}, Lhm8;->f(Lf2a;I)V

    return-void

    :cond_0
    iput v1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue:Lom9;

    iput-boolean v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->done:Z

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    invoke-static {v0}, Lhm8;->c(I)Lom9;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue:Lom9;

    iget p0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    invoke-static {p1, p0}, Lhm8;->f(Lf2a;I)V

    :cond_2
    return-void
.end method

.method public queue()Lom9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lom9;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->queue:Lom9;

    return-object p0
.end method

.method public request(J)V
    .locals 2

    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    add-long/2addr v0, p1

    iget p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->limit:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2a;

    invoke-interface {p0, v0, v1}, Lf2a;->request(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    :cond_1
    :goto_0
    return-void
.end method

.method public requestOne()V
    .locals 4

    iget v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->limit:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2a;

    invoke-interface {p0, v0, v1}, Lf2a;->request(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->produced:J

    :cond_1
    :goto_0
    return-void
.end method

.method public setDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/subscribers/InnerQueuedSubscriber;->done:Z

    return-void
.end method
