.class public abstract Landroidx/compose/material/ripple/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/animation/core/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/animation/core/r0;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/animation/core/b0;->d()Landroidx/compose/animation/core/z;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lp/f;)Landroidx/compose/animation/core/g;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/h;->d(Lp/f;)Landroidx/compose/animation/core/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lp/f;)Landroidx/compose/animation/core/g;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/h;->e(Lp/f;)Landroidx/compose/animation/core/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/f;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/ripple/j;->d(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lp/f;)Landroidx/compose/animation/core/g;
    .locals 7

    .line 1
    instance-of v0, p0, Lp/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lp/b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance p0, Landroidx/compose/animation/core/r0;

    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/animation/core/b0;->d()Landroidx/compose/animation/core/z;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x0

    .line 20
    const/16 v2, 0x2d

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of p0, p0, Lp/a$b;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    new-instance p0, Landroidx/compose/animation/core/r0;

    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/animation/core/b0;->d()Landroidx/compose/animation/core/z;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v5, 0x0

    .line 40
    const/16 v1, 0x2d

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object p0, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 49
    .line 50
    :goto_0
    return-object p0
.end method

.method private static final e(Lp/f;)Landroidx/compose/animation/core/g;
    .locals 6

    .line 1
    instance-of v0, p0, Lp/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lp/b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of p0, p0, Lp/a$b;

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    new-instance p0, Landroidx/compose/animation/core/r0;

    .line 20
    .line 21
    invoke-static {}, Landroidx/compose/animation/core/b0;->d()Landroidx/compose/animation/core/z;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x2

    .line 26
    const/4 v5, 0x0

    .line 27
    const/16 v1, 0x96

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/r0;-><init>(IILandroidx/compose/animation/core/z;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    sget-object p0, Landroidx/compose/material/ripple/h;->a:Landroidx/compose/animation/core/r0;

    .line 36
    .line 37
    :goto_0
    return-object p0
.end method

.method public static final f(ZFJLandroidx/compose/runtime/i;II)Landroidx/compose/foundation/x;
    .locals 4

    .line 1
    and-int/lit8 v0, p6, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p6, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object p1, Lo0/i;->b:Lo0/i$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lo0/i$a;->b()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_1
    const/4 v0, 0x4

    .line 18
    and-int/2addr p6, v0

    .line 19
    if-eqz p6, :cond_2

    .line 20
    .line 21
    sget-object p2, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 28
    .line 29
    .line 30
    move-result p6

    .line 31
    if-eqz p6, :cond_3

    .line 32
    .line 33
    const/4 p6, -0x1

    .line 34
    const-string v2, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:146)"

    .line 35
    .line 36
    const v3, 0x61769d80

    .line 37
    .line 38
    .line 39
    invoke-static {v3, p5, p6, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    shr-int/lit8 p3, p5, 0x6

    .line 47
    .line 48
    and-int/lit8 p3, p3, 0xe

    .line 49
    .line 50
    invoke-static {p2, p4, p3}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    and-int/lit8 p3, p5, 0xe

    .line 55
    .line 56
    xor-int/lit8 p3, p3, 0x6

    .line 57
    .line 58
    const/4 p6, 0x0

    .line 59
    if-le p3, v0, :cond_4

    .line 60
    .line 61
    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->a(Z)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-nez p3, :cond_5

    .line 66
    .line 67
    :cond_4
    and-int/lit8 p3, p5, 0x6

    .line 68
    .line 69
    if-ne p3, v0, :cond_6

    .line 70
    .line 71
    :cond_5
    move p3, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_6
    move p3, p6

    .line 74
    :goto_0
    and-int/lit8 v0, p5, 0x70

    .line 75
    .line 76
    xor-int/lit8 v0, v0, 0x30

    .line 77
    .line 78
    const/16 v2, 0x20

    .line 79
    .line 80
    if-le v0, v2, :cond_7

    .line 81
    .line 82
    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->b(F)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_9

    .line 87
    .line 88
    :cond_7
    and-int/lit8 p5, p5, 0x30

    .line 89
    .line 90
    if-ne p5, v2, :cond_8

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_8
    move v1, p6

    .line 94
    :cond_9
    :goto_1
    or-int/2addr p3, v1

    .line 95
    invoke-interface {p4}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    if-nez p3, :cond_a

    .line 100
    .line 101
    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 102
    .line 103
    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    if-ne p5, p3, :cond_b

    .line 108
    .line 109
    :cond_a
    new-instance p5, Landroidx/compose/material/ripple/b;

    .line 110
    .line 111
    const/4 p3, 0x0

    .line 112
    invoke-direct {p5, p0, p1, p2, p3}, Landroidx/compose/material/ripple/b;-><init>(ZFLandroidx/compose/runtime/a3;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p4, p5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_b
    check-cast p5, Landroidx/compose/material/ripple/b;

    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_c

    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 127
    .line 128
    .line 129
    :cond_c
    return-object p5
.end method
