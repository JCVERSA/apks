.class public abstract Lyw8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lzf1;

.field public static volatile b:Lt74;

.field public static volatile c:Lt74;

.field public static volatile d:Lt74;

.field public static volatile e:Lt74;

.field public static volatile f:Lt74;

.field public static volatile g:Lt74;

.field public static volatile h:Lt74;

.field public static volatile i:Lt74;

.field public static volatile j:Lt74;

.field public static volatile k:Lt74;

.field public static volatile l:Lt74;

.field public static volatile m:Lt74;

.field public static volatile n:Lt74;

.field public static volatile o:Lt74;

.field public static volatile p:Lt74;

.field public static volatile q:Lbe0;

.field public static volatile r:Lbe0;

.field public static volatile s:Lbe0;

.field public static volatile t:Lbe0;

.field public static volatile u:Lbe0;

.field public static volatile v:Z

.field public static volatile w:Z


# direct methods
.method public static A(Lxm9;Lin9;)Lin9;
    .locals 1

    sget-object v0, Lyw8;->t:Lbe0;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lyw8;->a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lin9;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static B(Lr14;Ld2a;)Ld2a;
    .locals 1

    sget-object v0, Lyw8;->q:Lbe0;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lyw8;->a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld2a;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static C(Lzf1;)V
    .locals 1

    sget-boolean v0, Lyw8;->v:Z

    if-nez v0, :cond_0

    sput-object p0, Lyw8;->a:Lzf1;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Plugins can\'t be changed anymore"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lbe0;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lt74;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static c(Lt74;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 0

    invoke-static {p0, p1}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Callable result can\'t be null"

    invoke-static {p0, p1}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Callable result can\'t be null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static e(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lyw8;->c:Lt74;

    if-nez v0, :cond_0

    invoke-static {p0}, Lyw8;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->c(Lt74;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lyw8;->e:Lt74;

    if-nez v0, :cond_0

    invoke-static {p0}, Lyw8;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->c(Lt74;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lyw8;->f:Lt74;

    if-nez v0, :cond_0

    invoke-static {p0}, Lyw8;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->c(Lt74;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 1

    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lyw8;->d:Lt74;

    if-nez v0, :cond_0

    invoke-static {p0}, Lyw8;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->c(Lt74;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Throwable;)Z
    .locals 2

    instance-of v0, p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lio/reactivex/exceptions/MissingBackpressureException;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    return v1

    :cond_4
    instance-of p0, p0, Lio/reactivex/exceptions/CompositeException;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lyw8;->w:Z

    return v0
.end method

.method public static k(Lhb1;)Lhb1;
    .locals 1

    sget-object v0, Lyw8;->p:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhb1;

    :cond_0
    return-object p0
.end method

.method public static l(Laf1;)Laf1;
    .locals 1

    sget-object v0, Lyw8;->m:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laf1;

    :cond_0
    return-object p0
.end method

.method public static m(Lr14;)Lr14;
    .locals 1

    sget-object v0, Lyw8;->k:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr14;

    :cond_0
    return-object p0
.end method

.method public static n(Lb96;)Lb96;
    .locals 1

    sget-object v0, Lyw8;->n:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb96;

    :cond_0
    return-object p0
.end method

.method public static o(Lmc7;)Lmc7;
    .locals 1

    sget-object v0, Lyw8;->l:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc7;

    :cond_0
    return-object p0
.end method

.method public static p(Lxm9;)Lxm9;
    .locals 1

    sget-object v0, Lyw8;->o:Lt74;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxm9;

    :cond_0
    return-object p0
.end method

.method public static q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static r(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lyw8;->g:Lt74;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static s(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lyw8;->a:Lzf1;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lyw8;->i(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p0}, Lzf1;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0}, Lyw8;->D(Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lyw8;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static t(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lyw8;->i:Lt74;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static u(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lyw8;->j:Lt74;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static v(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lac7;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lyw8;->b:Lt74;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static w(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lyw8;->h:Lt74;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p0}, Lyw8;->b(Lt74;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public static x(Lhb1;Lqb1;)Lqb1;
    .locals 1

    sget-object v0, Lyw8;->u:Lbe0;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lyw8;->a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqb1;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static y(Lb96;Lk96;)Lk96;
    .locals 1

    sget-object v0, Lyw8;->r:Lbe0;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lyw8;->a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk96;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static z(Lmc7;Lpd7;)Lpd7;
    .locals 1

    sget-object v0, Lyw8;->s:Lbe0;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lyw8;->a(Lbe0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpd7;

    return-object p0

    :cond_0
    return-object p1
.end method
