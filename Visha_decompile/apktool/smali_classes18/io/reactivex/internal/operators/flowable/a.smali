.class public final Lio/reactivex/internal/operators/flowable/a;
.super Lvj4;
.source "SourceFile"


# instance fields
.field public final d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lvj4;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/a;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    return-void
.end method

.method public static u(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Z)Lio/reactivex/internal/operators/flowable/a;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;-><init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    new-instance p1, Lio/reactivex/internal/operators/flowable/a;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/flowable/a;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;)V

    return-object p1
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/a;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/a;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/a;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Ld2a;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/a;->d:Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableGroupBy$State;->subscribe(Ld2a;)V

    return-void
.end method
