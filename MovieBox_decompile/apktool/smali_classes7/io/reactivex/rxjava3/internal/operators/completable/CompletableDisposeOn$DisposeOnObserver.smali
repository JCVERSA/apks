.class final Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/b;
.implements Lio/reactivex/rxjava3/disposables/c;
.implements Ljava/lang/Runnable;


# instance fields
.field volatile disposed:Z

.field final downstream:Lio/reactivex/rxjava3/core/b;

.field final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field upstream:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/b;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    .line 5
    .line 6
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Scheduler;->d(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/c;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/core/b;->onComplete()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->disposed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/b;->onError(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/c;Lio/reactivex/rxjava3/disposables/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 10
    .line 11
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->downstream:Lio/reactivex/rxjava3/core/b;

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/b;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    .line 7
    .line 8
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableDisposeOn$DisposeOnObserver;->upstream:Lio/reactivex/rxjava3/disposables/c;

    .line 9
    .line 10
    return-void
.end method
