.class public Lo4/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lo4/e;
.implements Lp4/a$b;
.implements Lo4/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/airbnb/lottie/model/layer/a;

.field private final d:Landroidx/collection/x;

.field private final e:Landroidx/collection/x;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;

.field private final j:Lcom/airbnb/lottie/model/content/GradientType;

.field private final k:Lp4/a;

.field private final l:Lp4/a;

.field private final m:Lp4/a;

.field private final n:Lp4/a;

.field private o:Lp4/a;

.field private p:Lp4/q;

.field private final q:Lcom/airbnb/lottie/LottieDrawable;

.field private final r:I

.field private s:Lp4/a;

.field t:F

.field private u:Lp4/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;Lt4/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/collection/x;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo4/h;->d:Landroidx/collection/x;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/x;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo4/h;->e:Landroidx/collection/x;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v1, Ln4/a;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Ln4/a;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lo4/h;->h:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lo4/h;->i:Ljava/util/List;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lo4/h;->t:F

    .line 49
    .line 50
    iput-object p3, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 51
    .line 52
    invoke-virtual {p4}, Lt4/e;->f()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lo4/h;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p4}, Lt4/e;->i()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput-boolean v1, p0, Lo4/h;->b:Z

    .line 63
    .line 64
    iput-object p1, p0, Lo4/h;->q:Lcom/airbnb/lottie/LottieDrawable;

    .line 65
    .line 66
    invoke-virtual {p4}, Lt4/e;->e()Lcom/airbnb/lottie/model/content/GradientType;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lo4/h;->j:Lcom/airbnb/lottie/model/content/GradientType;

    .line 71
    .line 72
    invoke-virtual {p4}, Lt4/e;->c()Landroid/graphics/Path$FillType;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/airbnb/lottie/h;->d()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/high16 p2, 0x42000000    # 32.0f

    .line 84
    .line 85
    div-float/2addr p1, p2

    .line 86
    float-to-int p1, p1

    .line 87
    iput p1, p0, Lo4/h;->r:I

    .line 88
    .line 89
    invoke-virtual {p4}, Lt4/e;->d()Ls4/c;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ls4/c;->a()Lp4/a;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lo4/h;->k:Lp4/a;

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4}, Lt4/e;->g()Ls4/d;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ls4/d;->a()Lp4/a;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lo4/h;->l:Lp4/a;

    .line 114
    .line 115
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4}, Lt4/e;->h()Ls4/f;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ls4/f;->a()Lp4/a;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lo4/h;->m:Lp4/a;

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4}, Lt4/e;->b()Ls4/f;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ls4/f;->a()Lp4/a;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lo4/h;->n:Lp4/a;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lt4/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    .line 159
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->w()Lt4/a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lt4/a;->a()Ls4/b;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ls4/b;->d()Lp4/d;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, p0, Lo4/h;->s:Lp4/a;

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lo4/h;->s:Lp4/a;

    .line 177
    .line 178
    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 179
    .line 180
    .line 181
    :cond_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_1

    .line 186
    .line 187
    new-instance p1, Lp4/c;

    .line 188
    .line 189
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p1, p0, p3, p2}, Lp4/c;-><init>(Lp4/a$b;Lcom/airbnb/lottie/model/layer/a;Lw4/j;)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lo4/h;->u:Lp4/c;

    .line 197
    .line 198
    :cond_1
    return-void
.end method

