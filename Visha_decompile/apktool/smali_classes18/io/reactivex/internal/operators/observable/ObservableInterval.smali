.class public final Lio/reactivex/internal/operators/observable/ObservableInterval;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;
    }
.end annotation


# instance fields
.field public final b:Lio/reactivex/Scheduler;

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:J

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->b:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;-><init>(Lpd7;)V

    invoke-interface {p1, v7}, Lpd7;->onSubscribe(Lrc2;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->b:Lio/reactivex/Scheduler;

    instance-of p1, v0, Lio/reactivex/internal/schedulers/TrampolineScheduler;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lrc2;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lrc2;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->c:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->d:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableInterval;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lrc2;

    move-result-object p0

    invoke-virtual {v7, p0}, Lio/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver;->setResource(Lrc2;)V

    :goto_0
    return-void
.end method
