.class final Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqb1;
.implements Lrc2;
.implements Ljava/lang/Runnable;


# instance fields
.field volatile disposed:Z

.field final downstream:Lqb1;

.field final scheduler:Lio/reactivex/Scheduler;

.field upstream:Lrc2;


# direct methods
.method public constructor <init>(Lqb1;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lqb1;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler;->c(Ljava/lang/Runnable;)Lrc2;

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lqb1;

    invoke-interface {p0}, Lqb1;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lqb1;

    invoke-interface {p0, p1}, Lqb1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lrc2;

    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lqb1;

    invoke-interface {p1, p0}, Lqb1;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lrc2;

    return-void
.end method
