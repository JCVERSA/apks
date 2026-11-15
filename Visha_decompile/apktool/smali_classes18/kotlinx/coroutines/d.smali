.class public abstract Lkotlinx/coroutines/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/d;)Lnk1;
    .locals 3

    new-instance v0, Lth1;

    sget-object v1, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Ln95;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-interface {p0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lth1;-><init>(Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public static final b()Lnk1;
    .locals 3

    new-instance v0, Lth1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lth1;-><init>(Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public static final c(Lnk1;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lse3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/coroutines/d;->d(Lnk1;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final d(Lnk1;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-interface {p0}, Lnk1;->getCoroutineContext()Lkotlin/coroutines/d;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/j;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic e(Lnk1;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/d;->c(Lnk1;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/d;->d(Lnk1;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final g(Ls74;Lwh1;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lx29;

    invoke-interface {p1}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lx29;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    invoke-static {v0, v0, p0}, Ltfb;->b(Lx29;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lpt1;->c(Lwh1;)V

    :cond_0
    return-object p0
.end method

.method public static final h(Lnk1;)V
    .locals 0

    invoke-interface {p0}, Lnk1;->getCoroutineContext()Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0}, Ln95;->h(Lkotlin/coroutines/d;)V

    return-void
.end method

.method public static final i(Lnk1;)Z
    .locals 1

    invoke-interface {p0}, Lnk1;->getCoroutineContext()Lkotlin/coroutines/d;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/j;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/j;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
