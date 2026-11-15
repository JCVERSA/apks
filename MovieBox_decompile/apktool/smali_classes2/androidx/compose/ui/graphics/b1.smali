.class public abstract Landroidx/compose/ui/graphics/b1;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final synthetic a(F[FI)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/b1;->g(F[FI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(FFFF[FI)J
    .locals 5

    .line 1
    sub-float v0, p1, p0

    .line 2
    .line 3
    const/high16 v1, 0x40400000    # 3.0f

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    sub-float v2, p2, p1

    .line 7
    .line 8
    mul-float/2addr v2, v1

    .line 9
    sub-float v3, p3, p2

    .line 10
    .line 11
    mul-float/2addr v3, v1

    .line 12
    invoke-static {v0, v2, v3, p4, p5}, Landroidx/compose/ui/graphics/b1;->f(FFF[FI)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-float v0, v2, v0

    .line 17
    .line 18
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    .line 20
    mul-float/2addr v0, v4

    .line 21
    sub-float/2addr v3, v2

    .line 22
    mul-float/2addr v3, v4

    .line 23
    add-int/2addr p5, v1

    .line 24
    neg-float v2, v0

    .line 25
    sub-float/2addr v3, v0

    .line 26
    div-float/2addr v2, v3

    .line 27
    invoke-static {v2, p4, p5}, Landroidx/compose/ui/graphics/b1;->a(F[FI)I

    .line 28
    .line 29
    .line 30
    move-result p5

    .line 31
    add-int/2addr v1, p5

    .line 32
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    .line 43
    aget v3, p4, v2

    .line 44
    .line 45
    invoke-static {p0, p1, p2, p3, v3}, Landroidx/compose/ui/graphics/b1;->d(FFFFF)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {p5, v3}, Ljava/lang/Math;->min(FF)F

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p5, v0}, Landroidx/collection/h;->a(FF)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    return-wide p0
.end method

.method public static final c(FFF)F
    .locals 2

    .line 1
    const v0, 0x3eaaaaab

    .line 2
    .line 3
    .line 4
    sub-float v1, p0, p1

    .line 5
    .line 6
    add-float/2addr v1, v0

    .line 7
    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    .line 9
    mul-float/2addr v0, p0

    .line 10
    sub-float/2addr p1, v0

    .line 11
    mul-float/2addr v1, p2

    .line 12
    add-float/2addr v1, p1

    .line 13
    mul-float/2addr v1, p2

    .line 14
    add-float/2addr v1, p0

    .line 15
    const/high16 p0, 0x40400000    # 3.0f

    .line 16
    .line 17
    mul-float/2addr v1, p0

    .line 18
    mul-float/2addr v1, p2

    .line 19
    return v1
.end method

.method private static final d(FFFFF)F
    .locals 2

    .line 1
    sub-float v0, p1, p2

    .line 2
    .line 3
    const/high16 v1, 0x40400000    # 3.0f

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    add-float/2addr p3, v0

    .line 7
    sub-float/2addr p3, p0

    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    .line 10
    mul-float/2addr v0, p1

    .line 11
    sub-float/2addr p2, v0

    .line 12
    add-float/2addr p2, p0

    .line 13
    mul-float/2addr p2, v1

    .line 14
    sub-float/2addr p1, p0

    .line 15
    mul-float/2addr p1, v1

    .line 16
    mul-float/2addr p3, p4

    .line 17
    add-float/2addr p3, p2

    .line 18
    mul-float/2addr p3, p4

    .line 19
    add-float/2addr p3, p1

    .line 20
    mul-float/2addr p3, p4

    .line 21
    add-float/2addr p3, p0

    .line 22
    return p3
.end method

.method public static final e(FFFF)F
    .locals 22

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
    float-to-double v3, v0

    .line 8
    float-to-double v5, v1

    .line 9
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    mul-double/2addr v5, v7

    .line 12
    sub-double v5, v3, v5

    .line 13
    .line 14
    float-to-double v9, v2

    .line 15
    add-double/2addr v5, v9

    .line 16
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 17
    .line 18
    mul-double/2addr v5, v9

    .line 19
    sub-float v11, v1, v0

    .line 20
    .line 21
    float-to-double v11, v11

    .line 22
    mul-double/2addr v11, v9

    .line 23
    neg-float v0, v0

    .line 24
    float-to-double v13, v0

    .line 25
    sub-float v0, v1, v2

    .line 26
    .line 27
    float-to-double v0, v0

    .line 28
    mul-double/2addr v0, v9

    .line 29
    add-double/2addr v13, v0

    .line 30
    move/from16 v0, p3

    .line 31
    .line 32
    float-to-double v0, v0

    .line 33
    add-double/2addr v13, v0

    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    sub-double v15, v13, v0

    .line 37
    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v15

    .line 42
    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmpg-double v2, v15, v17

    .line 48
    .line 49
    const v15, 0x3f800007    # 1.0000008f

    .line 50
    .line 51
    .line 52
    const/high16 v16, -0x4aa00000

    .line 53
    .line 54
    const/high16 v19, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/16 v20, 0x0

    .line 57
    .line 58
    const/high16 v21, 0x7fc00000    # Float.NaN

    .line 59
    .line 60
    if-gez v2, :cond_c

    .line 61
    .line 62
    sub-double v9, v5, v0

    .line 63
    .line 64
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    cmpg-double v2, v9, v17

    .line 69
    .line 70
    if-gez v2, :cond_4

    .line 71
    .line 72
    sub-double v0, v11, v0

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    cmpg-double v0, v0, v17

    .line 79
    .line 80
    if-gez v0, :cond_0

    .line 81
    .line 82
    return v21

    .line 83
    :cond_0
    neg-double v0, v3

    .line 84
    div-double/2addr v0, v11

    .line 85
    double-to-float v0, v0

    .line 86
    cmpg-float v1, v0, v20

    .line 87
    .line 88
    if-gez v1, :cond_2

    .line 89
    .line 90
    cmpl-float v0, v0, v16

    .line 91
    .line 92
    if-ltz v0, :cond_1

    .line 93
    .line 94
    move/from16 v19, v20

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move/from16 v19, v21

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    cmpl-float v1, v0, v19

    .line 101
    .line 102
    if-lez v1, :cond_3

    .line 103
    .line 104
    cmpg-float v0, v0, v15

    .line 105
    .line 106
    if-gtz v0, :cond_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    move/from16 v19, v0

    .line 110
    .line 111
    :goto_0
    return v19

    .line 112
    :cond_4
    mul-double v0, v11, v11

    .line 113
    .line 114
    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    .line 115
    .line 116
    mul-double/2addr v9, v5

    .line 117
    mul-double/2addr v9, v3

    .line 118
    sub-double/2addr v0, v9

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    mul-double/2addr v5, v7

    .line 124
    sub-double v2, v0, v11

    .line 125
    .line 126
    div-double/2addr v2, v5

    .line 127
    double-to-float v2, v2

    .line 128
    cmpg-float v3, v2, v20

    .line 129
    .line 130
    if-gez v3, :cond_6

    .line 131
    .line 132
    cmpl-float v2, v2, v16

    .line 133
    .line 134
    if-ltz v2, :cond_5

    .line 135
    .line 136
    move/from16 v2, v20

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    move/from16 v2, v21

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_6
    cmpl-float v3, v2, v19

    .line 143
    .line 144
    if-lez v3, :cond_7

    .line 145
    .line 146
    cmpg-float v2, v2, v15

    .line 147
    .line 148
    if-gtz v2, :cond_5

    .line 149
    .line 150
    move/from16 v2, v19

    .line 151
    .line 152
    :cond_7
    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_8

    .line 157
    .line 158
    return v2

    .line 159
    :cond_8
    neg-double v2, v11

    .line 160
    sub-double/2addr v2, v0

    .line 161
    div-double/2addr v2, v5

    .line 162
    double-to-float v0, v2

    .line 163
    cmpg-float v1, v0, v20

    .line 164
    .line 165
    if-gez v1, :cond_a

    .line 166
    .line 167
    cmpl-float v0, v0, v16

    .line 168
    .line 169
    if-ltz v0, :cond_9

    .line 170
    .line 171
    move/from16 v19, v20

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    move/from16 v19, v21

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_a
    cmpl-float v1, v0, v19

    .line 178
    .line 179
    if-lez v1, :cond_b

    .line 180
    .line 181
    cmpg-float v0, v0, v15

    .line 182
    .line 183
    if-gtz v0, :cond_9

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_b
    move/from16 v19, v0

    .line 187
    .line 188
    :goto_2
    return v19

    .line 189
    :cond_c
    div-double/2addr v5, v13

    .line 190
    div-double/2addr v11, v13

    .line 191
    div-double/2addr v3, v13

    .line 192
    mul-double v13, v11, v9

    .line 193
    .line 194
    mul-double v17, v5, v5

    .line 195
    .line 196
    sub-double v13, v13, v17

    .line 197
    .line 198
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    .line 199
    .line 200
    div-double v13, v13, v17

    .line 201
    .line 202
    mul-double/2addr v7, v5

    .line 203
    mul-double/2addr v7, v5

    .line 204
    mul-double/2addr v7, v5

    .line 205
    mul-double v17, v17, v5

    .line 206
    .line 207
    mul-double v17, v17, v11

    .line 208
    .line 209
    sub-double v7, v7, v17

    .line 210
    .line 211
    const-wide/high16 v11, 0x403b000000000000L    # 27.0

    .line 212
    .line 213
    mul-double/2addr v3, v11

    .line 214
    add-double/2addr v7, v3

    .line 215
    const-wide/high16 v2, 0x404b000000000000L    # 54.0

    .line 216
    .line 217
    div-double/2addr v7, v2

    .line 218
    mul-double v2, v7, v7

    .line 219
    .line 220
    mul-double v11, v13, v13

    .line 221
    .line 222
    mul-double/2addr v11, v13

    .line 223
    add-double/2addr v2, v11

    .line 224
    div-double/2addr v5, v9

    .line 225
    cmpg-double v0, v2, v0

    .line 226
    .line 227
    const/high16 v1, 0x40000000    # 2.0f

    .line 228
    .line 229
    if-gez v0, :cond_1a

    .line 230
    .line 231
    neg-double v2, v11

    .line 232
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 233
    .line 234
    .line 235
    move-result-wide v2

    .line 236
    neg-double v7, v7

    .line 237
    div-double/2addr v7, v2

    .line 238
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 239
    .line 240
    cmpg-double v0, v7, v11

    .line 241
    .line 242
    if-gez v0, :cond_d

    .line 243
    .line 244
    move-wide v7, v11

    .line 245
    :cond_d
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 246
    .line 247
    cmpl-double v0, v7, v11

    .line 248
    .line 249
    if-lez v0, :cond_e

    .line 250
    .line 251
    move-wide v7, v11

    .line 252
    :cond_e
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    .line 253
    .line 254
    .line 255
    move-result-wide v7

    .line 256
    double-to-float v0, v2

    .line 257
    invoke-static {v0}, Lq0/b;->a(F)F

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    mul-float/2addr v0, v1

    .line 262
    float-to-double v0, v0

    .line 263
    div-double v2, v7, v9

    .line 264
    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 266
    .line 267
    .line 268
    move-result-wide v2

    .line 269
    mul-double/2addr v2, v0

    .line 270
    sub-double/2addr v2, v5

    .line 271
    double-to-float v2, v2

    .line 272
    cmpg-float v3, v2, v20

    .line 273
    .line 274
    if-gez v3, :cond_10

    .line 275
    .line 276
    cmpl-float v2, v2, v16

    .line 277
    .line 278
    if-ltz v2, :cond_f

    .line 279
    .line 280
    move/from16 v2, v20

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_f
    move/from16 v2, v21

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_10
    cmpl-float v3, v2, v19

    .line 287
    .line 288
    if-lez v3, :cond_11

    .line 289
    .line 290
    cmpg-float v2, v2, v15

    .line 291
    .line 292
    if-gtz v2, :cond_f

    .line 293
    .line 294
    move/from16 v2, v19

    .line 295
    .line 296
    :cond_11
    :goto_3
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_12

    .line 301
    .line 302
    return v2

    .line 303
    :cond_12
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    add-double/2addr v2, v7

    .line 309
    div-double/2addr v2, v9

    .line 310
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 311
    .line 312
    .line 313
    move-result-wide v2

    .line 314
    mul-double/2addr v2, v0

    .line 315
    sub-double/2addr v2, v5

    .line 316
    double-to-float v2, v2

    .line 317
    cmpg-float v3, v2, v20

    .line 318
    .line 319
    if-gez v3, :cond_14

    .line 320
    .line 321
    cmpl-float v2, v2, v16

    .line 322
    .line 323
    if-ltz v2, :cond_13

    .line 324
    .line 325
    move/from16 v2, v20

    .line 326
    .line 327
    goto :goto_4

    .line 328
    :cond_13
    move/from16 v2, v21

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_14
    cmpl-float v3, v2, v19

    .line 332
    .line 333
    if-lez v3, :cond_15

    .line 334
    .line 335
    cmpg-float v2, v2, v15

    .line 336
    .line 337
    if-gtz v2, :cond_13

    .line 338
    .line 339
    move/from16 v2, v19

    .line 340
    .line 341
    :cond_15
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-nez v3, :cond_16

    .line 346
    .line 347
    return v2

    .line 348
    :cond_16
    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    add-double/2addr v7, v2

    .line 354
    div-double/2addr v7, v9

    .line 355
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    mul-double/2addr v0, v2

    .line 360
    sub-double/2addr v0, v5

    .line 361
    double-to-float v0, v0

    .line 362
    cmpg-float v1, v0, v20

    .line 363
    .line 364
    if-gez v1, :cond_18

    .line 365
    .line 366
    cmpl-float v0, v0, v16

    .line 367
    .line 368
    if-ltz v0, :cond_17

    .line 369
    .line 370
    move/from16 v19, v20

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_17
    move/from16 v19, v21

    .line 374
    .line 375
    goto :goto_5

    .line 376
    :cond_18
    cmpl-float v1, v0, v19

    .line 377
    .line 378
    if-lez v1, :cond_19

    .line 379
    .line 380
    cmpg-float v0, v0, v15

    .line 381
    .line 382
    if-gtz v0, :cond_17

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_19
    move/from16 v19, v0

    .line 386
    .line 387
    :goto_5
    return v19

    .line 388
    :cond_1a
    if-nez v0, :cond_22

    .line 389
    .line 390
    double-to-float v0, v7

    .line 391
    invoke-static {v0}, Lq0/b;->a(F)F

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    neg-float v0, v0

    .line 396
    mul-float/2addr v1, v0

    .line 397
    double-to-float v2, v5

    .line 398
    sub-float/2addr v1, v2

    .line 399
    cmpg-float v3, v1, v20

    .line 400
    .line 401
    if-gez v3, :cond_1c

    .line 402
    .line 403
    cmpl-float v1, v1, v16

    .line 404
    .line 405
    if-ltz v1, :cond_1b

    .line 406
    .line 407
    move/from16 v1, v20

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_1b
    move/from16 v1, v21

    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_1c
    cmpl-float v3, v1, v19

    .line 414
    .line 415
    if-lez v3, :cond_1d

    .line 416
    .line 417
    cmpg-float v1, v1, v15

    .line 418
    .line 419
    if-gtz v1, :cond_1b

    .line 420
    .line 421
    move/from16 v1, v19

    .line 422
    .line 423
    :cond_1d
    :goto_6
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-nez v3, :cond_1e

    .line 428
    .line 429
    return v1

    .line 430
    :cond_1e
    neg-float v0, v0

    .line 431
    sub-float/2addr v0, v2

    .line 432
    cmpg-float v1, v0, v20

    .line 433
    .line 434
    if-gez v1, :cond_20

    .line 435
    .line 436
    cmpl-float v0, v0, v16

    .line 437
    .line 438
    if-ltz v0, :cond_1f

    .line 439
    .line 440
    move/from16 v19, v20

    .line 441
    .line 442
    goto :goto_7

    .line 443
    :cond_1f
    move/from16 v19, v21

    .line 444
    .line 445
    goto :goto_7

    .line 446
    :cond_20
    cmpl-float v1, v0, v19

    .line 447
    .line 448
    if-lez v1, :cond_21

    .line 449
    .line 450
    cmpg-float v0, v0, v15

    .line 451
    .line 452
    if-gtz v0, :cond_1f

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_21
    move/from16 v19, v0

    .line 456
    .line 457
    :goto_7
    return v19

    .line 458
    :cond_22
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 459
    .line 460
    .line 461
    move-result-wide v0

    .line 462
    neg-double v2, v7

    .line 463
    add-double/2addr v2, v0

    .line 464
    double-to-float v2, v2

    .line 465
    invoke-static {v2}, Lq0/b;->a(F)F

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    add-double/2addr v7, v0

    .line 470
    double-to-float v0, v7

    .line 471
    invoke-static {v0}, Lq0/b;->a(F)F

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    sub-float/2addr v2, v0

    .line 476
    float-to-double v0, v2

    .line 477
    sub-double/2addr v0, v5

    .line 478
    double-to-float v0, v0

    .line 479
    cmpg-float v1, v0, v20

    .line 480
    .line 481
    if-gez v1, :cond_24

    .line 482
    .line 483
    cmpl-float v0, v0, v16

    .line 484
    .line 485
    if-ltz v0, :cond_23

    .line 486
    .line 487
    move/from16 v19, v20

    .line 488
    .line 489
    goto :goto_8

    .line 490
    :cond_23
    move/from16 v19, v21

    .line 491
    .line 492
    goto :goto_8

    .line 493
    :cond_24
    cmpl-float v1, v0, v19

    .line 494
    .line 495
    if-lez v1, :cond_25

    .line 496
    .line 497
    cmpg-float v0, v0, v15

    .line 498
    .line 499
    if-gtz v0, :cond_23

    .line 500
    .line 501
    goto :goto_8

    .line 502
    :cond_25
    move/from16 v19, v0

    .line 503
    .line 504
    :goto_8
    return v19
.end method

.method private static final f(FFF[FI)I
    .locals 17

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    float-to-double v3, v1

    .line 8
    move/from16 v1, p1

    .line 9
    .line 10
    float-to-double v5, v1

    .line 11
    move/from16 v1, p2

    .line 12
    .line 13
    float-to-double v7, v1

    .line 14
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 15
    .line 16
    mul-double v11, v5, v9

    .line 17
    .line 18
    sub-double v13, v3, v11

    .line 19
    .line 20
    add-double/2addr v13, v7

    .line 21
    const-wide/16 v15, 0x0

    .line 22
    .line 23
    cmpg-double v1, v13, v15

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    cmpg-double v1, v5, v7

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sub-double v3, v11, v7

    .line 34
    .line 35
    mul-double/2addr v7, v9

    .line 36
    sub-double/2addr v11, v7

    .line 37
    div-double/2addr v3, v11

    .line 38
    double-to-float v1, v3

    .line 39
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/graphics/b1;->g(F[FI)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    mul-double v9, v5, v5

    .line 45
    .line 46
    mul-double/2addr v7, v3

    .line 47
    sub-double/2addr v9, v7

    .line 48
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    neg-double v7, v7

    .line 53
    neg-double v3, v3

    .line 54
    add-double/2addr v3, v5

    .line 55
    add-double v5, v7, v3

    .line 56
    .line 57
    neg-double v5, v5

    .line 58
    div-double/2addr v5, v13

    .line 59
    double-to-float v1, v5

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/graphics/b1;->g(F[FI)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-double/2addr v7, v3

    .line 65
    div-double/2addr v7, v13

    .line 66
    double-to-float v3, v7

    .line 67
    add-int v4, v2, v1

    .line 68
    .line 69
    invoke-static {v3, v0, v4}, Landroidx/compose/ui/graphics/b1;->g(F[FI)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-int/2addr v1, v3

    .line 74
    const/4 v3, 0x1

    .line 75
    if-le v1, v3, :cond_3

    .line 76
    .line 77
    aget v3, v0, v2

    .line 78
    .line 79
    add-int/lit8 v4, v2, 0x1

    .line 80
    .line 81
    aget v5, v0, v4

    .line 82
    .line 83
    cmpl-float v6, v3, v5

    .line 84
    .line 85
    if-lez v6, :cond_2

    .line 86
    .line 87
    aput v5, v0, v2

    .line 88
    .line 89
    aput v3, v0, v4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    cmpg-float v0, v3, v5

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    add-int/lit8 v0, v1, -0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    :goto_0
    move v0, v1

    .line 100
    :goto_1
    return v0
.end method

.method private static final g(F[FI)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p0, v0

    .line 3
    .line 4
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 5
    .line 6
    if-gez v1, :cond_1

    .line 7
    .line 8
    const/high16 v1, -0x4aa00000

    .line 9
    .line 10
    cmpl-float p0, p0, v1

    .line 11
    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    :goto_0
    move p0, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move p0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float v1, p0, v0

    .line 21
    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    const v1, 0x3f800007    # 1.0000008f

    .line 25
    .line 26
    .line 27
    cmpg-float p0, p0, v1

    .line 28
    .line 29
    if-gtz p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    aput p0, p1, p2

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    xor-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    return p0
.end method
