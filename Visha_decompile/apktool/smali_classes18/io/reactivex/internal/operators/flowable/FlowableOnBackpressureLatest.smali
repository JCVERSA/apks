.class public final Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest;
.super Lx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;
    }
.end annotation


# direct methods
.method public constructor <init>(Lr14;)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 1

    iget-object p0, p0, Lx2;->c:Lr14;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureLatest$BackpressureLatestSubscriber;-><init>(Ld2a;)V

    invoke-virtual {p0, v0}, Lr14;->p(Ly14;)V

    return-void
.end method
