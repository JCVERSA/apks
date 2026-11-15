.class public abstract Landroidx/room/r0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Ly3/e;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/r0;->c(Ly3/e;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Landroidx/room/r;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/room/q0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/room/q0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, v0, p2}, Landroidx/room/r;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final c(Ly3/e;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
