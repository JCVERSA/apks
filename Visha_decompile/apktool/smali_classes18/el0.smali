.class public abstract synthetic Lel0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;)Ld72;
    .locals 1

    invoke-static {p0, p1}, Lek1;->j(Lnk1;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcj5;

    invoke-direct {p1, p0, p3}, Lcj5;-><init>(Lkotlin/coroutines/d;Ls74;)V

    goto :goto_0

    :cond_0
    new-instance p1, Le72;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le72;-><init>(Lkotlin/coroutines/d;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Ls74;)V

    return-object p1
.end method

.method public static synthetic b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcl0;->a(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;)Ld72;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;)Lkotlinx/coroutines/j;
    .locals 1

    invoke-static {p0, p1}, Lek1;->j(Lnk1;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnj5;

    invoke-direct {p1, p0, p3}, Lnj5;-><init>(Lkotlin/coroutines/d;Ls74;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lzv9;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lzv9;-><init>(Lkotlin/coroutines/d;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Ls74;)V

    return-object p1
.end method

.method public static synthetic d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcl0;->c(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;)Lkotlinx/coroutines/j;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, Lwh1;->getContext()Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0, p0}, Lek1;->k(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0}, Ln95;->h(Lkotlin/coroutines/d;)V

    if-ne p0, v0, :cond_0

    new-instance v0, Lx29;

    invoke-direct {v0, p0, p2}, Lx29;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    invoke-static {v0, v0, p1}, Ltfb;->b(Lx29;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/coroutines/c;->A6:Lkotlin/coroutines/c$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v2

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v0

    invoke-static {v2, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lsfb;

    invoke-direct {v0, p0, p2}, Lsfb;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/d;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v0, p1}, Ltfb;->b(Lx29;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v1}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    throw p1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/f;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/f;-><init>(Lkotlin/coroutines/d;Lwh1;)V

    invoke-static {p1, v0, v0}, Lgr0;->c(Ls74;Ljava/lang/Object;Lwh1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/f;->V()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_2
    return-object p0
.end method
