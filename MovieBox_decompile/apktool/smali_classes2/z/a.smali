.class public final Lz/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lz/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$a;
    }
.end annotation


# instance fields
.field private final a:Lz/a$a;

.field private final b:Lz/d;

.field private c:Landroidx/compose/ui/graphics/m4;

.field private d:Landroidx/compose/ui/graphics/m4;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v8, Lz/a$a;

    .line 5
    .line 6
    const/16 v6, 0xf

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    move-object v0, v8

    .line 15
    invoke-direct/range {v0 .. v7}, Lz/a$a;-><init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iput-object v8, p0, Lz/a;->a:Lz/a$a;

    .line 19
    .line 20
    new-instance v0, Lz/a$b;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lz/a$b;-><init>(Lz/a;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lz/a;->b:Lz/d;

    .line 26
    .line 27
    return-void
.end method

.method static synthetic B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p6, Lz/g;->o1:Lz/g$a;

    .line 6
    .line 7
    invoke-virtual {p6}, Lz/g$a;->b()I

    .line 8
    .line 9
    .line 10
    move-result p6

    .line 11
    :cond_0
    move v6, p6

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move v3, p3

    .line 16
    move-object v4, p4

    .line 17
    move v5, p5

    .line 18
    invoke-direct/range {v0 .. v6}, Lz/a;->z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private final C(JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 3

    .line 1
    invoke-direct {p0}, Lz/a;->L()Landroidx/compose/ui/graphics/m4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p2, p8}, Lz/a;->G(JF)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result p8

    .line 17
    if-nez p8, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p2}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0, p9}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->l()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1, p10}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    invoke-interface {v0, p10}, Landroidx/compose/ui/graphics/m4;->n(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->getStrokeWidth()F

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    cmpg-float p1, p1, p3

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {v0, p3}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->v()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    cmpg-float p1, p1, p4

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-interface {v0, p4}, Landroidx/compose/ui/graphics/m4;->A(F)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->p()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    invoke-interface {v0, p5}, Landroidx/compose/ui/graphics/m4;->m(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->u()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    invoke-interface {v0, p6}, Landroidx/compose/ui/graphics/m4;->r(I)V

    .line 106
    .line 107
    .line 108
    :cond_7
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->t()Landroidx/compose/ui/graphics/p4;

    .line 109
    .line 110
    .line 111
    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    invoke-interface {v0, p7}, Landroidx/compose/ui/graphics/m4;->q(Landroidx/compose/ui/graphics/p4;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->B()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1, p11}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_9

    .line 129
    .line 130
    invoke-interface {v0, p11}, Landroidx/compose/ui/graphics/m4;->o(I)V

    .line 131
    .line 132
    .line 133
    :cond_9
    return-object v0
.end method

.method static synthetic D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 13

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lz/g$a;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    move v12, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v12, p11

    .line 16
    .line 17
    :goto_0
    move-object v1, p0

    .line 18
    move-wide v2, p1

    .line 19
    move/from16 v4, p3

    .line 20
    .line 21
    move/from16 v5, p4

    .line 22
    .line 23
    move/from16 v6, p5

    .line 24
    .line 25
    move/from16 v7, p6

    .line 26
    .line 27
    move-object/from16 v8, p7

    .line 28
    .line 29
    move/from16 v9, p8

    .line 30
    .line 31
    move-object/from16 v10, p9

    .line 32
    .line 33
    move/from16 v11, p10

    .line 34
    .line 35
    invoke-direct/range {v1 .. v12}, Lz/a;->C(JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private final G(JF)J
    .locals 9

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->n(J)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    mul-float v3, v0, p3

    .line 13
    .line 14
    const/16 v7, 0xe

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    move-wide v1, p1

    .line 21
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    :goto_0
    return-wide p1
.end method

.method private final I()Landroidx/compose/ui/graphics/m4;
    .locals 2

    .line 1
    iget-object v0, p0, Lz/a;->c:Landroidx/compose/ui/graphics/m4;

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
    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lz/a;->c:Landroidx/compose/ui/graphics/m4;

    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method private final L()Landroidx/compose/ui/graphics/m4;
    .locals 2

    .line 1
    iget-object v0, p0, Lz/a;->d:Landroidx/compose/ui/graphics/m4;

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
    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lz/a;->d:Landroidx/compose/ui/graphics/m4;

    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method private final M(Lz/h;)Landroidx/compose/ui/graphics/m4;
    .locals 3

    .line 1
    sget-object v0, Lz/l;->a:Lz/l;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lz/a;->I()Landroidx/compose/ui/graphics/m4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    instance-of v0, p1, Lz/m;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    invoke-direct {p0}, Lz/a;->L()Landroidx/compose/ui/graphics/m4;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->getStrokeWidth()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    check-cast p1, Lz/m;

    .line 27
    .line 28
    invoke-virtual {p1}, Lz/m;->f()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    cmpg-float v1, v1, v2

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1}, Lz/m;->f()F

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->p()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Lz/m;->b()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lz/m;->b()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->m(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->v()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1}, Lz/m;->d()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    cmpg-float v1, v1, v2

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1}, Lz/m;->d()F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->A(F)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->u()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1}, Lz/m;->c()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1}, Lz/m;->c()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->r(I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->t()Landroidx/compose/ui/graphics/p4;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    .line 110
    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    invoke-virtual {p1}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->q(Landroidx/compose/ui/graphics/p4;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    move-object p1, v0

    .line 126
    :goto_2
    return-object p1

    .line 127
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 128
    .line 129
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method private final n(JLz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lz/a;->M(Lz/h;)Landroidx/compose/ui/graphics/m4;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0, p1, p2, p4}, Lz/a;->G(JF)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p3, p5}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->l()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    invoke-interface {p3, p6}, Landroidx/compose/ui/graphics/m4;->n(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->B()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1, p7}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    invoke-interface {p3, p7}, Landroidx/compose/ui/graphics/m4;->o(I)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-object p3
.end method

.method static synthetic v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lz/g$a;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    move v8, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move/from16 v8, p7

    .line 14
    .line 15
    :goto_0
    move-object v1, p0

    .line 16
    move-wide v2, p1

    .line 17
    move-object v4, p3

    .line 18
    move v5, p4

    .line 19
    move-object v6, p5

    .line 20
    move v7, p6

    .line 21
    invoke-direct/range {v1 .. v8}, Lz/a;->n(JLz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private final z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lz/a;->M(Lz/h;)Landroidx/compose/ui/graphics/m4;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lz/a;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/compose/ui/graphics/j1;->a(JLandroidx/compose/ui/graphics/m4;F)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-interface {p2, p1}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->a()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/m4;->s(J)V

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->getAlpha()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    cmpg-float p1, p1, p3

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-interface {p2, p3}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    invoke-interface {p2, p4}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->l()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    invoke-interface {p2, p5}, Landroidx/compose/ui/graphics/m4;->n(I)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->B()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    invoke-interface {p2, p6}, Landroidx/compose/ui/graphics/m4;->o(I)V

    .line 97
    .line 98
    .line 99
    :cond_6
    return-object p2
.end method


# virtual methods
.method public B0()F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a$a;->f()Lo0/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lo0/n;->B0()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public C0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 5
    .line 6
    .line 7
    move-result-object v11

    .line 8
    const/16 v8, 0x20

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move-wide v1, p2

    .line 14
    move-object/from16 v3, p5

    .line 15
    .line 16
    move/from16 v4, p4

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    move/from16 v6, p7

    .line 21
    .line 22
    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, p1

    .line 27
    invoke-interface {v11, p1, v0}, Landroidx/compose/ui/graphics/m1;->q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public synthetic D0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->d(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final F()Lz/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public F0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v15

    .line 9
    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/16 v12, 0x200

    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    const/high16 v4, 0x40800000    # 4.0f

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    move-wide/from16 v1, p3

    .line 24
    .line 25
    move/from16 v3, p5

    .line 26
    .line 27
    move/from16 v5, p6

    .line 28
    .line 29
    move-object/from16 v7, p7

    .line 30
    .line 31
    move/from16 v8, p8

    .line 32
    .line 33
    move-object/from16 v9, p9

    .line 34
    .line 35
    move/from16 v10, p10

    .line 36
    .line 37
    invoke-static/range {v0 .. v13}, Lz/a;->D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    move/from16 v2, p2

    .line 44
    .line 45
    invoke-interface {v15, v2, v1, v0}, Landroidx/compose/ui/graphics/m1;->g(ILjava/util/List;Landroidx/compose/ui/graphics/m4;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public G0()Lz/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->b:Lz/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic H(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public synthetic J(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public J0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 5
    .line 6
    .line 7
    move-result-object v11

    .line 8
    const/16 v8, 0x20

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move-wide v1, p1

    .line 14
    move-object/from16 v3, p7

    .line 15
    .line 16
    move/from16 v4, p6

    .line 17
    .line 18
    move-object/from16 v5, p8

    .line 19
    .line 20
    move/from16 v6, p9

    .line 21
    .line 22
    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move v1, p3

    .line 27
    move-wide/from16 v2, p4

    .line 28
    .line 29
    invoke-interface {v11, v2, v3, p3, v0}, Landroidx/compose/ui/graphics/m1;->r(JFLandroidx/compose/ui/graphics/m4;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public K0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 16

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    .line 10
    .line 11
    .line 12
    move-result v12

    .line 13
    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    .line 14
    .line 15
    .line 16
    move-result v13

    .line 17
    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static/range {p5 .. p6}, Ly/m;->i(J)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-float v14, v0, v1

    .line 26
    .line 27
    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static/range {p5 .. p6}, Ly/m;->g(J)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-float v15, v0, v1

    .line 36
    .line 37
    const/16 v8, 0x20

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    move-wide/from16 v1, p1

    .line 44
    .line 45
    move-object/from16 v3, p8

    .line 46
    .line 47
    move/from16 v4, p7

    .line 48
    .line 49
    move-object/from16 v5, p9

    .line 50
    .line 51
    move/from16 v6, p10

    .line 52
    .line 53
    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object/from16 p1, v11

    .line 58
    .line 59
    move/from16 p2, v12

    .line 60
    .line 61
    move/from16 p3, v13

    .line 62
    .line 63
    move/from16 p4, v14

    .line 64
    .line 65
    move/from16 p5, v15

    .line 66
    .line 67
    move-object/from16 p6, v0

    .line 68
    .line 69
    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public M0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 15

    .line 1
    move-object v9, p0

    .line 2
    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 5
    .line 6
    .line 7
    move-result-object v10

    .line 8
    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    .line 9
    .line 10
    .line 11
    move-result v11

    .line 12
    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    .line 13
    .line 14
    .line 15
    move-result v12

    .line 16
    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static/range {p4 .. p5}, Ly/m;->i(J)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-float v13, v0, v1

    .line 25
    .line 26
    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static/range {p4 .. p5}, Ly/m;->g(J)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-float v14, v0, v1

    .line 35
    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v0, p0

    .line 41
    move-object/from16 v1, p1

    .line 42
    .line 43
    move-object/from16 v2, p7

    .line 44
    .line 45
    move/from16 v3, p6

    .line 46
    .line 47
    move-object/from16 v4, p8

    .line 48
    .line 49
    move/from16 v5, p9

    .line 50
    .line 51
    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object/from16 p1, v10

    .line 56
    .line 57
    move/from16 p2, v11

    .line 58
    .line 59
    move/from16 p3, v12

    .line 60
    .line 61
    move/from16 p4, v13

    .line 62
    .line 63
    move/from16 p5, v14

    .line 64
    .line 65
    move-object/from16 p6, v0

    .line 66
    .line 67
    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public synthetic N0()J
    .locals 2

    .line 1
    invoke-static {p0}, Lz/f;->a(Lz/g;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public synthetic P0(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->e(Lo0/e;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public synthetic Q(F)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lo0/d;->f(Lo0/e;F)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 18

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    .line 10
    .line 11
    .line 12
    move-result v12

    .line 13
    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    .line 14
    .line 15
    .line 16
    move-result v13

    .line 17
    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static/range {p5 .. p6}, Ly/m;->i(J)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-float v14, v0, v1

    .line 26
    .line 27
    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static/range {p5 .. p6}, Ly/m;->g(J)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-float v15, v0, v1

    .line 36
    .line 37
    invoke-static/range {p7 .. p8}, Ly/a;->d(J)F

    .line 38
    .line 39
    .line 40
    move-result v16

    .line 41
    invoke-static/range {p7 .. p8}, Ly/a;->e(J)F

    .line 42
    .line 43
    .line 44
    move-result v17

    .line 45
    const/16 v8, 0x20

    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move-wide/from16 v1, p1

    .line 52
    .line 53
    move-object/from16 v3, p9

    .line 54
    .line 55
    move/from16 v4, p10

    .line 56
    .line 57
    move-object/from16 v5, p11

    .line 58
    .line 59
    move/from16 v6, p12

    .line 60
    .line 61
    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object/from16 p1, v11

    .line 66
    .line 67
    move/from16 p2, v12

    .line 68
    .line 69
    move/from16 p3, v13

    .line 70
    .line 71
    move/from16 p4, v14

    .line 72
    .line 73
    move/from16 p5, v15

    .line 74
    .line 75
    move/from16 p6, v16

    .line 76
    .line 77
    move/from16 p7, v17

    .line 78
    .line 79
    move-object/from16 p8, v0

    .line 80
    .line 81
    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/m1;->s(FFFFFFLandroidx/compose/ui/graphics/m4;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public T0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget-object v0, v7, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    move-object/from16 v2, p11

    .line 13
    .line 14
    move/from16 v3, p10

    .line 15
    .line 16
    move-object/from16 v4, p12

    .line 17
    .line 18
    move/from16 v5, p13

    .line 19
    .line 20
    move/from16 v6, p14

    .line 21
    .line 22
    invoke-direct/range {v0 .. v6}, Lz/a;->z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    .line 23
    .line 24
    .line 25
    move-result-object v18

    .line 26
    move-object/from16 v9, p1

    .line 27
    .line 28
    move-wide/from16 v10, p2

    .line 29
    .line 30
    move-wide/from16 v12, p4

    .line 31
    .line 32
    move-wide/from16 v14, p6

    .line 33
    .line 34
    move-wide/from16 v16, p8

    .line 35
    .line 36
    invoke-interface/range {v8 .. v18}, Landroidx/compose/ui/graphics/m1;->h(Landroidx/compose/ui/graphics/e4;JJJJLandroidx/compose/ui/graphics/m4;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public U0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    .line 10
    .line 11
    .line 12
    move-result v11

    .line 13
    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    .line 14
    .line 15
    .line 16
    move-result v12

    .line 17
    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static/range {p4 .. p5}, Ly/m;->i(J)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-float v13, v0, v1

    .line 26
    .line 27
    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static/range {p4 .. p5}, Ly/m;->g(J)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-float v14, v0, v1

    .line 36
    .line 37
    invoke-static/range {p6 .. p7}, Ly/a;->d(J)F

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    invoke-static/range {p6 .. p7}, Ly/a;->e(J)F

    .line 42
    .line 43
    .line 44
    move-result v16

    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move-object/from16 v1, p1

    .line 52
    .line 53
    move-object/from16 v2, p9

    .line 54
    .line 55
    move/from16 v3, p8

    .line 56
    .line 57
    move-object/from16 v4, p10

    .line 58
    .line 59
    move/from16 v5, p11

    .line 60
    .line 61
    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    move-object/from16 p1, v10

    .line 66
    .line 67
    move/from16 p2, v11

    .line 68
    .line 69
    move/from16 p3, v12

    .line 70
    .line 71
    move/from16 p4, v13

    .line 72
    .line 73
    move/from16 p5, v14

    .line 74
    .line 75
    move/from16 p6, v15

    .line 76
    .line 77
    move/from16 p7, v16

    .line 78
    .line 79
    move-object/from16 p8, v0

    .line 80
    .line 81
    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/m1;->s(FFFFFFLandroidx/compose/ui/graphics/m4;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public synthetic c0(F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a$a;->f()Lo0/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lo0/e;->getDensity()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a$a;->g()Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic h0(J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lo0/d;->c(Lo0/e;J)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public synthetic i()J
    .locals 2

    .line 1
    invoke-static {p0}, Lz/f;->b(Lz/g;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 5
    .line 6
    .line 7
    move-result-object v10

    .line 8
    const/16 v7, 0x20

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p2

    .line 14
    move-object v2, p4

    .line 15
    move v3, p3

    .line 16
    move-object/from16 v4, p5

    .line 17
    .line 18
    move/from16 v5, p6

    .line 19
    .line 20
    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v1, p1

    .line 25
    invoke-interface {v10, p1, v0}, Landroidx/compose/ui/graphics/m1;->q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, Lz/a;->a:Lz/a$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    .line 6
    .line 7
    .line 8
    move-result-object v15

    .line 9
    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/16 v12, 0x200

    .line 16
    .line 17
    const/4 v13, 0x0

    .line 18
    const/high16 v4, 0x40800000    # 4.0f

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    move-wide/from16 v1, p1

    .line 24
    .line 25
    move/from16 v3, p7

    .line 26
    .line 27
    move/from16 v5, p8

    .line 28
    .line 29
    move-object/from16 v7, p9

    .line 30
    .line 31
    move/from16 v8, p10

    .line 32
    .line 33
    move-object/from16 v9, p11

    .line 34
    .line 35
    move/from16 v10, p12

    .line 36
    .line 37
    invoke-static/range {v0 .. v13}, Lz/a;->D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object/from16 p7, v15

    .line 42
    .line 43
    move-wide/from16 p8, p3

    .line 44
    .line 45
    move-wide/from16 p10, p5

    .line 46
    .line 47
    move-object/from16 p12, v0

    .line 48
    .line 49
    invoke-interface/range {p7 .. p12}, Landroidx/compose/ui/graphics/m1;->m(JJLandroidx/compose/ui/graphics/m4;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public synthetic x0(F)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
