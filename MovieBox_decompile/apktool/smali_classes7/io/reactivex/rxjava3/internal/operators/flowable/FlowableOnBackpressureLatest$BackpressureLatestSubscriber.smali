.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;
.super Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BackpressureLatestSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x24360dbf312449bL


# instance fields
.field final onDropped:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li00/c;Lyx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "Lyx/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;-><init>(Li00/c;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;->onDropped:Lyx/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;->onDropped:Lyx/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->upstream:Li00/d;

    .line 22
    .line 23
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->downstream:Li00/c;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/AbstractBackpressureThrottlingSubscriber;->drain()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
