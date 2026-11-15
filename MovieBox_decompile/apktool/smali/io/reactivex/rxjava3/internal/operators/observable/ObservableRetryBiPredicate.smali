.class public final Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;
    }
.end annotation


# instance fields
.field final b:Lyx/d;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/j;Lyx/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/core/m;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;->b:Lyx/d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public D(Lio/reactivex/rxjava3/core/o;)V
    .locals 4

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/o;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;

    .line 10
    .line 11
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate;->b:Lyx/d;

    .line 12
    .line 13
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Lio/reactivex/rxjava3/core/m;

    .line 14
    .line 15
    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;-><init>(Lio/reactivex/rxjava3/core/o;Lyx/d;Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;Lio/reactivex/rxjava3/core/m;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver;->subscribeNext()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
