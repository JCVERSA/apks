.class public final Lio/reactivex/internal/operators/single/SingleSubscribeOn;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lmn9;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;->a:Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;->b:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;->a:Lmn9;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;-><init>(Lin9;Lmn9;)V

    invoke-interface {p1, v0}, Lin9;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;->b:Lio/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->c(Ljava/lang/Runnable;)Lrc2;

    move-result-object p0

    iget-object p1, v0, Lio/reactivex/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->task:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lrc2;)Z

    return-void
.end method
