.class public final Lkd/n;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkd/n;->a:F

    .line 5
    .line 6
    iput p4, p0, Lkd/n;->b:F

    .line 7
    .line 8
    iput p7, p0, Lkd/n;->c:F

    .line 9
    .line 10
    iput p2, p0, Lkd/n;->d:F

    .line 11
    .line 12
    iput p5, p0, Lkd/n;->e:F

    .line 13
    .line 14
    iput p8, p0, Lkd/n;->f:F

    .line 15
    .line 16
    iput p3, p0, Lkd/n;->g:F

    .line 17
    .line 18
    iput p6, p0, Lkd/n;->h:F

    .line 19
    .line 20
    iput p9, p0, Lkd/n;->i:F

    .line 21
    .line 22
    return-void
.end method

.method public static b(FFFFFFFFFFFFFFFF)Lkd/n;
    .locals 2

    .line 1
    invoke-static/range {p0 .. p7}, Lkd/n;->c(FFFFFFFF)Lkd/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static/range {p8 .. p15}, Lkd/n;->d(FFFFFFFF)Lkd/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lkd/n;->e(Lkd/n;)Lkd/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static c(FFFFFFFF)Lkd/n;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lkd/n;->d(FFFFFFFF)Lkd/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lkd/n;->a()Lkd/n;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(FFFFFFFF)Lkd/n;
    .locals 17

    .line 1
    sub-float v0, p0, p2

    .line 2
    .line 3
    add-float v0, v0, p4

    .line 4
    .line 5
    sub-float v0, v0, p6

    .line 6
    .line 7
    sub-float v1, p1, p3

    .line 8
    .line 9
    add-float v1, v1, p5

    .line 10
    .line 11
    sub-float v1, v1, p7

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v3, v0, v2

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    cmpl-float v2, v1, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance v0, Lkd/n;

    .line 23
    .line 24
    sub-float v4, p2, p0

    .line 25
    .line 26
    sub-float v5, p4, p2

    .line 27
    .line 28
    sub-float v7, p3, p1

    .line 29
    .line 30
    sub-float v8, p5, p3

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/high16 v12, 0x3f800000    # 1.0f

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v3, v0

    .line 37
    move/from16 v6, p0

    .line 38
    .line 39
    move/from16 v9, p1

    .line 40
    .line 41
    invoke-direct/range {v3 .. v12}, Lkd/n;-><init>(FFFFFFFFF)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_0
    sub-float v2, p2, p4

    .line 46
    .line 47
    sub-float v3, p6, p4

    .line 48
    .line 49
    sub-float v4, p3, p5

    .line 50
    .line 51
    sub-float v5, p7, p5

    .line 52
    .line 53
    mul-float v6, v2, v5

    .line 54
    .line 55
    mul-float v7, v3, v4

    .line 56
    .line 57
    sub-float/2addr v6, v7

    .line 58
    mul-float/2addr v5, v0

    .line 59
    mul-float/2addr v3, v1

    .line 60
    sub-float/2addr v5, v3

    .line 61
    div-float v14, v5, v6

    .line 62
    .line 63
    mul-float/2addr v2, v1

    .line 64
    mul-float/2addr v0, v4

    .line 65
    sub-float/2addr v2, v0

    .line 66
    div-float v15, v2, v6

    .line 67
    .line 68
    new-instance v0, Lkd/n;

    .line 69
    .line 70
    sub-float v1, p2, p0

    .line 71
    .line 72
    mul-float v2, v14, p2

    .line 73
    .line 74
    add-float v8, v1, v2

    .line 75
    .line 76
    sub-float v1, p6, p0

    .line 77
    .line 78
    mul-float v2, v15, p6

    .line 79
    .line 80
    add-float v9, v1, v2

    .line 81
    .line 82
    sub-float v1, p3, p1

    .line 83
    .line 84
    mul-float v2, v14, p3

    .line 85
    .line 86
    add-float v11, v1, v2

    .line 87
    .line 88
    sub-float v1, p7, p1

    .line 89
    .line 90
    mul-float v2, v15, p7

    .line 91
    .line 92
    add-float v12, v1, v2

    .line 93
    .line 94
    const/high16 v16, 0x3f800000    # 1.0f

    .line 95
    .line 96
    move-object v7, v0

    .line 97
    move/from16 v10, p0

    .line 98
    .line 99
    move/from16 v13, p1

    .line 100
    .line 101
    invoke-direct/range {v7 .. v16}, Lkd/n;-><init>(FFFFFFFFF)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method


