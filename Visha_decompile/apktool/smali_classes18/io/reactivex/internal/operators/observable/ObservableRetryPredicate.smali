.class public final Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;
    }
.end annotation


# instance fields
.field public final c:Lie8;

.field public final d:J


# direct methods
.method public constructor <init>(Lmc7;JLie8;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->c:Lie8;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->d:J

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    new-instance v5, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v5}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    invoke-interface {p1, v5}, Lpd7;->onSubscribe(Lrc2;)V

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->d:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;->c:Lie8;

    iget-object v6, p0, Ln3;->b:Lld7;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;-><init>(Lpd7;JLie8;Lio/reactivex/internal/disposables/SequentialDisposable;Lld7;)V

    invoke-virtual {v7}, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver;->subscribeNext()V

    return-void
.end method
