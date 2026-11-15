.class public abstract synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/j;)Lpb1;
    .locals 1

    new-instance v0, Lk95;

    invoke-direct {v0, p0}, Lk95;-><init>(Lkotlinx/coroutines/j;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Ln95;->a(Lkotlinx/coroutines/j;)Lpb1;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/j;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Ln95;->c(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final e(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/j;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/j;->getChildren()Lpc9;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/j;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/j;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic f(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Ln95;->e(Lkotlin/coroutines/d;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(Lkotlinx/coroutines/j;Luc2;)Luc2;
    .locals 3

    new-instance v0, Lzc2;

    invoke-direct {v0, p1}, Lzc2;-><init>(Luc2;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ln95;->k(Lkotlinx/coroutines/j;ZLo95;ILjava/lang/Object;)Luc2;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/coroutines/d;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/j;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ln95;->i(Lkotlinx/coroutines/j;)V

    :cond_0
    return-void
.end method

.method public static final i(Lkotlinx/coroutines/j;)V
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/j;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/j;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final j(Lkotlinx/coroutines/j;ZLo95;)Luc2;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/JobSupport;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletionInternal$kotlinx_coroutines_core(ZLo95;)Luc2;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lo95;->u()Z

    move-result v0

    new-instance v1, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;

    invoke-direct {v1, p2}, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1, v1}, Lkotlinx/coroutines/j;->invokeOnCompletion(ZZLe74;)Luc2;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic k(Lkotlinx/coroutines/j;ZLo95;ILjava/lang/Object;)Luc2;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    invoke-static {p0, p1, p2}, Ln95;->j(Lkotlinx/coroutines/j;ZLo95;)Luc2;

    move-result-object p0

    return-object p0
.end method
