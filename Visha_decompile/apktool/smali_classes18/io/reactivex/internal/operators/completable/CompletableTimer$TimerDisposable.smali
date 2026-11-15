.class final Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lrc2;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrc2;",
        ">;",
        "Lrc2;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2bf44fb13c34d015L


# instance fields
.field final downstream:Lqb1;


# direct methods
.method public constructor <init>(Lqb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;->downstream:Lqb1;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
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

.method public run()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableTimer$TimerDisposable;->downstream:Lqb1;

    invoke-interface {p0}, Lqb1;->onComplete()V

    return-void
.end method

.method public setFuture(Lrc2;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lrc2;)Z

    return-void
.end method
