.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final OooO:F

.field public OooO00o:I

.field public OooO0O0:I

.field public final OooO0OO:Landroid/view/ScaleGestureDetector;

.field public OooO0Oo:Landroid/view/VelocityTracker;

.field public OooO0o:F

.field public OooO0o0:Z

.field public OooO0oO:F

.field public final OooO0oo:F

.field public OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

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
    iput v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO:F

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
    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oo:F

    .line 27
    .line 28
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    .line 29
    .line 30
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;

    .line 31
    .line 32
    invoke-direct {p2, p0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;)V

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
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

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

.method public final OooO0O0(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

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

.method public final OooO0OO(Landroid/view/MotionEvent;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    and-int/lit16 v2, v2, 0xff

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v2, :cond_17

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eq v2, v4, :cond_10

    .line 18
    .line 19
    const/4 v7, 0x2

    .line 20
    if-eq v2, v7, :cond_3

    .line 21
    .line 22
    const/4 v7, 0x3

    .line 23
    if-eq v2, v7, :cond_2

    .line 24
    .line 25
    const/4 v6, 0x6

    .line 26
    if-eq v2, v6, :cond_0

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const v6, 0xff00

    .line 35
    .line 36
    .line 37
    and-int/2addr v2, v6

    .line 38
    shr-int/lit8 v2, v2, 0x8

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 45
    .line 46
    if-ne v6, v7, :cond_19

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    move v2, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v2, v5

    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_2
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 74
    .line 75
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 76
    .line 77
    if-eqz v2, :cond_19

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 80
    .line 81
    .line 82
    iput-object v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    iget v8, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    .line 95
    .line 96
    sub-float v8, v2, v8

    .line 97
    .line 98
    iget v9, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    .line 99
    .line 100
    sub-float v9, v6, v9

    .line 101
    .line 102
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    .line 103
    .line 104
    if-nez v10, :cond_5

    .line 105
    .line 106
    mul-float v10, v8, v8

    .line 107
    .line 108
    mul-float v11, v9, v9

    .line 109
    .line 110
    add-float/2addr v11, v10

    .line 111
    float-to-double v10, v11

    .line 112
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v10

    .line 116
    iget v12, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oo:F

    .line 117
    .line 118
    float-to-double v12, v12

    .line 119
    cmpl-double v10, v10, v12

    .line 120
    .line 121
    if-ltz v10, :cond_4

    .line 122
    .line 123
    move v10, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move v10, v5

    .line 126
    :goto_1
    iput-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    .line 127
    .line 128
    :cond_5
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    .line 129
    .line 130
    if-eqz v10, :cond_19

    .line 131
    .line 132
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    .line 133
    .line 134
    check-cast v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    .line 135
    .line 136
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 137
    .line 138
    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    .line 139
    .line 140
    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    .line 141
    .line 142
    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_6

    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :cond_6
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 151
    .line 152
    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;

    .line 153
    .line 154
    if-eqz v11, :cond_7

    .line 155
    .line 156
    invoke-interface {v11, v8, v9}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOO0;->OooO00o(FF)V

    .line 157
    .line 158
    .line 159
    :cond_7
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 160
    .line 161
    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 162
    .line 163
    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    .line 165
    .line 166
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 167
    .line 168
    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    .line 169
    .line 170
    .line 171
    iget-object v11, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 172
    .line 173
    iget-object v11, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 174
    .line 175
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 180
    .line 181
    iget-boolean v13, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o:Z

    .line 182
    .line 183
    if-eqz v13, :cond_e

    .line 184
    .line 185
    iget-object v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOO0O:Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;

    .line 186
    .line 187
    iget-object v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0OO:Landroid/view/ScaleGestureDetector;

    .line 188
    .line 189
    invoke-virtual {v12}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    if-nez v12, :cond_e

    .line 194
    .line 195
    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 196
    .line 197
    iget-boolean v13, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oO:Z

    .line 198
    .line 199
    if-nez v13, :cond_e

    .line 200
    .line 201
    iget-boolean v12, v12, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0oo:Z

    .line 202
    .line 203
    if-nez v12, :cond_e

    .line 204
    .line 205
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    iget-object v10, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 214
    .line 215
    iget v14, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoOO:I

    .line 216
    .line 217
    if-ne v14, v7, :cond_8

    .line 218
    .line 219
    cmpl-float v15, v12, v13

    .line 220
    .line 221
    if-gtz v15, :cond_d

    .line 222
    .line 223
    :cond_8
    const/high16 v15, 0x3f800000    # 1.0f

    .line 224
    .line 225
    if-nez v14, :cond_9

    .line 226
    .line 227
    cmpl-float v16, v8, v15

    .line 228
    .line 229
    if-ltz v16, :cond_9

    .line 230
    .line 231
    cmpl-float v16, v12, v13

    .line 232
    .line 233
    if-gtz v16, :cond_d

    .line 234
    .line 235
    :cond_9
    const/high16 v16, -0x40800000    # -1.0f

    .line 236
    .line 237
    if-ne v14, v4, :cond_a

    .line 238
    .line 239
    cmpg-float v8, v8, v16

    .line 240
    .line 241
    if-gtz v8, :cond_a

    .line 242
    .line 243
    cmpl-float v8, v12, v13

    .line 244
    .line 245
    if-gtz v8, :cond_d

    .line 246
    .line 247
    :cond_a
    iget v8, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoo0:I

    .line 248
    .line 249
    if-nez v8, :cond_b

    .line 250
    .line 251
    cmpl-float v10, v9, v15

    .line 252
    .line 253
    if-ltz v10, :cond_b

    .line 254
    .line 255
    cmpl-float v10, v13, v12

    .line 256
    .line 257
    if-gtz v10, :cond_d

    .line 258
    .line 259
    :cond_b
    if-ne v8, v4, :cond_c

    .line 260
    .line 261
    cmpg-float v9, v9, v16

    .line 262
    .line 263
    if-gtz v9, :cond_c

    .line 264
    .line 265
    cmpl-float v9, v13, v12

    .line 266
    .line 267
    if-gtz v9, :cond_d

    .line 268
    .line 269
    :cond_c
    if-ne v8, v7, :cond_f

    .line 270
    .line 271
    cmpl-float v7, v13, v12

    .line 272
    .line 273
    if-lez v7, :cond_f

    .line 274
    .line 275
    :cond_d
    if-eqz v11, :cond_f

    .line 276
    .line 277
    invoke-interface {v11, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_e
    if-eqz v11, :cond_f

    .line 282
    .line 283
    invoke-interface {v11, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 284
    .line 285
    .line 286
    :cond_f
    :goto_2
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    .line 287
    .line 288
    iput v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    .line 289
    .line 290
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 291
    .line 292
    if-eqz v2, :cond_19

    .line 293
    .line 294
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_6

    .line 298
    .line 299
    :cond_10
    iput v3, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 300
    .line 301
    iget-boolean v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    .line 302
    .line 303
    if-eqz v2, :cond_16

    .line 304
    .line 305
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 306
    .line 307
    if-eqz v2, :cond_16

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    .line 314
    .line 315
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    .line 320
    .line 321
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 322
    .line 323
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 327
    .line 328
    const/16 v7, 0x3e8

    .line 329
    .line 330
    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 331
    .line 332
    .line 333
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 334
    .line 335
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    iget-object v7, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 340
    .line 341
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 346
    .line 347
    .line 348
    move-result v8

    .line 349
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    iget v9, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO:F

    .line 358
    .line 359
    cmpl-float v8, v8, v9

    .line 360
    .line 361
    if-ltz v8, :cond_16

    .line 362
    .line 363
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooOO0:Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;

    .line 364
    .line 365
    neg-float v2, v2

    .line 366
    neg-float v7, v7

    .line 367
    check-cast v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;

    .line 368
    .line 369
    iget-object v9, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 370
    .line 371
    new-instance v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    .line 372
    .line 373
    iget-object v11, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 374
    .line 375
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v11

    .line 379
    invoke-direct {v10, v9, v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    iput-object v10, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    .line 383
    .line 384
    iget-object v9, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 385
    .line 386
    iget-object v10, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    .line 387
    .line 388
    iget-object v11, v9, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 389
    .line 390
    invoke-virtual {v9, v11}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0O0(Landroid/widget/ImageView;)I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    iget-object v11, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 395
    .line 396
    iget-object v12, v11, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 397
    .line 398
    invoke-virtual {v11, v12}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o(Landroid/widget/ImageView;)I

    .line 399
    .line 400
    .line 401
    move-result v11

    .line 402
    float-to-int v15, v2

    .line 403
    float-to-int v2, v7

    .line 404
    iget-object v7, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 405
    .line 406
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0OO()Landroid/graphics/RectF;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    if-nez v7, :cond_11

    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_11
    iget v12, v7, Landroid/graphics/RectF;->left:F

    .line 414
    .line 415
    neg-float v12, v12

    .line 416
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    int-to-float v9, v9

    .line 421
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 422
    .line 423
    .line 424
    move-result v12

    .line 425
    cmpg-float v12, v9, v12

    .line 426
    .line 427
    if-gez v12, :cond_12

    .line 428
    .line 429
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    sub-float/2addr v12, v9

    .line 434
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 435
    .line 436
    .line 437
    move-result v9

    .line 438
    move/from16 v17, v5

    .line 439
    .line 440
    goto :goto_3

    .line 441
    :cond_12
    move v9, v13

    .line 442
    move/from16 v17, v9

    .line 443
    .line 444
    :goto_3
    iget v12, v7, Landroid/graphics/RectF;->top:F

    .line 445
    .line 446
    neg-float v12, v12

    .line 447
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 448
    .line 449
    .line 450
    move-result v14

    .line 451
    int-to-float v11, v11

    .line 452
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    cmpg-float v12, v11, v12

    .line 457
    .line 458
    if-gez v12, :cond_13

    .line 459
    .line 460
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 461
    .line 462
    .line 463
    move-result v7

    .line 464
    sub-float/2addr v7, v11

    .line 465
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    move/from16 v19, v5

    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_13
    move v7, v14

    .line 473
    move/from16 v19, v7

    .line 474
    .line 475
    :goto_4
    iput v13, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0O0:I

    .line 476
    .line 477
    iput v14, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO0OO:I

    .line 478
    .line 479
    if-ne v13, v9, :cond_14

    .line 480
    .line 481
    if-eq v14, v7, :cond_15

    .line 482
    .line 483
    :cond_14
    iget-object v12, v10, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;->OooO00o:Landroid/widget/OverScroller;

    .line 484
    .line 485
    const/16 v21, 0x0

    .line 486
    .line 487
    const/16 v22, 0x0

    .line 488
    .line 489
    move/from16 v16, v2

    .line 490
    .line 491
    move/from16 v18, v9

    .line 492
    .line 493
    move/from16 v20, v7

    .line 494
    .line 495
    invoke-virtual/range {v12 .. v22}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 496
    .line 497
    .line 498
    :cond_15
    :goto_5
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 499
    .line 500
    iget-object v7, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO:Landroid/widget/ImageView;

    .line 501
    .line 502
    iget-object v2, v2, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOoO:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooOO0;

    .line 503
    .line 504
    invoke-virtual {v7, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 505
    .line 506
    .line 507
    :cond_16
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 508
    .line 509
    if-eqz v2, :cond_19

    .line 510
    .line 511
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 512
    .line 513
    .line 514
    iput-object v6, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 515
    .line 516
    goto :goto_6

    .line 517
    :cond_17
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 522
    .line 523
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    iput-object v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0Oo:Landroid/view/VelocityTracker;

    .line 528
    .line 529
    if-eqz v2, :cond_18

    .line 530
    .line 531
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 532
    .line 533
    .line 534
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o(Landroid/view/MotionEvent;)F

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o:F

    .line 539
    .line 540
    invoke-virtual/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0(Landroid/view/MotionEvent;)F

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    iput v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0oO:F

    .line 545
    .line 546
    iput-boolean v5, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0o0:Z

    .line 547
    .line 548
    :cond_19
    :goto_6
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO00o:I

    .line 549
    .line 550
    if-eq v2, v3, :cond_1a

    .line 551
    .line 552
    move v5, v2

    .line 553
    :cond_1a
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooO00o;->OooO0O0:I

    .line 558
    .line 559
    return v4
.end method
