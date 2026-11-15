.class public final Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;
.super Lx2;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber;
    }
.end annotation


# instance fields
.field public final d:Lzf1;


# direct methods
.method public constructor <init>(Lr14;)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    iput-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;->d:Lzf1;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public q(Ld2a;)V
    .locals 2

    iget-object v0, p0, Lx2;->c:Lr14;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop;->d:Lzf1;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber;-><init>(Ld2a;Lzf1;)V

    invoke-virtual {v0, v1}, Lr14;->p(Ly14;)V

    return-void
.end method
