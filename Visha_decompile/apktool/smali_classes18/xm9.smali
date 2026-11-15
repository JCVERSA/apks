.class public abstract Lxm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmn9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs A(Lt74;[Lmn9;)Lxm9;
    .locals 1

    const-string v0, "zipper is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, Lxm9;->f(Ljava/lang/Throwable;)Lxm9;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/single/SingleZipArray;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/single/SingleZipArray;-><init>([Lmn9;Lt74;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljn9;)Lxm9;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/single/SingleCreate;-><init>(Ljn9;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Throwable;)Lxm9;
    .locals 1

    const-string v0, "exception is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lio/reactivex/internal/functions/Functions;->f(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, Lxm9;->g(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/concurrent/Callable;)Lxm9;
    .locals 1

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lan9;

    invoke-direct {v0, p0}, Lan9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/concurrent/Callable;)Lxm9;
    .locals 1

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lbn9;

    invoke-direct {v0, p0}, Lbn9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Lxm9;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lfn9;

    invoke-direct {v0, p0}, Lfn9;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lmn9;)Lxm9;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lxm9;

    if-eqz v0, :cond_0

    check-cast p0, Lxm9;

    invoke-static {p0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcn9;

    invoke-direct {v0, p0}, Lcn9;-><init>(Lmn9;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lmn9;Lmn9;Lbe0;)Lxm9;
    .locals 2

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lio/reactivex/internal/functions/Functions;->g(Lbe0;)Lt74;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lmn9;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, Lxm9;->A(Lt74;[Lmn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lmn9;Lmn9;Lmn9;Lv74;)Lxm9;
    .locals 2

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lio/reactivex/internal/functions/Functions;->h(Lv74;)Lt74;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lmn9;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, Lxm9;->A(Lt74;[Lmn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lin9;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lyw8;->A(Lxm9;Lin9;)Lin9;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Lxm9;->q(Lin9;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "subscribeActual failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lwf0;

    invoke-direct {v0}, Lwf0;-><init>()V

    invoke-virtual {p0, v0}, Lxm9;->a(Lin9;)V

    invoke-virtual {v0}, Lwf0;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lpn9;)Lxm9;
    .locals 1

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpn9;

    invoke-interface {p1, p0}, Lpn9;->b(Lxm9;)Lmn9;

    move-result-object p0

    invoke-static {p0}, Lxm9;->x(Lmn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lzf1;)Lxm9;
    .locals 1

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lym9;

    invoke-direct {v0, p0, p1}, Lym9;-><init>(Lmn9;Lzf1;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lie8;)Lb96;
    .locals 1

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lg96;

    invoke-direct {v0, p0, p1}, Lg96;-><init>(Lmn9;Lie8;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lt74;)Lhb1;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleFlatMapCompletable;-><init>(Lmn9;Lt74;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lt74;)Lxm9;
    .locals 1

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/a;-><init>(Lmn9;Lt74;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lio/reactivex/Scheduler;)Lxm9;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleObserveOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleObserveOn;-><init>(Lmn9;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final n()Lrc2;
    .locals 2

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->d()Lzf1;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/functions/Functions;->f:Lzf1;

    invoke-virtual {p0, v0, v1}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lzf1;)Lrc2;
    .locals 1

    sget-object v0, Lio/reactivex/internal/functions/Functions;->f:Lzf1;

    invoke-virtual {p0, p1, v0}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lzf1;Lzf1;)Lrc2;
    .locals 1

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lzf1;Lzf1;)V

    invoke-virtual {p0, v0}, Lxm9;->a(Lin9;)V

    return-object v0
.end method

.method public abstract q(Lin9;)V
.end method

.method public final r(Lio/reactivex/Scheduler;)Lxm9;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleSubscribeOn;-><init>(Lmn9;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljk8;)Lxm9;
    .locals 1

    const-string v0, "other is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleTakeUntil;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/single/SingleTakeUntil;-><init>(Lmn9;Ljk8;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final t(Lmn9;)Lxm9;
    .locals 1

    const-string v0, "other is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleToFlowable;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable;-><init>(Lmn9;)V

    invoke-virtual {p0, v0}, Lxm9;->s(Ljk8;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final u(JLjava/util/concurrent/TimeUnit;)Lxm9;
    .locals 6

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lxm9;->v(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lmn9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final v(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lmn9;)Lxm9;
    .locals 8

    const-string v0, "unit is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleTimeout;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/single/SingleTimeout;-><init>(Lmn9;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lmn9;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method

.method public final w()Lb96;
    .locals 1

    new-instance v0, Li96;

    invoke-direct {v0, p0}, Li96;-><init>(Lmn9;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method
