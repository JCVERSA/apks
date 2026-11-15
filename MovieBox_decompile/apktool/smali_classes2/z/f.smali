.class public abstract synthetic Lz/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 2
    .line 3
    return-void
.end method

.method public static a(Lz/g;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lz/g;->G0()Lz/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lz/d;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ly/n;->b(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public static b(Lz/g;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lz/g;->G0()Lz/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lz/d;->i()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static c(Lz/g;JJ)J
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ly/m;->i(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p3, p4}, Ly/g;->m(J)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-float/2addr p0, v0

    .line 10
    invoke-static {p1, p2}, Ly/m;->g(J)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p3, p4}, Ly/g;->n(J)F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    sub-float/2addr p1, p2

    .line 19
    invoke-static {p0, p1}, Ly/n;->a(FF)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public static synthetic d(Lz/g;JFJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 11

    .line 1
    if-nez p11, :cond_6

    .line 2
    .line 3
    and-int/lit8 v0, p10, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lz/g;->i()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ly/m;->h(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v0, v1

    .line 18
    move v4, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v4, p3

    .line 21
    :goto_0
    and-int/lit8 v0, p10, 0x4

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Lz/g;->N0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    move-wide v5, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-wide v5, p4

    .line 32
    :goto_1
    and-int/lit8 v0, p10, 0x8

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    .line 38
    move v7, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move/from16 v7, p6

    .line 41
    .line 42
    :goto_2
    and-int/lit8 v0, p10, 0x10

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    sget-object v0, Lz/l;->a:Lz/l;

    .line 47
    .line 48
    move-object v8, v0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    move-object/from16 v8, p7

    .line 51
    .line 52
    :goto_3
    and-int/lit8 v0, p10, 0x20

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    move-object v9, v0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move-object/from16 v9, p8

    .line 60
    .line 61
    :goto_4
    and-int/lit8 v0, p10, 0x40

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 66
    .line 67
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move v10, v0

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move/from16 v10, p9

    .line 74
    .line 75
    :goto_5
    move-object v1, p0

    .line 76
    move-wide v2, p1

    .line 77
    invoke-interface/range {v1 .. v10}, Lz/g;->J0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 82
    .line 83
    const-string v1, "Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public static synthetic e(Lz/g;Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p15

    .line 2
    .line 3
    if-nez p16, :cond_9

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lo0/p;->b:Lo0/p$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lo0/p$a;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v1, p2

    .line 17
    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/graphics/e4;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {p1}, Landroidx/compose/ui/graphics/e4;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {v3, v4}, Lo0/u;->a(II)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-wide/from16 v3, p4

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v5, v0, 0x8

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    sget-object v5, Lo0/p;->b:Lo0/p$a;

    .line 41
    .line 42
    invoke-virtual {v5}, Lo0/p$a;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    move-wide/from16 v5, p6

    .line 48
    .line 49
    :goto_2
    and-int/lit8 v7, v0, 0x10

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    move-wide v7, v3

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-wide/from16 v7, p8

    .line 56
    .line 57
    :goto_3
    and-int/lit8 v9, v0, 0x20

    .line 58
    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    const/high16 v9, 0x3f800000    # 1.0f

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    move/from16 v9, p10

    .line 65
    .line 66
    :goto_4
    and-int/lit8 v10, v0, 0x40

    .line 67
    .line 68
    if-eqz v10, :cond_5

    .line 69
    .line 70
    sget-object v10, Lz/l;->a:Lz/l;

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move-object/from16 v10, p11

    .line 74
    .line 75
    :goto_5
    and-int/lit16 v11, v0, 0x80

    .line 76
    .line 77
    if-eqz v11, :cond_6

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    goto :goto_6

    .line 81
    :cond_6
    move-object/from16 v11, p12

    .line 82
    .line 83
    :goto_6
    and-int/lit16 v12, v0, 0x100

    .line 84
    .line 85
    if-eqz v12, :cond_7

    .line 86
    .line 87
    sget-object v12, Lz/g;->o1:Lz/g$a;

    .line 88
    .line 89
    invoke-virtual {v12}, Lz/g$a;->a()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    goto :goto_7

    .line 94
    :cond_7
    move/from16 v12, p13

    .line 95
    .line 96
    :goto_7
    and-int/lit16 v0, v0, 0x200

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 101
    .line 102
    invoke-virtual {v0}, Lz/g$a;->b()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    goto :goto_8

    .line 107
    :cond_8
    move/from16 v0, p14

    .line 108
    .line 109
    :goto_8
    move-object p2, p0

    .line 110
    move-object/from16 p3, p1

    .line 111
    .line 112
    move-wide/from16 p4, v1

    .line 113
    .line 114
    move-wide/from16 p6, v3

    .line 115
    .line 116
    move-wide/from16 p8, v5

    .line 117
    .line 118
    move-wide/from16 p10, v7

    .line 119
    .line 120
    move/from16 p12, v9

    .line 121
    .line 122
    move-object/from16 p13, v10

    .line 123
    .line 124
    move-object/from16 p14, v11

    .line 125
    .line 126
    move/from16 p15, v12

    .line 127
    .line 128
    move/from16 p16, v0

    .line 129
    .line 130
    invoke-interface/range {p2 .. p16}, Lz/g;->T0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 135
    .line 136
    const-string v1, "Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method

.method public static synthetic f(Lz/g;JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 15

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    if-nez p14, :cond_6

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x8

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v9, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v9, p7

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lz/m;->e:Lz/m$a;

    .line 19
    .line 20
    invoke-virtual {v1}, Lz/m$a;->a()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    move v10, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v10, p8

    .line 27
    .line 28
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    move-object v11, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object/from16 v11, p9

    .line 36
    .line 37
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    move v12, v1

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move/from16 v12, p10

    .line 46
    .line 47
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    move-object v13, v2

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    move-object/from16 v13, p11

    .line 54
    .line 55
    :goto_4
    and-int/lit16 v0, v0, 0x100

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 60
    .line 61
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v14, v0

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move/from16 v14, p12

    .line 68
    .line 69
    :goto_5
    move-object v2, p0

    .line 70
    move-wide/from16 v3, p1

    .line 71
    .line 72
    move-wide/from16 v5, p3

    .line 73
    .line 74
    move-wide/from16 v7, p5

    .line 75
    .line 76
    invoke-interface/range {v2 .. v14}, Lz/g;->q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 81
    .line 82
    const-string v1, "Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0
.end method

.method public static synthetic g(Lz/g;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p8, :cond_4

    .line 2
    .line 3
    and-int/lit8 p8, p7, 0x4

    .line 4
    .line 5
    if-eqz p8, :cond_0

    .line 6
    .line 7
    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    :cond_0
    move v3, p3

    .line 10
    and-int/lit8 p3, p7, 0x8

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p4, Lz/l;->a:Lz/l;

    .line 15
    .line 16
    :cond_1
    move-object v4, p4

    .line 17
    and-int/lit8 p3, p7, 0x10

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    const/4 p5, 0x0

    .line 22
    :cond_2
    move-object v5, p5

    .line 23
    and-int/lit8 p3, p7, 0x20

    .line 24
    .line 25
    if-eqz p3, :cond_3

    .line 26
    .line 27
    sget-object p3, Lz/g;->o1:Lz/g$a;

    .line 28
    .line 29
    invoke-virtual {p3}, Lz/g$a;->a()I

    .line 30
    .line 31
    .line 32
    move-result p6

    .line 33
    :cond_3
    move v6, p6

    .line 34
    move-object v0, p0

    .line 35
    move-object v1, p1

    .line 36
    move-object v2, p2

    .line 37
    invoke-interface/range {v0 .. v6}, Lz/g;->i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 42
    .line 43
    const-string p1, "Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU"

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static synthetic h(Lz/g;Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    if-nez p12, :cond_6

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x8

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v7, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v7, p5

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/c5$a;->a()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    move v8, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v8, p6

    .line 27
    .line 28
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    move-object v9, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object/from16 v9, p7

    .line 36
    .line 37
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    move v10, v1

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move/from16 v10, p8

    .line 46
    .line 47
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    move-object v11, v2

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    move-object/from16 v11, p9

    .line 54
    .line 55
    :goto_4
    and-int/lit16 v0, v0, 0x100

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 60
    .line 61
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    move v12, v0

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move/from16 v12, p10

    .line 68
    .line 69
    :goto_5
    move-object v2, p0

    .line 70
    move-object v3, p1

    .line 71
    move v4, p2

    .line 72
    move-wide/from16 v5, p3

    .line 73
    .line 74
    invoke-interface/range {v2 .. v12}, Lz/g;->F0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 79
    .line 80
    const-string v1, "Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public static synthetic i(Lz/g;Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 9

    .line 1
    if-nez p11, :cond_6

    .line 2
    .line 3
    and-int/lit8 v0, p10, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ly/g;->b:Ly/g$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly/g$a;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide v0, p2

    .line 15
    :goto_0
    and-int/lit8 v2, p10, 0x4

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Lz/g;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    move-object v4, p0

    .line 24
    invoke-static {p0, v2, v3, v0, v1}, Lz/f;->c(Lz/g;JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v4, p0

    .line 30
    move-wide v2, p4

    .line 31
    :goto_1
    and-int/lit8 v5, p10, 0x8

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v5, p6

    .line 39
    :goto_2
    and-int/lit8 v6, p10, 0x10

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    sget-object v6, Lz/l;->a:Lz/l;

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move-object/from16 v6, p7

    .line 47
    .line 48
    :goto_3
    and-int/lit8 v7, p10, 0x20

    .line 49
    .line 50
    if-eqz v7, :cond_4

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    goto :goto_4

    .line 54
    :cond_4
    move-object/from16 v7, p8

    .line 55
    .line 56
    :goto_4
    and-int/lit8 v8, p10, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_5

    .line 59
    .line 60
    sget-object v8, Lz/g;->o1:Lz/g$a;

    .line 61
    .line 62
    invoke-virtual {v8}, Lz/g$a;->a()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move/from16 v8, p9

    .line 68
    .line 69
    :goto_5
    move-object p2, p0

    .line 70
    move-object p3, p1

    .line 71
    move-wide p4, v0

    .line 72
    move-wide p6, v2

    .line 73
    move/from16 p8, v5

    .line 74
    .line 75
    move-object/from16 p9, v6

    .line 76
    .line 77
    move-object/from16 p10, v7

    .line 78
    .line 79
    move/from16 p11, v8

    .line 80
    .line 81
    invoke-interface/range {p2 .. p11}, Lz/g;->M0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 86
    .line 87
    const-string v1, "Super calls with default arguments not supported in this target, function: drawRect-AsUm42w"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public static synthetic j(Lz/g;JJJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 13

    .line 1
    if-nez p12, :cond_6

    .line 2
    .line 3
    and-int/lit8 v0, p11, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ly/g;->b:Ly/g$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly/g$a;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    move-wide v5, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-wide/from16 v5, p3

    .line 16
    .line 17
    :goto_0
    and-int/lit8 v0, p11, 0x4

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Lz/g;->i()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    move-object v2, p0

    .line 26
    invoke-static {p0, v0, v1, v5, v6}, Lz/f;->c(Lz/g;JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    move-wide v7, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v2, p0

    .line 33
    move-wide/from16 v7, p5

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v0, p11, 0x8

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    move v9, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move/from16 v9, p7

    .line 44
    .line 45
    :goto_2
    and-int/lit8 v0, p11, 0x10

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sget-object v0, Lz/l;->a:Lz/l;

    .line 50
    .line 51
    move-object v10, v0

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move-object/from16 v10, p8

    .line 54
    .line 55
    :goto_3
    and-int/lit8 v0, p11, 0x20

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    move-object v11, v0

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object/from16 v11, p9

    .line 63
    .line 64
    :goto_4
    and-int/lit8 v0, p11, 0x40

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 69
    .line 70
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    move v12, v0

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move/from16 v12, p10

    .line 77
    .line 78
    :goto_5
    move-object v2, p0

    .line 79
    move-wide v3, p1

    .line 80
    invoke-interface/range {v2 .. v12}, Lz/g;->K0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 85
    .line 86
    const-string v1, "Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0
.end method

.method public static synthetic k(Lz/g;Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 11

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    if-nez p13, :cond_7

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Ly/g;->b:Ly/g$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Ly/g$a;->c()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v1, p2

    .line 17
    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Lz/g;->i()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    move-object v5, p0

    .line 26
    invoke-static {p0, v3, v4, v1, v2}, Lz/f;->c(Lz/g;JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v5, p0

    .line 32
    move-wide v3, p4

    .line 33
    :goto_1
    and-int/lit8 v6, v0, 0x8

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    sget-object v6, Ly/a;->a:Ly/a$a;

    .line 38
    .line 39
    invoke-virtual {v6}, Ly/a$a;->a()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-wide/from16 v6, p6

    .line 45
    .line 46
    :goto_2
    and-int/lit8 v8, v0, 0x10

    .line 47
    .line 48
    if-eqz v8, :cond_3

    .line 49
    .line 50
    const/high16 v8, 0x3f800000    # 1.0f

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move/from16 v8, p8

    .line 54
    .line 55
    :goto_3
    and-int/lit8 v9, v0, 0x20

    .line 56
    .line 57
    if-eqz v9, :cond_4

    .line 58
    .line 59
    sget-object v9, Lz/l;->a:Lz/l;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object/from16 v9, p9

    .line 63
    .line 64
    :goto_4
    and-int/lit8 v10, v0, 0x40

    .line 65
    .line 66
    if-eqz v10, :cond_5

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move-object/from16 v10, p10

    .line 71
    .line 72
    :goto_5
    and-int/lit16 v0, v0, 0x80

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    sget-object v0, Lz/g;->o1:Lz/g$a;

    .line 77
    .line 78
    invoke-virtual {v0}, Lz/g$a;->a()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_6

    .line 83
    :cond_6
    move/from16 v0, p11

    .line 84
    .line 85
    :goto_6
    move-object p2, p0

    .line 86
    move-object p3, p1

    .line 87
    move-wide p4, v1

    .line 88
    move-wide/from16 p6, v3

    .line 89
    .line 90
    move-wide/from16 p8, v6

    .line 91
    .line 92
    move/from16 p10, v8

    .line 93
    .line 94
    move-object/from16 p11, v9

    .line 95
    .line 96
    move-object/from16 p12, v10

    .line 97
    .line 98
    move/from16 p13, v0

    .line 99
    .line 100
    invoke-interface/range {p2 .. p13}, Lz/g;->U0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 105
    .line 106
    const-string v1, "Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method
