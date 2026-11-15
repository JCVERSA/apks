.class public abstract Lkotlin/coroutines/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/coroutines/d$b;Ljava/lang/Object;Ls74;)Ljava/lang/Object;
    .locals 1

    const-string v0, "operation"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/coroutines/d$b;->getKey()Lkotlin/coroutines/d$c;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/coroutines/d$b;->getKey()Lkotlin/coroutines/d$c;

    move-result-object v0

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    return-object p0
.end method

.method public static d(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/coroutines/d$a;->b(Lkotlin/coroutines/d;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method
