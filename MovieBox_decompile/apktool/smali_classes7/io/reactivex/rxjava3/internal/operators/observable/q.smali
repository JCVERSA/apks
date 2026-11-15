.class final Lio/reactivex/rxjava3/internal/operators/observable/q;
.super Lcy/a;
.source "source.java"


# instance fields
.field final b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcy/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->innerComplete()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->c:Z

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
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->c:Z

    .line 11
    .line 12
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->innerError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/q;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver;->innerNext()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
