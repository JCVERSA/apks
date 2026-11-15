.class public final Lhy6;
.super Lkotlinx/coroutines/c;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/e;

.field public final c:Lkotlinx/coroutines/c;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    instance-of v0, p1, Lkotlinx/coroutines/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lh12;->a()Lkotlinx/coroutines/e;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lhy6;->b:Lkotlinx/coroutines/e;

    iput-object p1, p0, Lhy6;->c:Lkotlinx/coroutines/c;

    iput-object p2, p0, Lhy6;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lhy6;->c:Lkotlinx/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lhy6;->c:Lkotlinx/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;
    .locals 0

    iget-object p0, p0, Lhy6;->b:Lkotlinx/coroutines/e;

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/e;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/d;)Luc2;

    move-result-object p0

    return-object p0
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/d;)Z
    .locals 0

    iget-object p0, p0, Lhy6;->c:Lkotlinx/coroutines/c;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c;->isDispatchNeeded(Lkotlin/coroutines/d;)Z

    move-result p0

    return p0
.end method

.method public scheduleResumeAfterDelay(JLcr0;)V
    .locals 0

    iget-object p0, p0, Lhy6;->b:Lkotlinx/coroutines/e;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/e;->scheduleResumeAfterDelay(JLcr0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhy6;->d:Ljava/lang/String;

    return-object p0
.end method
