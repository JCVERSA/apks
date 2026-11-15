.class public final Lio/reactivex/internal/operators/observable/ObservableRepeat;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;
    }
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(Lmc7;J)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->c:J

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 7

    new-instance v4, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v4}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    invoke-interface {p1, v4}, Lpd7;->onSubscribe(Lrc2;)V

    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeat;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Ln3;->b:Lld7;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;-><init>(Lpd7;JLio/reactivex/internal/disposables/SequentialDisposable;Lld7;)V

    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver;->subscribeNext()V

    return-void
.end method
