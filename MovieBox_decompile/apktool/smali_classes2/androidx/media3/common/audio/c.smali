.class final Landroidx/media3/common/audio/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:[S

.field private j:[S

.field private k:I

.field private l:[S

.field private m:I

.field private n:[S

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:D


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/common/audio/c;->a:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/audio/c;->b:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/audio/c;->c:F

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/common/audio/c;->d:F

    .line 11
    .line 12
    int-to-float p3, p1

    .line 13
    int-to-float p4, p5

    .line 14
    div-float/2addr p3, p4

    .line 15
    iput p3, p0, Landroidx/media3/common/audio/c;->e:F

    .line 16
    .line 17
    div-int/lit16 p3, p1, 0x190

    .line 18
    .line 19
    iput p3, p0, Landroidx/media3/common/audio/c;->f:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x41

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/common/audio/c;->g:I

    .line 24
    .line 25
    mul-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Landroidx/media3/common/audio/c;->h:I

    .line 28
    .line 29
    new-array p3, p1, [S

    .line 30
    .line 31
    iput-object p3, p0, Landroidx/media3/common/audio/c;->i:[S

    .line 32
    .line 33
    mul-int p3, p1, p2

    .line 34
    .line 35
    new-array p3, p3, [S

    .line 36
    .line 37
    iput-object p3, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 38
    .line 39
    mul-int p3, p1, p2

    .line 40
    .line 41
    new-array p3, p3, [S

    .line 42
    .line 43
    iput-object p3, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 44
    .line 45
    mul-int/2addr p1, p2

    .line 46
    new-array p1, p1, [S

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/media3/common/audio/c;->n:[S

    .line 49
    .line 50
    return-void
.end method

.method private a(FI)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, v7, Landroidx/media3/common/audio/c;->a:I

    .line 11
    .line 12
    int-to-float v2, v1

    .line 13
    div-float v2, v2, p1

    .line 14
    .line 15
    float-to-long v2, v2

    .line 16
    int-to-long v4, v1

    .line 17
    move-wide v8, v2

    .line 18
    move-wide v10, v4

    .line 19
    :goto_0
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    cmp-long v3, v8, v1

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    cmp-long v3, v10, v1

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const-wide/16 v3, 0x2

    .line 30
    .line 31
    rem-long v5, v8, v3

    .line 32
    .line 33
    cmp-long v5, v5, v1

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    rem-long v5, v10, v3

    .line 38
    .line 39
    cmp-long v1, v5, v1

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    div-long/2addr v8, v3

    .line 44
    div-long/2addr v10, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/c;->o(I)V

    .line 47
    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    move v13, v12

    .line 51
    :goto_1
    iget v0, v7, Landroidx/media3/common/audio/c;->o:I

    .line 52
    .line 53
    add-int/lit8 v1, v0, -0x1

    .line 54
    .line 55
    const/4 v14, 0x1

    .line 56
    if-ge v13, v1, :cond_6

    .line 57
    .line 58
    :goto_2
    iget v0, v7, Landroidx/media3/common/audio/c;->p:I

    .line 59
    .line 60
    add-int/lit8 v1, v0, 0x1

    .line 61
    .line 62
    int-to-long v1, v1

    .line 63
    mul-long/2addr v1, v8

    .line 64
    iget v3, v7, Landroidx/media3/common/audio/c;->q:I

    .line 65
    .line 66
    int-to-long v4, v3

    .line 67
    mul-long/2addr v4, v10

    .line 68
    cmp-long v1, v1, v4

    .line 69
    .line 70
    if-lez v1, :cond_3

    .line 71
    .line 72
    iget-object v0, v7, Landroidx/media3/common/audio/c;->l:[S

    .line 73
    .line 74
    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    .line 75
    .line 76
    invoke-direct {v7, v0, v1, v14}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v7, Landroidx/media3/common/audio/c;->l:[S

    .line 81
    .line 82
    move v15, v12

    .line 83
    :goto_3
    iget v0, v7, Landroidx/media3/common/audio/c;->b:I

    .line 84
    .line 85
    if-ge v15, v0, :cond_2

    .line 86
    .line 87
    iget-object v5, v7, Landroidx/media3/common/audio/c;->l:[S

    .line 88
    .line 89
    iget v1, v7, Landroidx/media3/common/audio/c;->m:I

    .line 90
    .line 91
    mul-int/2addr v1, v0

    .line 92
    add-int v16, v1, v15

    .line 93
    .line 94
    iget-object v1, v7, Landroidx/media3/common/audio/c;->n:[S

    .line 95
    .line 96
    mul-int/2addr v0, v13

    .line 97
    add-int v2, v0, v15

    .line 98
    .line 99
    move-object/from16 v0, p0

    .line 100
    .line 101
    move-wide v3, v10

    .line 102
    move-object/from16 v17, v5

    .line 103
    .line 104
    move-wide v5, v8

    .line 105
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/audio/c;->n([SIJJ)S

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    aput-short v0, v17, v16

    .line 110
    .line 111
    add-int/lit8 v15, v15, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    iget v0, v7, Landroidx/media3/common/audio/c;->q:I

    .line 115
    .line 116
    add-int/2addr v0, v14

    .line 117
    iput v0, v7, Landroidx/media3/common/audio/c;->q:I

    .line 118
    .line 119
    iget v0, v7, Landroidx/media3/common/audio/c;->m:I

    .line 120
    .line 121
    add-int/2addr v0, v14

    .line 122
    iput v0, v7, Landroidx/media3/common/audio/c;->m:I

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    iput v0, v7, Landroidx/media3/common/audio/c;->p:I

    .line 128
    .line 129
    int-to-long v0, v0

    .line 130
    cmp-long v0, v0, v10

    .line 131
    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    iput v12, v7, Landroidx/media3/common/audio/c;->p:I

    .line 135
    .line 136
    int-to-long v0, v3

    .line 137
    cmp-long v0, v0, v8

    .line 138
    .line 139
    if-nez v0, :cond_4

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    move v14, v12

    .line 143
    :goto_4
    invoke-static {v14}, Landroidx/media3/common/util/a;->g(Z)V

    .line 144
    .line 145
    .line 146
    iput v12, v7, Landroidx/media3/common/audio/c;->q:I

    .line 147
    .line 148
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    sub-int/2addr v0, v14

    .line 152
    invoke-direct {v7, v0}, Landroidx/media3/common/audio/c;->u(I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private b(D)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->h:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/c;->r:I

    .line 10
    .line 11
    if-lez v2, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/c;->c(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :goto_0
    add-int/2addr v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 20
    .line 21
    invoke-direct {p0, v2, v1}, Landroidx/media3/common/audio/c;->g([SI)I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 26
    .line 27
    cmpl-double v2, p1, v2

    .line 28
    .line 29
    if-lez v2, :cond_3

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 32
    .line 33
    move-object v2, p0

    .line 34
    move v4, v1

    .line 35
    move-wide v5, p1

    .line 36
    move v7, v8

    .line 37
    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/c;->w([SIDI)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/2addr v8, v2

    .line 42
    add-int/2addr v1, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 45
    .line 46
    move-object v2, p0

    .line 47
    move v4, v1

    .line 48
    move-wide v5, p1

    .line 49
    move v7, v8

    .line 50
    invoke-direct/range {v2 .. v7}, Landroidx/media3/common/audio/c;->m([SIDI)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/c;->h:I

    .line 56
    .line 57
    add-int/2addr v2, v1

    .line 58
    if-le v2, v0, :cond_1

    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/c;->v(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private c(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->h:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->r:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 10
    .line 11
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/c;->d([SII)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Landroidx/media3/common/audio/c;->r:I

    .line 15
    .line 16
    sub-int/2addr p1, v0

    .line 17
    iput p1, p0, Landroidx/media3/common/audio/c;->r:I

    .line 18
    .line 19
    return v0
.end method

.method private d([SII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 12
    .line 13
    mul-int/2addr p2, v1

    .line 14
    iget v2, p0, Landroidx/media3/common/audio/c;->m:I

    .line 15
    .line 16
    mul-int/2addr v2, v1

    .line 17
    mul-int/2addr v1, p3

    .line 18
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 22
    .line 23
    add-int/2addr p1, p3

    .line 24
    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 25
    .line 26
    return-void
.end method

.method private e([SII)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->h:I

    .line 2
    .line 3
    div-int/2addr v0, p3

    .line 4
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 5
    .line 6
    mul-int/2addr p3, v1

    .line 7
    mul-int/2addr p2, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    :goto_1
    if-ge v3, p3, :cond_0

    .line 15
    .line 16
    mul-int v5, v2, p3

    .line 17
    .line 18
    add-int/2addr v5, p2

    .line 19
    add-int/2addr v5, v3

    .line 20
    aget-short v5, p1, v5

    .line 21
    .line 22
    add-int/2addr v4, v5

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    div-int/2addr v4, p3

    .line 27
    iget-object v3, p0, Landroidx/media3/common/audio/c;->i:[S

    .line 28
    .line 29
    int-to-short v4, v4

    .line 30
    aput-short v4, v3, v2

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method private f([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 3
    .line 4
    div-int/2addr v0, v1

    .line 5
    add-int/2addr p2, p3

    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/2addr v0, p3

    .line 14
    mul-int/2addr v0, v1

    .line 15
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method private g([SI)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0xfa0

    .line 5
    .line 6
    if-le v0, v2, :cond_0

    .line 7
    .line 8
    div-int/2addr v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    .line 12
    .line 13
    if-ne v2, v1, :cond_1

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget v0, p0, Landroidx/media3/common/audio/c;->f:I

    .line 18
    .line 19
    iget v1, p0, Landroidx/media3/common/audio/c;->g:I

    .line 20
    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/audio/c;->h([SIII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/audio/c;->e([SII)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/common/audio/c;->i:[S

    .line 30
    .line 31
    iget v3, p0, Landroidx/media3/common/audio/c;->f:I

    .line 32
    .line 33
    div-int/2addr v3, v0

    .line 34
    iget v4, p0, Landroidx/media3/common/audio/c;->g:I

    .line 35
    .line 36
    div-int/2addr v4, v0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media3/common/audio/c;->h([SIII)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v0, v1, :cond_5

    .line 43
    .line 44
    mul-int/2addr v2, v0

    .line 45
    mul-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    sub-int v3, v2, v0

    .line 48
    .line 49
    add-int/2addr v2, v0

    .line 50
    iget v0, p0, Landroidx/media3/common/audio/c;->f:I

    .line 51
    .line 52
    if-ge v3, v0, :cond_2

    .line 53
    .line 54
    move v3, v0

    .line 55
    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/c;->g:I

    .line 56
    .line 57
    if-le v2, v0, :cond_3

    .line 58
    .line 59
    move v2, v0

    .line 60
    :cond_3
    iget v0, p0, Landroidx/media3/common/audio/c;->b:I

    .line 61
    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/media3/common/audio/c;->h([SIII)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/common/audio/c;->e([SII)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/media3/common/audio/c;->i:[S

    .line 73
    .line 74
    invoke-direct {p0, p1, v5, v3, v2}, Landroidx/media3/common/audio/c;->h([SIII)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move p1, v2

    .line 80
    :goto_1
    iget p2, p0, Landroidx/media3/common/audio/c;->u:I

    .line 81
    .line 82
    iget v0, p0, Landroidx/media3/common/audio/c;->v:I

    .line 83
    .line 84
    invoke-direct {p0, p2, v0}, Landroidx/media3/common/audio/c;->q(II)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    iget p2, p0, Landroidx/media3/common/audio/c;->s:I

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    move p2, p1

    .line 94
    :goto_2
    iget v0, p0, Landroidx/media3/common/audio/c;->u:I

    .line 95
    .line 96
    iput v0, p0, Landroidx/media3/common/audio/c;->t:I

    .line 97
    .line 98
    iput p1, p0, Landroidx/media3/common/audio/c;->s:I

    .line 99
    .line 100
    return p2
.end method

.method private h([SIII)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->b:I

    .line 2
    .line 3
    mul-int/2addr p2, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    move v3, v0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-gt p3, p4, :cond_3

    .line 11
    .line 12
    move v5, v0

    .line 13
    move v6, v5

    .line 14
    :goto_1
    if-ge v5, p3, :cond_0

    .line 15
    .line 16
    add-int v7, p2, v5

    .line 17
    .line 18
    aget-short v7, p1, v7

    .line 19
    .line 20
    add-int v8, p2, p3

    .line 21
    .line 22
    add-int/2addr v8, v5

    .line 23
    aget-short v8, p1, v8

    .line 24
    .line 25
    sub-int/2addr v7, v8

    .line 26
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    add-int/2addr v6, v7

    .line 31
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    mul-int v5, v6, v3

    .line 35
    .line 36
    mul-int v7, v2, p3

    .line 37
    .line 38
    if-ge v5, v7, :cond_1

    .line 39
    .line 40
    move v3, p3

    .line 41
    move v2, v6

    .line 42
    :cond_1
    mul-int v5, v6, v1

    .line 43
    .line 44
    mul-int v7, v4, p3

    .line 45
    .line 46
    if-le v5, v7, :cond_2

    .line 47
    .line 48
    move v1, p3

    .line 49
    move v4, v6

    .line 50
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    div-int/2addr v2, v3

    .line 54
    iput v2, p0, Landroidx/media3/common/audio/c;->u:I

    .line 55
    .line 56
    div-int/2addr v4, v1

    .line 57
    iput v4, p0, Landroidx/media3/common/audio/c;->v:I

    .line 58
    .line 59
    return v3
.end method

.method private m([SIDI)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 3
    .line 4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 5
    .line 6
    cmpg-double v2, p3, v2

    .line 7
    .line 8
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    int-to-double v5, v1

    .line 13
    mul-double v5, v5, p3

    .line 14
    .line 15
    sub-double v3, v3, p3

    .line 16
    .line 17
    div-double/2addr v5, v3

    .line 18
    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    .line 19
    .line 20
    add-double/2addr v5, v2

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    long-to-int v2, v2

    .line 26
    int-to-double v3, v2

    .line 27
    sub-double/2addr v5, v3

    .line 28
    iput-wide v5, v0, Landroidx/media3/common/audio/c;->w:D

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-double v5, v1

    .line 32
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 33
    .line 34
    mul-double v7, v7, p3

    .line 35
    .line 36
    sub-double/2addr v7, v3

    .line 37
    mul-double/2addr v5, v7

    .line 38
    sub-double v3, v3, p3

    .line 39
    .line 40
    div-double/2addr v5, v3

    .line 41
    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    .line 42
    .line 43
    add-double/2addr v5, v2

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    long-to-int v2, v2

    .line 49
    iput v2, v0, Landroidx/media3/common/audio/c;->r:I

    .line 50
    .line 51
    int-to-double v2, v2

    .line 52
    sub-double/2addr v5, v2

    .line 53
    iput-wide v5, v0, Landroidx/media3/common/audio/c;->w:D

    .line 54
    .line 55
    move v2, v1

    .line 56
    :goto_0
    iget-object v3, v0, Landroidx/media3/common/audio/c;->l:[S

    .line 57
    .line 58
    iget v4, v0, Landroidx/media3/common/audio/c;->m:I

    .line 59
    .line 60
    add-int v5, v1, v2

    .line 61
    .line 62
    invoke-direct {p0, v3, v4, v5}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v0, Landroidx/media3/common/audio/c;->l:[S

    .line 67
    .line 68
    iget v4, v0, Landroidx/media3/common/audio/c;->b:I

    .line 69
    .line 70
    mul-int v6, p2, v4

    .line 71
    .line 72
    iget v7, v0, Landroidx/media3/common/audio/c;->m:I

    .line 73
    .line 74
    mul-int/2addr v7, v4

    .line 75
    mul-int/2addr v4, v1

    .line 76
    move-object/from16 v13, p1

    .line 77
    .line 78
    invoke-static {v13, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .line 80
    .line 81
    iget v8, v0, Landroidx/media3/common/audio/c;->b:I

    .line 82
    .line 83
    iget-object v9, v0, Landroidx/media3/common/audio/c;->l:[S

    .line 84
    .line 85
    iget v3, v0, Landroidx/media3/common/audio/c;->m:I

    .line 86
    .line 87
    add-int v10, v3, v1

    .line 88
    .line 89
    add-int v12, p2, v1

    .line 90
    .line 91
    move v7, v2

    .line 92
    move-object/from16 v11, p1

    .line 93
    .line 94
    move/from16 v14, p2

    .line 95
    .line 96
    invoke-static/range {v7 .. v14}, Landroidx/media3/common/audio/c;->p(II[SI[SI[SI)V

    .line 97
    .line 98
    .line 99
    iget v1, v0, Landroidx/media3/common/audio/c;->m:I

    .line 100
    .line 101
    add-int/2addr v1, v5

    .line 102
    iput v1, v0, Landroidx/media3/common/audio/c;->m:I

    .line 103
    .line 104
    return v2
.end method

.method private n([SIJJ)S
    .locals 5

    .line 1
    aget-short v0, p1, p2

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 4
    .line 5
    add-int/2addr p2, v1

    .line 6
    aget-short p1, p1, p2

    .line 7
    .line 8
    iget p2, p0, Landroidx/media3/common/audio/c;->q:I

    .line 9
    .line 10
    int-to-long v1, p2

    .line 11
    mul-long/2addr v1, p3

    .line 12
    iget p2, p0, Landroidx/media3/common/audio/c;->p:I

    .line 13
    .line 14
    int-to-long p3, p2

    .line 15
    mul-long/2addr p3, p5

    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    int-to-long v3, p2

    .line 19
    mul-long/2addr v3, p5

    .line 20
    sub-long p5, v3, v1

    .line 21
    .line 22
    sub-long/2addr v3, p3

    .line 23
    int-to-long p2, v0

    .line 24
    mul-long/2addr p2, p5

    .line 25
    sub-long p4, v3, p5

    .line 26
    .line 27
    int-to-long v0, p1

    .line 28
    mul-long/2addr p4, v0

    .line 29
    add-long/2addr p2, p4

    .line 30
    div-long/2addr p2, v3

    .line 31
    long-to-int p1, p2

    .line 32
    int-to-short p1, p1

    .line 33
    return p1
.end method

.method private o(I)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/c;->n:[S

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/common/audio/c;->o:I

    .line 7
    .line 8
    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Landroidx/media3/common/audio/c;->n:[S

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 15
    .line 16
    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    .line 17
    .line 18
    mul-int v4, p1, v3

    .line 19
    .line 20
    iget v5, p0, Landroidx/media3/common/audio/c;->o:I

    .line 21
    .line 22
    mul-int/2addr v5, v3

    .line 23
    mul-int/2addr v3, v0

    .line 24
    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 28
    .line 29
    iget p1, p0, Landroidx/media3/common/audio/c;->o:I

    .line 30
    .line 31
    add-int/2addr p1, v0

    .line 32
    iput p1, p0, Landroidx/media3/common/audio/c;->o:I

    .line 33
    .line 34
    return-void
.end method

.method private static p(II[SI[SI[SI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    .line 5
    mul-int v2, p3, p1

    .line 6
    .line 7
    add-int/2addr v2, v1

    .line 8
    mul-int v3, p7, p1

    .line 9
    .line 10
    add-int/2addr v3, v1

    .line 11
    mul-int v4, p5, p1

    .line 12
    .line 13
    add-int/2addr v4, v1

    .line 14
    move v5, v0

    .line 15
    :goto_1
    if-ge v5, p0, :cond_0

    .line 16
    .line 17
    aget-short v6, p4, v4

    .line 18
    .line 19
    sub-int v7, p0, v5

    .line 20
    .line 21
    mul-int/2addr v6, v7

    .line 22
    aget-short v7, p6, v3

    .line 23
    .line 24
    mul-int/2addr v7, v5

    .line 25
    add-int/2addr v6, v7

    .line 26
    div-int/2addr v6, p0

    .line 27
    int-to-short v6, v6

    .line 28
    aput-short v6, p2, v2

    .line 29
    .line 30
    add-int/2addr v2, p1

    .line 31
    add-int/2addr v4, p1

    .line 32
    add-int/2addr v3, p1

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method private q(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/common/audio/c;->s:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    mul-int/lit8 v1, p1, 0x3

    .line 10
    .line 11
    if-le p2, v1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    mul-int/lit8 p1, p1, 0x2

    .line 15
    .line 16
    iget p2, p0, Landroidx/media3/common/audio/c;->t:I

    .line 17
    .line 18
    mul-int/lit8 p2, p2, 0x3

    .line 19
    .line 20
    if-gt p1, p2, :cond_2

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_3
    :goto_0
    return v0
.end method

.method private r()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->c:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/c;->d:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/c;->e:F

    .line 10
    .line 11
    mul-float/2addr v1, v2

    .line 12
    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmpl-double v2, v3, v5

    .line 18
    .line 19
    if-gtz v2, :cond_1

    .line 20
    .line 21
    const-wide v5, 0x3fefffeb00000000L    # 0.9999899864196777

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpg-double v2, v3, v5

    .line 27
    .line 28
    if-gez v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 32
    .line 33
    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/common/audio/c;->d([SII)V

    .line 37
    .line 38
    .line 39
    iput v4, p0, Landroidx/media3/common/audio/c;->k:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4}, Landroidx/media3/common/audio/c;->b(D)V

    .line 43
    .line 44
    .line 45
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 46
    .line 47
    cmpl-float v2, v1, v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-direct {p0, v1, v0}, Landroidx/media3/common/audio/c;->a(FI)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method private u(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/c;->n:[S

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 7
    .line 8
    mul-int v2, p1, v1

    .line 9
    .line 10
    iget v3, p0, Landroidx/media3/common/audio/c;->o:I

    .line 11
    .line 12
    sub-int/2addr v3, p1

    .line 13
    mul-int/2addr v3, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/common/audio/c;->o:I

    .line 19
    .line 20
    sub-int/2addr v0, p1

    .line 21
    iput v0, p0, Landroidx/media3/common/audio/c;->o:I

    .line 22
    .line 23
    return-void
.end method

.method private v(I)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    .line 7
    .line 8
    mul-int/2addr p1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    mul-int/2addr v2, v0

    .line 11
    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 15
    .line 16
    return-void
.end method

.method private w([SIDI)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 6
    .line 7
    cmpl-double v4, p3, v2

    .line 8
    .line 9
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 10
    .line 11
    if-ltz v4, :cond_0

    .line 12
    .line 13
    int-to-double v2, v1

    .line 14
    sub-double v4, p3, v5

    .line 15
    .line 16
    div-double/2addr v2, v4

    .line 17
    iget-wide v4, v0, Landroidx/media3/common/audio/c;->w:D

    .line 18
    .line 19
    add-double/2addr v2, v4

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    long-to-int v4, v4

    .line 25
    int-to-double v5, v4

    .line 26
    sub-double/2addr v2, v5

    .line 27
    iput-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    int-to-double v7, v1

    .line 31
    sub-double v2, v2, p3

    .line 32
    .line 33
    mul-double/2addr v7, v2

    .line 34
    sub-double v2, p3, v5

    .line 35
    .line 36
    div-double/2addr v7, v2

    .line 37
    iget-wide v2, v0, Landroidx/media3/common/audio/c;->w:D

    .line 38
    .line 39
    add-double/2addr v7, v2

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    long-to-int v2, v2

    .line 45
    iput v2, v0, Landroidx/media3/common/audio/c;->r:I

    .line 46
    .line 47
    int-to-double v2, v2

    .line 48
    sub-double/2addr v7, v2

    .line 49
    iput-wide v7, v0, Landroidx/media3/common/audio/c;->w:D

    .line 50
    .line 51
    move v4, v1

    .line 52
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/c;->l:[S

    .line 53
    .line 54
    iget v3, v0, Landroidx/media3/common/audio/c;->m:I

    .line 55
    .line 56
    invoke-direct {v0, v2, v3, v4}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    iput-object v11, v0, Landroidx/media3/common/audio/c;->l:[S

    .line 61
    .line 62
    iget v10, v0, Landroidx/media3/common/audio/c;->b:I

    .line 63
    .line 64
    iget v12, v0, Landroidx/media3/common/audio/c;->m:I

    .line 65
    .line 66
    add-int v16, p2, v1

    .line 67
    .line 68
    move v9, v4

    .line 69
    move-object/from16 v13, p1

    .line 70
    .line 71
    move/from16 v14, p2

    .line 72
    .line 73
    move-object/from16 v15, p1

    .line 74
    .line 75
    invoke-static/range {v9 .. v16}, Landroidx/media3/common/audio/c;->p(II[SI[SI[SI)V

    .line 76
    .line 77
    .line 78
    iget v1, v0, Landroidx/media3/common/audio/c;->m:I

    .line 79
    .line 80
    add-int/2addr v1, v4

    .line 81
    iput v1, v0, Landroidx/media3/common/audio/c;->m:I

    .line 82
    .line 83
    return v4
.end method


# virtual methods
.method public i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 3
    .line 4
    iput v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/common/audio/c;->o:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/common/audio/c;->p:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/common/audio/c;->q:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/common/audio/c;->r:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/audio/c;->s:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/media3/common/audio/c;->t:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/media3/common/audio/c;->u:I

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/common/audio/c;->v:I

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/media3/common/audio/c;->w:D

    .line 25
    .line 26
    return-void
.end method

.method public j(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroidx/media3/common/audio/c;->b:I

    .line 17
    .line 18
    div-int/2addr v0, v2

    .line 19
    iget v2, p0, Landroidx/media3/common/audio/c;->m:I

    .line 20
    .line 21
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 26
    .line 27
    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    .line 28
    .line 29
    mul-int/2addr v3, v0

    .line 30
    invoke-virtual {p1, v2, v1, v3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 31
    .line 32
    .line 33
    iget p1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 34
    .line 35
    sub-int/2addr p1, v0

    .line 36
    iput p1, p0, Landroidx/media3/common/audio/c;->m:I

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/media3/common/audio/c;->l:[S

    .line 39
    .line 40
    iget v3, p0, Landroidx/media3/common/audio/c;->b:I

    .line 41
    .line 42
    mul-int/2addr v0, v3

    .line 43
    mul-int/2addr p1, v3

    .line 44
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public k()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 12
    .line 13
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    return v0
.end method

.method public l()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    return v0
.end method

.method public s()V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/audio/c;->c:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/audio/c;->d:F

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    float-to-double v3, v1

    .line 9
    iget v1, p0, Landroidx/media3/common/audio/c;->e:F

    .line 10
    .line 11
    mul-float/2addr v1, v2

    .line 12
    float-to-double v1, v1

    .line 13
    iget v5, p0, Landroidx/media3/common/audio/c;->r:I

    .line 14
    .line 15
    sub-int v6, v0, v5

    .line 16
    .line 17
    iget v7, p0, Landroidx/media3/common/audio/c;->m:I

    .line 18
    .line 19
    int-to-double v8, v6

    .line 20
    div-double/2addr v8, v3

    .line 21
    int-to-double v3, v5

    .line 22
    add-double/2addr v8, v3

    .line 23
    iget-wide v3, p0, Landroidx/media3/common/audio/c;->w:D

    .line 24
    .line 25
    add-double/2addr v8, v3

    .line 26
    iget v3, p0, Landroidx/media3/common/audio/c;->o:I

    .line 27
    .line 28
    int-to-double v3, v3

    .line 29
    add-double/2addr v8, v3

    .line 30
    div-double/2addr v8, v1

    .line 31
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 32
    .line 33
    add-double/2addr v8, v1

    .line 34
    double-to-int v1, v8

    .line 35
    add-int/2addr v7, v1

    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, p0, Landroidx/media3/common/audio/c;->w:D

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 41
    .line 42
    iget v2, p0, Landroidx/media3/common/audio/c;->h:I

    .line 43
    .line 44
    mul-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    add-int/2addr v2, v0

    .line 47
    invoke-direct {p0, v1, v0, v2}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    move v2, v1

    .line 55
    :goto_0
    iget v3, p0, Landroidx/media3/common/audio/c;->h:I

    .line 56
    .line 57
    mul-int/lit8 v4, v3, 0x2

    .line 58
    .line 59
    iget v5, p0, Landroidx/media3/common/audio/c;->b:I

    .line 60
    .line 61
    mul-int/2addr v4, v5

    .line 62
    if-ge v2, v4, :cond_0

    .line 63
    .line 64
    iget-object v3, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 65
    .line 66
    mul-int/2addr v5, v0

    .line 67
    add-int/2addr v5, v2

    .line 68
    aput-short v1, v3, v5

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 74
    .line 75
    mul-int/lit8 v3, v3, 0x2

    .line 76
    .line 77
    add-int/2addr v0, v3

    .line 78
    iput v0, p0, Landroidx/media3/common/audio/c;->k:I

    .line 79
    .line 80
    invoke-direct {p0}, Landroidx/media3/common/audio/c;->r()V

    .line 81
    .line 82
    .line 83
    iget v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 84
    .line 85
    if-le v0, v7, :cond_1

    .line 86
    .line 87
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Landroidx/media3/common/audio/c;->m:I

    .line 92
    .line 93
    :cond_1
    iput v1, p0, Landroidx/media3/common/audio/c;->k:I

    .line 94
    .line 95
    iput v1, p0, Landroidx/media3/common/audio/c;->r:I

    .line 96
    .line 97
    iput v1, p0, Landroidx/media3/common/audio/c;->o:I

    .line 98
    .line 99
    return-void
.end method

.method public t(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/media3/common/audio/c;->b:I

    .line 6
    .line 7
    div-int/2addr v0, v1

    .line 8
    mul-int/2addr v1, v0

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 12
    .line 13
    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    .line 14
    .line 15
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/common/audio/c;->f([SII)[S

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Landroidx/media3/common/audio/c;->j:[S

    .line 20
    .line 21
    iget v3, p0, Landroidx/media3/common/audio/c;->k:I

    .line 22
    .line 23
    iget v4, p0, Landroidx/media3/common/audio/c;->b:I

    .line 24
    .line 25
    mul-int/2addr v3, v4

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 29
    .line 30
    .line 31
    iget p1, p0, Landroidx/media3/common/audio/c;->k:I

    .line 32
    .line 33
    add-int/2addr p1, v0

    .line 34
    iput p1, p0, Landroidx/media3/common/audio/c;->k:I

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/media3/common/audio/c;->r()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
