.class public abstract Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/o;
.implements Lio/reactivex/rxjava3/disposables/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/o;",
        "Lio/reactivex/rxjava3/disposables/c;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c9b2e05b8f4fb1cL


# instance fields
.field volatile disposed:Z

.field volatile done:Z

.field final errorMode:Lio/reactivex/rxjava3/internal/util/ErrorMode;

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final prefetch:I

.field queue:Lio/reactivex/rxjava3/operators/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/g;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method public constructor <init>(ILio/reactivex/rxjava3/internal/util/ErrorMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errorMode:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 5
    .line 6
    new-instance p2, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 7
    .line 8
    invoke-direct {p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 12
    .line 13
    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->prefetch:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method clearValue()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    .line 6
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposeInner()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateAndReport()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 24
    .line 25
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->clearValue()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method abstract disposeInner()V
.end method

.method abstract drain()V
.end method

.method public final isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->done:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->drain()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errorMode:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 10
    .line 11
    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposeInner()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->done:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->drain()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->drain()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/disposables/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 10
    .line 11
    instance-of v0, p1, Lio/reactivex/rxjava3/operators/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lio/reactivex/rxjava3/operators/b;

    .line 16
    .line 17
    const/4 v0, 0x7

    .line 18
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/c;->requestFusion(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 26
    .line 27
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->done:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->onSubscribeDownstream()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->drain()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 40
    .line 41
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->onSubscribeDownstream()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance p1, Lio/reactivex/rxjava3/operators/h;

    .line 46
    .line 47
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->prefetch:I

    .line 48
    .line 49
    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/operators/h;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    .line 53
    .line 54
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->onSubscribeDownstream()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method abstract onSubscribeDownstream()V
.end method
