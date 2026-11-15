.class public final Lod/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lkd/b;

.field private final b:Lld/b;


# direct methods
.method public constructor <init>(Lkd/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lod/a;->a:Lkd/b;

    .line 5
    .line 6
    new-instance v0, Lld/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lld/b;-><init>(Lkd/b;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lod/a;->b:Lld/b;

    .line 12
    .line 13
    return-void
.end method

.method private a([Lcom/google/zxing/k;)Lcom/google/zxing/k;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    aget-object v3, p1, v3

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    aget-object p1, p1, v4

    .line 12
    .line 13
    invoke-direct {p0, v0, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-direct {p0, v2, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    add-int/2addr v5, v1

    .line 22
    mul-int/lit8 v5, v5, 0x4

    .line 23
    .line 24
    invoke-static {v0, v2, v5}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    add-int/2addr v4, v1

    .line 29
    mul-int/lit8 v4, v4, 0x4

    .line 30
    .line 31
    invoke-static {v3, v2, v4}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-direct {p0, v5, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-direct {p0, v4, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    new-instance v8, Lcom/google/zxing/k;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    invoke-virtual {v3}, Lcom/google/zxing/k;->c()F

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    invoke-virtual {v2}, Lcom/google/zxing/k;->c()F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    sub-float/2addr v10, v11

    .line 58
    add-int/2addr v6, v1

    .line 59
    int-to-float v6, v6

    .line 60
    div-float/2addr v10, v6

    .line 61
    add-float/2addr v9, v10

    .line 62
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    invoke-virtual {v3}, Lcom/google/zxing/k;->d()F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2}, Lcom/google/zxing/k;->d()F

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    sub-float/2addr v3, v11

    .line 75
    div-float/2addr v3, v6

    .line 76
    add-float/2addr v10, v3

    .line 77
    invoke-direct {v8, v9, v10}, Lcom/google/zxing/k;-><init>(FF)V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/google/zxing/k;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v0}, Lcom/google/zxing/k;->c()F

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v2}, Lcom/google/zxing/k;->c()F

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    sub-float/2addr v9, v10

    .line 95
    add-int/2addr v7, v1

    .line 96
    int-to-float v1, v7

    .line 97
    div-float/2addr v9, v1

    .line 98
    add-float/2addr v6, v9

    .line 99
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {v0}, Lcom/google/zxing/k;->d()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v2}, Lcom/google/zxing/k;->d()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    sub-float/2addr v0, v2

    .line 112
    div-float/2addr v0, v1

    .line 113
    add-float/2addr p1, v0

    .line 114
    invoke-direct {v3, v6, p1}, Lcom/google/zxing/k;-><init>(FF)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v8}, Lod/a;->e(Lcom/google/zxing/k;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_1

    .line 122
    .line 123
    invoke-direct {p0, v3}, Lod/a;->e(Lcom/google/zxing/k;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    return-object v3

    .line 130
    :cond_0
    const/4 p1, 0x0

    .line 131
    return-object p1

    .line 132
    :cond_1
    invoke-direct {p0, v3}, Lod/a;->e(Lcom/google/zxing/k;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_2

    .line 137
    .line 138
    return-object v8

    .line 139
    :cond_2
    invoke-direct {p0, v5, v8}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-direct {p0, v4, v8}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    add-int/2addr p1, v0

    .line 148
    invoke-direct {p0, v5, v3}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-direct {p0, v4, v3}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    add-int/2addr v0, v1

    .line 157
    if-le p1, v0, :cond_3

    .line 158
    .line 159
    return-object v8

    .line 160
    :cond_3
    return-object v3
.end method

.method private c([Lcom/google/zxing/k;)[Lcom/google/zxing/k;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x3

    .line 8
    aget-object v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x2

    .line 11
    aget-object p1, p1, v6

    .line 12
    .line 13
    invoke-direct {p0, v1, v3}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    invoke-direct {p0, v3, v5}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-direct {p0, v5, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    invoke-direct {p0, p1, v1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    const/4 v11, 0x4

    .line 30
    new-array v11, v11, [Lcom/google/zxing/k;

    .line 31
    .line 32
    aput-object p1, v11, v0

    .line 33
    .line 34
    aput-object v1, v11, v2

    .line 35
    .line 36
    aput-object v3, v11, v6

    .line 37
    .line 38
    aput-object v5, v11, v4

    .line 39
    .line 40
    if-le v7, v8, :cond_0

    .line 41
    .line 42
    aput-object v1, v11, v0

    .line 43
    .line 44
    aput-object v3, v11, v2

    .line 45
    .line 46
    aput-object v5, v11, v6

    .line 47
    .line 48
    aput-object p1, v11, v4

    .line 49
    .line 50
    move v7, v8

    .line 51
    :cond_0
    if-le v7, v9, :cond_1

    .line 52
    .line 53
    aput-object v3, v11, v0

    .line 54
    .line 55
    aput-object v5, v11, v2

    .line 56
    .line 57
    aput-object p1, v11, v6

    .line 58
    .line 59
    aput-object v1, v11, v4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v9, v7

    .line 63
    :goto_0
    if-le v9, v10, :cond_2

    .line 64
    .line 65
    aput-object v5, v11, v0

    .line 66
    .line 67
    aput-object p1, v11, v2

    .line 68
    .line 69
    aput-object v1, v11, v6

    .line 70
    .line 71
    aput-object v3, v11, v4

    .line 72
    .line 73
    :cond_2
    return-object v11
.end method

.method private d([Lcom/google/zxing/k;)[Lcom/google/zxing/k;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget-object v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget-object v7, p1, v6

    .line 12
    .line 13
    invoke-direct {p0, v1, v7}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    add-int/2addr v8, v2

    .line 18
    mul-int/lit8 v8, v8, 0x4

    .line 19
    .line 20
    invoke-static {v3, v5, v8}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-static {v5, v3, v8}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-direct {p0, v9, v1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    invoke-direct {p0, v8, v7}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-ge v9, v8, :cond_0

    .line 37
    .line 38
    aput-object v1, p1, v0

    .line 39
    .line 40
    aput-object v3, p1, v2

    .line 41
    .line 42
    aput-object v5, p1, v4

    .line 43
    .line 44
    aput-object v7, p1, v6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    aput-object v3, p1, v0

    .line 48
    .line 49
    aput-object v5, p1, v2

    .line 50
    .line 51
    aput-object v7, p1, v4

    .line 52
    .line 53
    aput-object v1, p1, v6

    .line 54
    .line 55
    :goto_0
    return-object p1
.end method

.method private e(Lcom/google/zxing/k;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lod/a;->a:Lkd/b;

    .line 15
    .line 16
    invoke-virtual {v2}, Lkd/b;->n()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    int-to-float v2, v2

    .line 23
    cmpg-float v0, v0, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    cmpl-float v0, v0, v1

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v0, p0, Lod/a;->a:Lkd/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lkd/b;->k()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sub-int/2addr v0, v3

    .line 46
    int-to-float v0, v0

    .line 47
    cmpg-float p1, p1, v0

    .line 48
    .line 49
    if-gtz p1, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v3, 0x0

    .line 53
    :goto_0
    return v3
.end method

.method private static f(Lcom/google/zxing/k;FF)Lcom/google/zxing/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/k;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/k;->d()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    cmpg-float p1, v0, p1

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-gez p1, :cond_0

    .line 14
    .line 15
    sub-float/2addr v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    add-float/2addr v0, v1

    .line 18
    :goto_0
    cmpg-float p1, p0, p2

    .line 19
    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    sub-float/2addr p0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    add-float/2addr p0, v1

    .line 25
    :goto_1
    new-instance p1, Lcom/google/zxing/k;

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Lcom/google/zxing/k;-><init>(FF)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method private static g(Lkd/b;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;II)Lkd/b;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p5

    .line 4
    .line 5
    move/from16 v3, p6

    .line 6
    .line 7
    invoke-static {}, Lkd/k;->b()Lkd/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move/from16 v4, p5

    .line 12
    .line 13
    int-to-float v4, v4

    .line 14
    const/high16 v5, 0x3f000000    # 0.5f

    .line 15
    .line 16
    sub-float v6, v4, v5

    .line 17
    .line 18
    move v8, v6

    .line 19
    move/from16 v4, p6

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    sub-float v11, v4, v5

    .line 23
    .line 24
    move v9, v11

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/k;->c()F

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/k;->d()F

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/k;->c()F

    .line 34
    .line 35
    .line 36
    move-result v14

    .line 37
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/k;->d()F

    .line 38
    .line 39
    .line 40
    move-result v15

    .line 41
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/k;->c()F

    .line 42
    .line 43
    .line 44
    move-result v16

    .line 45
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/k;->d()F

    .line 46
    .line 47
    .line 48
    move-result v17

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/k;->c()F

    .line 50
    .line 51
    .line 52
    move-result v18

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/k;->d()F

    .line 54
    .line 55
    .line 56
    move-result v19

    .line 57
    const/high16 v4, 0x3f000000    # 0.5f

    .line 58
    .line 59
    const/high16 v7, 0x3f000000    # 0.5f

    .line 60
    .line 61
    const/high16 v10, 0x3f000000    # 0.5f

    .line 62
    .line 63
    invoke-virtual/range {v0 .. v19}, Lkd/k;->c(Lkd/b;IIFFFFFFFFFFFFFFFF)Lkd/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method private static h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/k;->c()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    int-to-float p2, p2

    .line 13
    div-float/2addr v0, p2

    .line 14
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Lcom/google/zxing/k;->d()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-float/2addr p1, v1

    .line 23
    div-float/2addr p1, p2

    .line 24
    new-instance p2, Lcom/google/zxing/k;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/k;->c()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    invoke-virtual {p0}, Lcom/google/zxing/k;->d()F

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    add-float/2addr p0, p1

    .line 36
    invoke-direct {p2, v1, p0}, Lcom/google/zxing/k;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method private i([Lcom/google/zxing/k;)[Lcom/google/zxing/k;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget-object v5, p1, v4

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    aget-object p1, p1, v6

    .line 12
    .line 13
    invoke-direct {p0, v1, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    add-int/2addr v7, v2

    .line 18
    invoke-direct {p0, v5, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    add-int/2addr v8, v2

    .line 23
    const/4 v9, 0x4

    .line 24
    mul-int/2addr v8, v9

    .line 25
    invoke-static {v1, v3, v8}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    mul-int/2addr v7, v9

    .line 30
    invoke-static {v5, v3, v7}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-direct {p0, v8, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    add-int/lit8 v10, v8, 0x1

    .line 39
    .line 40
    invoke-direct {p0, v7, p1}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    add-int/lit8 v11, v7, 0x1

    .line 45
    .line 46
    and-int/lit8 v12, v10, 0x1

    .line 47
    .line 48
    if-ne v12, v2, :cond_0

    .line 49
    .line 50
    add-int/lit8 v10, v8, 0x2

    .line 51
    .line 52
    :cond_0
    and-int/lit8 v8, v11, 0x1

    .line 53
    .line 54
    if-ne v8, v2, :cond_1

    .line 55
    .line 56
    add-int/lit8 v11, v7, 0x2

    .line 57
    .line 58
    :cond_1
    invoke-virtual {v1}, Lcom/google/zxing/k;->c()F

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v3}, Lcom/google/zxing/k;->c()F

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    add-float/2addr v7, v8

    .line 67
    invoke-virtual {v5}, Lcom/google/zxing/k;->c()F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    add-float/2addr v7, v8

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/k;->c()F

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    add-float/2addr v7, v8

    .line 77
    const/high16 v8, 0x40800000    # 4.0f

    .line 78
    .line 79
    div-float/2addr v7, v8

    .line 80
    invoke-virtual {v1}, Lcom/google/zxing/k;->d()F

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    invoke-virtual {v3}, Lcom/google/zxing/k;->d()F

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    add-float/2addr v12, v13

    .line 89
    invoke-virtual {v5}, Lcom/google/zxing/k;->d()F

    .line 90
    .line 91
    .line 92
    move-result v13

    .line 93
    add-float/2addr v12, v13

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/k;->d()F

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    add-float/2addr v12, v13

    .line 99
    div-float/2addr v12, v8

    .line 100
    invoke-static {v1, v7, v12}, Lod/a;->f(Lcom/google/zxing/k;FF)Lcom/google/zxing/k;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v7, v12}, Lod/a;->f(Lcom/google/zxing/k;FF)Lcom/google/zxing/k;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v5, v7, v12}, Lod/a;->f(Lcom/google/zxing/k;FF)Lcom/google/zxing/k;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {p1, v7, v12}, Lod/a;->f(Lcom/google/zxing/k;FF)Lcom/google/zxing/k;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    mul-int/2addr v11, v9

    .line 117
    invoke-static {v1, v3, v11}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    mul-int/2addr v10, v9

    .line 122
    invoke-static {v7, p1, v10}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-static {v3, v1, v11}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v8, v5, v10}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v5, p1, v11}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-static {v12, v3, v10}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {p1, v5, v11}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v1, v10}, Lod/a;->h(Lcom/google/zxing/k;Lcom/google/zxing/k;I)Lcom/google/zxing/k;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    new-array v1, v9, [Lcom/google/zxing/k;

    .line 151
    .line 152
    aput-object v7, v1, v0

    .line 153
    .line 154
    aput-object v8, v1, v2

    .line 155
    .line 156
    aput-object v3, v1, v4

    .line 157
    .line 158
    aput-object p1, v1, v6

    .line 159
    .line 160
    return-object v1
.end method

.method private j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/k;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    float-to-int v1, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/k;->d()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    float-to-int v2, v2

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/k;->c()F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    float-to-int v3, v3

    .line 18
    iget-object v4, v0, Lod/a;->a:Lkd/b;

    .line 19
    .line 20
    invoke-virtual {v4}, Lkd/b;->k()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x1

    .line 25
    sub-int/2addr v4, v5

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/k;->d()F

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    float-to-int v6, v6

    .line 31
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int v6, v4, v2

    .line 36
    .line 37
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    sub-int v7, v3, v1

    .line 42
    .line 43
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/4 v8, 0x0

    .line 48
    if-le v6, v7, :cond_0

    .line 49
    .line 50
    move v6, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v6, v8

    .line 53
    :goto_0
    if-eqz v6, :cond_1

    .line 54
    .line 55
    move/from16 v16, v2

    .line 56
    .line 57
    move v2, v1

    .line 58
    move/from16 v1, v16

    .line 59
    .line 60
    move/from16 v17, v4

    .line 61
    .line 62
    move v4, v3

    .line 63
    move/from16 v3, v17

    .line 64
    .line 65
    :cond_1
    sub-int v7, v3, v1

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    sub-int v9, v4, v2

    .line 72
    .line 73
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    neg-int v10, v7

    .line 78
    div-int/lit8 v10, v10, 0x2

    .line 79
    .line 80
    const/4 v11, -0x1

    .line 81
    if-ge v2, v4, :cond_2

    .line 82
    .line 83
    move v12, v5

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v12, v11

    .line 86
    :goto_1
    if-ge v1, v3, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v5, v11

    .line 90
    :goto_2
    iget-object v11, v0, Lod/a;->a:Lkd/b;

    .line 91
    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    move v13, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v13, v1

    .line 97
    :goto_3
    if-eqz v6, :cond_5

    .line 98
    .line 99
    move v14, v1

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    move v14, v2

    .line 102
    :goto_4
    invoke-virtual {v11, v13, v14}, Lkd/b;->h(II)Z

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    :goto_5
    if-eq v1, v3, :cond_b

    .line 107
    .line 108
    iget-object v13, v0, Lod/a;->a:Lkd/b;

    .line 109
    .line 110
    if-eqz v6, :cond_6

    .line 111
    .line 112
    move v14, v2

    .line 113
    goto :goto_6

    .line 114
    :cond_6
    move v14, v1

    .line 115
    :goto_6
    if-eqz v6, :cond_7

    .line 116
    .line 117
    move v15, v1

    .line 118
    goto :goto_7

    .line 119
    :cond_7
    move v15, v2

    .line 120
    :goto_7
    invoke-virtual {v13, v14, v15}, Lkd/b;->h(II)Z

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    if-eq v13, v11, :cond_8

    .line 125
    .line 126
    add-int/lit8 v8, v8, 0x1

    .line 127
    .line 128
    move v11, v13

    .line 129
    :cond_8
    add-int/2addr v10, v9

    .line 130
    if-lez v10, :cond_a

    .line 131
    .line 132
    if-ne v2, v4, :cond_9

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_9
    add-int/2addr v2, v12

    .line 136
    sub-int/2addr v10, v7

    .line 137
    :cond_a
    add-int/2addr v1, v5

    .line 138
    goto :goto_5

    .line 139
    :cond_b
    :goto_8
    return v8
.end method


# virtual methods
.method public b()Lkd/f;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object v5, v0, Lod/a;->b:Lld/b;

    .line 8
    .line 9
    invoke-virtual {v5}, Lld/b;->c()[Lcom/google/zxing/k;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-direct {v0, v5}, Lod/a;->c([Lcom/google/zxing/k;)[Lcom/google/zxing/k;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-direct {v0, v5}, Lod/a;->d([Lcom/google/zxing/k;)[Lcom/google/zxing/k;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-direct {v0, v5}, Lod/a;->a([Lcom/google/zxing/k;)Lcom/google/zxing/k;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x3

    .line 26
    aput-object v6, v5, v7

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    invoke-direct {v0, v5}, Lod/a;->i([Lcom/google/zxing/k;)[Lcom/google/zxing/k;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    aget-object v6, v5, v2

    .line 35
    .line 36
    aget-object v15, v5, v4

    .line 37
    .line 38
    aget-object v14, v5, v1

    .line 39
    .line 40
    aget-object v5, v5, v7

    .line 41
    .line 42
    invoke-direct {v0, v6, v5}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    add-int/lit8 v9, v8, 0x1

    .line 47
    .line 48
    invoke-direct {v0, v14, v5}, Lod/a;->j(Lcom/google/zxing/k;Lcom/google/zxing/k;)I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/lit8 v11, v10, 0x1

    .line 53
    .line 54
    and-int/lit8 v12, v9, 0x1

    .line 55
    .line 56
    if-ne v12, v4, :cond_0

    .line 57
    .line 58
    add-int/lit8 v9, v8, 0x2

    .line 59
    .line 60
    :cond_0
    and-int/lit8 v8, v11, 0x1

    .line 61
    .line 62
    if-ne v8, v4, :cond_1

    .line 63
    .line 64
    add-int/lit8 v11, v10, 0x2

    .line 65
    .line 66
    :cond_1
    mul-int/lit8 v8, v9, 0x4

    .line 67
    .line 68
    mul-int/lit8 v10, v11, 0x6

    .line 69
    .line 70
    if-ge v8, v10, :cond_2

    .line 71
    .line 72
    mul-int/lit8 v8, v11, 0x4

    .line 73
    .line 74
    mul-int/lit8 v10, v9, 0x6

    .line 75
    .line 76
    if-ge v8, v10, :cond_2

    .line 77
    .line 78
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    move v13, v8

    .line 83
    move/from16 v16, v13

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v13, v9

    .line 87
    move/from16 v16, v11

    .line 88
    .line 89
    :goto_0
    iget-object v8, v0, Lod/a;->a:Lkd/b;

    .line 90
    .line 91
    move-object v9, v6

    .line 92
    move-object v10, v15

    .line 93
    move-object v11, v14

    .line 94
    move-object v12, v5

    .line 95
    move-object/from16 v17, v14

    .line 96
    .line 97
    move/from16 v14, v16

    .line 98
    .line 99
    invoke-static/range {v8 .. v14}, Lod/a;->g(Lkd/b;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;Lcom/google/zxing/k;II)Lkd/b;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    new-instance v9, Lkd/f;

    .line 104
    .line 105
    new-array v3, v3, [Lcom/google/zxing/k;

    .line 106
    .line 107
    aput-object v6, v3, v2

    .line 108
    .line 109
    aput-object v15, v3, v4

    .line 110
    .line 111
    aput-object v17, v3, v1

    .line 112
    .line 113
    aput-object v5, v3, v7

    .line 114
    .line 115
    invoke-direct {v9, v8, v3}, Lkd/f;-><init>(Lkd/b;[Lcom/google/zxing/k;)V

    .line 116
    .line 117
    .line 118
    return-object v9

    .line 119
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    throw v1
.end method
