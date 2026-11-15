.class public final Lkotlinx/coroutines/i;
.super Lkotlinx/coroutines/h;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/i;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    instance-of p1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/d;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 0

    const-string p0, "The task was rejected"

    invoke-static {p0, p2}, Lse3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p1, p0}, Ln95;->c(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/i;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Ld4;->a()Lc4;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ld4;->a()Lc4;

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/d;Ljava/util/concurrent/RejectedExecutionException;)V

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/i;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/i;

    invoke-virtual {p1}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;
    .locals 9

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lkotlinx/coroutines/i;->k(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lkotlin/coroutines/d;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Ltc2;

    invoke-direct {p0, v2}, Ltc2;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/DefaultExecutor;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final k(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lkotlin/coroutines/d;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p4, p5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/d;Ljava/util/concurrent/RejectedExecutionException;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public scheduleResumeAfterDelay(JLcr0;)V
    .locals 9

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    new-instance v5, Lkotlinx/coroutines/ResumeUndispatchedRunnable;

    invoke-direct {v5, p0, p3}, Lkotlinx/coroutines/ResumeUndispatchedRunnable;-><init>(Lkotlinx/coroutines/c;Lcr0;)V

    invoke-interface {p3}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v6

    move-object v3, p0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lkotlinx/coroutines/i;->k(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Lkotlin/coroutines/d;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Lzq0;

    invoke-direct {p0, v2}, Lzq0;-><init>(Ljava/util/concurrent/Future;)V

    invoke-static {p3, p0}, Lfr0;->c(Lcr0;Lkotlinx/coroutines/b;)V

    return-void

    :cond_2
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase;->scheduleResumeAfterDelay(JLcr0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/i;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
