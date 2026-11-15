.class public abstract Lv6a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/j;)Lpb1;
    .locals 1

    new-instance v0, Lu6a;

    invoke-direct {v0, p0}, Lu6a;-><init>(Lkotlinx/coroutines/j;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lv6a;->a(Lkotlinx/coroutines/j;)Lpb1;

    move-result-object p0

    return-object p0
.end method
