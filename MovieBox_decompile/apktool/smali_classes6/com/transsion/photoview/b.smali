.class Lcom/transsion/photoview/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/view/ScaleGestureDetector;

.field private d:Landroid/view/VelocityTracker;

.field private e:Z

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F

.field private final j:Lcom/transsion/photoview/c;

.field private k:F

.field private l:F

.field private m:F

.field private n:F


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/photoview/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/photoview/b;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/photoview/b;->b:I

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    iput v1, p0, Lcom/transsion/photoview/b;->i:F

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    iput v0, p0, Lcom/transsion/photoview/b;->h:F

    .line 27
    .line 28
    iput-object p2, p0, Lcom/transsion/photoview/b;->j:Lcom/transsion/photoview/c;

    .line 29
    .line 30
    new-instance p2, Lcom/transsion/photoview/b$a;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/transsion/photoview/b$a;-><init>(Lcom/transsion/photoview/b;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/photoview/b;->c:Landroid/view/ScaleGestureDetector;

    .line 41
    .line 42
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/photoview/b;)Lcom/transsion/photoview/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/photoview/b;->j:Lcom/transsion/photoview/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/transsion/photoview/b;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/transsion/photoview/b;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private i(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v0, v2, :cond_6

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    if-eq v0, v5, :cond_3

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-eq v0, v5, :cond_2

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    if-eq v0, v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Lcom/transsion/photoview/o;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget v5, p0, Lcom/transsion/photoview/b;->a:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_a

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v3

    .line 47
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    iput v4, p0, Lcom/transsion/photoview/b;->a:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iput v4, p0, Lcom/transsion/photoview/b;->f:F

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iput v0, p0, Lcom/transsion/photoview/b;->g:F

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    iput v1, p0, Lcom/transsion/photoview/b;->a:I

    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 70
    .line 71
    if-eqz v0, :cond_a

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 74
    .line 75
    .line 76
    iput-object v4, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget v4, p0, Lcom/transsion/photoview/b;->k:F

    .line 85
    .line 86
    sub-float/2addr v0, v4

    .line 87
    iput v0, p0, Lcom/transsion/photoview/b;->m:F

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget v4, p0, Lcom/transsion/photoview/b;->l:F

    .line 94
    .line 95
    sub-float/2addr v0, v4

    .line 96
    iput v0, p0, Lcom/transsion/photoview/b;->n:F

    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->b(Landroid/view/MotionEvent;)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->c(Landroid/view/MotionEvent;)F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iget v5, p0, Lcom/transsion/photoview/b;->f:F

    .line 107
    .line 108
    sub-float v5, v0, v5

    .line 109
    .line 110
    iget v6, p0, Lcom/transsion/photoview/b;->g:F

    .line 111
    .line 112
    sub-float v6, v4, v6

    .line 113
    .line 114
    iget-boolean v7, p0, Lcom/transsion/photoview/b;->e:Z

    .line 115
    .line 116
    if-nez v7, :cond_5

    .line 117
    .line 118
    mul-float v7, v5, v5

    .line 119
    .line 120
    mul-float v8, v6, v6

    .line 121
    .line 122
    add-float/2addr v7, v8

    .line 123
    float-to-double v7, v7

    .line 124
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    iget v9, p0, Lcom/transsion/photoview/b;->h:F

    .line 129
    .line 130
    float-to-double v9, v9

    .line 131
    cmpl-double v7, v7, v9

    .line 132
    .line 133
    if-ltz v7, :cond_4

    .line 134
    .line 135
    move v7, v2

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    move v7, v3

    .line 138
    :goto_1
    iput-boolean v7, p0, Lcom/transsion/photoview/b;->e:Z

    .line 139
    .line 140
    :cond_5
    iget-boolean v7, p0, Lcom/transsion/photoview/b;->e:Z

    .line 141
    .line 142
    if-eqz v7, :cond_a

    .line 143
    .line 144
    iget-object v7, p0, Lcom/transsion/photoview/b;->j:Lcom/transsion/photoview/c;

    .line 145
    .line 146
    invoke-interface {v7, v5, v6}, Lcom/transsion/photoview/c;->b(FF)V

    .line 147
    .line 148
    .line 149
    iput v0, p0, Lcom/transsion/photoview/b;->f:F

    .line 150
    .line 151
    iput v4, p0, Lcom/transsion/photoview/b;->g:F

    .line 152
    .line 153
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 154
    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_6
    iput v1, p0, Lcom/transsion/photoview/b;->a:I

    .line 163
    .line 164
    iget-boolean v0, p0, Lcom/transsion/photoview/b;->e:Z

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->b(Landroid/view/MotionEvent;)F

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, p0, Lcom/transsion/photoview/b;->f:F

    .line 177
    .line 178
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->c(Landroid/view/MotionEvent;)F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput v0, p0, Lcom/transsion/photoview/b;->g:F

    .line 183
    .line 184
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 190
    .line 191
    const/16 v5, 0x3e8

    .line 192
    .line 193
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iget-object v5, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 203
    .line 204
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    iget v7, p0, Lcom/transsion/photoview/b;->i:F

    .line 221
    .line 222
    cmpl-float v6, v6, v7

    .line 223
    .line 224
    if-ltz v6, :cond_7

    .line 225
    .line 226
    iget-object v6, p0, Lcom/transsion/photoview/b;->j:Lcom/transsion/photoview/c;

    .line 227
    .line 228
    iget v7, p0, Lcom/transsion/photoview/b;->f:F

    .line 229
    .line 230
    iget v8, p0, Lcom/transsion/photoview/b;->g:F

    .line 231
    .line 232
    neg-float v0, v0

    .line 233
    neg-float v5, v5

    .line 234
    invoke-interface {v6, v7, v8, v0, v5}, Lcom/transsion/photoview/c;->e(FFFF)V

    .line 235
    .line 236
    .line 237
    :cond_7
    iget-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 238
    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 242
    .line 243
    .line 244
    iput-object v4, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iput v0, p0, Lcom/transsion/photoview/b;->a:I

    .line 252
    .line 253
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iput-object v0, p0, Lcom/transsion/photoview/b;->d:Landroid/view/VelocityTracker;

    .line 258
    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 262
    .line 263
    .line 264
    :cond_9
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->b(Landroid/view/MotionEvent;)F

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iput v0, p0, Lcom/transsion/photoview/b;->f:F

    .line 269
    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->c(Landroid/view/MotionEvent;)F

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    iput v0, p0, Lcom/transsion/photoview/b;->g:F

    .line 275
    .line 276
    iput-boolean v3, p0, Lcom/transsion/photoview/b;->e:Z

    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    iput v0, p0, Lcom/transsion/photoview/b;->k:F

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    iput v0, p0, Lcom/transsion/photoview/b;->l:F

    .line 289
    .line 290
    :cond_a
    :goto_2
    iget v0, p0, Lcom/transsion/photoview/b;->a:I

    .line 291
    .line 292
    if-eq v0, v1, :cond_b

    .line 293
    .line 294
    move v3, v0

    .line 295
    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    iput p1, p0, Lcom/transsion/photoview/b;->b:I

    .line 300
    .line 301
    return v2
.end method


# virtual methods
.method public d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/photoview/b;->n:F

    .line 2
    .line 3
    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/photoview/b;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/photoview/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/photoview/b;->c:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/photoview/b;->c:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsion/photoview/b;->i(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p1

    .line 11
    :catch_0
    const/4 p1, 0x1

    .line 12
    return p1
.end method
