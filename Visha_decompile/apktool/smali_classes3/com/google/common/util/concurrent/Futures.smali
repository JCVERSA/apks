.class public abstract Lcom/google/common/util/concurrent/Futures;
.super Llk4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$a;,
        Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lcom/google/common/util/concurrent/Futures$CallbackListener;
    }
.end annotation


# direct methods
.method public static a(Lim5;Lj94;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lj94;)V

    invoke-interface {p0, v0, p2}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Lim5;Ljava/lang/Class;Lo74;Ljava/util/concurrent/Executor;)Lim5;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lim5;Ljava/lang/Class;Lo74;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lim5;Ljava/lang/Class;Lgj;Ljava/util/concurrent/Executor;)Lim5;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCatchingFuture;->createAsync(Lim5;Ljava/lang/Class;Lgj;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/FuturesGetChecked;->f(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lxd8;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lwfb;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f()Lim5;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/f$a;->b:Lcom/google/common/util/concurrent/f$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/f$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/f$a;-><init>()V

    return-object v0
.end method

.method public static g(Ljava/lang/Throwable;)Lim5;
    .locals 1

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/f$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static h()Lim5;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/f;->c:Lim5;

    return-object v0
.end method

.method public static i(Lim5;Lo74;Ljava/util/concurrent/Executor;)Lim5;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->create(Lim5;Lo74;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lim5;Lgj;Ljava/util/concurrent/Executor;)Lim5;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractTransformFuture;->createAsync(Lim5;Lgj;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static varargs k([Lim5;)Lcom/google/common/util/concurrent/Futures$a;
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/Futures$a;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/util/concurrent/Futures$a;-><init>(ZLcom/google/common/collect/ImmutableList;Lk94;)V

    return-object v0
.end method

.method public static l(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/TimeoutFuture;->r(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    return-object p0
.end method
