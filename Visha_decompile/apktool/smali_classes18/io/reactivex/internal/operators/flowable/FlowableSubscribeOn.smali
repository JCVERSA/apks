.class public final Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;
.super Lx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber;
    }
.end annotation


# instance fields
.field public final d:Lio/reactivex/Scheduler;

.field public final e:Z


# direct methods
.method public constructor <init>(Lr14;Lio/reactivex/Scheduler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;->d:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;->e:Z

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;->d:Lio/reactivex/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber;

    iget-object v2, p0, Lx2;->c:Lr14;

    iget-boolean p0, p0, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn;->e:Z

    invoke-direct {v1, p1, v0, v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber;-><init>(Ld2a;Lio/reactivex/Scheduler$Worker;Ljk8;Z)V

    invoke-interface {p1, v1}, Ld2a;->onSubscribe(Lf2a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lrc2;

    return-void
.end method
