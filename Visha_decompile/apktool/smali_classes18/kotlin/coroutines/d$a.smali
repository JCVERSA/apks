.class public abstract Lkotlin/coroutines/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/d$a;->c(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lak1;

    invoke-direct {v0}, Lak1;-><init>()V

    invoke-interface {p1, p0, v0}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/d;

    :goto_0
    return-object p0
.end method

.method public static c(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d;
    .locals 3

    const-string v0, "acc"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/coroutines/d$b;->getKey()Lkotlin/coroutines/d$c;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/d;->minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;

    move-result-object p0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lkotlin/coroutines/c;->A6:Lkotlin/coroutines/c$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/c;

    if-nez v2, :cond_1

    new-instance v0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v0, p0, p1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, Lkotlin/coroutines/d;->minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;

    move-result-object p0

    if-ne p0, v0, :cond_2

    new-instance p0, Lkotlin/coroutines/CombinedContext;

    invoke-direct {p0, p1, v2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    new-instance v1, Lkotlin/coroutines/CombinedContext;

    invoke-direct {v1, p0, p1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)V

    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/d$b;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
