.class public abstract Landroidx/compose/runtime/CompositionLocalKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    .line 1
    const v0, -0x50862cb8

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:398)"

    .line 16
    .line 17
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->D(Landroidx/compose/runtime/t1;)V

    .line 21
    .line 22
    .line 23
    shr-int/lit8 v0, p3, 0x3

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0xe

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Landroidx/compose/runtime/i;->q()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$2;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$2;-><init>(Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public static final b([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    .line 1
    const v0, -0x52e5dee3

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:377)"

    .line 16
    .line 17
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->Q([Landroidx/compose/runtime/t1;)V

    .line 21
    .line 22
    .line 23
    shr-int/lit8 v0, p3, 0x3

    .line 24
    .line 25
    and-int/lit8 v0, v0, 0xe

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Landroidx/compose/runtime/i;->H()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;

    .line 53
    .line 54
    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/runtime/CompositionLocalKt$CompositionLocalProvider$1;-><init>([Landroidx/compose/runtime/t1;Lkotlin/jvm/functions/Function2;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public static final c(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/e0;-><init>(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/CompositionLocalKt;->c(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/b3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/b3;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
