.class public abstract Landroidx/compose/material/RippleKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/runtime/s1;

.field private static final c:Landroidx/compose/material/i;

.field private static final d:Landroidx/compose/material/i;

.field private static final e:Landroidx/compose/material/ripple/c;

.field private static final f:Landroidx/compose/material/ripple/c;

.field private static final g:Landroidx/compose/material/ripple/c;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    sget-object v0, Landroidx/compose/material/RippleKt$LocalUseFallbackRippleImplementation$1;->INSTANCE:Landroidx/compose/material/RippleKt$LocalUseFallbackRippleImplementation$1;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/s1;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/material/RippleKt$LocalRippleConfiguration$1;->INSTANCE:Landroidx/compose/material/RippleKt$LocalRippleConfiguration$1;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/runtime/s1;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/material/i;

    .line 20
    .line 21
    sget-object v7, Lo0/i;->b:Lo0/i$a;

    .line 22
    .line 23
    invoke-virtual {v7}, Lo0/i$a;->b()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-object v8, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 28
    .line 29
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/i;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/material/i;

    .line 42
    .line 43
    invoke-virtual {v7}, Lo0/i$a;->b()F

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    move-object v9, v0

    .line 54
    invoke-direct/range {v9 .. v14}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/i;

    .line 58
    .line 59
    new-instance v0, Landroidx/compose/material/ripple/c;

    .line 60
    .line 61
    const v1, 0x3e23d70a    # 0.16f

    .line 62
    .line 63
    .line 64
    const v2, 0x3e75c28f    # 0.24f

    .line 65
    .line 66
    .line 67
    const v3, 0x3da3d70a    # 0.08f

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/c;

    .line 74
    .line 75
    new-instance v0, Landroidx/compose/material/ripple/c;

    .line 76
    .line 77
    const v1, 0x3df5c28f    # 0.12f

    .line 78
    .line 79
    .line 80
    const v2, 0x3d23d70a    # 0.04f

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/compose/material/RippleKt;->f:Landroidx/compose/material/ripple/c;

    .line 87
    .line 88
    new-instance v0, Landroidx/compose/material/ripple/c;

    .line 89
    .line 90
    const v4, 0x3dcccccd    # 0.1f

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material/ripple/c;-><init>(FFFF)V

    .line 94
    .line 95
    .line 96
    sput-object v0, Landroidx/compose/material/RippleKt;->g:Landroidx/compose/material/ripple/c;

    .line 97
    .line 98
    return-void
.end method

.method public static final synthetic a()Landroidx/compose/material/ripple/c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/RippleKt;->g:Landroidx/compose/material/ripple/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/material/ripple/c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/RippleKt;->e:Landroidx/compose/material/ripple/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Landroidx/compose/material/ripple/c;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/RippleKt;->f:Landroidx/compose/material/ripple/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Landroidx/compose/runtime/s1;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/RippleKt;->b:Landroidx/compose/runtime/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e(ZFJ)Landroidx/compose/foundation/b0;
    .locals 7

    .line 1
    sget-object v0, Lo0/i;->b:Lo0/i$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo0/i$a;->b()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Lo0/i;->i(FF)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    sget-object p0, Landroidx/compose/material/RippleKt;->c:Landroidx/compose/material/i;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Landroidx/compose/material/RippleKt;->d:Landroidx/compose/material/i;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v6, Landroidx/compose/material/i;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, v6

    .line 37
    move v1, p0

    .line 38
    move v2, p1

    .line 39
    move-wide v3, p2

    .line 40
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/i;-><init>(ZFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    move-object p0, v6

    .line 44
    :goto_0
    return-object p0
.end method

.method public static final f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;
    .locals 7

    .line 1
    and-int/lit8 v0, p6, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    :cond_0
    move v0, p0

    .line 7
    and-int/lit8 p0, p6, 0x2

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-object p0, Lo0/i;->b:Lo0/i$a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lo0/i$a;->b()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_1
    move v1, p1

    .line 18
    and-int/lit8 p0, p6, 0x4

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    sget-object p0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    :cond_2
    move-wide v2, p2

    .line 29
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    const-string p1, "androidx.compose.material.rippleOrFallbackImplementation (Ripple.kt:264)"

    .line 37
    .line 38
    const p2, -0x381ae9e

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p5, p0, p1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    sget-object p0, Landroidx/compose/material/RippleKt;->a:Landroidx/compose/runtime/s1;

    .line 45
    .line 46
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    const p0, 0x5bf221e

    .line 59
    .line 60
    .line 61
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->P(I)V

    .line 62
    .line 63
    .line 64
    and-int/lit16 v5, p5, 0x3fe

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v4, p4

    .line 68
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/ripple/h;->f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p4}, Landroidx/compose/runtime/i;->K()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const p0, 0x5c08587

    .line 77
    .line 78
    .line 79
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->P(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p4}, Landroidx/compose/runtime/i;->K()V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material/RippleKt;->e(ZFJ)Landroidx/compose/foundation/b0;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 96
    .line 97
    .line 98
    :cond_5
    return-object p0
.end method
