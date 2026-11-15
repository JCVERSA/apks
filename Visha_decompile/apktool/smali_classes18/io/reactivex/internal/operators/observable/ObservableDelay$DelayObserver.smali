.class public final Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete;,
        Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;,
        Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext;
    }
.end annotation


# instance fields
.field public final b:Lpd7;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:Lio/reactivex/Scheduler$Worker;

.field public final f:Z

.field public g:Lrc2;


# direct methods
.method public constructor <init>(Lpd7;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler$Worker;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->b:Lpd7;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->c:J

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->f:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->g:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lrc2;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    invoke-interface {p0}, Lrc2;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->c:J

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->f:Z

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->c:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->e:Lio/reactivex/Scheduler$Worker;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;Ljava/lang/Object;)V

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->c:J

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lrc2;

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->g:Lrc2;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lrc2;Lrc2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->g:Lrc2;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelay$DelayObserver;->b:Lpd7;

    invoke-interface {p1, p0}, Lpd7;->onSubscribe(Lrc2;)V

    :cond_0
    return-void
.end method
