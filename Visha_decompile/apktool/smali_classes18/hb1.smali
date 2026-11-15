.class public abstract Lhb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lrb1;)Lhb1;
    .locals 1

    const-string v0, "source is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCreate;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableCreate;-><init>(Lrb1;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Throwable;)Lhb1;
    .locals 1

    const-string v0, "error is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lmb1;

    invoke-direct {v0, p0}, Lmb1;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Runnable;)Lhb1;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lnb1;

    invoke-direct {v0, p0}, Lnb1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)Lhb1;
    .locals 1

    const-string v0, "sources is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableMergeIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public final a(Lqb1;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, Lyw8;->x(Lhb1;Lqb1;)Lqb1;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lhb1;->i(Lqb1;)V
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

    invoke-static {p0}, Lhb1;->k(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0

    :goto_1
    throw p0
.end method

.method public final f()Lrc2;
    .locals 1

    new-instance v0, Lio/reactivex/internal/observers/EmptyCompletableObserver;

    invoke-direct {v0}, Lio/reactivex/internal/observers/EmptyCompletableObserver;-><init>()V

    invoke-virtual {p0, v0}, Lhb1;->a(Lqb1;)V

    return-object v0
.end method

.method public final g(Ld5;)Lrc2;
    .locals 1

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Ld5;)V

    invoke-virtual {p0, v0}, Lhb1;->a(Lqb1;)V

    return-object v0
.end method

.method public final h(Ld5;Lzf1;)Lrc2;
    .locals 1

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/observers/CallbackCompletableObserver;

    invoke-direct {v0, p2, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;-><init>(Lzf1;Ld5;)V

    invoke-virtual {p0, v0}, Lhb1;->a(Lqb1;)V

    return-object v0
.end method

.method public abstract i(Lqb1;)V
.end method

.method public final j(Lio/reactivex/Scheduler;)Lhb1;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableSubscribeOn;-><init>(Lsb1;Lio/reactivex/Scheduler;)V

    invoke-static {v0}, Lyw8;->k(Lhb1;)Lhb1;

    move-result-object p0

    return-object p0
.end method
