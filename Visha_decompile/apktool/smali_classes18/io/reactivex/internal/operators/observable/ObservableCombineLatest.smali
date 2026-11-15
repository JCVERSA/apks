.class public final Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.super Lmc7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    }
.end annotation


# instance fields
.field public final b:[Lld7;

.field public final c:Ljava/lang/Iterable;

.field public final d:Lt74;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>([Lld7;Ljava/lang/Iterable;Lt74;IZ)V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->b:[Lld7;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->c:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->d:Lt74;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->e:I

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->f:Z

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 8

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->b:[Lld7;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [Lld7;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->c:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lld7;

    array-length v5, v0

    if-ne v3, v5, :cond_0

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [Lld7;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    :goto_1
    move v4, v3

    goto :goto_2

    :cond_2
    array-length v3, v0

    goto :goto_1

    :goto_2
    if-nez v4, :cond_3

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lpd7;)V

    return-void

    :cond_3
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->d:Lt74;

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->e:I

    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->f:Z

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;-><init>(Lpd7;Lt74;IIZ)V

    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->subscribe([Lld7;)V

    return-void
.end method
