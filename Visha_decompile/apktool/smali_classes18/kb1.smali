.class public abstract Lkb1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Lib1;
    .locals 2

    new-instance v0, Ljb1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljb1;-><init>(Lkotlinx/coroutines/j;)V

    invoke-virtual {v0, p0}, Ljb1;->h(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/j;)Lib1;
    .locals 1

    new-instance v0, Ljb1;

    invoke-direct {v0, p0}, Ljb1;-><init>(Lkotlinx/coroutines/j;)V

    return-object v0
.end method

.method public static synthetic c(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lib1;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkb1;->b(Lkotlinx/coroutines/j;)Lib1;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lib1;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lib1;->h(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lib1;->g(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_0
    return p0
.end method
