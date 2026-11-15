.class public final Lio/reactivex/internal/operators/flowable/FlowableObserveOn;
.super Lx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber;
    }
.end annotation


# instance fields
.field public final d:Lio/reactivex/Scheduler;

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(Lr14;Lio/reactivex/Scheduler;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->d:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->e:Z

    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->f:I

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->d:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    iget-object v1, p0, Lx2;->c:Lr14;

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->e:Z

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableObserveOn;->f:I

    invoke-direct {v2, p1, v0, v3, p0}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;-><init>(Ld2a;Lio/reactivex/Scheduler$Worker;ZI)V

    invoke-virtual {v1, v2}, Lr14;->p(Ly14;)V

    return-void
.end method
