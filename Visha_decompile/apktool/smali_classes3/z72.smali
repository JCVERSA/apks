.class public Lz72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lz72;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static synthetic D(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-static {p0, p1}, Lz72;->G(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method

.method public static synthetic E(Lz72;Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz72;->P(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method

.method public static synthetic F(Lz72;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lz72;->I(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, La82$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, La82$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic J(Ljava/util/concurrent/Callable;La82$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, La82$b;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, La82$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic M(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, La82$b;->a(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic R(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p1, p0}, La82$b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lz72;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lz72;->L(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lz72;->Q(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lz72;->O(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/concurrent/Callable;La82$b;)V
    .locals 0

    invoke-static {p0, p1}, Lz72;->J(Ljava/util/concurrent/Callable;La82$b;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-static {p0, p1}, Lz72;->M(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method

.method public static synthetic h(Lz72;Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz72;->N(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method

.method public static synthetic k(Lz72;Ljava/util/concurrent/Callable;La82$b;)Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz72;->K(Ljava/util/concurrent/Callable;La82$b;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-static {p0, p1}, Lz72;->R(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method

.method public static synthetic o(Lz72;Ljava/lang/Runnable;La82$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz72;->H(Ljava/lang/Runnable;La82$b;)V

    return-void
.end method


# virtual methods
.method public final synthetic H(Ljava/lang/Runnable;La82$b;)V
    .locals 1

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lx72;

    invoke-direct {v0, p1, p2}, Lx72;-><init>(Ljava/lang/Runnable;La82$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic I(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lz72;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lu72;

    invoke-direct {v1, p0, p1, p5}, Lu72;-><init>(Lz72;Ljava/lang/Runnable;La82$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic K(Ljava/util/concurrent/Callable;La82$b;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ly72;

    invoke-direct {v0, p1, p2}, Ly72;-><init>(Ljava/util/concurrent/Callable;La82$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic L(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    iget-object v0, p0, Lz72;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lv72;

    invoke-direct {v1, p0, p1, p5}, Lv72;-><init>(Lz72;Ljava/util/concurrent/Callable;La82$b;)V

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic N(Ljava/lang/Runnable;La82$b;)V
    .locals 1

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lo72;

    invoke-direct {v0, p1, p2}, Lo72;-><init>(Ljava/lang/Runnable;La82$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic O(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Lz72;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lt72;

    invoke-direct {v1, p0, p1, p7}, Lt72;-><init>(Lz72;Ljava/lang/Runnable;La82$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic P(Ljava/lang/Runnable;La82$b;)V
    .locals 1

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lp72;

    invoke-direct {v0, p1, p2}, Lp72;-><init>(Ljava/lang/Runnable;La82$b;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic Q(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    iget-object v0, p0, Lz72;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lw72;

    invoke-direct {v1, p0, p1, p7}, Lw72;-><init>(Lz72;Ljava/lang/Runnable;La82$b;)V

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isShutdown()Z
    .locals 0

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public isTerminated()Z
    .locals 0

    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .line 1
    new-instance v0, La82;

    new-instance v7, Ln72;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ln72;-><init>(Lz72;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, La82;-><init>(La82$c;)V

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    .line 2
    new-instance v0, La82;

    new-instance v7, Ls72;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ls72;-><init>(Lz72;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v7}, La82;-><init>(La82$c;)V

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10

    new-instance v0, La82;

    new-instance v9, Lq72;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lq72;-><init>(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, La82;-><init>(La82$c;)V

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10

    new-instance v0, La82;

    new-instance v9, Lr72;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lr72;-><init>(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v0, v9}, La82;-><init>(La82$c;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shutting down is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shutting down is not allowed."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 3
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 2
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    iget-object p0, p0, Lz72;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
