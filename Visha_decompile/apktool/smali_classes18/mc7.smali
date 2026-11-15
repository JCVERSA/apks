.class public abstract Lmc7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lld7;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs C([Ljava/lang/Object;)Lmc7;
    .locals 2

    const-string v0, "items is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lmc7;->r()Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lvc7;

    invoke-direct {v0, p0}, Lvc7;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/util/concurrent/Callable;)Lmc7;
    .locals 1

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lwc7;

    invoke-direct {v0, p0}, Lwc7;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/Iterable;)Lmc7;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lxc7;

    invoke-direct {v0, p0}, Lxc7;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static H(JJLjava/util/concurrent/TimeUnit;)Lmc7;
    .locals 6

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lmc7;->I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lmc7;
    .locals 8

    const-string v0, "unit is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInterval;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableInterval;-><init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static J(JLjava/util/concurrent/TimeUnit;)Lmc7;
    .locals 6

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lmc7;->I(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static K(Ljava/lang/Object;)Lmc7;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/b;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lr14;->a()I

    move-result v0

    return v0
.end method

.method public static varargs d(Lt74;I[Lld7;)Lmc7;
    .locals 0

    invoke-static {p2, p0, p1}, Lmc7;->f([Lld7;Lt74;I)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lld7;Lld7;Lbe0;)Lmc7;
    .locals 3

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->g(Lbe0;)Lt74;

    move-result-object p2

    invoke-static {}, Lmc7;->c()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lld7;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v0, v1}, Lmc7;->d(Lt74;I[Lld7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static f([Lld7;Lt74;I)Lmc7;
    .locals 7

    const-string v0, "sources is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lmc7;->r()Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Lac7;->e(ILjava/lang/String;)I

    shl-int/lit8 v5, p2, 0x1

    new-instance p2, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;-><init>([Lld7;Ljava/lang/Iterable;Lt74;IZ)V

    invoke-static {p2}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static h(Led7;)Lmc7;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Led7;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Lld7;)Lmc7;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lmc7;

    if-eqz v0, :cond_0

    check-cast p0, Lmc7;

    invoke-static {p0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lyc7;

    invoke-direct {v0, p0}, Lyc7;-><init>(Lld7;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static r()Lmc7;
    .locals 1

    sget-object v0, Lsc7;->b:Lmc7;

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object v0

    return-object v0
.end method

.method public static s(Ljava/lang/Throwable;)Lmc7;
    .locals 1

    const-string v0, "exception is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lio/reactivex/internal/functions/Functions;->f(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lmc7;->t(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/util/concurrent/Callable;)Lmc7;
    .locals 1

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ltc7;

    invoke-direct {v0, p0}, Ltc7;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(Lt74;)Lmc7;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmc7;->B(Lt74;Z)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final B(Lt74;Z)Lmc7;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableFlatMapMaybe;-><init>(Lld7;Lt74;Z)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final F()Lmc7;
    .locals 1

    new-instance v0, Lzc7;

    invoke-direct {v0, p0}, Lzc7;-><init>(Lld7;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final G()Lhb1;
    .locals 1

    new-instance v0, Lad7;

    invoke-direct {v0, p0}, Lad7;-><init>(Lld7;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public final L(Lt74;)Lmc7;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbd7;

    invoke-direct {v0, p0, p1}, Lbd7;-><init>(Lld7;Lt74;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final M(Lio/reactivex/Scheduler;)Lmc7;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lmc7;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lmc7;->N(Lio/reactivex/Scheduler;ZI)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lio/reactivex/Scheduler;ZI)Lmc7;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, Lac7;->e(ILjava/lang/String;)I

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/ObservableObserveOn;-><init>(Lld7;Lio/reactivex/Scheduler;ZI)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final O(Lt74;)Lmc7;
    .locals 2

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcd7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcd7;-><init>(Lld7;Lt74;Z)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final P(Lt74;)Lmc7;
    .locals 1

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ldd7;

    invoke-direct {v0, p0, p1}, Ldd7;-><init>(Lld7;Lt74;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final Q()Laf1;
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/operators/observable/ObservablePublish;->q0(Lld7;)Laf1;

    move-result-object p0

    return-object p0
.end method

.method public final R(J)Lmc7;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lmc7;->r()Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRepeat;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/observable/ObservableRepeat;-><init>(Lmc7;J)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final S(J)Lmc7;
    .locals 1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lie8;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmc7;->T(JLie8;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final T(JLie8;)Lmc7;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "predicate is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex/internal/operators/observable/ObservableRetryPredicate;-><init>(Lmc7;JLie8;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "times >= 0 required but it was "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final U()Lmc7;
    .locals 0

    invoke-virtual {p0}, Lmc7;->Q()Laf1;

    move-result-object p0

    invoke-virtual {p0}, Laf1;->p0()Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final V()Lb96;
    .locals 1

    new-instance v0, Lid7;

    invoke-direct {v0, p0}, Lid7;-><init>(Lld7;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method

.method public final W()Lxm9;
    .locals 2

    new-instance v0, Ljd7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljd7;-><init>(Lld7;Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final X(J)Lmc7;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkd7;

    invoke-direct {v0, p0, p1, p2}, Lkd7;-><init>(Lld7;J)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final Y()Lrc2;
    .locals 4

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->f:Lzf1;

    sget-object v2, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lmc7;->b0(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final Z(Lzf1;)Lrc2;
    .locals 3

    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lzf1;

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lmc7;->b0(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Lzf1;Lzf1;)Lrc2;
    .locals 2

    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lmc7;->b0(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Lzf1;Lzf1;Ld5;Lzf1;)Lrc2;
    .locals 1

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lzf1;Lzf1;Ld5;Lzf1;)V

    invoke-virtual {p0, v0}, Lmc7;->subscribe(Lpd7;)V

    return-object v0
.end method

.method public abstract c0(Lpd7;)V
.end method

.method public final d0(Lio/reactivex/Scheduler;)Lmc7;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;-><init>(Lld7;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final e0(J)Lmc7;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Lmd7;

    invoke-direct {v0, p0, p1, p2}, Lmd7;-><init>(Lld7;J)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f0(Lld7;)Lmc7;
    .locals 1

    const-string v0, "other is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableTakeUntil;-><init>(Lld7;Lld7;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lod7;)Lmc7;
    .locals 1

    const-string v0, "composer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod7;

    invoke-interface {p1, p0}, Lod7;->a(Lmc7;)Lld7;

    move-result-object p0

    invoke-static {p0}, Lmc7;->m0(Lld7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final g0(JLjava/util/concurrent/TimeUnit;)Lmc7;
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmc7;->h0(JLjava/util/concurrent/TimeUnit;Lld7;Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final h0(JLjava/util/concurrent/TimeUnit;Lld7;Lio/reactivex/Scheduler;)Lmc7;
    .locals 8

    const-string v0, "timeUnit is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;-><init>(Lmc7;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lld7;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final i(JLjava/util/concurrent/TimeUnit;)Lmc7;
    .locals 6

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmc7;->j(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final i0(Lio/reactivex/BackpressureStrategy;)Lr14;
    .locals 1

    new-instance v0, Lv14;

    invoke-direct {v0, p0}, Lv14;-><init>(Lmc7;)V

    sget-object p0, Lmc7$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    invoke-virtual {v0}, Lr14;->j()Lr14;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError;-><init>(Lr14;)V

    invoke-static {p0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0}, Lr14;->m()Lr14;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lr14;->l()Lr14;

    move-result-object p0

    return-object p0
.end method

.method public final j(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)Lmc7;
    .locals 8

    const-string v0, "unit is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDelay;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/ObservableDelay;-><init>(Lld7;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Z)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final j0()Lxm9;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lmc7;->k0(I)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lmc7;
    .locals 2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->e()Lt74;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->c()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmc7;->l(Lt74;Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final k0(I)Lxm9;
    .locals 1

    const-string v0, "capacityHint"

    invoke-static {p1, v0}, Lac7;->e(ILjava/lang/String;)I

    new-instance v0, Lnd7;

    invoke-direct {v0, p0, p1}, Lnd7;-><init>(Lld7;I)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lt74;Ljava/util/concurrent/Callable;)Lmc7;
    .locals 1

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Loc7;

    invoke-direct {v0, p0, p1, p2}, Loc7;-><init>(Lld7;Lt74;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lio/reactivex/Scheduler;)Lmc7;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableUnsubscribeOn;-><init>(Lld7;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ld5;)Lmc7;
    .locals 1

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableDoFinally;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoFinally;-><init>(Lld7;Ld5;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lzf1;Lzf1;Ld5;Ld5;)Lmc7;
    .locals 7

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lpc7;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lpc7;-><init>(Lld7;Lzf1;Lzf1;Ld5;Ld5;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lzf1;)Lmc7;
    .locals 2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-virtual {p0, v0, p1, v1, v1}, Lmc7;->n(Lzf1;Lzf1;Ld5;Ld5;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lzf1;)Lmc7;
    .locals 2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-virtual {p0, p1, v0, v1, v1}, Lmc7;->n(Lzf1;Lzf1;Ld5;Ld5;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final q(J)Lxm9;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Lqc7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lqc7;-><init>(Lld7;JLjava/lang/Object;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subscribe(Lpd7;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lyw8;->z(Lmc7;Lpd7;)Lpd7;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmc7;->c0(Lpd7;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lyw8;->s(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :goto_1
    throw p0
.end method

.method public final u(Lie8;)Lmc7;
    .locals 1

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Luc7;

    invoke-direct {v0, p0, p1}, Luc7;-><init>(Lld7;Lie8;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final v()Lxm9;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lmc7;->q(J)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lt74;)Lmc7;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmc7;->x(Lt74;Z)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lt74;Z)Lmc7;
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, p2, v0}, Lmc7;->y(Lt74;ZI)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final y(Lt74;ZI)Lmc7;
    .locals 1

    invoke-static {}, Lmc7;->c()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmc7;->z(Lt74;ZII)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lt74;ZII)Lmc7;
    .locals 7

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, Lac7;->e(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, Lac7;->e(ILjava/lang/String;)I

    instance-of v0, p0, Lm19;

    if-eqz v0, :cond_1

    check-cast p0, Lm19;

    invoke-interface {p0}, Lm19;->call()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lmc7;->r()Lmc7;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->a(Ljava/lang/Object;Lt74;)Lmc7;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableFlatMap;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableFlatMap;-><init>(Lld7;Lt74;ZII)V

    invoke-static {v6}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method
