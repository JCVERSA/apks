.class public abstract Landroidx/compose/foundation/layout/PaddingKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(F)Landroidx/compose/foundation/layout/t;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/foundation/layout/u;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p0

    .line 6
    move v2, p0

    .line 7
    move v3, p0

    .line 8
    move v4, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/u;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static final b(FF)Landroidx/compose/foundation/layout/t;
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/foundation/layout/u;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p0

    .line 8
    move v4, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/u;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static synthetic c(FFILjava/lang/Object;)Landroidx/compose/foundation/layout/t;
    .locals 1

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    int-to-float p0, v0

    .line 7
    invoke-static {p0}, Lo0/i;->g(F)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    int-to-float p1, v0

    .line 16
    invoke-static {p1}, Lo0/i;->g(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->b(FF)Landroidx/compose/foundation/layout/t;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final d(Landroidx/compose/foundation/layout/t;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/t;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/t;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method public static final e(Landroidx/compose/foundation/layout/t;Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/t;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/t;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method public static final f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    new-instance v8, Landroidx/compose/foundation/layout/PaddingElement;

    .line 2
    .line 3
    new-instance v6, Landroidx/compose/foundation/layout/PaddingKt$padding$2;

    .line 4
    .line 5
    invoke-direct {v6, p1, p2}, Landroidx/compose/foundation/layout/PaddingKt$padding$2;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, v8

    .line 11
    move v1, p1

    .line 12
    move v2, p2

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v8}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    int-to-float p1, v0

    .line 7
    invoke-static {p1}, Lo0/i;->g(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    int-to-float p2, v0

    .line 16
    invoke-static {p2}, Lo0/i;->g(F)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    new-instance v8, Landroidx/compose/foundation/layout/PaddingElement;

    .line 2
    .line 3
    new-instance v6, Landroidx/compose/foundation/layout/PaddingKt$padding$1;

    .line 4
    .line 5
    invoke-direct {v6, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt$padding$1;-><init>(FFFF)V

    .line 6
    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    move-object v0, v8

    .line 11
    move v1, p1

    .line 12
    move v2, p2

    .line 13
    move v3, p3

    .line 14
    move v4, p4

    .line 15
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/PaddingElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v8}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    int-to-float p1, v0

    .line 7
    invoke-static {p1}, Lo0/i;->g(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 12
    .line 13
    if-eqz p6, :cond_1

    .line 14
    .line 15
    int-to-float p2, v0

    .line 16
    invoke-static {p2}, Lo0/i;->g(F)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 21
    .line 22
    if-eqz p6, :cond_2

    .line 23
    .line 24
    int-to-float p3, v0

    .line 25
    invoke-static {p3}, Lo0/i;->g(F)F

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 30
    .line 31
    if-eqz p5, :cond_3

    .line 32
    .line 33
    int-to-float p4, v0

    .line 34
    invoke-static {p4}, Lo0/i;->g(F)F

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
