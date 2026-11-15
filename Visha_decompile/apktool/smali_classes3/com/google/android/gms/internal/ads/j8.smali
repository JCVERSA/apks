.class public abstract Lcom/google/android/gms/internal/ads/j8;
.super Lz7i;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;)Lw7i;
    .locals 3

    new-instance v0, Lw7i;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lw7i;-><init>(ZLcom/google/android/gms/internal/ads/zzfww;Lx7i;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Iterable;)Lw7i;
    .locals 3

    new-instance v0, Lw7i;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lw7i;-><init>(ZLcom/google/android/gms/internal/ads/zzfww;Lx7i;)V

    return-object v0
.end method

.method public static varargs c([Lim5;)Lw7i;
    .locals 3

    new-instance v0, Lw7i;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lw7i;-><init>(ZLcom/google/android/gms/internal/ads/zzfww;Lx7i;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Lim5;
    .locals 2

    new-instance v0, Ln7i;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ln7i;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;Z)V

    return-object v0
.end method

.method public static e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgaf;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgae;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgae;-><init>(Lim5;Ljava/lang/Class;Lm2i;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/m8;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgaf;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgad;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgad;-><init>(Lim5;Ljava/lang/Class;Lk7i;)V

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/m8;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static g(Ljava/lang/Throwable;)Lim5;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/k8;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/k8;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h(Ljava/lang/Object;)Lim5;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, La8i;->c:Lim5;

    return-object p0

    :cond_0
    new-instance v0, La8i;

    invoke-direct {v0, p0}, La8i;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static i()Lim5;
    .locals 1

    sget-object v0, La8i;->c:Lim5;

    return-object v0
.end method

.method public static j(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static k(Lj7i;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgct;-><init>(Lj7i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs l([Lim5;)Lim5;
    .locals 2

    new-instance v0, Ln7i;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln7i;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;Z)V

    return-object v0
.end method

.method public static m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgap;->zzc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgao;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgao;-><init>(Lim5;Lm2i;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/m8;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzgap;->zzc:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgan;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgan;-><init>(Lim5;Lk7i;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/m8;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/x7;)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/o8;->k(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ln8i;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v1, p0}, Lj3i;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static q(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ln8i;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbh;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgbh;-><init>(Ljava/lang/Error;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcu;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgcu;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgbp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgbp;-><init>(Ljava/util/concurrent/Future;Lv7i;)V

    invoke-interface {p0, v0, p2}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