# virtual methods
.method a()Lkd/n;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v11, Lkd/n;

    .line 4
    .line 5
    iget v1, v0, Lkd/n;->e:F

    .line 6
    .line 7
    iget v2, v0, Lkd/n;->i:F

    .line 8
    .line 9
    mul-float v3, v1, v2

    .line 10
    .line 11
    iget v4, v0, Lkd/n;->f:F

    .line 12
    .line 13
    iget v5, v0, Lkd/n;->h:F

    .line 14
    .line 15
    mul-float v6, v4, v5

    .line 16
    .line 17
    sub-float/2addr v3, v6

    .line 18
    iget v6, v0, Lkd/n;->g:F

    .line 19
    .line 20
    mul-float v7, v4, v6

    .line 21
    .line 22
    iget v8, v0, Lkd/n;->d:F

    .line 23
    .line 24
    mul-float v9, v8, v2

    .line 25
    .line 26
    sub-float/2addr v7, v9

    .line 27
    mul-float v9, v8, v5

    .line 28
    .line 29
    mul-float v10, v1, v6

    .line 30
    .line 31
    sub-float/2addr v9, v10

    .line 32
    iget v10, v0, Lkd/n;->c:F

    .line 33
    .line 34
    mul-float v12, v10, v5

    .line 35
    .line 36
    iget v13, v0, Lkd/n;->b:F

    .line 37
    .line 38
    mul-float v14, v13, v2

    .line 39
    .line 40
    sub-float/2addr v12, v14

    .line 41
    iget v14, v0, Lkd/n;->a:F

    .line 42
    .line 43
    mul-float/2addr v2, v14

    .line 44
    mul-float v15, v10, v6

    .line 45
    .line 46
    sub-float v15, v2, v15

    .line 47
    .line 48
    mul-float/2addr v6, v13

    .line 49
    mul-float/2addr v5, v14

    .line 50
    sub-float v16, v6, v5

    .line 51
    .line 52
    mul-float v2, v13, v4

    .line 53
    .line 54
    mul-float v5, v10, v1

    .line 55
    .line 56
    sub-float v17, v2, v5

    .line 57
    .line 58
    mul-float/2addr v10, v8

    .line 59
    mul-float/2addr v4, v14

    .line 60
    sub-float/2addr v10, v4

    .line 61
    mul-float/2addr v14, v1

    .line 62
    mul-float/2addr v13, v8

    .line 63
    sub-float v13, v14, v13

    .line 64
    .line 65
    move-object v1, v11

    .line 66
    move v2, v3

    .line 67
    move v3, v7

    .line 68
    move v4, v9

    .line 69
    move v5, v12

    .line 70
    move v6, v15

    .line 71
    move/from16 v7, v16

    .line 72
    .line 73
    move/from16 v8, v17

    .line 74
    .line 75
    move v9, v10

    .line 76
    move v10, v13

    .line 77
    invoke-direct/range {v1 .. v10}, Lkd/n;-><init>(FFFFFFFFF)V

    .line 78
    .line 79
    .line 80
    return-object v11
.end method

