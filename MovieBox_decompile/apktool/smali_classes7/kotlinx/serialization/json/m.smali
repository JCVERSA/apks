.class final Lkotlinx/serialization/json/m;
.super Lkotlinx/serialization/json/a;
.source "source.java"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/f;Lty/c;)V
    .locals 1

    .line 1
    const-string v0, "configuration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "module"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/f;Lty/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lkotlinx/serialization/json/m;->g()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->a()Lty/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lty/d;->a()Lty/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/j0;

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lkotlinx/serialization/json/f;->k()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lkotlinx/serialization/json/f;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/j0;-><init>(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->a()Lty/c;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v0}, Lty/c;->a(Lty/e;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
