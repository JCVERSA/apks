.class public abstract Lb96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll96;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ll96;Ll96;)Lr14;
    .locals 2

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Ll96;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, Lb96;->c([Ll96;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Ll96;)Lr14;
    .locals 2

    const-string v0, "sources is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, Lr14;->d()Lr14;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;-><init>(Ll96;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/maybe/MaybeConcatArray;-><init>([Ll96;)V

    invoke-static {v0}, Lyw8;->m(Lr14;)Lr14;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;)Lb96;
    .locals 1

    const-string v0, "maybeSupplier is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lc96;

    invoke-direct {v0, p0}, Lc96;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lb96;
    .locals 1

    sget-object v0, Ld96;->b:Ld96;

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/util/concurrent/Callable;)Lb96;
    .locals 1

    const-string v0, "callable is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lh96;

    invoke-direct {v0, p0}, Lh96;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;)Lb96;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lj96;

    invoke-direct {v0, p0}, Lj96;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->n(Lb96;)Lb96;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lk96;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lyw8;->y(Lb96;Lk96;)Lk96;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null MaybeObserver. Please check the handler provided to RxJavaPlugins.setOnMaybeSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Lb96;->j(Lk96;)V
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

.method public final h(Lzf1;Lzf1;)Lrc2;
    .locals 1

    sget-object v0, Lio/reactivex/internal/functions/Functions;->c:Ld5;

    invoke-virtual {p0, p1, p2, v0}, Lb96;->i(Lzf1;Lzf1;Ld5;)Lrc2;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lzf1;Lzf1;Ld5;)Lrc2;
    .locals 1

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;

    invoke-direct {v0, p1, p2, p3}, Lio/reactivex/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lzf1;Lzf1;Ld5;)V

    invoke-virtual {p0, v0}, Lb96;->k(Lk96;)Lk96;

    move-result-object p0

    check-cast p0, Lrc2;

    return-object p0
.end method

.method public abstract j(Lk96;)V
.end method

.method public final k(Lk96;)Lk96;
    .locals 0

    invoke-virtual {p0, p1}, Lb96;->a(Lk96;)V

    return-object p1
.end method

.method public final l()Lxm9;
    .locals 2

    new-instance v0, Lm96;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm96;-><init>(Ll96;Ljava/lang/Object;)V

    invoke-static {v0}, Lyw8;->p(Lxm9;)Lxm9;

    move-result-object p0

    return-object p0
.end method
