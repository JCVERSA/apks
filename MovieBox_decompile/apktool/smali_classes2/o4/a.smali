.class public abstract Lo4/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp4/a$b;
.implements Lo4/k;
.implements Lo4/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/PathMeasure;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Landroid/graphics/RectF;

.field private final e:Lcom/airbnb/lottie/LottieDrawable;

.field protected final f:Lcom/airbnb/lottie/model/layer/a;

.field private final g:Ljava/util/List;

.field private final h:[F

.field final i:Landroid/graphics/Paint;

.field private final j:Lp4/a;

.field private final k:Lp4/a;

.field private final l:Ljava/util/List;

.field private final m:Lp4/a;

.field private n:Lp4/a;

.field private o:Lp4/a;

.field p:F

.field private q:Lp4/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLs4/d;Ls4/b;Ljava/util/List;Ls4/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PathMeasure;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Path;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo4/a;->c:Landroid/graphics/Path;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lo4/a;->d:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lo4/a;->g:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ln4/a;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1}, Ln4/a;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lo4/a;->p:F

    .line 49
    .line 50
    iput-object p1, p0, Lo4/a;->e:Lcom/airbnb/lottie/LottieDrawable;

    .line 51
    .line 52
    iput-object p2, p0, Lo4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 53
    .line 54
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6}, Ls4/d;->a()Lp4/a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lo4/a;->k:Lp4/a;

    .line 73
    .line 74
    invoke-virtual {p7}, Ls4/b;->d()Lp4/d;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lo4/a;->j:Lp4/a;

    .line 79
    .line 80
    if-nez p9, :cond_0

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lo4/a;->m:Lp4/a;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p9}, Ls4/b;->d()Lp4/d;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lo4/a;->m:Lp4/a;

    .line 91
    .line 92
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lo4/a;->l:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    new-array p1, p1, [F

    .line 108
    .line 109
    iput-object p1, p0, Lo4/a;->h:[F

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    move p3, p1

    .line 113
    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p4

    .line 117
    if-ge p3, p4, :cond_1

    .line 118
    .line 119
    iget-object p4, p0, Lo4/a;->l:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p5

    .line 125
    check-cast p5, Ls4/b;

    .line 126
    .line 127
    invoke-virtual {p5}, Ls4/b;->d()Lp4/d;

    .line 128
    .line 129
    .line 130
    move-result-object p5

    .line 131
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 p3, p3, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    iget-object p3, p0, Lo4/a;->k:Lp4/a;

    .line 138
    .line 139
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 140
    .line 141
    .line 142
    iget-object p3, p0, Lo4/a;->j:Lp4/a;

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 145
    .line 146
    .line 147
    move p3, p1

    .line 148
    :goto_2
    iget-object p4, p0, Lo4/a;->l:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p4

    .line 154
    if-ge p3, p4, :cond_2

    .line 155
    .line 156
    iget-object p4, p0, Lo4/a;->l:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    check-cast p4, Lp4/a;

    .line 163
    .line 164
    invoke-virtual {p2, p4}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 165
    .line 166
    .line 167
    add-int/lit8 p3, p3, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_2
    iget-object p3, p0, Lo4/a;->m:Lp4/a;

    .line 171
    .line 172
    if-eqz p3, :cond_3

    .line 173
    .line 174
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    iget-object p3, p0, Lo4/a;->k:Lp4/a;

    .line 178
    .line 179
    invoke-virtual {p3, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Lo4/a;->j:Lp4/a;

    .line 183
    .line 184
    invoke-virtual {p3, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result p3

    .line 191
    if-ge p1, p3, :cond_4

    .line 192
    .line 193
    iget-object p3, p0, Lo4/a;->l:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p3

    .line 199
    check-cast p3, Lp4/a;

    .line 200
    .line 201
    invoke-virtual {p3, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 202
    .line 203
    .line 204
    add-int/lit8 p1, p1, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_4
    iget-object p1, p0, Lo4/a;->m:Lp4/a;

    .line 208
    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 212
    .line 213
    .line 214
    :cond_5
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lt4/a;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    if-eqz p1, :cond_6

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->w()Lt4/a;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lt4/a;->a()Ls4/b;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ls4/b;->d()Lp4/d;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iput-object p1, p0, Lo4/a;->o:Lp4/a;

    .line 233
    .line 234
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lo4/a;->o:Lp4/a;

    .line 238
    .line 239
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_7

    .line 247
    .line 248
    new-instance p1, Lp4/c;

    .line 249
    .line 250
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/a;->y()Lw4/j;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    invoke-direct {p1, p0, p2, p3}, Lp4/c;-><init>(Lp4/a$b;Lcom/airbnb/lottie/model/layer/a;Lw4/j;)V

    .line 255
    .line 256
    .line 257
    iput-object p1, p0, Lo4/a;->q:Lp4/c;

    .line 258
    .line 259
    :cond_7
    return-void
.end method

.method private g(Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "StrokeContent#applyDashPattern"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lo4/a;->l:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :cond_2
    invoke-static {p1}, Lx4/l;->g(Landroid/graphics/Matrix;)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lo4/a;->l:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ge v0, v2, :cond_5

    .line 42
    .line 43
    iget-object v2, p0, Lo4/a;->h:[F

    .line 44
    .line 45
    iget-object v3, p0, Lo4/a;->l:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lp4/a;

    .line 52
    .line 53
    invoke-virtual {v3}, Lp4/a;->h()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Float;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    aput v3, v2, v0

    .line 64
    .line 65
    rem-int/lit8 v2, v0, 0x2

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lo4/a;->h:[F

    .line 70
    .line 71
    aget v3, v2, v0

    .line 72
    .line 73
    const/high16 v4, 0x3f800000    # 1.0f

    .line 74
    .line 75
    cmpg-float v3, v3, v4

    .line 76
    .line 77
    if-gez v3, :cond_4

    .line 78
    .line 79
    aput v4, v2, v0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, p0, Lo4/a;->h:[F

    .line 83
    .line 84
    aget v3, v2, v0

    .line 85
    .line 86
    const v4, 0x3dcccccd    # 0.1f

    .line 87
    .line 88
    .line 89
    cmpg-float v3, v3, v4

    .line 90
    .line 91
    if-gez v3, :cond_4

    .line 92
    .line 93
    aput v4, v2, v0

    .line 94
    .line 95
    :cond_4
    :goto_1
    iget-object v2, p0, Lo4/a;->h:[F

    .line 96
    .line 97
    aget v3, v2, v0

    .line 98
    .line 99
    mul-float/2addr v3, p1

    .line 100
    aput v3, v2, v0

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    iget-object v0, p0, Lo4/a;->m:Lp4/a;

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {v0}, Lp4/a;->h()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Float;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    mul-float/2addr p1, v0

    .line 122
    :goto_2
    iget-object v0, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 123
    .line 124
    new-instance v2, Landroid/graphics/DashPathEffect;

    .line 125
    .line 126
    iget-object v3, p0, Lo4/a;->h:[F

    .line 127
    .line 128
    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Lo4/a$b;Landroid/graphics/Matrix;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "StrokeContent#applyTrimPath"

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {v4}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static/range {p2 .. p2}, Lo4/a$b;->b(Lo4/a$b;)Lo4/u;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    iget-object v3, v0, Lo4/a;->b:Landroid/graphics/Path;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 37
    .line 38
    .line 39
    invoke-static/range {p2 .. p2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    :goto_0
    if-ltz v3, :cond_3

    .line 50
    .line 51
    iget-object v5, v0, Lo4/a;->b:Landroid/graphics/Path;

    .line 52
    .line 53
    invoke-static/range {p2 .. p2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lo4/m;

    .line 62
    .line 63
    invoke-interface {v6}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v3, v3, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static/range {p2 .. p2}, Lo4/a$b;->b(Lo4/a$b;)Lo4/u;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lo4/u;->i()Lp4/a;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lp4/a;->h()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/Float;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/high16 v5, 0x42c80000    # 100.0f

    .line 92
    .line 93
    div-float/2addr v3, v5

    .line 94
    invoke-static/range {p2 .. p2}, Lo4/a$b;->b(Lo4/a$b;)Lo4/u;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v6}, Lo4/u;->d()Lp4/a;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6}, Lp4/a;->h()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/lang/Float;

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    div-float/2addr v6, v5

    .line 113
    invoke-static/range {p2 .. p2}, Lo4/a$b;->b(Lo4/a$b;)Lo4/u;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lo4/u;->g()Lp4/a;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lp4/a;->h()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/Float;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    const/high16 v7, 0x43b40000    # 360.0f

    .line 132
    .line 133
    div-float/2addr v5, v7

    .line 134
    const v7, 0x3c23d70a    # 0.01f

    .line 135
    .line 136
    .line 137
    cmpg-float v7, v3, v7

    .line 138
    .line 139
    if-gez v7, :cond_5

    .line 140
    .line 141
    const v7, 0x3f7d70a4    # 0.99f

    .line 142
    .line 143
    .line 144
    cmpl-float v7, v6, v7

    .line 145
    .line 146
    if-lez v7, :cond_5

    .line 147
    .line 148
    iget-object v2, v0, Lo4/a;->b:Landroid/graphics/Path;

    .line 149
    .line 150
    iget-object v3, v0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    :cond_4
    return-void

    .line 165
    :cond_5
    iget-object v7, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 166
    .line 167
    iget-object v8, v0, Lo4/a;->b:Landroid/graphics/Path;

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    invoke-virtual {v7, v8, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 171
    .line 172
    .line 173
    iget-object v7, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    :goto_1
    iget-object v8, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 180
    .line 181
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_6

    .line 186
    .line 187
    iget-object v8, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 188
    .line 189
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->getLength()F

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    add-float/2addr v7, v8

    .line 194
    goto :goto_1

    .line 195
    :cond_6
    mul-float/2addr v5, v7

    .line 196
    mul-float/2addr v3, v7

    .line 197
    add-float/2addr v3, v5

    .line 198
    mul-float/2addr v6, v7

    .line 199
    add-float/2addr v6, v5

    .line 200
    add-float v5, v3, v7

    .line 201
    .line 202
    const/high16 v8, 0x3f800000    # 1.0f

    .line 203
    .line 204
    sub-float/2addr v5, v8

    .line 205
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    invoke-static/range {p2 .. p2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    add-int/lit8 v6, v6, -0x1

    .line 218
    .line 219
    const/4 v10, 0x0

    .line 220
    move v11, v10

    .line 221
    :goto_2
    if-ltz v6, :cond_e

    .line 222
    .line 223
    iget-object v12, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 224
    .line 225
    invoke-static/range {p2 .. p2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    check-cast v13, Lo4/m;

    .line 234
    .line 235
    invoke-interface {v13}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    invoke-virtual {v12, v13}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 240
    .line 241
    .line 242
    iget-object v12, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 243
    .line 244
    invoke-virtual {v12, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 245
    .line 246
    .line 247
    iget-object v12, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 248
    .line 249
    iget-object v13, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 250
    .line 251
    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 252
    .line 253
    .line 254
    iget-object v12, v0, Lo4/a;->a:Landroid/graphics/PathMeasure;

    .line 255
    .line 256
    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    cmpl-float v13, v5, v7

    .line 261
    .line 262
    if-lez v13, :cond_8

    .line 263
    .line 264
    sub-float v13, v5, v7

    .line 265
    .line 266
    add-float v14, v11, v12

    .line 267
    .line 268
    cmpg-float v14, v13, v14

    .line 269
    .line 270
    if-gez v14, :cond_8

    .line 271
    .line 272
    cmpg-float v14, v11, v13

    .line 273
    .line 274
    if-gez v14, :cond_8

    .line 275
    .line 276
    cmpl-float v14, v3, v7

    .line 277
    .line 278
    if-lez v14, :cond_7

    .line 279
    .line 280
    sub-float v14, v3, v7

    .line 281
    .line 282
    div-float/2addr v14, v12

    .line 283
    goto :goto_3

    .line 284
    :cond_7
    move v14, v10

    .line 285
    :goto_3
    div-float/2addr v13, v12

    .line 286
    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    .line 287
    .line 288
    .line 289
    move-result v13

    .line 290
    iget-object v15, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 291
    .line 292
    invoke-static {v15, v14, v13, v10}, Lx4/l;->a(Landroid/graphics/Path;FFF)V

    .line 293
    .line 294
    .line 295
    iget-object v13, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 296
    .line 297
    iget-object v14, v0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 298
    .line 299
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_8
    add-float v13, v11, v12

    .line 304
    .line 305
    cmpg-float v14, v13, v3

    .line 306
    .line 307
    if-ltz v14, :cond_d

    .line 308
    .line 309
    cmpl-float v14, v11, v5

    .line 310
    .line 311
    if-lez v14, :cond_9

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_9
    cmpg-float v14, v13, v5

    .line 315
    .line 316
    if-gtz v14, :cond_a

    .line 317
    .line 318
    cmpg-float v14, v3, v11

    .line 319
    .line 320
    if-gez v14, :cond_a

    .line 321
    .line 322
    iget-object v13, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 323
    .line 324
    iget-object v14, v0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 325
    .line 326
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_a
    cmpg-float v14, v3, v11

    .line 331
    .line 332
    if-gez v14, :cond_b

    .line 333
    .line 334
    move v14, v10

    .line 335
    goto :goto_4

    .line 336
    :cond_b
    sub-float v14, v3, v11

    .line 337
    .line 338
    div-float/2addr v14, v12

    .line 339
    :goto_4
    cmpl-float v13, v5, v13

    .line 340
    .line 341
    if-lez v13, :cond_c

    .line 342
    .line 343
    move v13, v8

    .line 344
    goto :goto_5

    .line 345
    :cond_c
    sub-float v13, v5, v11

    .line 346
    .line 347
    div-float/2addr v13, v12

    .line 348
    :goto_5
    iget-object v15, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 349
    .line 350
    invoke-static {v15, v14, v13, v10}, Lx4/l;->a(Landroid/graphics/Path;FFF)V

    .line 351
    .line 352
    .line 353
    iget-object v13, v0, Lo4/a;->c:Landroid/graphics/Path;

    .line 354
    .line 355
    iget-object v14, v0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 356
    .line 357
    invoke-virtual {v1, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 358
    .line 359
    .line 360
    :cond_d
    :goto_6
    add-float/2addr v11, v12

    .line 361
    add-int/lit8 v6, v6, -0x1

    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :cond_e
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_f

    .line 370
    .line 371
    invoke-static {v4}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 372
    .line 373
    .line 374
    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/a;->e:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lo4/c;

    .line 16
    .line 17
    instance-of v4, v3, Lo4/u;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v3, Lo4/u;

    .line 22
    .line 23
    invoke-virtual {v3}, Lo4/u;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    move-object v2, v3

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Lo4/u;->c(Lp4/a$b;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    add-int/lit8 p1, p1, -0x1

    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :goto_1
    if-ltz p1, :cond_7

    .line 48
    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lo4/c;

    .line 54
    .line 55
    instance-of v4, v3, Lo4/u;

    .line 56
    .line 57
    if-eqz v4, :cond_4

    .line 58
    .line 59
    move-object v4, v3

    .line 60
    check-cast v4, Lo4/u;

    .line 61
    .line 62
    invoke-virtual {v4}, Lo4/u;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    sget-object v6, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 67
    .line 68
    if-ne v5, v6, :cond_4

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v3, p0, Lo4/a;->g:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    new-instance v0, Lo4/a$b;

    .line 78
    .line 79
    invoke-direct {v0, v4, v1}, Lo4/a$b;-><init>(Lo4/u;Lo4/a$a;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, p0}, Lo4/u;->c(Lp4/a$b;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    instance-of v4, v3, Lo4/m;

    .line 87
    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    new-instance v0, Lo4/a$b;

    .line 93
    .line 94
    invoke-direct {v0, v2, v1}, Lo4/a$b;-><init>(Lo4/u;Lo4/a$a;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-static {v0}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v3, Lo4/m;

    .line 102
    .line 103
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_7
    if-eqz v0, :cond_8

    .line 110
    .line 111
    iget-object p1, p0, Lo4/a;->g:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_8
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
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/p0;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lo4/a;->k:Lp4/a;

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
    sget-object v0, Lcom/airbnb/lottie/p0;->s:Ljava/lang/Float;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lo4/a;->j:Lp4/a;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lp4/a;->o(Ly4/c;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/airbnb/lottie/p0;->K:Landroid/graphics/ColorFilter;

    .line 24
    .line 25
    if-ne p1, v0, :cond_4

    .line 26
    .line 27
    iget-object p1, p0, Lo4/a;->n:Lp4/a;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lo4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lp4/a;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-nez p2, :cond_3

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lo4/a;->n:Lp4/a;

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_3
    new-instance p1, Lp4/q;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lo4/a;->n:Lp4/a;

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lo4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 54
    .line 55
    iget-object p2, p0, Lo4/a;->n:Lp4/a;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    sget-object v0, Lcom/airbnb/lottie/p0;->j:Ljava/lang/Float;

    .line 62
    .line 63
    if-ne p1, v0, :cond_6

    .line 64
    .line 65
    iget-object p1, p0, Lo4/a;->o:Lp4/a;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lp4/a;->o(Ly4/c;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    new-instance p1, Lp4/q;

    .line 74
    .line 75
    invoke-direct {p1, p2}, Lp4/q;-><init>(Ly4/c;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lo4/a;->o:Lp4/a;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Lp4/a;->a(Lp4/a$b;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lo4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 84
    .line 85
    iget-object p2, p0, Lo4/a;->o:Lp4/a;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lp4/a;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    sget-object v0, Lcom/airbnb/lottie/p0;->e:Ljava/lang/Integer;

    .line 92
    .line 93
    if-ne p1, v0, :cond_7

    .line 94
    .line 95
    iget-object v0, p0, Lo4/a;->q:Lp4/c;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0, p2}, Lp4/c;->c(Ly4/c;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    sget-object v0, Lcom/airbnb/lottie/p0;->G:Ljava/lang/Float;

    .line 104
    .line 105
    if-ne p1, v0, :cond_8

    .line 106
    .line 107
    iget-object v0, p0, Lo4/a;->q:Lp4/c;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    invoke-virtual {v0, p2}, Lp4/c;->f(Ly4/c;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/p0;->H:Ljava/lang/Float;

    .line 116
    .line 117
    if-ne p1, v0, :cond_9

    .line 118
    .line 119
    iget-object v0, p0, Lo4/a;->q:Lp4/c;

    .line 120
    .line 121
    if-eqz v0, :cond_9

    .line 122
    .line 123
    invoke-virtual {v0, p2}, Lp4/c;->d(Ly4/c;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_9
    sget-object v0, Lcom/airbnb/lottie/p0;->I:Ljava/lang/Float;

    .line 128
    .line 129
    if-ne p1, v0, :cond_a

    .line 130
    .line 131
    iget-object v0, p0, Lo4/a;->q:Lp4/c;

    .line 132
    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    invoke-virtual {v0, p2}, Lp4/c;->e(Ly4/c;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_a
    sget-object v0, Lcom/airbnb/lottie/p0;->J:Ljava/lang/Float;

    .line 140
    .line 141
    if-ne p1, v0, :cond_b

    .line 142
    .line 143
    iget-object p1, p0, Lo4/a;->q:Lp4/c;

    .line 144
    .line 145
    if-eqz p1, :cond_b

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Lp4/c;->g(Ly4/c;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const-string v0, "StrokeContent#getBounds"

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    move v1, p3

    .line 19
    :goto_0
    iget-object v2, p0, Lo4/a;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lo4/a;->g:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lo4/a$b;

    .line 34
    .line 35
    move v3, p3

    .line 36
    :goto_1
    invoke-static {v2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ge v3, v4, :cond_1

    .line 45
    .line 46
    iget-object v4, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 47
    .line 48
    invoke-static {v2}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lo4/m;

    .line 57
    .line 58
    invoke-interface {v5}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v4, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p2, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 72
    .line 73
    iget-object v1, p0, Lo4/a;->d:Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-virtual {p2, v1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lo4/a;->j:Lp4/a;

    .line 79
    .line 80
    check-cast p2, Lp4/d;

    .line 81
    .line 82
    invoke-virtual {p2}, Lp4/d;->q()F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iget-object p3, p0, Lo4/a;->d:Landroid/graphics/RectF;

    .line 87
    .line 88
    iget v1, p3, Landroid/graphics/RectF;->left:F

    .line 89
    .line 90
    const/high16 v2, 0x40000000    # 2.0f

    .line 91
    .line 92
    div-float/2addr p2, v2

    .line 93
    sub-float/2addr v1, p2

    .line 94
    iget v2, p3, Landroid/graphics/RectF;->top:F

    .line 95
    .line 96
    sub-float/2addr v2, p2

    .line 97
    iget v3, p3, Landroid/graphics/RectF;->right:F

    .line 98
    .line 99
    add-float/2addr v3, p2

    .line 100
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    .line 101
    .line 102
    add-float/2addr v4, p2

    .line 103
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lo4/a;->d:Landroid/graphics/RectF;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 109
    .line 110
    .line 111
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 112
    .line 113
    const/high16 p3, 0x3f800000    # 1.0f

    .line 114
    .line 115
    sub-float/2addr p2, p3

    .line 116
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 117
    .line 118
    sub-float/2addr v1, p3

    .line 119
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 120
    .line 121
    add-float/2addr v2, p3

    .line 122
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 123
    .line 124
    add-float/2addr v3, p3

    .line 125
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    invoke-static {v0}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "StrokeContent#draw"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p2}, Lx4/l;->h(Landroid/graphics/Matrix;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    int-to-float v0, p3

    .line 29
    const/high16 v2, 0x437f0000    # 255.0f

    .line 30
    .line 31
    div-float/2addr v0, v2

    .line 32
    iget-object v3, p0, Lo4/a;->k:Lp4/a;

    .line 33
    .line 34
    check-cast v3, Lp4/f;

    .line 35
    .line 36
    invoke-virtual {v3}, Lp4/f;->q()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    mul-float/2addr v0, v3

    .line 42
    const/high16 v3, 0x42c80000    # 100.0f

    .line 43
    .line 44
    div-float/2addr v0, v3

    .line 45
    mul-float/2addr v0, v2

    .line 46
    float-to-int v0, v0

    .line 47
    iget-object v2, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 48
    .line 49
    const/16 v3, 0xff

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static {v0, v4, v3}, Lx4/k;->c(III)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 60
    .line 61
    iget-object v3, p0, Lo4/a;->j:Lp4/a;

    .line 62
    .line 63
    check-cast v3, Lp4/d;

    .line 64
    .line 65
    invoke-virtual {v3}, Lp4/d;->q()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {p2}, Lx4/l;->g(Landroid/graphics/Matrix;)F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    mul-float/2addr v3, v5

    .line 74
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v3, 0x0

    .line 84
    cmpg-float v2, v2, v3

    .line 85
    .line 86
    if-gtz v2, :cond_4

    .line 87
    .line 88
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void

    .line 98
    :cond_4
    invoke-direct {p0, p2}, Lo4/a;->g(Landroid/graphics/Matrix;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lo4/a;->n:Lp4/a;

    .line 102
    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget-object v5, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/graphics/ColorFilter;

    .line 112
    .line 113
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object v2, p0, Lo4/a;->o:Lp4/a;

    .line 117
    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    invoke-virtual {v2}, Lp4/a;->h()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Float;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    cmpl-float v3, v2, v3

    .line 131
    .line 132
    if-nez v3, :cond_6

    .line 133
    .line 134
    iget-object v3, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 135
    .line 136
    const/4 v5, 0x0

    .line 137
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    iget v3, p0, Lo4/a;->p:F

    .line 142
    .line 143
    cmpl-float v3, v2, v3

    .line 144
    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    iget-object v3, p0, Lo4/a;->f:Lcom/airbnb/lottie/model/layer/a;

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/model/layer/a;->x(F)Landroid/graphics/BlurMaskFilter;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v5, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 154
    .line 155
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 156
    .line 157
    .line 158
    :cond_7
    :goto_0
    iput v2, p0, Lo4/a;->p:F

    .line 159
    .line 160
    :cond_8
    iget-object v2, p0, Lo4/a;->q:Lp4/c;

    .line 161
    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    iget-object v3, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-static {p3, v0}, Lx4/l;->l(II)I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    invoke-virtual {v2, v3, p2, p3}, Lp4/c;->b(Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_1
    iget-object p3, p0, Lo4/a;->g:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    if-ge v4, p3, :cond_f

    .line 180
    .line 181
    iget-object p3, p0, Lo4/a;->g:Ljava/util/List;

    .line 182
    .line 183
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Lo4/a$b;

    .line 188
    .line 189
    invoke-static {p3}, Lo4/a$b;->b(Lo4/a$b;)Lo4/u;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    invoke-direct {p0, p1, p3, p2}, Lo4/a;->i(Landroid/graphics/Canvas;Lo4/a$b;Landroid/graphics/Matrix;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    const-string v2, "StrokeContent#buildPath"

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_b
    iget-object v0, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 213
    .line 214
    .line 215
    invoke-static {p3}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    .line 225
    :goto_2
    if-ltz v0, :cond_c

    .line 226
    .line 227
    iget-object v3, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 228
    .line 229
    invoke-static {p3}, Lo4/a$b;->a(Lo4/a$b;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Lo4/m;

    .line 238
    .line 239
    invoke-interface {v5}, Lo4/m;->getPath()Landroid/graphics/Path;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v3, v5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v0, v0, -0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 250
    .line 251
    .line 252
    move-result p3

    .line 253
    const-string v0, "StrokeContent#drawPath"

    .line 254
    .line 255
    if-eqz p3, :cond_d

    .line 256
    .line 257
    invoke-static {v2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_d
    iget-object p3, p0, Lo4/a;->b:Landroid/graphics/Path;

    .line 264
    .line 265
    iget-object v2, p0, Lo4/a;->i:Landroid/graphics/Paint;

    .line 266
    .line 267
    invoke-virtual {p1, p3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    .line 269
    .line 270
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    if-eqz p3, :cond_e

    .line 275
    .line 276
    invoke-static {v0}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 277
    .line 278
    .line 279
    :cond_e
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_f
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_10

    .line 287
    .line 288
    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    .line 289
    .line 290
    .line 291
    :cond_10
    return-void
.end method
