.class public final Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Li00/d;
.implements Lio/reactivex/rxjava3/disposables/c;


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
        "Li00/d;",
        "Lio/reactivex/rxjava3/disposables/c;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final bufferSize:I

.field consumed:I

.field final limit:I

.field final onComplete:Lyx/a;

.field final onError:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field

.field final onNext:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field

.field final onSubscribe:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyx/f;Lyx/f;Lyx/a;Lyx/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyx/f;",
            "Lyx/f;",
            "Lyx/a;",
            "Lyx/f;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onNext:Lyx/f;

    .line 5
    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onError:Lyx/f;

    .line 7
    .line 8
    iput-object p3, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onComplete:Lyx/a;

    .line 9
    .line 10
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onSubscribe:Lyx/f;

    .line 11
    .line 12
    iput p5, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->bufferSize:I

    .line 13
    .line 14
    shr-int/lit8 p1, p5, 0x2

    .line 15
    .line 16
    sub-int/2addr p5, p1

    .line 17
    iput p5, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->limit:I

    .line 18
    .line 19
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

.method public dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->cancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public hasCustomOnError()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onError:Lyx/f;

    .line 2
    .line 3
    sget-object v1, Lio/reactivex/rxjava3/internal/functions/Functions;->f:Lyx/f;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

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

.method public onComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onComplete:Lyx/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lyx/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onError:Lyx/f;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object p1, v2, v3

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    aput-object v0, v2, p1

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->isDisposed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onNext:Lyx/f;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->consumed:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->limit:I

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->consumed:I

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Li00/d;

    .line 28
    .line 29
    iget v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->limit:I

    .line 30
    .line 31
    int-to-long v0, v0

    .line 32
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput p1, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->consumed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Li00/d;

    .line 49
    .line 50
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    return-void
.end method

.method public onSubscribe(Li00/d;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li00/d;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onSubscribe:Lyx/f;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Li00/d;->cancel()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/subscribers/BoundedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Li00/d;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Li00/d;->request(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
