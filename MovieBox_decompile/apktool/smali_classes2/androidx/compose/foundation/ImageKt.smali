.class public abstract Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;Landroidx/compose/runtime/i;II)V
    .locals 19

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v8, p8

    .line 4
    .line 5
    const v0, 0x441d0e20

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p7

    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    and-int/lit8 v3, p9, 0x1

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    or-int/lit8 v3, v8, 0x6

    .line 19
    .line 20
    move v4, v3

    .line 21
    move-object/from16 v3, p0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v3, v8, 0x6

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x2

    .line 39
    :goto_0
    or-int/2addr v4, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object/from16 v3, p0

    .line 42
    .line 43
    move v4, v8

    .line 44
    :goto_1
    and-int/lit8 v5, p9, 0x2

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    or-int/lit8 v4, v4, 0x30

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    and-int/lit8 v5, v8, 0x30

    .line 52
    .line 53
    if-nez v5, :cond_5

    .line 54
    .line 55
    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v4, v5

    .line 67
    :cond_5
    :goto_3
    and-int/lit8 v5, p9, 0x4

    .line 68
    .line 69
    if-eqz v5, :cond_7

    .line 70
    .line 71
    or-int/lit16 v4, v4, 0x180

    .line 72
    .line 73
    :cond_6
    move-object/from16 v7, p2

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_7
    and-int/lit16 v7, v8, 0x180

    .line 77
    .line 78
    if-nez v7, :cond_6

    .line 79
    .line 80
    move-object/from16 v7, p2

    .line 81
    .line 82
    invoke-interface {v1, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_8

    .line 87
    .line 88
    const/16 v9, 0x100

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_8
    const/16 v9, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v4, v9

    .line 94
    :goto_5
    and-int/lit8 v9, p9, 0x8

    .line 95
    .line 96
    if-eqz v9, :cond_a

    .line 97
    .line 98
    or-int/lit16 v4, v4, 0xc00

    .line 99
    .line 100
    :cond_9
    move-object/from16 v10, p3

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_a
    and-int/lit16 v10, v8, 0xc00

    .line 104
    .line 105
    if-nez v10, :cond_9

    .line 106
    .line 107
    move-object/from16 v10, p3

    .line 108
    .line 109
    invoke-interface {v1, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_b

    .line 114
    .line 115
    const/16 v11, 0x800

    .line 116
    .line 117
    goto :goto_6

    .line 118
    :cond_b
    const/16 v11, 0x400

    .line 119
    .line 120
    :goto_6
    or-int/2addr v4, v11

    .line 121
    :goto_7
    and-int/lit8 v11, p9, 0x10

    .line 122
    .line 123
    if-eqz v11, :cond_d

    .line 124
    .line 125
    or-int/lit16 v4, v4, 0x6000

    .line 126
    .line 127
    :cond_c
    move-object/from16 v12, p4

    .line 128
    .line 129
    goto :goto_9

    .line 130
    :cond_d
    and-int/lit16 v12, v8, 0x6000

    .line 131
    .line 132
    if-nez v12, :cond_c

    .line 133
    .line 134
    move-object/from16 v12, p4

    .line 135
    .line 136
    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_e

    .line 141
    .line 142
    const/16 v13, 0x4000

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_e
    const/16 v13, 0x2000

    .line 146
    .line 147
    :goto_8
    or-int/2addr v4, v13

    .line 148
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 149
    .line 150
    const/high16 v14, 0x30000

    .line 151
    .line 152
    if-eqz v13, :cond_10

    .line 153
    .line 154
    or-int/2addr v4, v14

    .line 155
    :cond_f
    move/from16 v14, p5

    .line 156
    .line 157
    goto :goto_b

    .line 158
    :cond_10
    and-int/2addr v14, v8

    .line 159
    if-nez v14, :cond_f

    .line 160
    .line 161
    move/from16 v14, p5

    .line 162
    .line 163
    invoke-interface {v1, v14}, Landroidx/compose/runtime/i;->b(F)Z

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    if-eqz v15, :cond_11

    .line 168
    .line 169
    const/high16 v15, 0x20000

    .line 170
    .line 171
    goto :goto_a

    .line 172
    :cond_11
    const/high16 v15, 0x10000

    .line 173
    .line 174
    :goto_a
    or-int/2addr v4, v15

    .line 175
    :goto_b
    and-int/lit8 v15, p9, 0x40

    .line 176
    .line 177
    const/high16 v16, 0x180000

    .line 178
    .line 179
    if-eqz v15, :cond_12

    .line 180
    .line 181
    or-int v4, v4, v16

    .line 182
    .line 183
    move-object/from16 v6, p6

    .line 184
    .line 185
    goto :goto_d

    .line 186
    :cond_12
    and-int v16, v8, v16

    .line 187
    .line 188
    move-object/from16 v6, p6

    .line 189
    .line 190
    if-nez v16, :cond_14

    .line 191
    .line 192
    invoke-interface {v1, v6}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v16

    .line 196
    if-eqz v16, :cond_13

    .line 197
    .line 198
    const/high16 v16, 0x100000

    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_13
    const/high16 v16, 0x80000

    .line 202
    .line 203
    :goto_c
    or-int v4, v4, v16

    .line 204
    .line 205
    :cond_14
    :goto_d
    const v16, 0x92493

    .line 206
    .line 207
    .line 208
    and-int v0, v4, v16

    .line 209
    .line 210
    const v3, 0x92492

    .line 211
    .line 212
    .line 213
    if-ne v0, v3, :cond_16

    .line 214
    .line 215
    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_15

    .line 220
    .line 221
    goto :goto_e

    .line 222
    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    .line 223
    .line 224
    .line 225
    move-object v3, v7

    .line 226
    move-object v4, v10

    .line 227
    move-object v5, v12

    .line 228
    move-object v7, v6

    .line 229
    move v6, v14

    .line 230
    goto/16 :goto_15

    .line 231
    .line 232
    :cond_16
    :goto_e
    if-eqz v5, :cond_17

    .line 233
    .line 234
    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 235
    .line 236
    move-object v7, v0

    .line 237
    :cond_17
    if-eqz v9, :cond_18

    .line 238
    .line 239
    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    goto :goto_f

    .line 246
    :cond_18
    move-object v0, v10

    .line 247
    :goto_f
    if-eqz v11, :cond_19

    .line 248
    .line 249
    sget-object v3, Landroidx/compose/ui/layout/e;->a:Landroidx/compose/ui/layout/e$a;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroidx/compose/ui/layout/e$a;->a()Landroidx/compose/ui/layout/e;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_10

    .line 256
    :cond_19
    move-object v3, v12

    .line 257
    :goto_10
    if-eqz v13, :cond_1a

    .line 258
    .line 259
    const/high16 v5, 0x3f800000    # 1.0f

    .line 260
    .line 261
    goto :goto_11

    .line 262
    :cond_1a
    move v5, v14

    .line 263
    :goto_11
    const/4 v9, 0x0

    .line 264
    if-eqz v15, :cond_1b

    .line 265
    .line 266
    move-object v6, v9

    .line 267
    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    if-eqz v10, :cond_1c

    .line 272
    .line 273
    const/4 v10, -0x1

    .line 274
    const-string v11, "androidx.compose.foundation.Image (Image.kt:243)"

    .line 275
    .line 276
    const v12, 0x441d0e20

    .line 277
    .line 278
    .line 279
    invoke-static {v12, v4, v10, v11}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :cond_1c
    const/4 v15, 0x0

    .line 283
    if-eqz v2, :cond_20

    .line 284
    .line 285
    const v10, 0x3e0116d7

    .line 286
    .line 287
    .line 288
    invoke-interface {v1, v10}, Landroidx/compose/runtime/i;->P(I)V

    .line 289
    .line 290
    .line 291
    sget-object v10, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 292
    .line 293
    and-int/lit8 v4, v4, 0x70

    .line 294
    .line 295
    const/4 v11, 0x1

    .line 296
    const/16 v12, 0x20

    .line 297
    .line 298
    if-ne v4, v12, :cond_1d

    .line 299
    .line 300
    move v4, v11

    .line 301
    goto :goto_12

    .line 302
    :cond_1d
    move v4, v15

    .line 303
    :goto_12
    invoke-interface {v1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    if-nez v4, :cond_1e

    .line 308
    .line 309
    sget-object v4, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 310
    .line 311
    invoke-virtual {v4}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    if-ne v12, v4, :cond_1f

    .line 316
    .line 317
    :cond_1e
    new-instance v12, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;

    .line 318
    .line 319
    invoke-direct {v12, v2}, Landroidx/compose/foundation/ImageKt$Image$semantics$1$1;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v1, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_1f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 326
    .line 327
    invoke-static {v10, v15, v12, v11, v9}, Landroidx/compose/ui/semantics/k;->c(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    .line 332
    .line 333
    .line 334
    goto :goto_13

    .line 335
    :cond_20
    const v4, 0x3e033709

    .line 336
    .line 337
    .line 338
    invoke-interface {v1, v4}, Landroidx/compose/runtime/i;->P(I)V

    .line 339
    .line 340
    .line 341
    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    .line 342
    .line 343
    .line 344
    sget-object v4, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 345
    .line 346
    :goto_13
    invoke-interface {v7, v4}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-static {v4}, Landroidx/compose/ui/draw/d;->b(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    const/16 v16, 0x2

    .line 355
    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    const/4 v11, 0x0

    .line 359
    move-object/from16 v10, p0

    .line 360
    .line 361
    move-object v12, v0

    .line 362
    move-object v13, v3

    .line 363
    move v14, v5

    .line 364
    move v4, v15

    .line 365
    move-object v15, v6

    .line 366
    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/draw/j;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;ILjava/lang/Object;)Landroidx/compose/ui/f;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    sget-object v10, Landroidx/compose/foundation/ImageKt$Image$1;->a:Landroidx/compose/foundation/ImageKt$Image$1;

    .line 371
    .line 372
    invoke-static {v1, v4}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    invoke-static {v1, v9}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-interface {v1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 385
    .line 386
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    invoke-interface {v1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 391
    .line 392
    .line 393
    move-result-object v14

    .line 394
    instance-of v14, v14, Landroidx/compose/runtime/f;

    .line 395
    .line 396
    if-nez v14, :cond_21

    .line 397
    .line 398
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 399
    .line 400
    .line 401
    :cond_21
    invoke-interface {v1}, Landroidx/compose/runtime/i;->C()V

    .line 402
    .line 403
    .line 404
    invoke-interface {v1}, Landroidx/compose/runtime/i;->e()Z

    .line 405
    .line 406
    .line 407
    move-result v14

    .line 408
    if-eqz v14, :cond_22

    .line 409
    .line 410
    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 411
    .line 412
    .line 413
    goto :goto_14

    .line 414
    :cond_22
    invoke-interface {v1}, Landroidx/compose/runtime/i;->o()V

    .line 415
    .line 416
    .line 417
    :goto_14
    invoke-static {v1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 422
    .line 423
    .line 424
    move-result-object v14

    .line 425
    invoke-static {v13, v10, v14}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    invoke-static {v13, v11, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-static {v13, v9, v10}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-interface {v13}, Landroidx/compose/runtime/i;->e()Z

    .line 447
    .line 448
    .line 449
    move-result v10

    .line 450
    if-nez v10, :cond_23

    .line 451
    .line 452
    invoke-interface {v13}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v10

    .line 456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    if-nez v10, :cond_24

    .line 465
    .line 466
    :cond_23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    invoke-interface {v13, v10}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    invoke-interface {v13, v4, v9}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 478
    .line 479
    .line 480
    :cond_24
    invoke-interface {v1}, Landroidx/compose/runtime/i;->r()V

    .line 481
    .line 482
    .line 483
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_25

    .line 488
    .line 489
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 490
    .line 491
    .line 492
    :cond_25
    move-object v4, v0

    .line 493
    move/from16 v18, v5

    .line 494
    .line 495
    move-object v5, v3

    .line 496
    move-object v3, v7

    .line 497
    move-object v7, v6

    .line 498
    move/from16 v6, v18

    .line 499
    .line 500
    :goto_15
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    if-eqz v10, :cond_26

    .line 505
    .line 506
    new-instance v11, Landroidx/compose/foundation/ImageKt$Image$2;

    .line 507
    .line 508
    move-object v0, v11

    .line 509
    move-object/from16 v1, p0

    .line 510
    .line 511
    move-object/from16 v2, p1

    .line 512
    .line 513
    move/from16 v8, p8

    .line 514
    .line 515
    move/from16 v9, p9

    .line 516
    .line 517
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/ImageKt$Image$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/b;Landroidx/compose/ui/layout/e;FLandroidx/compose/ui/graphics/v1;II)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v10, v11}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 521
    .line 522
    .line 523
    :cond_26
    return-void
.end method