.method e(Lkd/n;)Lkd/n;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v11, Lkd/n;

    .line 6
    .line 7
    iget v2, v0, Lkd/n;->a:F

    .line 8
    .line 9
    iget v3, v1, Lkd/n;->a:F

    .line 10
    .line 11
    mul-float v4, v2, v3

    .line 12
    .line 13
    iget v5, v0, Lkd/n;->d:F

    .line 14
    .line 15
    iget v6, v1, Lkd/n;->b:F

    .line 16
    .line 17
    mul-float v7, v5, v6

    .line 18
    .line 19
    add-float/2addr v4, v7

    .line 20
    iget v7, v0, Lkd/n;->g:F

    .line 21
    .line 22
    iget v8, v1, Lkd/n;->c:F

    .line 23
    .line 24
    mul-float v9, v7, v8

    .line 25
    .line 26
    add-float/2addr v4, v9

    .line 27
    iget v9, v1, Lkd/n;->d:F

    .line 28
    .line 29
    mul-float v10, v2, v9

    .line 30
    .line 31
    iget v12, v1, Lkd/n;->e:F

    .line 32
    .line 33
    mul-float v13, v5, v12

    .line 34
    .line 35
    add-float/2addr v10, v13

    .line 36
    iget v13, v1, Lkd/n;->f:F

    .line 37
    .line 38
    mul-float v14, v7, v13

    .line 39
    .line 40
    add-float/2addr v10, v14

    .line 41
    iget v14, v1, Lkd/n;->g:F

    .line 42
    .line 43
    mul-float/2addr v2, v14

    .line 44
    iget v15, v1, Lkd/n;->h:F

    .line 45
    .line 46
    mul-float/2addr v5, v15

    .line 47
    add-float/2addr v2, v5

    .line 48
    iget v1, v1, Lkd/n;->i:F

    .line 49
    .line 50
    mul-float/2addr v7, v1

    .line 51
    add-float v5, v2, v7

    .line 52
    .line 53
    iget v2, v0, Lkd/n;->b:F

    .line 54
    .line 55
    mul-float v7, v2, v3

    .line 56
    .line 57
    move/from16 p1, v5

    .line 58
    .line 59
    iget v5, v0, Lkd/n;->e:F

    .line 60
    .line 61
    mul-float v16, v5, v6

    .line 62
    .line 63
    add-float v7, v7, v16

    .line 64
    .line 65
    move/from16 v16, v10

    .line 66
    .line 67
    iget v10, v0, Lkd/n;->h:F

    .line 68
    .line 69
    mul-float v17, v10, v8

    .line 70
    .line 71
    add-float v7, v7, v17

    .line 72
    .line 73
    mul-float v17, v2, v9

    .line 74
    .line 75
    mul-float v18, v5, v12

    .line 76
    .line 77
    add-float v17, v17, v18

    .line 78
    .line 79
    mul-float v18, v10, v13

    .line 80
    .line 81
    add-float v17, v17, v18

    .line 82
    .line 83
    mul-float/2addr v2, v14

    .line 84
    mul-float/2addr v5, v15

    .line 85
    add-float/2addr v2, v5

    .line 86
    mul-float/2addr v10, v1

    .line 87
    add-float/2addr v10, v2

    .line 88
    iget v2, v0, Lkd/n;->c:F

    .line 89
    .line 90
    mul-float/2addr v3, v2

    .line 91
    iget v5, v0, Lkd/n;->f:F

    .line 92
    .line 93
    mul-float/2addr v6, v5

    .line 94
    add-float/2addr v3, v6

    .line 95
    iget v6, v0, Lkd/n;->i:F

    .line 96
    .line 97
    mul-float/2addr v8, v6

    .line 98
    add-float/2addr v8, v3

    .line 99
    mul-float/2addr v9, v2

    .line 100
    mul-float/2addr v12, v5

    .line 101
    add-float/2addr v9, v12

    .line 102
    mul-float/2addr v13, v6

    .line 103
    add-float/2addr v9, v13

    .line 104
    mul-float/2addr v2, v14

    .line 105
    mul-float/2addr v5, v15

    .line 106
    add-float/2addr v2, v5

    .line 107
    mul-float/2addr v6, v1

    .line 108
    add-float v12, v2, v6

    .line 109
    .line 110
    move-object v1, v11

    .line 111
    move v2, v4

    .line 112
    move/from16 v3, v16

    .line 113
    .line 114
    move/from16 v4, p1

    .line 115
    .line 116
    move v5, v7

    .line 117
    move/from16 v6, v17

    .line 118
    .line 119
    move v7, v10

    .line 120
    move v10, v12

    .line 121
    invoke-direct/range {v1 .. v10}, Lkd/n;-><init>(FFFFFFFFF)V

    .line 122
    .line 123
    .line 124
    return-object v11
.end method

.method public f([F)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lkd/n;->a:F

    .line 6
    .line 7
    iget v3, v0, Lkd/n;->b:F

    .line 8
    .line 9
    iget v4, v0, Lkd/n;->c:F

    .line 10
    .line 11
    iget v5, v0, Lkd/n;->d:F

    .line 12
    .line 13
    iget v6, v0, Lkd/n;->e:F

    .line 14
    .line 15
    iget v7, v0, Lkd/n;->f:F

    .line 16
    .line 17
    iget v8, v0, Lkd/n;->g:F

    .line 18
    .line 19
    iget v9, v0, Lkd/n;->h:F

    .line 20
    .line 21
    iget v10, v0, Lkd/n;->i:F

    .line 22
    .line 23
    array-length v11, v1

    .line 24
    add-int/lit8 v11, v11, -0x1

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    :goto_0
    if-ge v12, v11, :cond_0

    .line 28
    .line 29
    aget v13, v1, v12

    .line 30
    .line 31
    add-int/lit8 v14, v12, 0x1

    .line 32
    .line 33
    aget v15, v1, v14

    .line 34
    .line 35
    mul-float v16, v4, v13

    .line 36
    .line 37
    mul-float v17, v7, v15

    .line 38
    .line 39
    add-float v16, v16, v17

    .line 40
    .line 41
    add-float v16, v16, v10

    .line 42
    .line 43
    mul-float v17, v2, v13

    .line 44
    .line 45
    mul-float v18, v5, v15

    .line 46
    .line 47
    add-float v17, v17, v18

    .line 48
    .line 49
    add-float v17, v17, v8

    .line 50
    .line 51
    div-float v17, v17, v16

    .line 52
    .line 53
    aput v17, v1, v12

    .line 54
    .line 55
    mul-float/2addr v13, v3

    .line 56
    mul-float/2addr v15, v6

    .line 57
    add-float/2addr v13, v15

    .line 58
    add-float/2addr v13, v9

    .line 59
    div-float v13, v13, v16

    .line 60
    .line 61
    aput v13, v1, v14

    .line 62
    .line 63
    add-int/lit8 v12, v12, 0x2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
