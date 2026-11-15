.class public final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;,
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
    }
.end annotation


# instance fields
.field public final c:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lld7;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->c:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;-><init>(Lpd7;)V

    invoke-interface {p1, v0}, Lpd7;->onSubscribe(Lrc2;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->c:Lio/reactivex/Scheduler;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;-><init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Scheduler;->c(Ljava/lang/Runnable;)Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->setDisposable(Lrc2;)V

    return-void
.end method
