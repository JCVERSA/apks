.class public final Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;
.super Lx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;
    }
.end annotation


# instance fields
.field public final d:Lio/reactivex/Scheduler;


# direct methods
.method public constructor <init>(Lr14;Lio/reactivex/Scheduler;)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;->d:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 2

    iget-object v0, p0, Lx2;->c:Lr14;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn;->d:Lio/reactivex/Scheduler;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber;-><init>(Ld2a;Lio/reactivex/Scheduler;)V

    invoke-virtual {v0, v1}, Lr14;->p(Ly14;)V

    return-void
.end method
