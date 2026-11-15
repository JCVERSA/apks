.class public abstract Landroidx/media3/container/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/g$b;,
        Landroidx/media3/container/g$m;,
        Landroidx/media3/container/g$k;,
        Landroidx/media3/container/g$c;,
        Landroidx/media3/container/g$d;,
        Landroidx/media3/container/g$f;,
        Landroidx/media3/container/g$j;,
        Landroidx/media3/container/g$a;,
        Landroidx/media3/container/g$h;,
        Landroidx/media3/container/g$e;,
        Landroidx/media3/container/g$i;,
        Landroidx/media3/container/g$l;,
        Landroidx/media3/container/g$g;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/media3/container/g;->a:[B

    .line 8
    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/media3/container/g;->b:[F

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/media3/container/g;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    sput-object v0, Landroidx/media3/container/g;->d:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static A([BII)Landroidx/media3/container/g$l;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/container/g;->B([BII)Landroidx/media3/container/g$l;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static B([BII)Landroidx/media3/container/g$l;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    new-instance v0, Landroidx/media3/container/g$l;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/g$l;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static C([BII)Landroidx/media3/container/g$m;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/container/g;->D([BII)Landroidx/media3/container/g$m;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static D([BII)Landroidx/media3/container/g$m;
    .locals 32

    .line 1
    new-instance v0, Landroidx/media3/container/h;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/h;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/container/h;->f(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Landroidx/media3/container/h;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/container/h;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v2, 0x56

    .line 31
    .line 32
    const/16 v7, 0x2c

    .line 33
    .line 34
    const/16 v8, 0xf4

    .line 35
    .line 36
    const/16 v9, 0x7a

    .line 37
    .line 38
    const/16 v10, 0x6e

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    const/16 v12, 0x10

    .line 42
    .line 43
    const/4 v13, 0x1

    .line 44
    const/16 v15, 0x64

    .line 45
    .line 46
    if-eq v3, v15, :cond_1

    .line 47
    .line 48
    if-eq v3, v10, :cond_1

    .line 49
    .line 50
    if-eq v3, v9, :cond_1

    .line 51
    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_1

    .line 55
    .line 56
    const/16 v14, 0x53

    .line 57
    .line 58
    if-eq v3, v14, :cond_1

    .line 59
    .line 60
    if-eq v3, v2, :cond_1

    .line 61
    .line 62
    const/16 v14, 0x76

    .line 63
    .line 64
    if-eq v3, v14, :cond_1

    .line 65
    .line 66
    const/16 v14, 0x80

    .line 67
    .line 68
    if-eq v3, v14, :cond_1

    .line 69
    .line 70
    const/16 v14, 0x8a

    .line 71
    .line 72
    if-ne v3, v14, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v14, v13

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-ne v14, v11, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 101
    .line 102
    .line 103
    move-result v18

    .line 104
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v19

    .line 111
    if-eqz v19, :cond_6

    .line 112
    .line 113
    if-eq v14, v11, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const/16 v19, 0xc

    .line 117
    .line 118
    move/from16 v1, v19

    .line 119
    .line 120
    :goto_2
    const/4 v8, 0x0

    .line 121
    :goto_3
    if-ge v8, v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 124
    .line 125
    .line 126
    move-result v19

    .line 127
    if-eqz v19, :cond_5

    .line 128
    .line 129
    const/4 v9, 0x6

    .line 130
    if-ge v8, v9, :cond_4

    .line 131
    .line 132
    move v9, v12

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v9, 0x40

    .line 135
    .line 136
    :goto_4
    invoke-static {v0, v9}, Landroidx/media3/container/g;->J(Landroidx/media3/container/h;I)V

    .line 137
    .line 138
    .line 139
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    const/16 v9, 0x7a

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    :goto_5
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/lit8 v1, v1, 0x4

    .line 149
    .line 150
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    add-int/lit8 v8, v8, 0x4

    .line 161
    .line 162
    move/from16 v21, v3

    .line 163
    .line 164
    move/from16 v24, v8

    .line 165
    .line 166
    :goto_6
    const/16 v25, 0x0

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_7
    if-ne v9, v13, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-virtual {v0}, Landroidx/media3/container/h;->h()I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Landroidx/media3/container/h;->h()I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    move/from16 v21, v3

    .line 186
    .line 187
    int-to-long v2, v10

    .line 188
    move/from16 v24, v8

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    :goto_7
    int-to-long v7, v10

    .line 192
    cmp-long v7, v7, v2

    .line 193
    .line 194
    if-gez v7, :cond_8

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 197
    .line 198
    .line 199
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    move/from16 v25, v24

    .line 203
    .line 204
    const/16 v24, 0x0

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_9
    move/from16 v21, v3

    .line 208
    .line 209
    const/16 v24, 0x0

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    add-int/2addr v2, v13

    .line 224
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    add-int/2addr v3, v13

    .line 229
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 230
    .line 231
    .line 232
    move-result v26

    .line 233
    rsub-int/lit8 v8, v26, 0x2

    .line 234
    .line 235
    mul-int/2addr v8, v3

    .line 236
    if-nez v26, :cond_a

    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 239
    .line 240
    .line 241
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 242
    .line 243
    .line 244
    mul-int/2addr v2, v12

    .line 245
    mul-int/2addr v8, v12

    .line 246
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_e

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 257
    .line 258
    .line 259
    move-result v27

    .line 260
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 261
    .line 262
    .line 263
    move-result v28

    .line 264
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 265
    .line 266
    .line 267
    move-result v29

    .line 268
    if-nez v14, :cond_b

    .line 269
    .line 270
    rsub-int/lit8 v14, v26, 0x2

    .line 271
    .line 272
    move/from16 v30, v13

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_b
    if-ne v14, v11, :cond_c

    .line 276
    .line 277
    move/from16 v30, v13

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    const/16 v30, 0x2

    .line 281
    .line 282
    :goto_9
    if-ne v14, v13, :cond_d

    .line 283
    .line 284
    const/4 v14, 0x2

    .line 285
    goto :goto_a

    .line 286
    :cond_d
    move v14, v13

    .line 287
    :goto_a
    rsub-int/lit8 v31, v26, 0x2

    .line 288
    .line 289
    mul-int v14, v14, v31

    .line 290
    .line 291
    :goto_b
    add-int v3, v3, v27

    .line 292
    .line 293
    mul-int v3, v3, v30

    .line 294
    .line 295
    sub-int/2addr v2, v3

    .line 296
    add-int v28, v28, v29

    .line 297
    .line 298
    mul-int v28, v28, v14

    .line 299
    .line 300
    sub-int v8, v8, v28

    .line 301
    .line 302
    :cond_e
    move v14, v8

    .line 303
    move/from16 v3, v21

    .line 304
    .line 305
    move v8, v2

    .line 306
    const/16 v2, 0x2c

    .line 307
    .line 308
    if-eq v3, v2, :cond_f

    .line 309
    .line 310
    const/16 v2, 0x56

    .line 311
    .line 312
    if-eq v3, v2, :cond_f

    .line 313
    .line 314
    if-eq v3, v15, :cond_f

    .line 315
    .line 316
    const/16 v2, 0x6e

    .line 317
    .line 318
    if-eq v3, v2, :cond_f

    .line 319
    .line 320
    const/16 v2, 0x7a

    .line 321
    .line 322
    if-eq v3, v2, :cond_f

    .line 323
    .line 324
    const/16 v2, 0xf4

    .line 325
    .line 326
    if-ne v3, v2, :cond_10

    .line 327
    .line 328
    :cond_f
    and-int/lit8 v2, v4, 0x10

    .line 329
    .line 330
    if-eqz v2, :cond_10

    .line 331
    .line 332
    const/4 v2, 0x0

    .line 333
    goto :goto_c

    .line 334
    :cond_10
    move v2, v12

    .line 335
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 336
    .line 337
    .line 338
    move-result v15

    .line 339
    const/16 v19, -0x1

    .line 340
    .line 341
    const/high16 v20, 0x3f800000    # 1.0f

    .line 342
    .line 343
    if-eqz v15, :cond_1f

    .line 344
    .line 345
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-eqz v15, :cond_13

    .line 350
    .line 351
    const/16 v15, 0x8

    .line 352
    .line 353
    invoke-virtual {v0, v15}, Landroidx/media3/container/h;->f(I)I

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    const/16 v15, 0xff

    .line 358
    .line 359
    if-ne v10, v15, :cond_11

    .line 360
    .line 361
    invoke-virtual {v0, v12}, Landroidx/media3/container/h;->f(I)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    invoke-virtual {v0, v12}, Landroidx/media3/container/h;->f(I)I

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v10, :cond_13

    .line 370
    .line 371
    if-eqz v12, :cond_13

    .line 372
    .line 373
    int-to-float v10, v10

    .line 374
    int-to-float v12, v12

    .line 375
    div-float v20, v10, v12

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_11
    sget-object v12, Landroidx/media3/container/g;->b:[F

    .line 379
    .line 380
    array-length v15, v12

    .line 381
    if-ge v10, v15, :cond_12

    .line 382
    .line 383
    aget v20, v12, v10

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v15, "Unexpected aspect_ratio_idc value: "

    .line 392
    .line 393
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    const-string v12, "NalUnitUtil"

    .line 404
    .line 405
    invoke-static {v12, v10}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_13
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    if-eqz v10, :cond_14

    .line 413
    .line 414
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 415
    .line 416
    .line 417
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    if-eqz v10, :cond_17

    .line 422
    .line 423
    invoke-virtual {v0, v11}, Landroidx/media3/container/h;->m(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    if-eqz v10, :cond_15

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_15
    const/4 v13, 0x2

    .line 434
    :goto_e
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    if-eqz v10, :cond_16

    .line 439
    .line 440
    const/16 v10, 0x8

    .line 441
    .line 442
    invoke-virtual {v0, v10}, Landroidx/media3/container/h;->f(I)I

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    invoke-virtual {v0, v10}, Landroidx/media3/container/h;->f(I)I

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    invoke-virtual {v0, v10}, Landroidx/media3/container/h;->m(I)V

    .line 451
    .line 452
    .line 453
    invoke-static {v11}, Landroidx/media3/common/i;->j(I)I

    .line 454
    .line 455
    .line 456
    move-result v19

    .line 457
    invoke-static {v12}, Landroidx/media3/common/i;->k(I)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    goto :goto_f

    .line 462
    :cond_16
    move/from16 v10, v19

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_17
    move/from16 v10, v19

    .line 466
    .line 467
    move v13, v10

    .line 468
    :goto_f
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    if-eqz v11, :cond_18

    .line 473
    .line 474
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 478
    .line 479
    .line 480
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 481
    .line 482
    .line 483
    move-result v11

    .line 484
    if-eqz v11, :cond_19

    .line 485
    .line 486
    const/16 v11, 0x41

    .line 487
    .line 488
    invoke-virtual {v0, v11}, Landroidx/media3/container/h;->m(I)V

    .line 489
    .line 490
    .line 491
    :cond_19
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-eqz v11, :cond_1a

    .line 496
    .line 497
    invoke-static {v0}, Landroidx/media3/container/g;->I(Landroidx/media3/container/h;)V

    .line 498
    .line 499
    .line 500
    :cond_1a
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 501
    .line 502
    .line 503
    move-result v12

    .line 504
    if-eqz v12, :cond_1b

    .line 505
    .line 506
    invoke-static {v0}, Landroidx/media3/container/g;->I(Landroidx/media3/container/h;)V

    .line 507
    .line 508
    .line 509
    :cond_1b
    if-nez v11, :cond_1c

    .line 510
    .line 511
    if-eqz v12, :cond_1d

    .line 512
    .line 513
    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 514
    .line 515
    .line 516
    :cond_1d
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_1e

    .line 524
    .line 525
    invoke-virtual {v0}, Landroidx/media3/container/h;->l()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 545
    .line 546
    .line 547
    :cond_1e
    move/from16 v22, v2

    .line 548
    .line 549
    move/from16 v21, v10

    .line 550
    .line 551
    move/from16 v10, v20

    .line 552
    .line 553
    move/from16 v20, v13

    .line 554
    .line 555
    goto :goto_10

    .line 556
    :cond_1f
    move/from16 v22, v2

    .line 557
    .line 558
    move/from16 v21, v19

    .line 559
    .line 560
    move/from16 v10, v20

    .line 561
    .line 562
    move/from16 v20, v21

    .line 563
    .line 564
    :goto_10
    new-instance v0, Landroidx/media3/container/g$m;

    .line 565
    .line 566
    move-object v2, v0

    .line 567
    move/from16 v23, v9

    .line 568
    .line 569
    move v9, v14

    .line 570
    move/from16 v11, v17

    .line 571
    .line 572
    move/from16 v12, v18

    .line 573
    .line 574
    move/from16 v13, v16

    .line 575
    .line 576
    move/from16 v14, v26

    .line 577
    .line 578
    move v15, v1

    .line 579
    move/from16 v16, v23

    .line 580
    .line 581
    move/from16 v17, v24

    .line 582
    .line 583
    move/from16 v18, v25

    .line 584
    .line 585
    invoke-direct/range {v2 .. v22}, Landroidx/media3/container/g$m;-><init>(IIIIIIIFIIZZIIIZIIII)V

    .line 586
    .line 587
    .line 588
    return-object v0
.end method

.method private static E(Landroidx/media3/container/h;I[I[I[[Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_1
    aget v5, p2, v1

    .line 12
    .line 13
    if-ge v4, v5, :cond_5

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-nez v4, :cond_1

    .line 25
    .line 26
    move v5, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    move v5, v3

    .line 29
    :goto_2
    if-eqz v5, :cond_4

    .line 30
    .line 31
    move v5, v3

    .line 32
    :goto_3
    aget v6, p3, v1

    .line 33
    .line 34
    if-ge v5, v6, :cond_3

    .line 35
    .line 36
    aget-object v6, p4, v1

    .line 37
    .line 38
    aget-boolean v6, v6, v5

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 43
    .line 44
    .line 45
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 52
    .line 53
    .line 54
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    return-void
.end method

.method private static F(Landroidx/media3/container/h;ZI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x13

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->m(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->m(I)V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->m(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    const/16 v3, 0xf

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->m(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    move p1, v0

    .line 48
    move v1, p1

    .line 49
    move v2, v1

    .line 50
    :goto_1
    move v3, v0

    .line 51
    :goto_2
    if-gt v3, p2, :cond_b

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :cond_5
    if-eqz v4, :cond_6

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 66
    .line 67
    .line 68
    move v4, v0

    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_3
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    move v4, v0

    .line 82
    :goto_4
    add-int v5, p1, v1

    .line 83
    .line 84
    move v6, v0

    .line 85
    :goto_5
    if-ge v6, v5, :cond_a

    .line 86
    .line 87
    move v7, v0

    .line 88
    :goto_6
    if-gt v7, v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 102
    .line 103
    .line 104
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_b
    return-void
.end method

.method private static G(Landroidx/media3/container/h;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    move v3, v0

    .line 7
    :goto_1
    const/4 v4, 0x6

    .line 8
    if-ge v3, v4, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    .line 22
    .line 23
    add-int/2addr v4, v2

    .line 24
    shl-int v4, v5, v4

    .line 25
    .line 26
    const/16 v6, 0x40

    .line 27
    .line 28
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-le v1, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/media3/container/h;->h()I

    .line 35
    .line 36
    .line 37
    :cond_1
    move v6, v0

    .line 38
    :goto_2
    if-ge v6, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/container/h;->h()I

    .line 41
    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    const/4 v4, 0x3

    .line 47
    if-ne v1, v4, :cond_3

    .line 48
    .line 49
    move v5, v4

    .line 50
    :cond_3
    add-int/2addr v3, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return-void
.end method

.method private static H(Landroidx/media3/container/h;)V
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    new-array v3, v1, [I

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    move v6, v1

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v6, v0, :cond_11

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v6, :cond_c

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_c

    .line 23
    .line 24
    add-int v8, v4, v5

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    add-int/2addr v10, v7

    .line 35
    mul-int/lit8 v9, v9, 0x2

    .line 36
    .line 37
    rsub-int/lit8 v9, v9, 0x1

    .line 38
    .line 39
    mul-int/2addr v9, v10

    .line 40
    add-int/lit8 v10, v8, 0x1

    .line 41
    .line 42
    new-array v11, v10, [Z

    .line 43
    .line 44
    move v12, v1

    .line 45
    :goto_1
    if-gt v12, v8, :cond_1

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    if-nez v13, :cond_0

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    aput-boolean v13, v11, v12

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_0
    aput-boolean v7, v11, v12

    .line 61
    .line 62
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-array v7, v10, [I

    .line 66
    .line 67
    new-array v10, v10, [I

    .line 68
    .line 69
    add-int/lit8 v12, v5, -0x1

    .line 70
    .line 71
    move v13, v1

    .line 72
    :goto_3
    if-ltz v12, :cond_3

    .line 73
    .line 74
    aget v14, v3, v12

    .line 75
    .line 76
    add-int/2addr v14, v9

    .line 77
    if-gez v14, :cond_2

    .line 78
    .line 79
    add-int v15, v4, v12

    .line 80
    .line 81
    aget-boolean v15, v11, v15

    .line 82
    .line 83
    if-eqz v15, :cond_2

    .line 84
    .line 85
    add-int/lit8 v15, v13, 0x1

    .line 86
    .line 87
    aput v14, v7, v13

    .line 88
    .line 89
    move v13, v15

    .line 90
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    if-gez v9, :cond_4

    .line 94
    .line 95
    aget-boolean v12, v11, v8

    .line 96
    .line 97
    if-eqz v12, :cond_4

    .line 98
    .line 99
    add-int/lit8 v12, v13, 0x1

    .line 100
    .line 101
    aput v9, v7, v13

    .line 102
    .line 103
    move v13, v12

    .line 104
    :cond_4
    move v12, v1

    .line 105
    :goto_4
    if-ge v12, v4, :cond_6

    .line 106
    .line 107
    aget v14, v2, v12

    .line 108
    .line 109
    add-int/2addr v14, v9

    .line 110
    if-gez v14, :cond_5

    .line 111
    .line 112
    aget-boolean v15, v11, v12

    .line 113
    .line 114
    if-eqz v15, :cond_5

    .line 115
    .line 116
    add-int/lit8 v15, v13, 0x1

    .line 117
    .line 118
    aput v14, v7, v13

    .line 119
    .line 120
    move v13, v15

    .line 121
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    add-int/lit8 v12, v4, -0x1

    .line 129
    .line 130
    move v14, v1

    .line 131
    :goto_5
    if-ltz v12, :cond_8

    .line 132
    .line 133
    aget v15, v2, v12

    .line 134
    .line 135
    add-int/2addr v15, v9

    .line 136
    if-lez v15, :cond_7

    .line 137
    .line 138
    aget-boolean v16, v11, v12

    .line 139
    .line 140
    if-eqz v16, :cond_7

    .line 141
    .line 142
    add-int/lit8 v16, v14, 0x1

    .line 143
    .line 144
    aput v15, v10, v14

    .line 145
    .line 146
    move/from16 v14, v16

    .line 147
    .line 148
    :cond_7
    add-int/lit8 v12, v12, -0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    if-lez v9, :cond_9

    .line 152
    .line 153
    aget-boolean v2, v11, v8

    .line 154
    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    add-int/lit8 v2, v14, 0x1

    .line 158
    .line 159
    aput v9, v10, v14

    .line 160
    .line 161
    move v14, v2

    .line 162
    :cond_9
    move v2, v1

    .line 163
    :goto_6
    if-ge v2, v5, :cond_b

    .line 164
    .line 165
    aget v8, v3, v2

    .line 166
    .line 167
    add-int/2addr v8, v9

    .line 168
    if-lez v8, :cond_a

    .line 169
    .line 170
    add-int v12, v4, v2

    .line 171
    .line 172
    aget-boolean v12, v11, v12

    .line 173
    .line 174
    if-eqz v12, :cond_a

    .line 175
    .line 176
    add-int/lit8 v12, v14, 0x1

    .line 177
    .line 178
    aput v8, v10, v14

    .line 179
    .line 180
    move v14, v12

    .line 181
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move-object v3, v2

    .line 189
    move-object v2, v7

    .line 190
    move v4, v13

    .line 191
    move v5, v14

    .line 192
    goto :goto_b

    .line 193
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    new-array v4, v2, [I

    .line 202
    .line 203
    move v5, v1

    .line 204
    :goto_7
    if-ge v5, v2, :cond_e

    .line 205
    .line 206
    if-lez v5, :cond_d

    .line 207
    .line 208
    add-int/lit8 v8, v5, -0x1

    .line 209
    .line 210
    aget v8, v4, v8

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_d
    move v8, v1

    .line 214
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    add-int/2addr v9, v7

    .line 219
    sub-int/2addr v8, v9

    .line 220
    aput v8, v4, v5

    .line 221
    .line 222
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->l()V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_e
    new-array v5, v3, [I

    .line 229
    .line 230
    move v8, v1

    .line 231
    :goto_9
    if-ge v8, v3, :cond_10

    .line 232
    .line 233
    if-lez v8, :cond_f

    .line 234
    .line 235
    add-int/lit8 v9, v8, -0x1

    .line 236
    .line 237
    aget v9, v5, v9

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_f
    move v9, v1

    .line 241
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    add-int/2addr v10, v7

    .line 246
    add-int/2addr v9, v10

    .line 247
    aput v9, v5, v8

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->l()V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_10
    move-object/from16 v17, v4

    .line 256
    .line 257
    move v4, v2

    .line 258
    move-object/from16 v2, v17

    .line 259
    .line 260
    move-object/from16 v18, v5

    .line 261
    .line 262
    move v5, v3

    .line 263
    move-object/from16 v3, v18

    .line 264
    .line 265
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_11
    return-void
.end method

.method private static I(Landroidx/media3/container/h;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/media3/container/h;->m(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->m(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static J(Landroidx/media3/container/h;I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-ge v2, p1, :cond_2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/container/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    add-int/lit16 v0, v0, 0x100

    .line 16
    .line 17
    rem-int/lit16 v0, v0, 0x100

    .line 18
    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v0

    .line 23
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method private static K(Landroidx/media3/container/h;I[[Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->m(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    if-ge v1, p1, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    aget-object v4, p2, v1

    .line 25
    .line 26
    aget-boolean v4, v4, v3

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->m(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_3
    if-gt v2, p1, :cond_4

    .line 44
    .line 45
    const/16 p2, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/media3/container/h;->m(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    return-void
.end method

.method public static L([BI)I
    .locals 8

    .line 1
    sget-object v0, Landroidx/media3/container/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, v2, p1}, Landroidx/media3/container/g;->g([BII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v2, p1, :cond_0

    .line 14
    .line 15
    sget-object v4, Landroidx/media3/container/g;->d:[I

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-gt v5, v3, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    mul-int/lit8 v5, v5, 0x2

    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sput-object v4, Landroidx/media3/container/g;->d:[I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :goto_1
    sget-object v4, Landroidx/media3/container/g;->d:[I

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    aput v2, v4, v3

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x3

    .line 39
    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sub-int/2addr p1, v3

    .line 43
    move v2, v1

    .line 44
    move v4, v2

    .line 45
    move v5, v4

    .line 46
    :goto_2
    if-ge v2, v3, :cond_3

    .line 47
    .line 48
    sget-object v6, Landroidx/media3/container/g;->d:[I

    .line 49
    .line 50
    aget v6, v6, v2

    .line 51
    .line 52
    sub-int/2addr v6, v5

    .line 53
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    add-int/2addr v4, v6

    .line 57
    add-int/lit8 v7, v4, 0x1

    .line 58
    .line 59
    aput-byte v1, p0, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x2

    .line 62
    .line 63
    aput-byte v1, p0, v7

    .line 64
    .line 65
    add-int/lit8 v6, v6, 0x3

    .line 66
    .line 67
    add-int/2addr v5, v6

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    sub-int v1, p1, v4

    .line 72
    .line 73
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method private static a(IIII)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    :cond_0
    add-int/2addr p2, p3

    .line 6
    mul-int/2addr v0, p2

    .line 7
    sub-int/2addr p0, v0

    .line 8
    return p0
.end method

.method private static b(IIII)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :cond_1
    :goto_0
    add-int/2addr p2, p3

    .line 10
    mul-int/2addr v0, p2

    .line 11
    sub-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public static c([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aput-boolean v0, p0, v1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput-boolean v0, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method private static d(Landroidx/media3/container/h;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->m(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v1, v0, v2}, Landroidx/media3/container/g;->q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget v0, p0, Landroidx/media3/container/g$c;->a:I

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/media3/container/g$c;->b:Z

    .line 22
    .line 23
    iget v2, p0, Landroidx/media3/container/g$c;->c:I

    .line 24
    .line 25
    iget v3, p0, Landroidx/media3/container/g$c;->d:I

    .line 26
    .line 27
    iget-object v4, p0, Landroidx/media3/container/g$c;->e:[I

    .line 28
    .line 29
    iget v5, p0, Landroidx/media3/container/g$c;->f:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/j;->f(IZII[II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static e([BII[Z)I
    .locals 8

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_1
    aget-boolean v3, p3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-static {p3}, Landroidx/media3/container/g;->c([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    aget-boolean v4, p3, v2

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    aget-byte v4, p0, p1

    .line 34
    .line 35
    if-ne v4, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p3}, Landroidx/media3/container/g;->c([Z)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_3
    if-le v0, v3, :cond_4

    .line 43
    .line 44
    aget-boolean v4, p3, v3

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    aget-byte v4, p0, p1

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_4

    .line 57
    .line 58
    invoke-static {p3}, Landroidx/media3/container/g;->c([Z)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    :goto_1
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    aget-byte v5, p0, p1

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xfe

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 76
    .line 77
    aget-byte v7, p0, v6

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    add-int/lit8 v7, p1, -0x1

    .line 82
    .line 83
    aget-byte v7, p0, v7

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    if-ne v5, v2, :cond_6

    .line 88
    .line 89
    invoke-static {p3}, Landroidx/media3/container/g;->c([Z)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-le v0, v3, :cond_9

    .line 99
    .line 100
    add-int/lit8 p1, p2, -0x3

    .line 101
    .line 102
    aget-byte p1, p0, p1

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    add-int/lit8 p1, p2, -0x2

    .line 107
    .line 108
    aget-byte p1, p0, p1

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, p0, v4

    .line 113
    .line 114
    if-ne p1, v2, :cond_8

    .line 115
    .line 116
    :goto_3
    move p1, v2

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move p1, v1

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    if-ne v0, v3, :cond_a

    .line 121
    .line 122
    aget-boolean p1, p3, v3

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    add-int/lit8 p1, p2, -0x2

    .line 127
    .line 128
    aget-byte p1, p0, p1

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    aget-byte p1, p0, v4

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    aget-boolean p1, p3, v2

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    aget-byte p1, p0, v4

    .line 142
    .line 143
    if-ne p1, v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    aput-boolean p1, p3, v1

    .line 147
    .line 148
    if-le v0, v2, :cond_c

    .line 149
    .line 150
    add-int/lit8 p1, p2, -0x2

    .line 151
    .line 152
    aget-byte p1, p0, p1

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    aget-byte p1, p0, v4

    .line 157
    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    :goto_5
    move p1, v2

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    move p1, v1

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    aget-boolean p1, p3, v3

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    aget-byte p1, p0, v4

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :goto_6
    aput-boolean p1, p3, v2

    .line 174
    .line 175
    aget-byte p0, p0, v4

    .line 176
    .line 177
    if-nez p0, :cond_d

    .line 178
    .line 179
    move v1, v2

    .line 180
    :cond_d
    aput-boolean v1, p3, v3

    .line 181
    .line 182
    return p2
.end method

.method private static f([B)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    array-length v3, p0

    .line 13
    invoke-static {p0, v2, v3, v0}, Landroidx/media3/container/g;->e([BII[Z)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    array-length v3, p0

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static g([BII)I
    .locals 2

    .line 1
    :goto_0
    add-int/lit8 v0, p2, -0x2

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    aget-byte v0, p0, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x2

    .line 16
    .line 17
    aget-byte v0, p0, v0

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return p2
.end method

.method public static h(Ljava/util/List;)Ljava/lang/String;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, [B

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x3

    .line 17
    if-le v3, v4, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/media3/container/g;->f([B)Lcom/google/common/collect/ImmutableList;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move v6, v0

    .line 24
    :goto_1
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-ge v6, v7, :cond_1

    .line 29
    .line 30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    add-int/2addr v7, v4

    .line 41
    if-ge v7, v3, :cond_0

    .line 42
    .line 43
    new-instance v7, Landroidx/media3/container/h;

    .line 44
    .line 45
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    add-int/2addr v8, v4

    .line 56
    invoke-direct {v7, v2, v8, v3}, Landroidx/media3/container/h;-><init>([BII)V

    .line 57
    .line 58
    .line 59
    invoke-static {v7}, Landroidx/media3/container/g;->p(Landroidx/media3/container/h;)Landroidx/media3/container/g$b;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget v9, v8, Landroidx/media3/container/g$b;->a:I

    .line 64
    .line 65
    const/16 v10, 0x21

    .line 66
    .line 67
    if-ne v9, v10, :cond_0

    .line 68
    .line 69
    iget v8, v8, Landroidx/media3/container/g$b;->b:I

    .line 70
    .line 71
    if-nez v8, :cond_0

    .line 72
    .line 73
    invoke-static {v7}, Landroidx/media3/container/g;->d(Landroidx/media3/container/h;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static i([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7e

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public static j([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x1f

    .line 6
    .line 7
    return p0
.end method

.method public static k([BIILandroidx/media3/common/r;)Z
    .locals 2

    .line 1
    iget-object v0, p3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/media3/container/g;->l(B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p3, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "video/hevc"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/container/g;->m([BIILandroidx/media3/common/r;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public static l(B)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x60

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    and-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne p0, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    const/16 v2, 0xe

    .line 21
    .line 22
    if-ne p0, v2, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    return v1
.end method

.method private static m([BIILandroidx/media3/common/r;)Z
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/container/h;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/h;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/container/g;->p(Landroidx/media3/container/h;)Landroidx/media3/container/g$b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p1, p0, Landroidx/media3/container/g$b;->a:I

    .line 12
    .line 13
    const/16 p2, 0x23

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/16 p2, 0xe

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-gt p1, p2, :cond_1

    .line 23
    .line 24
    rem-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p0, p0, Landroidx/media3/container/g$b;->c:I

    .line 29
    .line 30
    iget p1, p3, Landroidx/media3/common/r;->D:I

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    if-ne p0, p1, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    return v1
.end method

.method public static n(Landroidx/media3/common/r;B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/media3/common/y;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    and-int/lit8 v0, p1, 0x1f

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "video/hevc"

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v1}, Landroidx/media3/common/y;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    :cond_2
    and-int/lit8 p0, p1, 0x7e

    .line 44
    .line 45
    shr-int/2addr p0, v2

    .line 46
    const/16 p1, 0x27

    .line 47
    .line 48
    if-ne p0, p1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    :cond_4
    :goto_0
    return v2
.end method

.method public static o(Landroidx/media3/common/r;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "video/hevc"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v1}, Landroidx/media3/common/y;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 35
    return p0
.end method

.method private static p(Landroidx/media3/container/h;)Landroidx/media3/container/g$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Landroidx/media3/container/h;->f(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    new-instance v2, Landroidx/media3/container/g$b;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0, p0}, Landroidx/media3/container/g$b;-><init>(III)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method

.method private static q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Landroidx/media3/container/h;->f(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-virtual {v0, v9}, Landroidx/media3/container/h;->f(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    move v10, v7

    .line 30
    move v11, v10

    .line 31
    :goto_0
    const/16 v12, 0x20

    .line 32
    .line 33
    if-ge v10, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    shl-int/2addr v12, v10

    .line 43
    or-int/2addr v11, v12

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v10, v7

    .line 48
    :goto_1
    if-ge v10, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Landroidx/media3/container/h;->f(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    aput v12, v4, v10

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v13, v2

    .line 60
    :goto_2
    move-object/from16 v17, v4

    .line 61
    .line 62
    move v14, v8

    .line 63
    move v15, v9

    .line 64
    move/from16 v16, v11

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget v3, v2, Landroidx/media3/container/g$c;->a:I

    .line 70
    .line 71
    iget-boolean v8, v2, Landroidx/media3/container/g$c;->b:Z

    .line 72
    .line 73
    iget v9, v2, Landroidx/media3/container/g$c;->c:I

    .line 74
    .line 75
    iget v11, v2, Landroidx/media3/container/g$c;->d:I

    .line 76
    .line 77
    iget-object v4, v2, Landroidx/media3/container/g$c;->e:[I

    .line 78
    .line 79
    move v13, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object/from16 v17, v4

    .line 82
    .line 83
    move v13, v7

    .line 84
    move v14, v13

    .line 85
    move v15, v14

    .line 86
    move/from16 v16, v15

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0, v6}, Landroidx/media3/container/h;->f(I)I

    .line 89
    .line 90
    .line 91
    move-result v18

    .line 92
    move v2, v7

    .line 93
    :goto_4
    if-ge v7, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x58

    .line 102
    .line 103
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x8

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0, v2}, Landroidx/media3/container/h;->m(I)V

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    sub-int/2addr v6, v1

    .line 120
    mul-int/2addr v6, v5

    .line 121
    invoke-virtual {v0, v6}, Landroidx/media3/container/h;->m(I)V

    .line 122
    .line 123
    .line 124
    :cond_8
    new-instance v0, Landroidx/media3/container/g$c;

    .line 125
    .line 126
    move-object v12, v0

    .line 127
    invoke-direct/range {v12 .. v18}, Landroidx/media3/container/g$c;-><init>(IZII[II)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method

.method private static r(Landroidx/media3/container/h;)Landroidx/media3/container/g$e;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Landroidx/media3/container/h;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x4

    .line 29
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->f(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0, v3}, Landroidx/media3/container/h;->f(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    move v6, v3

    .line 38
    move v5, v4

    .line 39
    move v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    move v4, v2

    .line 43
    move v5, v4

    .line 44
    move v6, v5

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {v1, v4, v2, v3}, Landroidx/media3/container/g;->b(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v0, v4, v7, p0}, Landroidx/media3/container/g;->a(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :cond_2
    move v8, v0

    .line 76
    move v7, v1

    .line 77
    new-instance p0, Landroidx/media3/container/g$e;

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-direct/range {v3 .. v8}, Landroidx/media3/container/g$e;-><init>(IIIII)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method private static s(Landroidx/media3/container/h;I)Landroidx/media3/container/g$f;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-array v3, p1, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/media3/container/g;->r(Landroidx/media3/container/h;)Landroidx/media3/container/g$e;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-le v1, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    int-to-double v0, v1

    .line 36
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 37
    .line 38
    invoke-static {v0, v1, v5}, Lcom/google/common/math/b;->d(DLjava/math/RoundingMode;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    if-ge v4, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->f(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aput v1, v3, v4

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    if-ge v4, p1, :cond_2

    .line 54
    .line 55
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aput p0, v3, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance p0, Landroidx/media3/container/g$f;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1, v3}, Landroidx/media3/container/g$f;-><init>(Ljava/util/List;[I)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method

.method public static t([BII)Landroidx/media3/container/g$g;
    .locals 13

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    :goto_0
    aget-byte v0, p0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-le p2, p1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_e

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    new-instance v0, Landroidx/media3/container/h;

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/h;-><init>([BII)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/16 p0, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroidx/media3/container/h;->c(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_e

    .line 35
    .line 36
    const/16 p0, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroidx/media3/container/h;->f(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x0

    .line 43
    move v2, p2

    .line 44
    :goto_1
    const/16 v3, 0xff

    .line 45
    .line 46
    if-ne p1, v3, :cond_3

    .line 47
    .line 48
    add-int/lit16 v2, v2, 0xff

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroidx/media3/container/h;->f(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/2addr v2, p1

    .line 56
    invoke-virtual {v0, p0}, Landroidx/media3/container/h;->f(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    move v4, p2

    .line 61
    :goto_2
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    add-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroidx/media3/container/h;->f(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    add-int/2addr v4, p1

    .line 71
    if-eqz v4, :cond_e

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroidx/media3/container/h;->c(I)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_5
    const/16 p0, 0xb0

    .line 82
    .line 83
    if-ne v2, p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    move v5, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move v5, p2

    .line 102
    :goto_3
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 v2, -0x1

    .line 107
    move v7, v2

    .line 108
    move v8, v7

    .line 109
    move v9, v8

    .line 110
    move v10, v9

    .line 111
    move v11, v10

    .line 112
    move v12, v11

    .line 113
    move v2, p2

    .line 114
    :goto_4
    if-gt v2, p1, :cond_d

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v0}, Landroidx/media3/container/h;->i()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    const/4 v3, 0x6

    .line 125
    invoke-virtual {v0, v3}, Landroidx/media3/container/h;->f(I)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    const/16 v6, 0x3f

    .line 130
    .line 131
    if-ne v9, v6, :cond_7

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_7
    if-nez v9, :cond_8

    .line 135
    .line 136
    add-int/lit8 v10, v4, -0x1e

    .line 137
    .line 138
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    goto :goto_5

    .line 143
    :cond_8
    add-int v10, v9, v4

    .line 144
    .line 145
    add-int/lit8 v10, v10, -0x1f

    .line 146
    .line 147
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_5
    invoke-virtual {v0, v10}, Landroidx/media3/container/h;->f(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroidx/media3/container/h;->f(I)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-ne v11, v6, :cond_9

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_9
    if-nez v11, :cond_a

    .line 165
    .line 166
    add-int/lit8 v3, v5, -0x1e

    .line 167
    .line 168
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_6

    .line 173
    :cond_a
    add-int v3, v11, v5

    .line 174
    .line 175
    add-int/lit8 v3, v3, -0x1f

    .line 176
    .line 177
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    :goto_6
    invoke-virtual {v0, v3}, Landroidx/media3/container/h;->f(I)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    :cond_b
    invoke-virtual {v0}, Landroidx/media3/container/h;->e()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_c

    .line 190
    .line 191
    const/16 v3, 0xa

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Landroidx/media3/container/h;->m(I)V

    .line 194
    .line 195
    .line 196
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_d
    new-instance p0, Landroidx/media3/container/g$g;

    .line 200
    .line 201
    add-int/lit8 v6, p1, 0x1

    .line 202
    .line 203
    move-object v3, p0

    .line 204
    invoke-direct/range {v3 .. v12}, Landroidx/media3/container/g$g;-><init>(IIIIIIIII)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_e
    :goto_7
    return-object v1
.end method

.method public static u([BIILandroidx/media3/container/g$k;)Landroidx/media3/container/g$h;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/container/g;->p(Landroidx/media3/container/h;)Landroidx/media3/container/g$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    add-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/container/g;->v([BIILandroidx/media3/container/g$b;Landroidx/media3/container/g$k;)Landroidx/media3/container/g$h;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static v([BIILandroidx/media3/container/g$b;Landroidx/media3/container/g$k;)Landroidx/media3/container/g$h;
    .locals 22

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    new-instance v2, Landroidx/media3/container/h;

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    move/from16 v4, p1

    .line 10
    .line 11
    move/from16 v5, p2

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/container/h;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    invoke-virtual {v2, v3}, Landroidx/media3/container/h;->m(I)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-virtual {v2, v3}, Landroidx/media3/container/h;->f(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget v5, v1, Landroidx/media3/container/g$b;->b:I

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x7

    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    move v5, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v8, v0, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    iget v8, v1, Landroidx/media3/container/g$b;->b:I

    .line 47
    .line 48
    iget-object v9, v0, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    sub-int/2addr v9, v6

    .line 55
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget-object v9, v0, Landroidx/media3/container/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 60
    .line 61
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Landroidx/media3/container/g$a;

    .line 66
    .line 67
    iget v8, v8, Landroidx/media3/container/g$a;->a:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 v8, 0x0

    .line 71
    :goto_1
    const/4 v9, 0x0

    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/media3/container/h;->l()V

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v6, v4, v9}, Landroidx/media3/container/g;->q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v10, v0, Landroidx/media3/container/g$k;->c:Landroidx/media3/container/g$d;

    .line 85
    .line 86
    iget-object v11, v10, Landroidx/media3/container/g$d;->b:[I

    .line 87
    .line 88
    aget v11, v11, v8

    .line 89
    .line 90
    iget-object v10, v10, Landroidx/media3/container/g$d;->a:Lcom/google/common/collect/ImmutableList;

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-le v10, v11, :cond_3

    .line 97
    .line 98
    iget-object v9, v0, Landroidx/media3/container/g$k;->c:Landroidx/media3/container/g$d;

    .line 99
    .line 100
    iget-object v9, v9, Landroidx/media3/container/g$d;->a:Lcom/google/common/collect/ImmutableList;

    .line 101
    .line 102
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    check-cast v9, Landroidx/media3/container/g$c;

    .line 107
    .line 108
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const/16 v11, 0x8

    .line 113
    .line 114
    const/4 v12, -0x1

    .line 115
    if-eqz v5, :cond_7

    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-eqz v13, :cond_4

    .line 122
    .line 123
    invoke-virtual {v2, v11}, Landroidx/media3/container/h;->f(I)I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    move v13, v12

    .line 129
    :goto_3
    if-eqz v0, :cond_6

    .line 130
    .line 131
    iget-object v14, v0, Landroidx/media3/container/g$k;->d:Landroidx/media3/container/g$f;

    .line 132
    .line 133
    if-eqz v14, :cond_6

    .line 134
    .line 135
    if-ne v13, v12, :cond_5

    .line 136
    .line 137
    iget-object v13, v14, Landroidx/media3/container/g$f;->b:[I

    .line 138
    .line 139
    aget v13, v13, v8

    .line 140
    .line 141
    :cond_5
    if-eq v13, v12, :cond_6

    .line 142
    .line 143
    iget-object v14, v14, Landroidx/media3/container/g$f;->a:Lcom/google/common/collect/ImmutableList;

    .line 144
    .line 145
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    if-le v14, v13, :cond_6

    .line 150
    .line 151
    iget-object v14, v0, Landroidx/media3/container/g$k;->d:Landroidx/media3/container/g$f;

    .line 152
    .line 153
    iget-object v14, v14, Landroidx/media3/container/g$f;->a:Lcom/google/common/collect/ImmutableList;

    .line 154
    .line 155
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    check-cast v13, Landroidx/media3/container/g$e;

    .line 160
    .line 161
    iget v14, v13, Landroidx/media3/container/g$e;->a:I

    .line 162
    .line 163
    iget v15, v13, Landroidx/media3/container/g$e;->d:I

    .line 164
    .line 165
    iget v6, v13, Landroidx/media3/container/g$e;->e:I

    .line 166
    .line 167
    iget v7, v13, Landroidx/media3/container/g$e;->b:I

    .line 168
    .line 169
    iget v13, v13, Landroidx/media3/container/g$e;->c:I

    .line 170
    .line 171
    move v12, v13

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/4 v6, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v12, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-ne v6, v3, :cond_8

    .line 184
    .line 185
    invoke-virtual {v2}, Landroidx/media3/container/h;->l()V

    .line 186
    .line 187
    .line 188
    :cond_8
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_9

    .line 201
    .line 202
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 203
    .line 204
    .line 205
    move-result v14

    .line 206
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    invoke-static {v7, v6, v14, v15}, Landroidx/media3/container/g;->b(IIII)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    invoke-static {v13, v6, v12, v3}, Landroidx/media3/container/g;->a(IIII)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    move v13, v3

    .line 227
    :cond_9
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    move v14, v6

    .line 236
    move v15, v7

    .line 237
    move v6, v13

    .line 238
    move v7, v3

    .line 239
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v5, :cond_b

    .line 244
    .line 245
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    if-eqz v13, :cond_a

    .line 250
    .line 251
    const/4 v13, 0x0

    .line 252
    goto :goto_5

    .line 253
    :cond_a
    move v13, v4

    .line 254
    :goto_5
    const/4 v11, -0x1

    .line 255
    :goto_6
    if-gt v13, v4, :cond_c

    .line 256
    .line 257
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 269
    .line 270
    .line 271
    add-int/lit8 v13, v13, 0x1

    .line 272
    .line 273
    move-object/from16 v1, p3

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_b
    const/4 v11, -0x1

    .line 277
    :cond_c
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_f

    .line 300
    .line 301
    if-eqz v5, :cond_d

    .line 302
    .line 303
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    goto :goto_7

    .line 308
    :cond_d
    const/4 v1, 0x0

    .line 309
    :goto_7
    if-eqz v1, :cond_e

    .line 310
    .line 311
    const/4 v1, 0x6

    .line 312
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_e
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_f

    .line 321
    .line 322
    invoke-static {v2}, Landroidx/media3/container/g;->G(Landroidx/media3/container/h;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    :goto_8
    const/4 v1, 0x2

    .line 326
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_10

    .line 334
    .line 335
    const/16 v5, 0x8

    .line 336
    .line 337
    invoke-virtual {v2, v5}, Landroidx/media3/container/h;->m(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Landroidx/media3/container/h;->l()V

    .line 347
    .line 348
    .line 349
    :cond_10
    invoke-static {v2}, Landroidx/media3/container/g;->H(Landroidx/media3/container/h;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_11

    .line 357
    .line 358
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    const/4 v13, 0x0

    .line 363
    :goto_9
    if-ge v13, v5, :cond_11

    .line 364
    .line 365
    add-int/lit8 v1, v3, 0x5

    .line 366
    .line 367
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 368
    .line 369
    .line 370
    add-int/lit8 v13, v13, 0x1

    .line 371
    .line 372
    const/4 v1, 0x2

    .line 373
    goto :goto_9

    .line 374
    :cond_11
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    const/high16 v5, 0x3f800000    # 1.0f

    .line 382
    .line 383
    if-eqz v3, :cond_1c

    .line 384
    .line 385
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_14

    .line 390
    .line 391
    const/16 v3, 0x8

    .line 392
    .line 393
    invoke-virtual {v2, v3}, Landroidx/media3/container/h;->f(I)I

    .line 394
    .line 395
    .line 396
    move-result v13

    .line 397
    const/16 v3, 0xff

    .line 398
    .line 399
    if-ne v13, v3, :cond_12

    .line 400
    .line 401
    const/16 v3, 0x10

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Landroidx/media3/container/h;->f(I)I

    .line 404
    .line 405
    .line 406
    move-result v13

    .line 407
    invoke-virtual {v2, v3}, Landroidx/media3/container/h;->f(I)I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-eqz v13, :cond_14

    .line 412
    .line 413
    if-eqz v3, :cond_14

    .line 414
    .line 415
    int-to-float v5, v13

    .line 416
    int-to-float v3, v3

    .line 417
    div-float/2addr v5, v3

    .line 418
    goto :goto_a

    .line 419
    :cond_12
    sget-object v3, Landroidx/media3/container/g;->b:[F

    .line 420
    .line 421
    array-length v1, v3

    .line 422
    if-ge v13, v1, :cond_13

    .line 423
    .line 424
    aget v5, v3, v13

    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    const-string v3, "Unexpected aspect_ratio_idc value: "

    .line 433
    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const-string v3, "NalUnitUtil"

    .line 445
    .line 446
    invoke-static {v3, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :cond_14
    :goto_a
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_15

    .line 454
    .line 455
    invoke-virtual {v2}, Landroidx/media3/container/h;->l()V

    .line 456
    .line 457
    .line 458
    :cond_15
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    if-eqz v1, :cond_18

    .line 463
    .line 464
    const/4 v1, 0x3

    .line 465
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_16

    .line 473
    .line 474
    const/4 v0, 0x1

    .line 475
    goto :goto_b

    .line 476
    :cond_16
    const/4 v0, 0x2

    .line 477
    :goto_b
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-eqz v1, :cond_17

    .line 482
    .line 483
    const/16 v1, 0x8

    .line 484
    .line 485
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->f(I)I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->f(I)I

    .line 490
    .line 491
    .line 492
    move-result v8

    .line 493
    invoke-virtual {v2, v1}, Landroidx/media3/container/h;->m(I)V

    .line 494
    .line 495
    .line 496
    invoke-static {v3}, Landroidx/media3/common/i;->j(I)I

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    invoke-static {v8}, Landroidx/media3/common/i;->k(I)I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    goto :goto_d

    .line 505
    :cond_17
    :goto_c
    const/4 v1, -0x1

    .line 506
    const/4 v3, -0x1

    .line 507
    goto :goto_d

    .line 508
    :cond_18
    if-eqz v0, :cond_19

    .line 509
    .line 510
    iget-object v1, v0, Landroidx/media3/container/g$k;->e:Landroidx/media3/container/g$j;

    .line 511
    .line 512
    if-eqz v1, :cond_19

    .line 513
    .line 514
    iget-object v3, v1, Landroidx/media3/container/g$j;->b:[I

    .line 515
    .line 516
    aget v3, v3, v8

    .line 517
    .line 518
    iget-object v1, v1, Landroidx/media3/container/g$j;->a:Lcom/google/common/collect/ImmutableList;

    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-le v1, v3, :cond_19

    .line 525
    .line 526
    iget-object v0, v0, Landroidx/media3/container/g$k;->e:Landroidx/media3/container/g$j;

    .line 527
    .line 528
    iget-object v0, v0, Landroidx/media3/container/g$j;->a:Lcom/google/common/collect/ImmutableList;

    .line 529
    .line 530
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Landroidx/media3/container/g$i;

    .line 535
    .line 536
    iget v1, v0, Landroidx/media3/container/g$i;->a:I

    .line 537
    .line 538
    iget v3, v0, Landroidx/media3/container/g$i;->b:I

    .line 539
    .line 540
    iget v0, v0, Landroidx/media3/container/g$i;->c:I

    .line 541
    .line 542
    move/from16 v21, v3

    .line 543
    .line 544
    move v3, v0

    .line 545
    move/from16 v0, v21

    .line 546
    .line 547
    goto :goto_d

    .line 548
    :cond_19
    const/4 v0, -0x1

    .line 549
    goto :goto_c

    .line 550
    :goto_d
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    if-eqz v8, :cond_1a

    .line 555
    .line 556
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Landroidx/media3/container/h;->i()I

    .line 560
    .line 561
    .line 562
    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/container/h;->l()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2}, Landroidx/media3/container/h;->e()Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_1b

    .line 570
    .line 571
    mul-int/lit8 v6, v6, 0x2

    .line 572
    .line 573
    :cond_1b
    move/from16 v18, v0

    .line 574
    .line 575
    move/from16 v17, v1

    .line 576
    .line 577
    move/from16 v19, v3

    .line 578
    .line 579
    move/from16 v16, v5

    .line 580
    .line 581
    move v13, v6

    .line 582
    goto :goto_e

    .line 583
    :cond_1c
    move/from16 v16, v5

    .line 584
    .line 585
    move v13, v6

    .line 586
    const/16 v17, -0x1

    .line 587
    .line 588
    const/16 v18, -0x1

    .line 589
    .line 590
    const/16 v19, -0x1

    .line 591
    .line 592
    :goto_e
    new-instance v20, Landroidx/media3/container/g$h;

    .line 593
    .line 594
    move-object/from16 v0, v20

    .line 595
    .line 596
    move-object/from16 v1, p3

    .line 597
    .line 598
    move v2, v4

    .line 599
    move-object v3, v9

    .line 600
    move v4, v14

    .line 601
    move v5, v7

    .line 602
    move v6, v12

    .line 603
    move v7, v10

    .line 604
    move v8, v15

    .line 605
    move v9, v13

    .line 606
    move/from16 v10, v16

    .line 607
    .line 608
    move/from16 v12, v17

    .line 609
    .line 610
    move/from16 v13, v18

    .line 611
    .line 612
    move/from16 v14, v19

    .line 613
    .line 614
    invoke-direct/range {v0 .. v14}, Landroidx/media3/container/g$h;-><init>(Landroidx/media3/container/g$b;ILandroidx/media3/container/g$c;IIIIIIFIIII)V

    .line 615
    .line 616
    .line 617
    return-object v20
.end method

.method private static w(Landroidx/media3/container/h;)Landroidx/media3/container/g$i;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/container/h;->m(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/media3/container/h;->f(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Landroidx/media3/common/i;->j(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, v1}, Landroidx/media3/container/h;->f(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Landroidx/media3/common/i;->k(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, v1}, Landroidx/media3/container/h;->m(I)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Landroidx/media3/container/g$i;

    .line 36
    .line 37
    invoke-direct {p0, v2, v0, v3}, Landroidx/media3/container/g$i;-><init>(III)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method private static x(Landroidx/media3/container/h;II[I)Landroidx/media3/container/g$j;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/container/h;->l()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    :cond_2
    move v4, v3

    .line 33
    :goto_1
    if-ge v4, p2, :cond_8

    .line 34
    .line 35
    move v5, v3

    .line 36
    :goto_2
    aget v6, p3, v4

    .line 37
    .line 38
    if-ge v5, v6, :cond_7

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v6, v3

    .line 48
    :goto_3
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v7, v3

    .line 56
    :goto_4
    if-eqz v6, :cond_5

    .line 57
    .line 58
    const/16 v6, 0x20

    .line 59
    .line 60
    invoke-virtual {p0, v6}, Landroidx/media3/container/h;->m(I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    if-eqz v7, :cond_6

    .line 64
    .line 65
    const/16 v6, 0x12

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Landroidx/media3/container/h;->m(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/container/h;->e()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/4 p3, 0x4

    .line 81
    if-eqz p2, :cond_9

    .line 82
    .line 83
    invoke-virtual {p0, p3}, Landroidx/media3/container/h;->f(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v0, v1

    .line 88
    goto :goto_5

    .line 89
    :cond_9
    move v0, p1

    .line 90
    :goto_5
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$a;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-array v4, p1, [I

    .line 95
    .line 96
    move v5, v3

    .line 97
    :goto_6
    if-ge v5, v0, :cond_a

    .line 98
    .line 99
    invoke-static {p0}, Landroidx/media3/container/g;->w(Landroidx/media3/container/h;)Landroidx/media3/container/g$i;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    if-eqz p2, :cond_b

    .line 110
    .line 111
    if-le v0, v1, :cond_b

    .line 112
    .line 113
    :goto_7
    if-ge v3, p1, :cond_b

    .line 114
    .line 115
    invoke-virtual {p0, p3}, Landroidx/media3/container/h;->f(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    aput p2, v4, v3

    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_b
    new-instance p0, Landroidx/media3/container/g$j;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1, v4}, Landroidx/media3/container/g$j;-><init>(Ljava/util/List;[I)V

    .line 131
    .line 132
    .line 133
    return-object p0
.end method

.method public static y([BII)Landroidx/media3/container/g$k;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/container/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/media3/container/g;->p(Landroidx/media3/container/h;)Landroidx/media3/container/g$b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {v0, p0}, Landroidx/media3/container/g;->z(Landroidx/media3/container/h;Landroidx/media3/container/g$b;)Landroidx/media3/container/g$k;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static z(Landroidx/media3/container/h;Landroidx/media3/container/g$b;)Landroidx/media3/container/g$k;
    .locals 37

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, v1}, Landroidx/media3/container/h;->m(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v3

    const/4 v4, 0x6

    .line 4
    invoke-virtual {v0, v4}, Landroidx/media3/container/h;->f(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x3

    .line 5
    invoke-virtual {v0, v7}, Landroidx/media3/container/h;->f(I)I

    move-result v8

    const/16 v9, 0x11

    .line 6
    invoke-virtual {v0, v9}, Landroidx/media3/container/h;->m(I)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 7
    invoke-static {v0, v9, v8, v10}, Landroidx/media3/container/g;->q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;

    move-result-object v11

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    move v12, v13

    goto :goto_0

    :cond_0
    move v12, v8

    :goto_0
    if-gt v12, v8, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v4}, Landroidx/media3/container/h;->f(I)I

    move-result v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    move-result v14

    add-int/2addr v14, v9

    .line 14
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 15
    new-instance v10, Landroidx/media3/container/g$d;

    new-array v1, v9, [I

    invoke-direct {v10, v15, v1}, Landroidx/media3/container/g$d;-><init>(Ljava/util/List;[I)V

    const/4 v1, 0x2

    if-lt v6, v1, :cond_2

    if-lt v14, v1, :cond_2

    move v15, v9

    goto :goto_1

    :cond_2
    move v15, v13

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v2, v9

    goto :goto_2

    :cond_3
    move v2, v13

    :goto_2
    add-int/lit8 v3, v12, 0x1

    if-lt v3, v6, :cond_4

    move/from16 v18, v9

    goto :goto_3

    :cond_4
    move/from16 v18, v13

    :goto_3
    if-eqz v15, :cond_55

    if-eqz v2, :cond_55

    if-nez v18, :cond_5

    goto/16 :goto_3e

    .line 16
    :cond_5
    new-array v2, v1, [I

    aput v3, v2, v9

    aput v14, v2, v13

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 17
    new-array v15, v14, [I

    .line 18
    new-array v1, v14, [I

    .line 19
    aget-object v19, v2, v13

    aput v13, v19, v13

    .line 20
    aput v9, v15, v13

    .line 21
    aput v13, v1, v13

    move v4, v9

    :goto_4
    if-ge v4, v14, :cond_8

    move v7, v13

    move/from16 v21, v7

    :goto_5
    if-gt v7, v12, :cond_7

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 23
    aget-object v22, v2, v4

    add-int/lit8 v23, v21, 0x1

    aput v7, v22, v21

    .line 24
    aput v7, v1, v4

    move/from16 v21, v23

    .line 25
    :cond_6
    aput v21, v15, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x3

    goto :goto_4

    .line 26
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x40

    .line 27
    invoke-virtual {v0, v4}, Landroidx/media3/container/h;->m(I)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    .line 30
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    move-result v4

    move v7, v13

    :goto_6
    if-ge v7, v4, :cond_c

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    if-eqz v7, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v21

    if-eqz v21, :cond_a

    goto :goto_7

    :cond_a
    move v9, v13

    .line 33
    :cond_b
    :goto_7
    invoke-static {v0, v9, v8}, Landroidx/media3/container/g;->F(Landroidx/media3/container/h;ZI)V

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    goto :goto_6

    .line 34
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v4

    if-nez v4, :cond_d

    .line 35
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    .line 36
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->b()V

    .line 37
    invoke-static {v0, v13, v8, v11}, Landroidx/media3/container/g;->q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;

    move-result-object v4

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v7

    const/16 v9, 0x10

    .line 39
    new-array v13, v9, [Z

    move-object/from16 v23, v1

    move-object/from16 v24, v4

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v1, v9, :cond_f

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v25

    aput-boolean v25, v13, v1

    if-eqz v25, :cond_e

    add-int/lit8 v4, v4, 0x1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_54

    const/4 v1, 0x1

    .line 41
    aget-boolean v25, v13, v1

    if-nez v25, :cond_10

    goto/16 :goto_3d

    .line 42
    :cond_10
    new-array v1, v4, [I

    move-object/from16 v26, v11

    const/4 v9, 0x0

    :goto_9
    sub-int v11, v4, v7

    if-ge v9, v11, :cond_11

    const/4 v11, 0x3

    .line 43
    invoke-virtual {v0, v11}, Landroidx/media3/container/h;->f(I)I

    move-result v27

    aput v27, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v9, v4, 0x1

    .line 44
    new-array v9, v9, [I

    if-eqz v7, :cond_14

    const/4 v11, 0x1

    :goto_a
    if-ge v11, v4, :cond_13

    move-object/from16 v27, v2

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v11, :cond_12

    .line 45
    aget v28, v9, v11

    aget v29, v1, v2

    const/16 v21, 0x1

    add-int/lit8 v29, v29, 0x1

    add-int v28, v28, v29

    aput v28, v9, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v27

    goto :goto_a

    :cond_13
    move-object/from16 v27, v2

    const/4 v2, 0x6

    .line 46
    aput v2, v9, v4

    :goto_c
    const/4 v2, 0x2

    goto :goto_d

    :cond_14
    move-object/from16 v27, v2

    goto :goto_c

    .line 47
    :goto_d
    new-array v11, v2, [I

    const/4 v2, 0x1

    aput v4, v11, v2

    const/4 v2, 0x0

    aput v6, v11, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 48
    new-array v11, v6, [I

    const/16 v22, 0x0

    .line 49
    aput v22, v11, v22

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v28

    move-object/from16 v29, v15

    const/4 v15, 0x1

    :goto_e
    if-ge v15, v6, :cond_19

    if-eqz v28, :cond_15

    move/from16 v30, v8

    const/4 v8, 0x6

    .line 51
    invoke-virtual {v0, v8}, Landroidx/media3/container/h;->f(I)I

    move-result v19

    aput v19, v11, v15

    goto :goto_f

    :cond_15
    move/from16 v30, v8

    const/4 v8, 0x6

    .line 52
    aput v15, v11, v15

    :goto_f
    if-nez v7, :cond_17

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v4, :cond_16

    .line 53
    aget-object v31, v2, v15

    aget v32, v1, v8

    move-object/from16 v33, v1

    const/16 v21, 0x1

    add-int/lit8 v1, v32, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/container/h;->f(I)I

    move-result v1

    aput v1, v31, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v33

    goto :goto_10

    :cond_16
    move-object/from16 v33, v1

    goto :goto_12

    :cond_17
    move-object/from16 v33, v1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v4, :cond_18

    .line 54
    aget-object v8, v2, v15

    aget v31, v11, v15

    add-int/lit8 v32, v1, 0x1

    aget v34, v9, v32

    const/16 v21, 0x1

    shl-int v34, v21, v34

    add-int/lit8 v34, v34, -0x1

    and-int v31, v31, v34

    aget v34, v9, v1

    shr-int v31, v31, v34

    aput v31, v8, v1

    move/from16 v1, v32

    goto :goto_11

    :cond_18
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v30

    move-object/from16 v1, v33

    goto :goto_e

    :cond_19
    move/from16 v30, v8

    .line 55
    new-array v1, v3, [I

    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_13
    const/4 v8, -0x1

    if-ge v7, v6, :cond_20

    .line 56
    aget v9, v11, v7

    aput v8, v1, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_14
    const/16 v15, 0x10

    if-ge v8, v15, :cond_1c

    .line 57
    aget-boolean v19, v13, v8

    if-eqz v19, :cond_1b

    const/4 v15, 0x1

    if-ne v8, v15, :cond_1a

    .line 58
    aget v15, v11, v7

    aget-object v19, v2, v7

    aget v19, v19, v9

    aput v19, v1, v15

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_1c
    if-lez v7, :cond_1f

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v7, :cond_1e

    .line 59
    aget v9, v11, v7

    aget v9, v1, v9

    aget v15, v11, v8

    aget v15, v1, v15

    if-ne v9, v15, :cond_1d

    goto :goto_16

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    :cond_1f
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_20
    const/4 v7, 0x4

    .line 60
    invoke-virtual {v0, v7}, Landroidx/media3/container/h;->f(I)I

    move-result v2

    const/4 v7, 0x2

    if-lt v4, v7, :cond_53

    if-nez v2, :cond_21

    goto/16 :goto_3c

    .line 61
    :cond_21
    new-array v7, v4, [I

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v4, :cond_22

    .line 62
    invoke-virtual {v0, v2}, Landroidx/media3/container/h;->f(I)I

    move-result v13

    aput v13, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 63
    :cond_22
    new-array v2, v3, [I

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v6, :cond_23

    .line 64
    aget v13, v11, v9

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    aput v9, v2, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 65
    :cond_23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v9

    const/4 v13, 0x0

    :goto_19
    if-gt v13, v12, :cond_25

    .line 66
    aget v15, v1, v13

    const/16 v17, 0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ltz v8, :cond_24

    .line 67
    aget v8, v7, v8

    goto :goto_1a

    :cond_24
    const/4 v8, -0x1

    .line 68
    :goto_1a
    new-instance v15, Landroidx/media3/container/g$a;

    move-object/from16 v17, v1

    aget v1, v2, v13

    invoke-direct {v15, v1, v8}, Landroidx/media3/container/g$a;-><init>(II)V

    invoke-virtual {v9, v15}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    const/4 v8, -0x1

    goto :goto_19

    .line 69
    :cond_25
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/g$a;

    iget v2, v4, Landroidx/media3/container/g$a;->b:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26

    .line 71
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    :cond_26
    const/4 v2, 0x1

    :goto_1b
    if-gt v2, v12, :cond_28

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/g$a;

    iget v4, v4, Landroidx/media3/container/g$a;->b:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_27

    move v4, v2

    goto :goto_1c

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_28
    const/4 v7, -0x1

    move v4, v7

    :goto_1c
    if-ne v4, v7, :cond_29

    .line 73
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    :cond_29
    const/4 v2, 0x2

    .line 74
    new-array v7, v2, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v9, 0x0

    aput v6, v7, v9

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 75
    new-array v13, v2, [I

    aput v6, v13, v8

    aput v6, v13, v9

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    const/4 v8, 0x1

    :goto_1d
    if-ge v8, v6, :cond_2b

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v8, :cond_2a

    .line 76
    aget-object v12, v7, v8

    aget-object v13, v2, v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v15

    aput-boolean v15, v13, v9

    aput-boolean v15, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2b
    const/4 v8, 0x1

    :goto_1f
    if-ge v8, v6, :cond_2f

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v5, :cond_2e

    const/4 v12, 0x0

    :goto_21
    if-ge v12, v8, :cond_2d

    .line 78
    aget-object v13, v2, v8

    aget-boolean v15, v13, v12

    if-eqz v15, :cond_2c

    aget-object v15, v2, v12

    aget-boolean v15, v15, v9

    if-eqz v15, :cond_2c

    const/4 v15, 0x1

    .line 79
    aput-boolean v15, v13, v9

    goto :goto_22

    :cond_2c
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_2d
    :goto_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 80
    :cond_2f
    new-array v8, v3, [I

    const/4 v9, 0x0

    :goto_23
    if-ge v9, v6, :cond_31

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_24
    if-ge v12, v9, :cond_30

    .line 81
    aget-object v15, v7, v9

    aget-boolean v15, v15, v12

    add-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    .line 82
    :cond_30
    aget v12, v11, v9

    aput v13, v8, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_31
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_25
    if-ge v9, v6, :cond_33

    .line 83
    aget v13, v11, v9

    aget v13, v8, v13

    if-nez v13, :cond_32

    add-int/lit8 v12, v12, 0x1

    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_33
    const/4 v9, 0x1

    if-le v12, v9, :cond_34

    .line 84
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    .line 85
    :cond_34
    new-array v9, v6, [I

    .line 86
    new-array v12, v14, [I

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v13

    if-eqz v13, :cond_36

    const/4 v13, 0x0

    :goto_26
    if-ge v13, v6, :cond_35

    const/4 v15, 0x3

    .line 88
    invoke-virtual {v0, v15}, Landroidx/media3/container/h;->f(I)I

    move-result v17

    aput v17, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    :cond_35
    move/from16 v13, v30

    goto :goto_27

    :cond_36
    move/from16 v13, v30

    const/4 v15, 0x0

    .line 89
    invoke-static {v9, v15, v6, v13}, Ljava/util/Arrays;->fill([IIII)V

    :goto_27
    const/4 v15, 0x0

    :goto_28
    if-ge v15, v14, :cond_38

    move-object/from16 v25, v2

    move-object/from16 v19, v8

    move-object/from16 v17, v11

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 90
    :goto_29
    aget v2, v29, v15

    if-ge v11, v2, :cond_37

    .line 91
    aget-object v2, v27, v15

    aget v2, v2, v11

    .line 92
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/g$a;

    iget v2, v2, Landroidx/media3/container/g$a;->a:I

    aget v2, v9, v2

    .line 93
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_29

    :cond_37
    add-int/lit8 v8, v8, 0x1

    .line 94
    aput v8, v12, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v17

    move-object/from16 v8, v19

    move-object/from16 v2, v25

    goto :goto_28

    :cond_38
    move-object/from16 v25, v2

    move-object/from16 v19, v8

    move-object/from16 v17, v11

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v5, :cond_3b

    add-int/lit8 v8, v2, 0x1

    move v9, v8

    :goto_2b
    if-ge v9, v6, :cond_3a

    .line 96
    aget-object v11, v7, v9

    aget-boolean v11, v11, v2

    if-eqz v11, :cond_39

    const/4 v11, 0x3

    .line 97
    invoke-virtual {v0, v11}, Landroidx/media3/container/h;->m(I)V

    goto :goto_2c

    :cond_39
    const/4 v11, 0x3

    :goto_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_3a
    move v2, v8

    goto :goto_2a

    .line 98
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->l()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    move-result v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    .line 100
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v8

    move-object/from16 v9, v26

    .line 101
    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    if-le v2, v5, :cond_3c

    move-object/from16 v5, v24

    .line 102
    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    const/4 v9, 0x2

    :goto_2d
    if-ge v9, v2, :cond_3c

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v11

    .line 104
    invoke-static {v0, v11, v13, v5}, Landroidx/media3/container/g;->q(Landroidx/media3/container/h;ZILandroidx/media3/container/g$c;)Landroidx/media3/container/g$c;

    move-result-object v5

    .line 105
    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 106
    :cond_3c
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->i()I

    move-result v8

    add-int/2addr v8, v14

    if-le v8, v14, :cond_3d

    .line 108
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    :cond_3d
    const/4 v9, 0x2

    .line 109
    invoke-virtual {v0, v9}, Landroidx/media3/container/h;->f(I)I

    move-result v11

    .line 110
    new-array v13, v9, [I

    const/4 v9, 0x1

    aput v3, v13, v9

    const/4 v9, 0x0

    aput v8, v13, v9

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Z

    .line 111
    new-array v15, v8, [I

    .line 112
    new-array v9, v8, [I

    move-object/from16 v20, v5

    const/4 v5, 0x0

    :goto_2e
    if-ge v5, v14, :cond_42

    move/from16 v24, v14

    const/4 v14, 0x0

    .line 113
    aput v14, v15, v5

    .line 114
    aget v22, v23, v5

    aput v22, v9, v5

    if-nez v11, :cond_3e

    move-object/from16 v26, v7

    .line 115
    aget-object v7, v13, v5

    move-object/from16 v28, v12

    aget v12, v29, v5

    move/from16 v30, v6

    const/4 v6, 0x1

    invoke-static {v7, v14, v12, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 116
    aget v7, v29, v5

    aput v7, v15, v5

    move v7, v6

    :goto_2f
    const/4 v6, 0x0

    goto :goto_32

    :cond_3e
    move/from16 v30, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v12

    const/4 v6, 0x1

    if-ne v11, v6, :cond_41

    .line 117
    aget v6, v23, v5

    const/4 v7, 0x0

    .line 118
    :goto_30
    aget v12, v29, v5

    if-ge v7, v12, :cond_40

    .line 119
    aget-object v12, v13, v5

    aget-object v14, v27, v5

    aget v14, v14, v7

    if-ne v14, v6, :cond_3f

    const/4 v14, 0x1

    goto :goto_31

    :cond_3f
    const/4 v14, 0x0

    :goto_31
    aput-boolean v14, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_40
    const/4 v7, 0x1

    .line 120
    aput v7, v15, v5

    goto :goto_2f

    :cond_41
    move v7, v6

    const/4 v6, 0x0

    .line 121
    aget-object v12, v13, v6

    aput-boolean v7, v12, v6

    .line 122
    aput v7, v15, v6

    :goto_32
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v24

    move-object/from16 v7, v26

    move-object/from16 v12, v28

    move/from16 v6, v30

    goto :goto_2e

    :cond_42
    move/from16 v30, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v12

    move/from16 v24, v14

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 123
    new-array v5, v3, [I

    const/4 v12, 0x2

    .line 124
    new-array v14, v12, [I

    aput v3, v14, v7

    aput v8, v14, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_33
    if-ge v6, v8, :cond_4e

    if-ne v11, v12, :cond_44

    const/4 v12, 0x0

    .line 125
    :goto_34
    aget v14, v29, v6

    if-ge v12, v14, :cond_44

    .line 126
    aget-object v14, v13, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v23

    aput-boolean v23, v14, v12

    .line 127
    aget v14, v15, v6

    aget-object v23, v13, v6

    aget-boolean v23, v23, v12

    add-int v14, v14, v23

    aput v14, v15, v6

    if-eqz v23, :cond_43

    .line 128
    aget-object v14, v27, v6

    aget v14, v14, v12

    aput v14, v9, v6

    :cond_43
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    :cond_44
    if-nez v7, :cond_46

    .line 129
    aget-object v12, v27, v6

    const/4 v14, 0x0

    aget v12, v12, v14

    if-nez v12, :cond_46

    aget-object v12, v13, v6

    aget-boolean v12, v12, v14

    if-eqz v12, :cond_46

    const/4 v12, 0x1

    .line 130
    :goto_35
    aget v14, v29, v6

    if-ge v12, v14, :cond_46

    .line 131
    aget-object v14, v27, v6

    aget v14, v14, v12

    if-ne v14, v4, :cond_45

    aget-object v14, v13, v6

    aget-boolean v14, v14, v4

    if-eqz v14, :cond_45

    move v7, v6

    :cond_45
    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    :cond_46
    const/4 v12, 0x0

    .line 132
    :goto_36
    aget v14, v29, v6

    if-ge v12, v14, :cond_4c

    const/4 v14, 0x1

    if-le v2, v14, :cond_4a

    .line 133
    aget-object v14, v3, v6

    aget-object v23, v13, v6

    aget-boolean v23, v23, v12

    aput-boolean v23, v14, v12

    move-object/from16 v23, v13

    int-to-double v13, v2

    move/from16 v31, v2

    .line 134
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v13, v14, v2}, Lcom/google/common/math/b;->d(DLjava/math/RoundingMode;)I

    move-result v2

    .line 135
    aget-object v13, v3, v6

    aget-boolean v13, v13, v12

    if-nez v13, :cond_48

    .line 136
    aget-object v13, v27, v6

    aget v13, v13, v12

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/container/g$a;

    iget v13, v13, Landroidx/media3/container/g$a;->a:I

    const/4 v14, 0x0

    :goto_37
    if-ge v14, v12, :cond_48

    .line 137
    aget-object v32, v27, v6

    move/from16 v33, v4

    aget v4, v32, v14

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/g$a;

    iget v4, v4, Landroidx/media3/container/g$a;->a:I

    .line 138
    aget-object v32, v25, v13

    aget-boolean v4, v32, v4

    if-eqz v4, :cond_47

    .line 139
    aget-object v4, v3, v6

    const/4 v13, 0x1

    aput-boolean v13, v4, v12

    goto :goto_38

    :cond_47
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v33

    goto :goto_37

    :cond_48
    move/from16 v33, v4

    .line 140
    :goto_38
    aget-object v4, v3, v6

    aget-boolean v4, v4, v12

    if-eqz v4, :cond_4b

    if-lez v7, :cond_49

    if-ne v6, v7, :cond_49

    .line 141
    invoke-virtual {v0, v2}, Landroidx/media3/container/h;->f(I)I

    move-result v2

    aput v2, v5, v12

    goto :goto_39

    .line 142
    :cond_49
    invoke-virtual {v0, v2}, Landroidx/media3/container/h;->m(I)V

    goto :goto_39

    :cond_4a
    move/from16 v31, v2

    move/from16 v33, v4

    move-object/from16 v23, v13

    :cond_4b
    :goto_39
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v23

    move/from16 v2, v31

    move/from16 v4, v33

    goto :goto_36

    :cond_4c
    move/from16 v31, v2

    move/from16 v33, v4

    move-object/from16 v23, v13

    .line 143
    aget v2, v15, v6

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4d

    aget v2, v9, v6

    aget v2, v19, v2

    if-lez v2, :cond_4d

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->l()V

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, v23

    move/from16 v2, v31

    move/from16 v4, v33

    const/4 v12, 0x2

    goto/16 :goto_33

    :cond_4e
    const/4 v4, 0x1

    if-nez v7, :cond_4f

    .line 145
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    :cond_4f
    move/from16 v2, v30

    .line 146
    invoke-static {v0, v2}, Landroidx/media3/container/g;->s(Landroidx/media3/container/h;I)Landroidx/media3/container/g$f;

    move-result-object v35

    const/4 v6, 0x2

    .line 147
    invoke-virtual {v0, v6}, Landroidx/media3/container/h;->m(I)V

    move v9, v4

    :goto_3a
    if-ge v9, v2, :cond_51

    .line 148
    aget v4, v17, v9

    aget v4, v19, v4

    if-nez v4, :cond_50

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->l()V

    :cond_50
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_51
    move-object/from16 v6, v28

    move-object/from16 v4, v29

    .line 150
    invoke-static {v0, v8, v6, v4, v3}, Landroidx/media3/container/g;->E(Landroidx/media3/container/h;I[I[I[[Z)V

    move-object/from16 v7, v26

    .line 151
    invoke-static {v0, v2, v7}, Landroidx/media3/container/g;->K(Landroidx/media3/container/h;I[[Z)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->e()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/h;->b()V

    move/from16 v14, v24

    .line 154
    invoke-static {v0, v2, v14, v6}, Landroidx/media3/container/g;->x(Landroidx/media3/container/h;II[I)Landroidx/media3/container/g$j;

    move-result-object v10

    move-object/from16 v36, v10

    goto :goto_3b

    :cond_52
    const/16 v36, 0x0

    .line 155
    :goto_3b
    new-instance v0, Landroidx/media3/container/g$k;

    new-instance v2, Landroidx/media3/container/g$d;

    move-object/from16 v3, v20

    invoke-direct {v2, v3, v5}, Landroidx/media3/container/g$d;-><init>(Ljava/util/List;[I)V

    move-object/from16 v31, v0

    move-object/from16 v32, p1

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    invoke-direct/range {v31 .. v36}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    .line 156
    :cond_53
    :goto_3c
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    .line 157
    :cond_54
    :goto_3d
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0

    .line 158
    :cond_55
    :goto_3e
    new-instance v0, Landroidx/media3/container/g$k;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v21}, Landroidx/media3/container/g$k;-><init>(Landroidx/media3/container/g$b;Ljava/util/List;Landroidx/media3/container/g$d;Landroidx/media3/container/g$f;Landroidx/media3/container/g$j;)V

    return-object v0
.end method
