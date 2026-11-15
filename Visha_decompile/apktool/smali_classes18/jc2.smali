.class public abstract Ljc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljc2;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljc2;->b:Ly7a;

    return-void
.end method

.method public static final synthetic a()Ly7a;
    .locals 1

    sget-object v0, Ljc2;->a:Ly7a;

    return-object v0
.end method

.method public static final b(Lwh1;Ljava/lang/Object;)V
    .locals 6

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_8

    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-static {p1}, Lwb1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/c;->isDispatchNeeded(Lkotlin/coroutines/d;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lfia;->a:Lfia;

    invoke-virtual {v1}, Lfia;->b()Lyd3;

    move-result-object v1

    invoke-virtual {v1}, Lyd3;->isUnconfinedLoopActive()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {v1, p0}, Lyd3;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1, v2}, Lyd3;->incrementUseCount(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/d;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {v3, v4}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/j;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/j;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lkotlinx/coroutines/j;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/DispatchedTask;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    iget-object v3, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    invoke-interface {v0}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v4

    invoke-static {v4, v3}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ldia;->a:Ly7a;

    if-eq v3, v5, :cond_3

    invoke-static {v0, v4, v3}, Lek1;->m(Lwh1;Lkotlin/coroutines/d;Ljava/lang/Object;)Lsfb;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lwh1;

    invoke-interface {v5, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lsfb;->V()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lyd3;->processUnconfinedEvent()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Lyd3;->decrementUseCount(Z)V

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Lsfb;->V()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {v4, v3}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Lyd3;->decrementUseCount(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static final c(Lkotlinx/coroutines/internal/DispatchedContinuation;)Z
    .locals 5

    sget-object v0, Lzfb;->a:Lzfb;

    sget-object v1, Lfia;->a:Lfia;

    invoke-virtual {v1}, Lfia;->b()Lyd3;

    move-result-object v1

    invoke-virtual {v1}, Lyd3;->isUnconfinedQueueEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lyd3;->isUnconfinedLoopActive()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    iput v4, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {v1, p0}, Lyd3;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lyd3;->incrementUseCount(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    :cond_2
    invoke-virtual {v1}, Lyd3;->processUnconfinedEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {v1, v4}, Lyd3;->decrementUseCount(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, v4}, Lyd3;->decrementUseCount(Z)V

    throw p0
.end method
