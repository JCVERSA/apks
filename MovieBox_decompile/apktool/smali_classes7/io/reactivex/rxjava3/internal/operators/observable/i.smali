.class final Lio/reactivex/rxjava3/internal/operators/observable/i;
.super Lay/a;
.source "source.java"


# instance fields
.field final b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lay/a;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 5
    .line 6
    return-void
.end method

.method public static J(Ljava/lang/Object;ILio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/rxjava3/internal/operators/observable/i;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;-><init>(ILio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/i;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/i;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;->onComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/i;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
