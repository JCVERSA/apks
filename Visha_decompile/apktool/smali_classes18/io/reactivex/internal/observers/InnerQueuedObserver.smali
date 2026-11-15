.class public final Lio/reactivex/internal/observers/InnerQueuedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrc2;",
        ">;",
        "Lpd7;",
        "Lrc2;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b2db39073b2fa8dL


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final parent:Ll05;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll05;"
        }
    .end annotation
.end field

.field final prefetch:I

.field queue:Lom9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lom9;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll05;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll05;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput p2, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->prefetch:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public fusionMode()I
    .locals 0

    iget p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    return p0
.end method

.method public isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrc2;

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lrc2;)Z

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

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

    iget p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    const/4 p1, 0x0

    if-nez p0, :cond_0

    throw p1

    :cond_0
    throw p1
.end method

.method public onSubscribe(Lrc2;)V
    .locals 2

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lfm8;

    if-eqz v0, :cond_1

    check-cast p1, Lfm8;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lsm8;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lom9;

    return-void

    :cond_0
    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lom9;

    iput-boolean v1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->prefetch:I

    neg-int p1, p1

    invoke-static {p1}, Lhm8;->c(I)Lom9;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lom9;

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

    iget-object p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lom9;

    return-object p0
.end method

.method public setDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

    return-void
.end method
