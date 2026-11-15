.class public abstract Ldy/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static volatile a:Lyx/f;

.field static volatile b:Lyx/h;

.field static volatile c:Lyx/h;

.field static volatile d:Lyx/h;

.field static volatile e:Lyx/h;

.field static volatile f:Lyx/h;

.field static volatile g:Lyx/h;

.field static volatile h:Lyx/h;

.field static volatile i:Lyx/h;

.field static volatile j:Lyx/h;

.field static volatile k:Lyx/h;

.field static volatile l:Lyx/h;

.field static volatile m:Lyx/h;

.field static volatile n:Lyx/c;

.field static volatile o:Lyx/c;

.field static volatile p:Lyx/c;

.field static volatile q:Lyx/c;

.field static volatile r:Lyx/c;

.field static volatile s:Z


# direct methods
.method static A(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lyx/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method static b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lyx/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method static c(Lyx/h;Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "Scheduler Supplier result can\'t be null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    return-object p0
.end method

.method static d(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Lyx/k;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Scheduler Supplier result can\'t be null"

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->g(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    throw p0
.end method

.method public static e(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;ZZ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static f(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    const-string v0, "Scheduler Supplier can\'t be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldy/a;->c:Lyx/h;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ldy/a;->d(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->c(Lyx/h;Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static g(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    const-string v0, "Scheduler Supplier can\'t be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldy/a;->e:Lyx/h;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ldy/a;->d(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->c(Lyx/h;Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static h(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    const-string v0, "Scheduler Supplier can\'t be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldy/a;->f:Lyx/h;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ldy/a;->d(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->c(Lyx/h;Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static i(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    const-string v0, "Scheduler Supplier can\'t be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldy/a;->d:Lyx/h;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ldy/a;->d(Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->c(Lyx/h;Lyx/k;)Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method static j(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/OnErrorNotImplementedException;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    instance-of v0, p0, Lio/reactivex/rxjava3/exceptions/QueueOverflowException;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    return v1

    .line 32
    :cond_5
    instance-of p0, p0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 33
    .line 34
    if-eqz p0, :cond_6

    .line 35
    .line 36
    return v1

    .line 37
    :cond_6
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static k()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldy/a;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public static l(Lio/reactivex/rxjava3/core/a;)Lio/reactivex/rxjava3/core/a;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->m:Lyx/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/a;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public static m(Lio/reactivex/rxjava3/core/e;)Lio/reactivex/rxjava3/core/e;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->i:Lyx/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/e;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public static n(Lio/reactivex/rxjava3/core/g;)Lio/reactivex/rxjava3/core/g;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->k:Lyx/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/g;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public static o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->j:Lyx/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/j;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public static p(Lio/reactivex/rxjava3/core/p;)Lio/reactivex/rxjava3/core/p;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->l:Lyx/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/p;

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public static q()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static r(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Ldy/a;->a:Lyx/f;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "onError called with a null Throwable."

    .line 6
    .line 7
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Ldy/a;->j(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lio/reactivex/rxjava3/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    move-object p0, v1

    .line 24
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-interface {v0, p0}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ldy/a;->A(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Ldy/a;->A(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static s(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->h:Lyx/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    return-object p0
.end method

.method public static t(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    const-string v0, "run is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldy/a;->b:Lyx/h;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Runnable;

    .line 16
    .line 17
    return-object p0
.end method

.method public static u(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->g:Lyx/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {v0, p0}, Ldy/a;->b(Lyx/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    .line 11
    .line 12
    return-object p0
.end method

.method public static v(Lio/reactivex/rxjava3/core/e;Li00/c;)Li00/c;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->n:Lyx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Ldy/a;->a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Li00/c;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method

.method public static w(Lio/reactivex/rxjava3/core/a;Lio/reactivex/rxjava3/core/b;)Lio/reactivex/rxjava3/core/b;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->r:Lyx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Ldy/a;->a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/b;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method

.method public static x(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/h;)Lio/reactivex/rxjava3/core/h;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->o:Lyx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Ldy/a;->a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/h;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method

.method public static y(Lio/reactivex/rxjava3/core/j;Lio/reactivex/rxjava3/core/o;)Lio/reactivex/rxjava3/core/o;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->p:Lyx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Ldy/a;->a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/o;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method

.method public static z(Lio/reactivex/rxjava3/core/p;Lio/reactivex/rxjava3/core/q;)Lio/reactivex/rxjava3/core/q;
    .locals 1

    .line 1
    sget-object v0, Ldy/a;->q:Lyx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Ldy/a;->a(Lyx/c;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/reactivex/rxjava3/core/q;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    return-object p1
.end method
