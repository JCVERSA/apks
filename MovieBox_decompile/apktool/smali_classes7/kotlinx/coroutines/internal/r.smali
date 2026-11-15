.class public final Lkotlinx/coroutines/internal/r;
.super Lkotlinx/coroutines/i0;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/t0;


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/t0;

.field private final b:Lkotlinx/coroutines/i0;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/i0;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lkotlinx/coroutines/t0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lkotlinx/coroutines/t0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/t0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/t0;

    .line 20
    .line 21
    iput-object p1, p0, Lkotlinx/coroutines/internal/r;->b:Lkotlinx/coroutines/i0;

    .line 22
    .line 23
    iput-object p2, p0, Lkotlinx/coroutines/internal/r;->c:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->b:Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/i0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->b:Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/i0;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/t0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/t0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/a1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->b:Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/i0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->a:Lkotlinx/coroutines/t0;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/t0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/r;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
