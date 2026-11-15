.class public abstract Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/foundation/layout/FillElement;

.field private static final b:Landroidx/compose/foundation/layout/FillElement;

.field private static final c:Landroidx/compose/foundation/layout/FillElement;

.field private static final d:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final e:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final f:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final g:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final h:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final i:Landroidx/compose/foundation/layout/WrapContentElement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->c(F)Landroidx/compose/foundation/layout/FillElement;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->a(F)Landroidx/compose/foundation/layout/FillElement;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->b:Landroidx/compose/foundation/layout/FillElement;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->b(F)Landroidx/compose/foundation/layout/FillElement;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 22
    .line 23
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->g:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    .line 24
    .line 25
    sget-object v1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->c(Landroidx/compose/ui/b$b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->d:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->c(Landroidx/compose/ui/b$b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->e:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->b(Landroidx/compose/ui/b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->h:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->b(Landroidx/compose/ui/b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->i:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 87
    .line 88
    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$a;->b(F)Landroidx/compose/foundation/layout/FillElement;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->a(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$a;->c(F)Landroidx/compose/foundation/layout/FillElement;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 10

    .line 1
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v7, 0x5

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object v0, v9

    .line 27
    move v2, p1

    .line 28
    move v4, p1

    .line 29
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 10

    .line 1
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v7, 0x5

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x1

    .line 26
    move-object v0, v9

    .line 27
    move v2, p1

    .line 28
    move v4, p2

    .line 29
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Lo0/i;->b:Lo0/i$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lo0/i$a;->b()F

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
    sget-object p2, Lo0/i;->b:Lo0/i$a;

    .line 16
    .line 17
    invoke-virtual {p2}, Lo0/i$a;->b()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    new-instance v8, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v7, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, v8

    .line 24
    move v1, p1

    .line 25
    move v2, p2

    .line 26
    move v3, p3

    .line 27
    move v4, p4

    .line 28
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v8}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p1, Lo0/i;->b:Lo0/i$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lo0/i$a;->b()F

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
    sget-object p2, Lo0/i;->b:Lo0/i$a;

    .line 16
    .line 17
    invoke-virtual {p2}, Lo0/i$a;->b()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 22
    .line 23
    if-eqz p6, :cond_2

    .line 24
    .line 25
    sget-object p3, Lo0/i;->b:Lo0/i$a;

    .line 26
    .line 27
    invoke-virtual {p3}, Lo0/i$a;->b()F

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    sget-object p4, Lo0/i;->b:Lo0/i$a;

    .line 36
    .line 37
    invoke-virtual {p4}, Lo0/i$a;->b()F

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 10
    .line 11
    .line 12
    :goto_0
    move-object v7, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v1, v0

    .line 24
    move v2, p1

    .line 25
    move v3, p1

    .line 26
    move v4, p1

    .line 27
    move v5, p1

    .line 28
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final k(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 9

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 10
    .line 11
    .line 12
    :goto_0
    move-object v7, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v1, v0

    .line 24
    move v2, p1

    .line 25
    move v3, p2

    .line 26
    move v4, p1

    .line 27
    move v5, p2

    .line 28
    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static final l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 10

    .line 1
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/16 v7, 0xa

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    move-object v0, v9

    .line 28
    move v1, p1

    .line 29
    move v3, p1

    .line 30
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static final m(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 10

    .line 1
    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/16 v7, 0xa

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    move-object v0, v9

    .line 28
    move v1, p1

    .line 29
    move v3, p2

    .line 30
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static synthetic n(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Lo0/i;->b:Lo0/i$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lo0/i$a;->b()F

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
    sget-object p2, Lo0/i;->b:Lo0/i$a;

    .line 16
    .line 17
    invoke-virtual {p2}, Lo0/i$a;->b()F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->m(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final o(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;Z)Landroidx/compose/ui/f;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->g:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;ZILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;Z)Landroidx/compose/ui/f;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
