.class public abstract Lcom/google/android/gms/tasks/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lxda;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lwd8;->j()V

    invoke-static {}, Lwd8;->h()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lxda;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->f(Lxda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ly8e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly8e;-><init>(Lt7e;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/tasks/a;->g(Lxda;Lhae;)V

    invoke-virtual {v0}, Ly8e;->c()V

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->f(Lxda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lxda;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lwd8;->j()V

    invoke-static {}, Lwd8;->h()V

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lxda;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->f(Lxda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ly8e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly8e;-><init>(Lt7e;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/tasks/a;->g(Lxda;Lhae;)V

    invoke-virtual {v0, p1, p2, p3}, Ly8e;->d(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/tasks/a;->f(Lxda;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lxda;
    .locals 2

    const-string v0, "Executor must not be null"

    invoke-static {p0, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Leoj;

    invoke-direct {v0}, Leoj;-><init>()V

    new-instance v1, Lcom/google/android/gms/tasks/zzz;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/tasks/zzz;-><init>(Leoj;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Exception;)Lxda;
    .locals 1

    new-instance v0, Leoj;

    invoke-direct {v0}, Leoj;-><init>()V

    invoke-virtual {v0, p0}, Leoj;->s(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;)Lxda;
    .locals 1

    new-instance v0, Leoj;

    invoke-direct {v0}, Leoj;-><init>()V

    invoke-virtual {v0, p0}, Leoj;->t(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Lxda;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lxda;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lxda;->m()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lxda;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lxda;->l()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g(Lxda;Lhae;)V
    .locals 1

    sget-object v0, Lfea;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lxda;->g(Ljava/util/concurrent/Executor;Llf7;)Lxda;

    invoke-virtual {p0, v0, p1}, Lxda;->e(Ljava/util/concurrent/Executor;Lre7;)Lxda;

    invoke-virtual {p0, v0, p1}, Lxda;->a(Ljava/util/concurrent/Executor;Lne7;)Lxda;

    return-void
.end method