.method private g([I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/h;->p:Lp4/q;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lp4/q;->h()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Ljava/lang/Integer;

    .line 10
    .line 11
    array-length v1, p1

    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    :goto_0
    array-length v1, p1

    .line 17
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    aget-object v1, v0, v3

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    aput v1, p1, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length p1, v0

    .line 31
    new-array p1, p1, [I

    .line 32
    .line 33
    :goto_1
    array-length v1, v0

    .line 34
    if-ge v3, v1, :cond_1

    .line 35
    .line 36
    aget-object v1, v0, v3

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aput v1, p1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    return-object p1
.end method

.method private i()I
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/h;->m:Lp4/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp4/a;->f()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lo4/h;->r:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lo4/h;->n:Lp4/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lp4/a;->f()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v2, p0, Lo4/h;->r:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lo4/h;->k:Lp4/a;

    .line 30
    .line 31
    invoke-virtual {v2}, Lp4/a;->f()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lo4/h;->r:I

    .line 36
    .line 37
    int-to-float v3, v3

    .line 38
    mul-float/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/16 v3, 0x20f

    .line 46
    .line 47
    mul-int/2addr v3, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 v3, 0x11

    .line 50
    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    mul-int/lit8 v3, v3, 0x1f

    .line 54
    .line 55
    mul-int/2addr v3, v1

    .line 56
    :cond_1
    if-eqz v2, :cond_2

    .line 57
    .line 58
    mul-int/lit8 v3, v3, 0x1f

    .line 59
    .line 60
    mul-int/2addr v3, v2

    .line 61
    :cond_2
    return v3
.end method

.method private j()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    invoke-direct {p0}, Lo4/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lo4/h;->d:Landroidx/collection/x;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/LinearGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lo4/h;->m:Lp4/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lp4/a;->h()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lo4/h;->n:Lp4/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lp4/a;->h()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lo4/h;->k:Lp4/a;

    .line 34
    .line 35
    invoke-virtual {v4}, Lp4/a;->h()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lt4/d;

    .line 40
    .line 41
    invoke-virtual {v4}, Lt4/d;->d()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lo4/h;->g([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual {v4}, Lt4/d;->e()[F

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 54
    .line 55
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 56
    .line 57
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 58
    .line 59
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 60
    .line 61
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 62
    .line 63
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 64
    .line 65
    move-object v6, v4

    .line 66
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lo4/h;->d:Landroidx/collection/x;

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3, v4}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v4
.end method

.method private k()Landroid/graphics/RadialGradient;
    .locals 13

    .line 1
    invoke-direct {p0}, Lo4/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lo4/h;->e:Landroidx/collection/x;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/RadialGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lo4/h;->m:Lp4/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lp4/a;->h()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lo4/h;->n:Lp4/a;

    .line 26
    .line 27
    invoke-virtual {v1}, Lp4/a;->h()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lo4/h;->k:Lp4/a;

    .line 34
    .line 35
    invoke-virtual {v4}, Lp4/a;->h()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lt4/d;

    .line 40
    .line 41
    invoke-virtual {v4}, Lt4/d;->d()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lo4/h;->g([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v4}, Lt4/d;->e()[F

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    sub-float/2addr v0, v7

    .line 62
    float-to-double v4, v0

    .line 63
    sub-float/2addr v1, v8

    .line 64
    float-to-double v0, v1

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    double-to-float v0, v0

    .line 70
    const/4 v1, 0x0

    .line 71
    cmpg-float v1, v0, v1

    .line 72
    .line 73
    if-gtz v1, :cond_1

    .line 74
    .line 75
    const v0, 0x3a83126f    # 0.001f

    .line 76
    .line 77
    .line 78
    :cond_1
    move v9, v0

    .line 79
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 80
    .line 81
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 82
    .line 83
    move-object v6, v0

    .line 84
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lo4/h;->e:Landroidx/collection/x;

    .line 88
    .line 89
    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/h;->q:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lo4/c;

    .line 13
    .line 14
    instance-of v1, v0, Lo4/m;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lo4/h;->i:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Lo4/m;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public c(Lr4/d;ILjava/util/List;Lr4/d;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p0}, Lx4/k;->k(Lr4/d;ILjava/util/List;Lr4/d;Lo4/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/Object;Ly4/c;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/p0;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lo4/h;->l:Lp4/a;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lp4/a;->o(Ly4/c;)V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne p1, v0, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lo4/h;->o:Lp4/a;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lp4/a;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lo4/h;->o:Lp4/a;

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_2
    new-instance p1, Lp4/q;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lo4/h;->o:Lp4/a;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 43
    .line 44
    iget-object p2, p0, Lo4/h;->o:Lp4/a;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_3
    sget-object v0, Lcom/airbnb/lottie/p0;->L:[Ljava/lang/Integer;

    .line 52
    .line 53
    if-ne p1, v0, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Lo4/h;->p:Lp4/q;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lp4/a;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    if-nez p2, :cond_5

    .line 65
    .line 66
    iput-object v1, p0, Lo4/h;->p:Lp4/q;

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_5
    iget-object p1, p0, Lo4/h;->d:Landroidx/collection/x;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lo4/h;->e:Landroidx/collection/x;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/collection/x;->b()V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lp4/q;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lo4/h;->p:Lp4/q;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 91
    .line 92
    iget-object p2, p0, Lo4/h;->p:Lp4/q;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/p0;->j:Ljava/lang/Float;

    .line 99
    .line 100
    if-ne p1, v0, :cond_8

    .line 101
    .line 102
    iget-object p1, p0, Lo4/h;->s:Lp4/a;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lp4/a;->o(Ly4/c;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    new-instance p1, Lp4/q;

    .line 111
    .line 112
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lo4/h;->s:Lp4/a;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lo4/h;->c:Lcom/airbnb/lottie/model/layer/a;

    .line 121
    .line 122
    iget-object p2, p0, Lo4/h;->s:Lp4/a;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/p0;->e:Ljava/lang/Integer;

    .line 129
    .line 130
    if-ne p1, v0, :cond_9

    .line 131
    .line 132
    iget-object v0, p0, Lo4/h;->u:Lp4/c;

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    invoke-virtual {v0, p2}, Lp4/c;->c(Ly4/c;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/p0;->G:Ljava/lang/Float;

    .line 141
    .line 142
    if-ne p1, v0, :cond_a

    .line 143
    .line 144
    iget-object v0, p0, Lo4/h;->u:Lp4/c;

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    invoke-virtual {v0, p2}, Lp4/c;->f(Ly4/c;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/p0;->H:Ljava/lang/Float;

    .line 153
    .line 154
    if-ne p1, v0, :cond_b

    .line 155
    .line 156
    iget-object v0, p0, Lo4/h;->u:Lp4/c;

    .line 157
    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    invoke-virtual {v0, p2}, Lp4/c;->d(Ly4/c;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/p0;->I:Ljava/lang/Float;

    .line 165
    .line 166
    if-ne p1, v0, :cond_c

    .line 167
    .line 168
    iget-object v0, p0, Lo4/h;->u:Lp4/c;

    .line 169
    .line 170
    if-eqz v0, :cond_c

    .line 171
    .line 172
    invoke-virtual {v0, p2}, Lp4/c;->e(Ly4/c;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_c
    sget-object v0, Lcom/airbnb/lottie/p0;->J:Ljava/lang/Float;

    .line 177
    .line 178
    if-ne p1, v0, :cond_d

    .line 179
    .line 180
    iget-object p1, p0, Lo4/h;->u:Lp4/c;

    .line 181
    .line 182
    if-eqz p1, :cond_d

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lp4/c;->g(Ly4/c;)V

    .line 185
    .line 186
    .line 187
    :cond_d
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    move v0, p3

    .line 8
    :goto_0
    iget-object v1, p0, Lo4/h;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 17
    .line 18
    iget-object v2, p0, Lo4/h;->i:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lo4/m;

    .line 25
    .line 26
    invoke-interface {v2}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 39
    .line 40
    .line 41
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 42
    .line 43
    const/high16 p3, 0x3f800000    # 1.0f

    .line 44
    .line 45
    sub-float/2addr p2, p3

    .line 46
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 47
    .line 48
    sub-float/2addr v0, p3

    .line 49
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 50
    .line 51
    add-float/2addr v1, p3

    .line 52
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 53
    .line 54
    add-float/2addr v2, p3

    .line 55
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lo4/h;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "GradientFillContent#draw"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    move v2, v0

    .line 24
    :goto_0
    iget-object v3, p0, Lo4/h;->i:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 33
    .line 34
    iget-object v4, p0, Lo4/h;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lo4/m;

    .line 41
    .line 42
    invoke-interface {v4}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 53
    .line 54
    iget-object v3, p0, Lo4/h;->h:Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lo4/h;->j:Lcom/airbnb/lottie/model/content/GradientType;

    .line 60
    .line 61
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    .line 62
    .line 63
    if-ne v2, v3, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lo4/h;->j()Landroid/graphics/LinearGradient;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-direct {p0}, Lo4/h;->k()Landroid/graphics/RadialGradient;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_1
    invoke-virtual {v2, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lo4/h;->o:Lp4/a;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    iget-object v3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 93
    .line 94
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v2, p0, Lo4/h;->s:Lp4/a;

    .line 98
    .line 99
    if-eqz v2, :cond_7

    .line 100
    .line 101
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/Float;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v3, 0x0

    .line 112
    cmpl-float v3, v2, v3

    .line 113
    .line 114
    if-nez v3, :cond_5

    .line 115
    .line 116
    iget-object v3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget v3, p0, Lo4/h;->t:F

    .line 124
    .line 125
    cmpl-float v3, v2, v3

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    .line 130
    .line 131
    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 132
    .line 133
    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 137
    .line 138
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_2
    iput v2, p0, Lo4/h;->t:F

    .line 142
    .line 143
    :cond_7
    int-to-float v2, p3

    .line 144
    const/high16 v3, 0x437f0000    # 255.0f

    .line 145
    .line 146
    div-float/2addr v2, v3

    .line 147
    iget-object v4, p0, Lo4/h;->l:Lp4/a;

    .line 148
    .line 149
    invoke-virtual {v4}, Lp4/a;->h()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    int-to-float v4, v4

    .line 160
    mul-float/2addr v2, v4

    .line 161
    const/high16 v4, 0x42c80000    # 100.0f

    .line 162
    .line 163
    div-float/2addr v2, v4

    .line 164
    mul-float/2addr v2, v3

    .line 165
    float-to-int v2, v2

    .line 166
    iget-object v3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 167
    .line 168
    const/16 v4, 0xff

    .line 169
    .line 170
    invoke-static {v2, v0, v4}, Lx4/k;->c(III)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lo4/h;->u:Lp4/c;

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    iget-object v3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 182
    .line 183
    invoke-static {p3, v2}, Lx4/l;->l(II)I

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    invoke-virtual {v0, v3, p2, p3}, Lp4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    .line 188
    .line 189
    .line 190
    :cond_8
    iget-object p2, p0, Lo4/h;->f:Landroid/graphics/Path;

    .line 191
    .line 192
    iget-object p3, p0, Lo4/h;->g:Landroid/graphics/Paint;

    .line 193
    .line 194
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_9

    .line 202
    .line 203
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 204
    .line 205
    .line 206
    :cond_9
    return-void
.end method
