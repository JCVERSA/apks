.class public abstract Landroidx/compose/material3/IconKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/ui/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 2
    .line 3
    sget-object v1, Lr/c;->a:Lr/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lr/c;->a()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Landroidx/compose/material3/IconKt;->a:Landroidx/compose/ui/f;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;JLandroidx/compose/runtime/i;II)V
    .locals 20

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p6

    .line 6
    .line 7
    const v0, -0x7faffaf9

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p5

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 13
    .line 14
    .line 15
    move-result-object v12

    .line 16
    and-int/lit8 v1, p7, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    or-int/lit8 v1, v11, 0x6

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v1, v11, 0x6

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v12, v9}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x2

    .line 36
    :goto_0
    or-int/2addr v1, v11

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v1, v11

    .line 39
    :goto_1
    and-int/lit8 v2, p7, 0x2

    .line 40
    .line 41
    const/16 v3, 0x20

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    or-int/lit8 v1, v1, 0x30

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    and-int/lit8 v2, v11, 0x30

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    invoke-interface {v12, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    move v2, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    const/16 v2, 0x10

    .line 61
    .line 62
    :goto_2
    or-int/2addr v1, v2

    .line 63
    :cond_5
    :goto_3
    and-int/lit8 v2, p7, 0x4

    .line 64
    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    or-int/lit16 v1, v1, 0x180

    .line 68
    .line 69
    :cond_6
    move-object/from16 v4, p2

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_7
    and-int/lit16 v4, v11, 0x180

    .line 73
    .line 74
    if-nez v4, :cond_6

    .line 75
    .line 76
    move-object/from16 v4, p2

    .line 77
    .line 78
    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_8

    .line 83
    .line 84
    const/16 v5, 0x100

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_8
    const/16 v5, 0x80

    .line 88
    .line 89
    :goto_4
    or-int/2addr v1, v5

    .line 90
    :goto_5
    and-int/lit16 v5, v11, 0xc00

    .line 91
    .line 92
    const/16 v6, 0x800

    .line 93
    .line 94
    if-nez v5, :cond_a

    .line 95
    .line 96
    and-int/lit8 v5, p7, 0x8

    .line 97
    .line 98
    move-wide/from16 v7, p3

    .line 99
    .line 100
    if-nez v5, :cond_9

    .line 101
    .line 102
    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_9

    .line 107
    .line 108
    move v5, v6

    .line 109
    goto :goto_6

    .line 110
    :cond_9
    const/16 v5, 0x400

    .line 111
    .line 112
    :goto_6
    or-int/2addr v1, v5

    .line 113
    goto :goto_7

    .line 114
    :cond_a
    move-wide/from16 v7, p3

    .line 115
    .line 116
    :goto_7
    and-int/lit16 v5, v1, 0x493

    .line 117
    .line 118
    const/16 v13, 0x492

    .line 119
    .line 120
    if-ne v5, v13, :cond_c

    .line 121
    .line 122
    invoke-interface {v12}, Landroidx/compose/runtime/i;->h()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_b

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_b
    invoke-interface {v12}, Landroidx/compose/runtime/i;->G()V

    .line 130
    .line 131
    .line 132
    move-object v3, v4

    .line 133
    move-wide v4, v7

    .line 134
    goto/16 :goto_11

    .line 135
    .line 136
    :cond_c
    :goto_8
    invoke-interface {v12}, Landroidx/compose/runtime/i;->B()V

    .line 137
    .line 138
    .line 139
    and-int/lit8 v5, v11, 0x1

    .line 140
    .line 141
    if-eqz v5, :cond_f

    .line 142
    .line 143
    invoke-interface {v12}, Landroidx/compose/runtime/i;->I()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_d

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_d
    invoke-interface {v12}, Landroidx/compose/runtime/i;->G()V

    .line 151
    .line 152
    .line 153
    and-int/lit8 v2, p7, 0x8

    .line 154
    .line 155
    if-eqz v2, :cond_e

    .line 156
    .line 157
    and-int/lit16 v1, v1, -0x1c01

    .line 158
    .line 159
    :cond_e
    move-object v13, v4

    .line 160
    goto :goto_b

    .line 161
    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 162
    .line 163
    sget-object v2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 164
    .line 165
    goto :goto_a

    .line 166
    :cond_10
    move-object v2, v4

    .line 167
    :goto_a
    and-int/lit8 v4, p7, 0x8

    .line 168
    .line 169
    if-eqz v4, :cond_11

    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->a()Landroidx/compose/runtime/s1;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Landroidx/compose/ui/graphics/u1;

    .line 180
    .line 181
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    and-int/lit16 v1, v1, -0x1c01

    .line 186
    .line 187
    move-object v13, v2

    .line 188
    move-wide v7, v4

    .line 189
    goto :goto_b

    .line 190
    :cond_11
    move-object v13, v2

    .line 191
    :goto_b
    invoke-interface {v12}, Landroidx/compose/runtime/i;->s()V

    .line 192
    .line 193
    .line 194
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_12

    .line 199
    .line 200
    const/4 v2, -0x1

    .line 201
    const-string v4, "androidx.compose.material3.Icon (Icon.kt:136)"

    .line 202
    .line 203
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_12
    const v0, 0x4224cb4

    .line 207
    .line 208
    .line 209
    invoke-interface {v12, v0}, Landroidx/compose/runtime/i;->x(I)V

    .line 210
    .line 211
    .line 212
    and-int/lit16 v0, v1, 0x1c00

    .line 213
    .line 214
    xor-int/lit16 v0, v0, 0xc00

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    const/4 v2, 0x1

    .line 218
    if-le v0, v6, :cond_13

    .line 219
    .line 220
    invoke-interface {v12, v7, v8}, Landroidx/compose/runtime/i;->d(J)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_14

    .line 225
    .line 226
    :cond_13
    and-int/lit16 v0, v1, 0xc00

    .line 227
    .line 228
    if-ne v0, v6, :cond_15

    .line 229
    .line 230
    :cond_14
    move v0, v2

    .line 231
    goto :goto_c

    .line 232
    :cond_15
    move v0, v5

    .line 233
    :goto_c
    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    const/4 v6, 0x0

    .line 238
    if-nez v0, :cond_16

    .line 239
    .line 240
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 241
    .line 242
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-ne v4, v0, :cond_18

    .line 247
    .line 248
    :cond_16
    sget-object v0, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 251
    .line 252
    .line 253
    move-result-wide v14

    .line 254
    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_17

    .line 259
    .line 260
    move-object v4, v6

    .line 261
    goto :goto_d

    .line 262
    :cond_17
    sget-object v14, Landroidx/compose/ui/graphics/v1;->b:Landroidx/compose/ui/graphics/v1$a;

    .line 263
    .line 264
    const/16 v18, 0x2

    .line 265
    .line 266
    const/16 v19, 0x0

    .line 267
    .line 268
    const/16 v17, 0x0

    .line 269
    .line 270
    move-wide v15, v7

    .line 271
    invoke-static/range {v14 .. v19}, Landroidx/compose/ui/graphics/v1$a;->b(Landroidx/compose/ui/graphics/v1$a;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/v1;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    move-object v4, v0

    .line 276
    :goto_d
    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_18
    move-object v14, v4

    .line 280
    check-cast v14, Landroidx/compose/ui/graphics/v1;

    .line 281
    .line 282
    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    .line 283
    .line 284
    .line 285
    const v0, 0x4224d2f

    .line 286
    .line 287
    .line 288
    invoke-interface {v12, v0}, Landroidx/compose/runtime/i;->x(I)V

    .line 289
    .line 290
    .line 291
    if-eqz v10, :cond_1c

    .line 292
    .line 293
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 294
    .line 295
    const v4, 0x4224d70

    .line 296
    .line 297
    .line 298
    invoke-interface {v12, v4}, Landroidx/compose/runtime/i;->x(I)V

    .line 299
    .line 300
    .line 301
    and-int/lit8 v1, v1, 0x70

    .line 302
    .line 303
    if-ne v1, v3, :cond_19

    .line 304
    .line 305
    move v1, v2

    .line 306
    goto :goto_e

    .line 307
    :cond_19
    move v1, v5

    .line 308
    :goto_e
    invoke-interface {v12}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    if-nez v1, :cond_1a

    .line 313
    .line 314
    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 315
    .line 316
    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-ne v3, v1, :cond_1b

    .line 321
    .line 322
    :cond_1a
    new-instance v3, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;

    .line 323
    .line 324
    invoke-direct {v3, v10}, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_1b
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 331
    .line 332
    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    .line 333
    .line 334
    .line 335
    invoke-static {v0, v5, v3, v2, v6}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    :goto_f
    move-object v15, v0

    .line 340
    goto :goto_10

    .line 341
    :cond_1c
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 342
    .line 343
    goto :goto_f

    .line 344
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/i;->N()V

    .line 345
    .line 346
    .line 347
    invoke-static {v13}, Landroidx/compose/ui/graphics/b4;->c(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v0, v9}, Landroidx/compose/material3/IconKt;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/f;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    sget-object v1, Landroidx/compose/ui/layout/e;->a:Landroidx/compose/ui/layout/e$a;

    .line 356
    .line 357
    invoke-virtual {v1}, Landroidx/compose/ui/layout/e$a;->a()Landroidx/compose/ui/layout/e;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    const/16 v16, 0x16

    .line 362
    .line 363
    const/16 v17, 0x0

    .line 364
    .line 365
    const/4 v2, 0x0

    .line 366
    const/4 v3, 0x0

    .line 367
    const/4 v6, 0x0

    .line 368
    move-object/from16 v1, p0

    .line 369
    .line 370
    move v5, v6

    .line 371
    move-object v6, v14

    .line 372
    move-wide/from16 v18, v7

    .line 373
    .line 374
    move/from16 v7, v16

    .line 375
    .line 376
    move-object/from16 v8, v17

    .line 377
    .line 378
    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/draw/j;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0, v15}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const/4 v1, 0x0

    .line 387
    invoke-static {v0, v12, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    .line 388
    .line 389
    .line 390
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_1d

    .line 395
    .line 396
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 397
    .line 398
    .line 399
    :cond_1d
    move-object v3, v13

    .line 400
    move-wide/from16 v4, v18

    .line 401
    .line 402
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    if-eqz v8, :cond_1e

    .line 407
    .line 408
    new-instance v12, Landroidx/compose/material3/IconKt$Icon$3;

    .line 409
    .line 410
    move-object v0, v12

    .line 411
    move-object/from16 v1, p0

    .line 412
    .line 413
    move-object/from16 v2, p1

    .line 414
    .line 415
    move/from16 v6, p6

    .line 416
    .line 417
    move/from16 v7, p7

    .line 418
    .line 419
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/IconKt$Icon$3;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;JII)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v8, v12}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 423
    .line 424
    .line 425
    :cond_1e
    return-void
.end method

.method private static final b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;)Landroidx/compose/ui/f;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Ly/m;->b:Ly/m$a;

    .line 6
    .line 7
    invoke-virtual {v2}, Ly/m$a;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v0, v1, v2, v3}, Ly/m;->f(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->h()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Landroidx/compose/material3/IconKt;->c(J)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/material3/IconKt;->a:Landroidx/compose/ui/f;

    .line 32
    .line 33
    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private static final c(J)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ly/m;->i(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p1}, Ly/m;->g(J)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method
