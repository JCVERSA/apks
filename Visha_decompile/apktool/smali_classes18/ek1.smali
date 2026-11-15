.class public abstract Lek1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lek1;->e(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1}, Lek1;->f(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(ZLkotlin/coroutines/d$b;)Z
    .locals 0

    invoke-static {p0, p1}, Lek1;->i(ZLkotlin/coroutines/d$b;)Z

    move-result p0

    return p0
.end method

.method public static final d(Lkotlin/coroutines/d;Lkotlin/coroutines/d;Z)Lkotlin/coroutines/d;
    .locals 3

    invoke-static {p0}, Lek1;->h(Lkotlin/coroutines/d;)Z

    move-result v0

    invoke-static {p1}, Lek1;->h(Lkotlin/coroutines/d;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v2, Lck1;

    invoke-direct {v2, v0, p2}, Lck1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    invoke-interface {p0, p1, v2}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/d;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lkotlin/coroutines/d;

    new-instance v1, Ldk1;

    invoke-direct {v1}, Ldk1;-><init>()V

    invoke-interface {p2, p1, v1}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 0

    invoke-interface {p2, p3}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lkotlin/coroutines/d;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final h(Lkotlin/coroutines/d;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lbk1;

    invoke-direct {v1}, Lbk1;-><init>()V

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final i(ZLkotlin/coroutines/d$b;)Z
    .locals 0

    return p0
.end method

.method public static final j(Lnk1;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    invoke-interface {p0}, Lnk1;->getCoroutineContext()Lkotlin/coroutines/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lek1;->d(Lkotlin/coroutines/d;Lkotlin/coroutines/d;Z)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Lkotlin/coroutines/c;->A6:Lkotlin/coroutines/c$b;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final k(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    invoke-static {p1}, Lek1;->h(Lkotlin/coroutines/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lek1;->d(Lkotlin/coroutines/d;Lkotlin/coroutines/d;Z)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lok1;)Lsfb;
    .locals 2

    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lok1;->getCallerFrame()Lok1;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, Lsfb;

    if-eqz v0, :cond_0

    check-cast p0, Lsfb;

    return-object p0
.end method

.method public static final m(Lwh1;Lkotlin/coroutines/d;Ljava/lang/Object;)Lsfb;
    .locals 2

    instance-of v0, p0, Lok1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lufb;->b:Lufb;

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, Lok1;

    invoke-static {p0}, Lek1;->l(Lok1;)Lsfb;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lsfb;->W(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method
