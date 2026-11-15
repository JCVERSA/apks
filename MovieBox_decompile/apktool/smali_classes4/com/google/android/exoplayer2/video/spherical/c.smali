.class final Lcom/google/android/exoplayer2/video/spherical/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/c$a;,
        Lcom/google/android/exoplayer2/video/spherical/c$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/video/spherical/c$a;

.field public final b:Lcom/google/android/exoplayer2/video/spherical/c$a;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/c$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2}, Lcom/google/android/exoplayer2/video/spherical/c;-><init>(Lcom/google/android/exoplayer2/video/spherical/c$a;Lcom/google/android/exoplayer2/video/spherical/c$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/c$a;Lcom/google/android/exoplayer2/video/spherical/c$a;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/c;->a:Lcom/google/android/exoplayer2/video/spherical/c$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/c;->b:Lcom/google/android/exoplayer2/video/spherical/c$a;

    .line 5
    iput p3, p0, Lcom/google/android/exoplayer2/video/spherical/c;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/spherical/c;->d:Z

    return-void
.end method

.method public static a(FIIFFI)Lcom/google/android/exoplayer2/video/spherical/c;
    .locals 31

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    cmpl-float v8, v0, v7

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    if-lez v8, :cond_0

    .line 18
    .line 19
    move v8, v10

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v8, 0x0

    .line 22
    :goto_0
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 23
    .line 24
    .line 25
    if-lt v1, v10, :cond_1

    .line 26
    .line 27
    move v8, v10

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v8, 0x0

    .line 30
    :goto_1
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 31
    .line 32
    .line 33
    if-lt v2, v10, :cond_2

    .line 34
    .line 35
    move v8, v10

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/4 v8, 0x0

    .line 38
    :goto_2
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 39
    .line 40
    .line 41
    cmpl-float v8, v3, v7

    .line 42
    .line 43
    if-lez v8, :cond_3

    .line 44
    .line 45
    const/high16 v8, 0x43340000    # 180.0f

    .line 46
    .line 47
    cmpg-float v8, v3, v8

    .line 48
    .line 49
    if-gtz v8, :cond_3

    .line 50
    .line 51
    move v8, v10

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v8, 0x0

    .line 54
    :goto_3
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 55
    .line 56
    .line 57
    cmpl-float v7, v4, v7

    .line 58
    .line 59
    if-lez v7, :cond_4

    .line 60
    .line 61
    const/high16 v7, 0x43b40000    # 360.0f

    .line 62
    .line 63
    cmpg-float v7, v4, v7

    .line 64
    .line 65
    if-gtz v7, :cond_4

    .line 66
    .line 67
    move v7, v10

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/4 v7, 0x0

    .line 70
    :goto_4
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 71
    .line 72
    .line 73
    float-to-double v7, v3

    .line 74
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    double-to-float v3, v7

    .line 79
    float-to-double v7, v4

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    double-to-float v4, v7

    .line 85
    int-to-float v7, v1

    .line 86
    div-float v7, v3, v7

    .line 87
    .line 88
    int-to-float v8, v2

    .line 89
    div-float v8, v4, v8

    .line 90
    .line 91
    add-int/lit8 v11, v2, 0x1

    .line 92
    .line 93
    mul-int/lit8 v12, v11, 0x2

    .line 94
    .line 95
    add-int/2addr v12, v6

    .line 96
    mul-int/2addr v12, v1

    .line 97
    mul-int/lit8 v13, v12, 0x3

    .line 98
    .line 99
    new-array v13, v13, [F

    .line 100
    .line 101
    mul-int/2addr v12, v6

    .line 102
    new-array v12, v12, [F

    .line 103
    .line 104
    const/4 v14, 0x0

    .line 105
    const/4 v15, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    :goto_5
    if-ge v14, v1, :cond_b

    .line 109
    .line 110
    int-to-float v9, v14

    .line 111
    mul-float/2addr v9, v7

    .line 112
    const/high16 v17, 0x40000000    # 2.0f

    .line 113
    .line 114
    div-float v18, v3, v17

    .line 115
    .line 116
    sub-float v9, v9, v18

    .line 117
    .line 118
    add-int/lit8 v5, v14, 0x1

    .line 119
    .line 120
    int-to-float v10, v5

    .line 121
    mul-float/2addr v10, v7

    .line 122
    sub-float v10, v10, v18

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_6
    if-ge v6, v11, :cond_a

    .line 126
    .line 127
    move/from16 p3, v5

    .line 128
    .line 129
    move/from16 p4, v9

    .line 130
    .line 131
    move/from16 v1, v16

    .line 132
    .line 133
    const/4 v5, 0x0

    .line 134
    const/4 v9, 0x2

    .line 135
    :goto_7
    if-ge v5, v9, :cond_9

    .line 136
    .line 137
    if-nez v5, :cond_5

    .line 138
    .line 139
    move/from16 v9, p4

    .line 140
    .line 141
    move/from16 v19, v10

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_5
    move v9, v10

    .line 145
    move/from16 v19, v9

    .line 146
    .line 147
    :goto_8
    int-to-float v10, v6

    .line 148
    mul-float/2addr v10, v8

    .line 149
    const v16, 0x40490fdb    # (float)Math.PI

    .line 150
    .line 151
    .line 152
    add-float v16, v10, v16

    .line 153
    .line 154
    div-float v20, v4, v17

    .line 155
    .line 156
    move/from16 v21, v8

    .line 157
    .line 158
    sub-float v8, v16, v20

    .line 159
    .line 160
    const/16 v16, 0x1

    .line 161
    .line 162
    add-int/lit8 v20, v15, 0x1

    .line 163
    .line 164
    move/from16 v22, v3

    .line 165
    .line 166
    float-to-double v2, v0

    .line 167
    move/from16 v24, v6

    .line 168
    .line 169
    move/from16 v23, v7

    .line 170
    .line 171
    float-to-double v6, v8

    .line 172
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 173
    .line 174
    .line 175
    move-result-wide v25

    .line 176
    mul-double v25, v25, v2

    .line 177
    .line 178
    float-to-double v8, v9

    .line 179
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 180
    .line 181
    .line 182
    move-result-wide v27

    .line 183
    move/from16 v29, v11

    .line 184
    .line 185
    move-object/from16 v30, v12

    .line 186
    .line 187
    mul-double v11, v25, v27

    .line 188
    .line 189
    double-to-float v11, v11

    .line 190
    neg-float v11, v11

    .line 191
    aput v11, v13, v15

    .line 192
    .line 193
    const/4 v11, 0x2

    .line 194
    add-int/lit8 v12, v15, 0x2

    .line 195
    .line 196
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 197
    .line 198
    .line 199
    move-result-wide v25

    .line 200
    move v11, v4

    .line 201
    move/from16 v16, v5

    .line 202
    .line 203
    mul-double v4, v2, v25

    .line 204
    .line 205
    double-to-float v4, v4

    .line 206
    aput v4, v13, v20

    .line 207
    .line 208
    const/4 v4, 0x3

    .line 209
    add-int/lit8 v5, v15, 0x3

    .line 210
    .line 211
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 212
    .line 213
    .line 214
    move-result-wide v6

    .line 215
    mul-double/2addr v2, v6

    .line 216
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 217
    .line 218
    .line 219
    move-result-wide v6

    .line 220
    mul-double/2addr v2, v6

    .line 221
    double-to-float v2, v2

    .line 222
    aput v2, v13, v12

    .line 223
    .line 224
    const/4 v2, 0x1

    .line 225
    add-int/lit8 v3, v1, 0x1

    .line 226
    .line 227
    div-float/2addr v10, v11

    .line 228
    aput v10, v30, v1

    .line 229
    .line 230
    const/4 v2, 0x2

    .line 231
    add-int/lit8 v6, v1, 0x2

    .line 232
    .line 233
    add-int v2, v14, v16

    .line 234
    .line 235
    int-to-float v2, v2

    .line 236
    mul-float v2, v2, v23

    .line 237
    .line 238
    div-float v2, v2, v22

    .line 239
    .line 240
    aput v2, v30, v3

    .line 241
    .line 242
    if-nez v24, :cond_6

    .line 243
    .line 244
    if-eqz v16, :cond_7

    .line 245
    .line 246
    :cond_6
    move/from16 v2, p2

    .line 247
    .line 248
    move/from16 v3, v24

    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_7
    move/from16 v2, p2

    .line 252
    .line 253
    move/from16 v7, v16

    .line 254
    .line 255
    move/from16 v3, v24

    .line 256
    .line 257
    :goto_9
    const/4 v4, 0x3

    .line 258
    goto :goto_b

    .line 259
    :goto_a
    move/from16 v7, v16

    .line 260
    .line 261
    if-ne v3, v2, :cond_8

    .line 262
    .line 263
    const/4 v4, 0x1

    .line 264
    if-ne v7, v4, :cond_8

    .line 265
    .line 266
    goto :goto_9

    .line 267
    :goto_b
    invoke-static {v13, v15, v13, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v15, v15, 0x6

    .line 271
    .line 272
    move-object/from16 v8, v30

    .line 273
    .line 274
    const/4 v9, 0x2

    .line 275
    invoke-static {v8, v1, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    .line 277
    .line 278
    add-int/lit8 v1, v1, 0x4

    .line 279
    .line 280
    :goto_c
    const/4 v5, 0x1

    .line 281
    goto :goto_d

    .line 282
    :cond_8
    move-object/from16 v8, v30

    .line 283
    .line 284
    const/4 v4, 0x3

    .line 285
    const/4 v9, 0x2

    .line 286
    move v15, v5

    .line 287
    move v1, v6

    .line 288
    goto :goto_c

    .line 289
    :goto_d
    add-int/lit8 v6, v7, 0x1

    .line 290
    .line 291
    move v5, v6

    .line 292
    move-object v12, v8

    .line 293
    move v4, v11

    .line 294
    move/from16 v10, v19

    .line 295
    .line 296
    move/from16 v8, v21

    .line 297
    .line 298
    move/from16 v7, v23

    .line 299
    .line 300
    move/from16 v11, v29

    .line 301
    .line 302
    move v6, v3

    .line 303
    move/from16 v3, v22

    .line 304
    .line 305
    goto/16 :goto_7

    .line 306
    .line 307
    :cond_9
    move/from16 v22, v3

    .line 308
    .line 309
    move v3, v6

    .line 310
    move/from16 v23, v7

    .line 311
    .line 312
    move/from16 v21, v8

    .line 313
    .line 314
    move/from16 v19, v10

    .line 315
    .line 316
    move/from16 v29, v11

    .line 317
    .line 318
    move-object v8, v12

    .line 319
    const/4 v5, 0x1

    .line 320
    move v11, v4

    .line 321
    const/4 v4, 0x3

    .line 322
    add-int/lit8 v6, v3, 0x1

    .line 323
    .line 324
    move/from16 v5, p3

    .line 325
    .line 326
    move/from16 v9, p4

    .line 327
    .line 328
    move/from16 v16, v1

    .line 329
    .line 330
    move v4, v11

    .line 331
    move/from16 v8, v21

    .line 332
    .line 333
    move/from16 v3, v22

    .line 334
    .line 335
    move/from16 v11, v29

    .line 336
    .line 337
    move/from16 v1, p1

    .line 338
    .line 339
    goto/16 :goto_6

    .line 340
    .line 341
    :cond_a
    move/from16 p3, v5

    .line 342
    .line 343
    move/from16 v1, p1

    .line 344
    .line 345
    move/from16 v14, p3

    .line 346
    .line 347
    const/4 v5, 0x3

    .line 348
    const/4 v6, 0x2

    .line 349
    const/4 v10, 0x1

    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :cond_b
    move v5, v10

    .line 353
    move-object v8, v12

    .line 354
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/c$b;

    .line 355
    .line 356
    const/4 v1, 0x0

    .line 357
    invoke-direct {v0, v1, v13, v8, v5}, Lcom/google/android/exoplayer2/video/spherical/c$b;-><init>(I[F[FI)V

    .line 358
    .line 359
    .line 360
    new-instance v2, Lcom/google/android/exoplayer2/video/spherical/c;

    .line 361
    .line 362
    new-instance v3, Lcom/google/android/exoplayer2/video/spherical/c$a;

    .line 363
    .line 364
    new-array v4, v5, [Lcom/google/android/exoplayer2/video/spherical/c$b;

    .line 365
    .line 366
    aput-object v0, v4, v1

    .line 367
    .line 368
    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/video/spherical/c$a;-><init>([Lcom/google/android/exoplayer2/video/spherical/c$b;)V

    .line 369
    .line 370
    .line 371
    move/from16 v0, p5

    .line 372
    .line 373
    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplayer2/video/spherical/c;-><init>(Lcom/google/android/exoplayer2/video/spherical/c$a;I)V

    .line 374
    .line 375
    .line 376
    return-object v2
.end method

.method public static b(I)Lcom/google/android/exoplayer2/video/spherical/c;
    .locals 6

    .line 1
    const/high16 v3, 0x43340000    # 180.0f

    .line 2
    .line 3
    const/high16 v4, 0x43b40000    # 360.0f

    .line 4
    .line 5
    const/high16 v0, 0x42480000    # 50.0f

    .line 6
    .line 7
    const/16 v1, 0x24

    .line 8
    .line 9
    const/16 v2, 0x48

    .line 10
    .line 11
    move v5, p0

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/spherical/c;->a(FIIFFI)Lcom/google/android/exoplayer2/video/spherical/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
