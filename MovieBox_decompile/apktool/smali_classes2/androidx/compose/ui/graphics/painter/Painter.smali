.class public abstract Landroidx/compose/ui/graphics/painter/Painter;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Landroidx/compose/ui/graphics/m4;

.field private b:Z

.field private c:Landroidx/compose/ui/graphics/v1;

.field private d:F

.field private e:Landroidx/compose/ui/unit/LayoutDirection;

.field private final f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/painter/Painter$drawLambda$1;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->f:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    return-void
.end method

.method private final d(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    .line 2
    .line 3
    cmpg-float v0, v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->a(F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpg-float v0, p1, v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    .line 41
    .line 42
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->d:F

    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method private final e(Landroidx/compose/ui/graphics/v1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->c:Landroidx/compose/ui/graphics/v1;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->b(Landroidx/compose/ui/graphics/v1;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    .line 39
    .line 40
    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->c:Landroidx/compose/ui/graphics/v1;

    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method private final f(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->c(Landroidx/compose/ui/unit/LayoutDirection;)Z

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/Painter;->e:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final i()Landroidx/compose/ui/graphics/m4;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/ui/graphics/painter/Painter;->a:Landroidx/compose/ui/graphics/m4;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(F)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected b(Landroidx/compose/ui/graphics/v1;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method protected c(Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final g(Lz/g;JFLandroidx/compose/ui/graphics/v1;)V
    .locals 4

    .line 1
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/painter/Painter;->d(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->e(Landroidx/compose/ui/graphics/v1;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 8
    .line 9
    .line 10
    move-result-object p5

    .line 11
    invoke-direct {p0, p5}, Landroidx/compose/ui/graphics/painter/Painter;->f(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lz/g;->i()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ly/m;->i(J)F

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    invoke-static {p2, p3}, Ly/m;->i(J)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-float/2addr p5, v0

    .line 27
    invoke-interface {p1}, Lz/g;->i()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Ly/m;->g(J)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p2, p3}, Ly/m;->g(J)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sub-float/2addr v0, v1

    .line 40
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Lz/d;->c()Lz/j;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-interface {v1, v2, v2, p5, v0}, Lz/j;->f(FFFF)V

    .line 50
    .line 51
    .line 52
    cmpl-float p4, p4, v2

    .line 53
    .line 54
    const/high16 v1, -0x80000000

    .line 55
    .line 56
    if-lez p4, :cond_1

    .line 57
    .line 58
    :try_start_0
    invoke-static {p2, p3}, Ly/m;->i(J)F

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    cmpl-float p4, p4, v2

    .line 63
    .line 64
    if-lez p4, :cond_1

    .line 65
    .line 66
    invoke-static {p2, p3}, Ly/m;->g(J)F

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    cmpl-float p4, p4, v2

    .line 71
    .line 72
    if-lez p4, :cond_1

    .line 73
    .line 74
    iget-boolean p4, p0, Landroidx/compose/ui/graphics/painter/Painter;->b:Z

    .line 75
    .line 76
    if-eqz p4, :cond_0

    .line 77
    .line 78
    sget-object p4, Ly/g;->b:Ly/g$a;

    .line 79
    .line 80
    invoke-virtual {p4}, Ly/g$a;->c()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-static {p2, p3}, Ly/m;->i(J)F

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    invoke-static {p2, p3}, Ly/m;->g(J)F

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-static {p4, p2}, Ly/n;->a(FF)J

    .line 93
    .line 94
    .line 95
    move-result-wide p2

    .line 96
    invoke-static {v2, v3, p2, p3}, Ly/j;->a(JJ)Ly/i;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-interface {p3}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;->i()Landroidx/compose/ui/graphics/m4;

    .line 109
    .line 110
    .line 111
    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-interface {p3, p2, p4}, Landroidx/compose/ui/graphics/m1;->d(Ly/i;Landroidx/compose/ui/graphics/m4;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Lz/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    :try_start_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p2

    .line 123
    goto :goto_0

    .line 124
    :catchall_1
    move-exception p2

    .line 125
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m1;->j()V

    .line 126
    .line 127
    .line 128
    throw p2

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/painter/Painter;->j(Lz/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :goto_0
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Lz/d;->c()Lz/j;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    neg-float p3, p5

    .line 142
    neg-float p4, v0

    .line 143
    invoke-interface {p1, v1, v1, p3, p4}, Lz/j;->f(FFFF)V

    .line 144
    .line 145
    .line 146
    throw p2

    .line 147
    :cond_1
    :goto_1
    invoke-interface {p1}, Lz/g;->G0()Lz/d;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Lz/d;->c()Lz/j;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    neg-float p2, p5

    .line 156
    neg-float p3, v0

    .line 157
    invoke-interface {p1, v1, v1, p2, p3}, Lz/j;->f(FFFF)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public abstract h()J
.end method

.method protected abstract j(Lz/g;)V
.end method
