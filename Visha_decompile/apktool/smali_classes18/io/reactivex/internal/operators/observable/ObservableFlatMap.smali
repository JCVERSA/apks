.class public final Lio/reactivex/internal/operators/observable/ObservableFlatMap;
.super Ln3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;
    }
.end annotation


# instance fields
.field public final c:Lt74;

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lld7;Lt74;ZII)V
    .locals 0

    invoke-direct {p0, p1}, Ln3;-><init>(Lld7;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->c:Lt74;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->d:Z

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->e:I

    iput p5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->f:I

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    iget-object v0, p0, Ln3;->b:Lld7;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->c:Lt74;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->b(Lld7;Lpd7;Lt74;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln3;->b:Lld7;

    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->c:Lt74;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->d:Z

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->e:I

    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableFlatMap;->f:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver;-><init>(Lpd7;Lt74;ZII)V

    invoke-interface {v0, v7}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
