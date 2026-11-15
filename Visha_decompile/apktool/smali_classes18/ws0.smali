.class public abstract Lws0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Loz3;Lkotlin/coroutines/d;)Loz3;
    .locals 0

    invoke-static {p0, p1}, Lws0;->d(Loz3;Lkotlin/coroutines/d;)Loz3;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/coroutines/d;Ljava/lang/Object;Ljava/lang/Object;Ls74;Lwh1;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p2}, Ldia;->i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lwv9;

    invoke-direct {v0, p4, p0}, Lwv9;-><init>(Lwh1;Lkotlin/coroutines/d;)V

    instance-of v1, p3, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v1, :cond_0

    invoke-static {p3, p1, v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->d(Ls74;Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-static {p3, v1}, Lccb;->f(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls74;

    invoke-interface {p3, p1, v0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0, p2}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_1

    invoke-static {p4}, Lpt1;->c(Lwh1;)V

    :cond_1
    return-object p1

    :goto_1
    invoke-static {p0, p2}, Ldia;->f(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic c(Lkotlin/coroutines/d;Ljava/lang/Object;Ljava/lang/Object;Ls74;Lwh1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    invoke-static {p0}, Ldia;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lws0;->b(Lkotlin/coroutines/d;Ljava/lang/Object;Ljava/lang/Object;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Loz3;Lkotlin/coroutines/d;)Loz3;
    .locals 1

    instance-of v0, p0, Lhc9;

    if-nez v0, :cond_1

    instance-of v0, p0, Ls17;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;-><init>(Loz3;Lkotlin/coroutines/d;)V

    move-object p0, v0

    :cond_1
    :goto_0
    return-object p0
.end method
