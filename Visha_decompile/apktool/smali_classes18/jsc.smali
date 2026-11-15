.class public abstract Ljsc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwh1;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p0}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Ln95;->h(Lkotlin/coroutines/d;)V

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_2

    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/c;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/c;->isDispatchNeeded(Lkotlin/coroutines/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lzfb;->a:Lzfb;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lkotlinx/coroutines/l;

    invoke-direct {v2}, Lkotlinx/coroutines/l;-><init>()V

    invoke-interface {v0, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    sget-object v3, Lzfb;->a:Lzfb;

    invoke-virtual {v1, v0, v3}, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatchYield$kotlinx_coroutines_core(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    iget-boolean v0, v2, Lkotlinx/coroutines/l;->b:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, Ljc2;->c(Lkotlinx/coroutines/internal/DispatchedContinuation;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, Lpt1;->c(Lwh1;)V

    :cond_5
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
