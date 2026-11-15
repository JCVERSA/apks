.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/core/Scheduler;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/m;Lio/reactivex/rxjava3/core/Scheduler;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    .line 5
    .line 6
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->c:Z

    .line 7
    .line 8
    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->b:Lio/reactivex/rxjava3/core/Scheduler;

    .line 2
    .line 3
    instance-of v1, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->c()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    .line 18
    .line 19
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    .line 20
    .line 21
    iget-boolean v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->c:Z

    .line 22
    .line 23
    iget v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;->d:I

    .line 24
    .line 25
    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lio/reactivex/rxjava3/core/o;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZI)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Lio/reactivex/rxjava3/core/m;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
