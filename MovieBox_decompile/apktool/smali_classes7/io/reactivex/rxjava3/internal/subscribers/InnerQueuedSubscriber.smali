.class public final Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Li00/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li00/d;",
        ">;",
        "Lio/reactivex/rxjava3/core/f;",
        "Li00/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51462814a312b8L


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final limit:I

.field final parent:Lio/reactivex/rxjava3/internal/subscribers/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/subscribers/a;"
        }
    .end annotation
.end field

.field final prefetch:I

.field produced:J

.field volatile queue:Lio/reactivex/rxjava3/operators/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/subscribers/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/subscribers/a;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    .line 5
    .line 6
    shr-int/lit8 p1, p2, 0x2

    .line 7
    .line 8
    sub-int/2addr p2, p1

    .line 9
    iput p2, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->limit:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->done:Z

    .line 2
    .line 3
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    throw v0

    .line 7
    :cond_0
    throw v0
.end method

.method public onSubscribe(Li00/d;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li00/d;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    instance-of v0, p1, Lio/reactivex/rxjava3/operators/d;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lio/reactivex/rxjava3/operators/d;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/operators/c;->requestFusion(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iput v1, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    .line 26
    .line 27
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 28
    .line 29
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    .line 30
    .line 31
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/i;->f(Li00/d;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iput v1, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    .line 36
    .line 37
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 38
    .line 39
    iput-boolean v2, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->done:Z

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    throw p1

    .line 43
    :cond_1
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    .line 44
    .line 45
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/util/i;->c(I)Lio/reactivex/rxjava3/operators/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 50
    .line 51
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->prefetch:I

    .line 52
    .line 53
    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/util/i;->f(Li00/d;I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public queue()Lio/reactivex/rxjava3/operators/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/operators/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public request(J)V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->fusionMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->produced:J

    .line 7
    .line 8
    add-long/2addr v0, p1

    .line 9
    iget p1, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->limit:I

    .line 10
    .line 11
    int-to-long p1, p1

    .line 12
    cmp-long p1, v0, p1

    .line 13
    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->produced:J

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Li00/d;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->produced:J

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public setDone()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/subscribers/InnerQueuedSubscriber;->done:Z

    .line 3
    .line 4
    return-void
.end method
