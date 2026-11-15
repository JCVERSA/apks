.class public final Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;
.super Lhb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;
    }
.end annotation


# instance fields
.field public final a:Lsb1;

.field public final b:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lsb1;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lhb1;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->a:Lsb1;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->b:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public i(Lqb1;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->a:Lsb1;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;-><init>(Lqb1;Lsb1;)V

    invoke-interface {p1, v0}, Lqb1;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;->b:Lio/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->c(Ljava/lang/Runnable;)Lrc2;

    move-result-object p0

    iget-object p1, v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn$SubscribeOnObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lrc2;)Z

    return-void
.end method
