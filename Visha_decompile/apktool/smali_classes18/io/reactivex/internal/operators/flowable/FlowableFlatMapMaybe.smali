.class public final Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;
.super Lx2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;
    }
.end annotation


# instance fields
.field public final d:Lt74;

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(Lr14;Lt74;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lx2;-><init>(Lr14;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->d:Lt74;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->e:Z

    iput p4, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->f:I

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 4

    iget-object v0, p0, Lx2;->c:Lr14;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->d:Lt74;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->e:Z

    iget p0, p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe;->f:I

    invoke-direct {v1, p1, v2, v3, p0}, Lio/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber;-><init>(Ld2a;Lt74;ZI)V

    invoke-virtual {v0, v1}, Lr14;->p(Ly14;)V

    return-void
.end method
