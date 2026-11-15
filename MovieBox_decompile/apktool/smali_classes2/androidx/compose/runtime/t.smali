.class public abstract Landroidx/compose/runtime/t;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/runtime/n1;Landroidx/compose/runtime/q;)Z
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final b(Landroidx/compose/runtime/n1;Landroidx/compose/runtime/q;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/runtime/q;->a()Landroidx/compose/runtime/g3;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    check-cast v0, Landroidx/compose/runtime/g3;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Landroidx/compose/runtime/g3;->a(Landroidx/compose/runtime/n1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final c([Landroidx/compose/runtime/t1;Landroidx/compose/runtime/n1;Landroidx/compose/runtime/n1;)Landroidx/compose/runtime/n1;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/compose/runtime/internal/e;->a()Landroidx/compose/runtime/internal/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/d;->z()Landroidx/compose/runtime/internal/d$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/compose/runtime/t1;->b()Landroidx/compose/runtime/q;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.ProvidableCompositionLocal<kotlin.Any?>"

    .line 20
    .line 21
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v4, Landroidx/compose/runtime/s1;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroidx/compose/runtime/t1;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-static {p1, v4}, Landroidx/compose/runtime/t;->a(Landroidx/compose/runtime/n1;Landroidx/compose/runtime/q;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/compose/runtime/g3;

    .line 43
    .line 44
    const-string v6, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>"

    .line 45
    .line 46
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3, v5}, Landroidx/compose/runtime/s1;->b(Landroidx/compose/runtime/t1;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v0}, Landroidx/compose/runtime/n1$a;->build()Landroidx/compose/runtime/n1;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static synthetic d([Landroidx/compose/runtime/t1;Landroidx/compose/runtime/n1;Landroidx/compose/runtime/n1;ILjava/lang/Object;)Landroidx/compose/runtime/n1;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/internal/e;->a()Landroidx/compose/runtime/internal/d;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/t;->c([Landroidx/compose/runtime/t1;Landroidx/compose/runtime/n1;Landroidx/compose/runtime/n1;)Landroidx/compose/runtime/n1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
