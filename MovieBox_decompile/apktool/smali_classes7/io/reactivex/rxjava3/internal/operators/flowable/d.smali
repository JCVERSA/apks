.class final Lio/reactivex/rxjava3/internal/operators/flowable/d;
.super Lxx/a;
.source "source.java"


# instance fields
.field final c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxx/a;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 5
    .line 6
    return-void
.end method

.method public static h(Ljava/lang/Object;ILio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Z)Lio/reactivex/rxjava3/internal/operators/flowable/d;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;-><init>(ILio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/flowable/d;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/d;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method


# virtual methods
.method protected g(Li00/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;->subscribe(Li00/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;->onComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/d;->c:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableGroupBy$State;->onNext(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
