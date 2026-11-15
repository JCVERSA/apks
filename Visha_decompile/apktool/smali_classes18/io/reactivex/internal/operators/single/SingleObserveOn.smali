.class public final Lio/reactivex/internal/operators/single/SingleObserveOn;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lmn9;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->a:Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->b:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->a:Lmn9;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->b:Lio/reactivex/Scheduler;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lin9;Lio/reactivex/Scheduler;)V

    invoke-interface {v0, v1}, Lmn9;->a(Lin9;)V

    return-void
.end method
