.class public final Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
    }
.end annotation


# instance fields
.field public final c:Lio/reactivex/Scheduler;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Lld7;Lio/reactivex/Scheduler;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->e:I

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Lio/reactivex/Scheduler;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_0

    iget-object p0, p0, Ln3;->b:Lld7;

    invoke-interface {p0, p1}, Lld7;->subscribe(Lpd7;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    iget-object v1, p0, Ln3;->b:Lld7;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:Z

    iget p0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->e:I

    invoke-direct {v2, p1, v0, v3, p0}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lpd7;Lio/reactivex/Scheduler$Worker;ZI)V

    invoke-interface {v1, v2}, Lld7;->subscribe(Lpd7;)V

    :goto_0
    return-void
.end method
