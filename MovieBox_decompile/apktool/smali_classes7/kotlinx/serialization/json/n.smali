.class public abstract Lkotlinx/serialization/json/n;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builderAction"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkotlinx/serialization/json/d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/d;-><init>(Lkotlinx/serialization/json/a;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lkotlinx/serialization/json/d;->a()Lkotlinx/serialization/json/f;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lkotlinx/serialization/json/m;

    .line 24
    .line 25
    invoke-virtual {v0}, Lkotlinx/serialization/json/d;->b()Lty/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, p0, v0}, Lkotlinx/serialization/json/m;-><init>(Lkotlinx/serialization/json/f;Lty/c;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public static synthetic b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/n;->a(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
