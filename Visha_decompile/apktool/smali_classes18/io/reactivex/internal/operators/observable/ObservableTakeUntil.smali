.class public final Lio/reactivex/internal/operators/observable/ObservableTakeUntil;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;
    }
.end annotation


# instance fields
.field public final c:Lld7;


# direct methods
.method public constructor <init>(Lld7;Lld7;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->c:Lld7;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;-><init>(Lpd7;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->c:Lld7;

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver;->otherObserver:Lio/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver;

    invoke-interface {p1, v1}, Lld7;->subscribe(Lpd7;)V

    iget-object p0, p0, Ln3;->b:Lld7;

    invoke-interface {p0, v0}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
