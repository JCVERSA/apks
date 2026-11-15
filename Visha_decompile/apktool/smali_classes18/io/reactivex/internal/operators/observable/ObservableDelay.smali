.class public final Lio/reactivex/internal/operators/observable/ObservableDelay;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lio/reactivex/Scheduler;

.field public final f:Z


# direct methods
.method public constructor <init>(Lld7;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->c:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->e:Lio/reactivex/Scheduler;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->f:Z

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->f:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lod9;

    invoke-direct {v0, p1}, Lod9;-><init>(Lpd7;)V

    move-object v2, v0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->e:Lio/reactivex/Scheduler;

    invoke-virtual {p1}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v6

    iget-object p1, p0, Ln3;->b:Lld7;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->c:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->d:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableDelay;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;-><init>(Lpd7;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V

    invoke-interface {p1, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
