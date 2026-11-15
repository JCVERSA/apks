.class final Lk3/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:[I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 10
    .line 11
    const/16 v0, 0x100

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, Lk3/a$a;->b:[I

    .line 16
    .line 17
    return-void
.end method

.method static synthetic a(Lk3/a$a;Landroidx/media3/common/util/j0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk3/a$a;->g(Landroidx/media3/common/util/j0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lk3/a$a;Landroidx/media3/common/util/j0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk3/a$a;->e(Landroidx/media3/common/util/j0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lk3/a$a;Landroidx/media3/common/util/j0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk3/a$a;->f(Landroidx/media3/common/util/j0;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Landroidx/media3/common/util/j0;I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p2, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->X(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit16 v1, v1, 0x80

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    add-int/lit8 v2, p2, -0x4

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    const/4 v1, 0x7

    .line 25
    if-ge v2, v1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->K()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v1, v0, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, p0, Lk3/a$a;->h:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, p0, Lk3/a$a;->i:I

    .line 46
    .line 47
    iget-object v2, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 48
    .line 49
    sub-int/2addr v1, v0

    .line 50
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->S(I)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, p2, -0xb

    .line 54
    .line 55
    :cond_4
    iget-object p2, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->f()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    iget-object v0, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge p2, v0, :cond_5

    .line 68
    .line 69
    if-lez v2, :cond_5

    .line 70
    .line 71
    sub-int/2addr v0, p2

    .line 72
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, p2, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 86
    .line 87
    add-int/2addr p2, v0

    .line 88
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->W(I)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method private f(Landroidx/media3/common/util/j0;I)V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-ge p2, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iput p2, p0, Lk3/a$a;->d:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iput p2, p0, Lk3/a$a;->e:I

    .line 17
    .line 18
    const/16 p2, 0xb

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Lk3/a$a;->f:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->P()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lk3/a$a;->g:I

    .line 34
    .line 35
    return-void
.end method

.method private g(Landroidx/media3/common/util/j0;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    rem-int/lit8 v1, p2, 0x5

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    move-object/from16 v1, p1

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->X(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lk3/a$a;->b:[I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 18
    .line 19
    .line 20
    div-int/lit8 v2, p2, 0x5

    .line 21
    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->H()I

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    int-to-double v10, v6

    .line 46
    add-int/lit8 v7, v7, -0x80

    .line 47
    .line 48
    int-to-double v6, v7

    .line 49
    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    mul-double/2addr v12, v6

    .line 55
    add-double/2addr v12, v10

    .line 56
    double-to-int v12, v12

    .line 57
    add-int/lit8 v8, v8, -0x80

    .line 58
    .line 59
    int-to-double v13, v8

    .line 60
    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    mul-double/2addr v15, v13

    .line 66
    sub-double v15, v10, v15

    .line 67
    .line 68
    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    mul-double v6, v6, v17

    .line 74
    .line 75
    sub-double v6, v15, v6

    .line 76
    .line 77
    double-to-int v6, v6

    .line 78
    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    mul-double/2addr v13, v7

    .line 84
    add-double/2addr v10, v13

    .line 85
    double-to-int v7, v10

    .line 86
    iget-object v8, v0, Lk3/a$a;->b:[I

    .line 87
    .line 88
    shl-int/lit8 v9, v9, 0x18

    .line 89
    .line 90
    const/16 v10, 0xff

    .line 91
    .line 92
    invoke-static {v12, v3, v10}, Landroidx/media3/common/util/a1;->p(III)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    shl-int/lit8 v11, v11, 0x10

    .line 97
    .line 98
    or-int/2addr v9, v11

    .line 99
    invoke-static {v6, v3, v10}, Landroidx/media3/common/util/a1;->p(III)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    shl-int/lit8 v6, v6, 0x8

    .line 104
    .line 105
    or-int/2addr v6, v9

    .line 106
    invoke-static {v7, v3, v10}, Landroidx/media3/common/util/a1;->p(III)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    or-int/2addr v6, v7

    .line 111
    aput v6, v8, v5

    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    const/4 v1, 0x1

    .line 117
    iput-boolean v1, v0, Lk3/a$a;->c:Z

    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public d()Lu1/a;
    .locals 7

    .line 1
    iget v0, p0, Lk3/a$a;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget v0, p0, Lk3/a$a;->e:I

    .line 6
    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    iget v0, p0, Lk3/a$a;->h:I

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget v0, p0, Lk3/a$a;->i:I

    .line 14
    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v0, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->g()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget-object v0, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->f()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    iget-boolean v0, p0, Lk3/a$a;->c:Z

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lk3/a$a;->h:I

    .line 52
    .line 53
    iget v2, p0, Lk3/a$a;->i:I

    .line 54
    .line 55
    mul-int/2addr v0, v2

    .line 56
    new-array v2, v0, [I

    .line 57
    .line 58
    move v3, v1

    .line 59
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    .line 60
    .line 61
    iget-object v4, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->H()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    add-int/lit8 v5, v3, 0x1

    .line 70
    .line 71
    iget-object v6, p0, Lk3/a$a;->b:[I

    .line 72
    .line 73
    aget v4, v6, v4

    .line 74
    .line 75
    aput v4, v2, v3

    .line 76
    .line 77
    :goto_1
    move v3, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object v4, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->H()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    and-int/lit8 v5, v4, 0x40

    .line 88
    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    and-int/lit8 v5, v4, 0x3f

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    and-int/lit8 v5, v4, 0x3f

    .line 95
    .line 96
    shl-int/lit8 v5, v5, 0x8

    .line 97
    .line 98
    iget-object v6, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 99
    .line 100
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    or-int/2addr v5, v6

    .line 105
    :goto_2
    and-int/lit16 v4, v4, 0x80

    .line 106
    .line 107
    if-nez v4, :cond_4

    .line 108
    .line 109
    iget-object v4, p0, Lk3/a$a;->b:[I

    .line 110
    .line 111
    aget v4, v4, v1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget-object v4, p0, Lk3/a$a;->b:[I

    .line 115
    .line 116
    iget-object v6, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 117
    .line 118
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    aget v4, v4, v6

    .line 123
    .line 124
    :goto_3
    add-int/2addr v5, v3

    .line 125
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget v0, p0, Lk3/a$a;->h:I

    .line 130
    .line 131
    iget v3, p0, Lk3/a$a;->i:I

    .line 132
    .line 133
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 134
    .line 135
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v2, Lu1/a$b;

    .line 140
    .line 141
    invoke-direct {v2}, Lu1/a$b;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Lu1/a$b;->f(Landroid/graphics/Bitmap;)Lu1/a$b;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget v2, p0, Lk3/a$a;->f:I

    .line 149
    .line 150
    int-to-float v2, v2

    .line 151
    iget v3, p0, Lk3/a$a;->d:I

    .line 152
    .line 153
    int-to-float v3, v3

    .line 154
    div-float/2addr v2, v3

    .line 155
    invoke-virtual {v0, v2}, Lu1/a$b;->k(F)Lu1/a$b;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Lu1/a$b;->l(I)Lu1/a$b;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget v2, p0, Lk3/a$a;->g:I

    .line 164
    .line 165
    int-to-float v2, v2

    .line 166
    iget v3, p0, Lk3/a$a;->e:I

    .line 167
    .line 168
    int-to-float v3, v3

    .line 169
    div-float/2addr v2, v3

    .line 170
    invoke-virtual {v0, v2, v1}, Lu1/a$b;->h(FI)Lu1/a$b;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Lu1/a$b;->i(I)Lu1/a$b;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget v1, p0, Lk3/a$a;->h:I

    .line 179
    .line 180
    int-to-float v1, v1

    .line 181
    iget v2, p0, Lk3/a$a;->d:I

    .line 182
    .line 183
    int-to-float v2, v2

    .line 184
    div-float/2addr v1, v2

    .line 185
    invoke-virtual {v0, v1}, Lu1/a$b;->n(F)Lu1/a$b;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget v1, p0, Lk3/a$a;->i:I

    .line 190
    .line 191
    int-to-float v1, v1

    .line 192
    iget v2, p0, Lk3/a$a;->e:I

    .line 193
    .line 194
    int-to-float v2, v2

    .line 195
    div-float/2addr v1, v2

    .line 196
    invoke-virtual {v0, v1}, Lu1/a$b;->g(F)Lu1/a$b;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lu1/a$b;->a()Lu1/a;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    return-object v0

    .line 205
    :cond_6
    :goto_4
    const/4 v0, 0x0

    .line 206
    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk3/a$a;->d:I

    .line 3
    .line 4
    iput v0, p0, Lk3/a$a;->e:I

    .line 5
    .line 6
    iput v0, p0, Lk3/a$a;->f:I

    .line 7
    .line 8
    iput v0, p0, Lk3/a$a;->g:I

    .line 9
    .line 10
    iput v0, p0, Lk3/a$a;->h:I

    .line 11
    .line 12
    iput v0, p0, Lk3/a$a;->i:I

    .line 13
    .line 14
    iget-object v1, p0, Lk3/a$a;->a:Landroidx/media3/common/util/j0;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/media3/common/util/j0;->S(I)V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, Lk3/a$a;->c:Z

    .line 20
    .line 21
    return-void
.end method
