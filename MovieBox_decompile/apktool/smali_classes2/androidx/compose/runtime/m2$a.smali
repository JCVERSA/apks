.class public final Landroidx/compose/runtime/m2$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/m2$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/m2$a;Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/m2$a;->b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/m2;->k0(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int v4, v1, v3

    .line 12
    .line 13
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/m2;->b(Landroidx/compose/runtime/m2;I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-static {v0, v4}, Landroidx/compose/runtime/m2;->b(Landroidx/compose/runtime/m2;I)I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    sub-int v7, v6, v5

    .line 22
    .line 23
    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/m2;->a(Landroidx/compose/runtime/m2;I)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-static {v2, v3}, Landroidx/compose/runtime/m2;->q(Landroidx/compose/runtime/m2;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/m2;->r(Landroidx/compose/runtime/m2;II)V

    .line 35
    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->h(Landroidx/compose/runtime/m2;)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-ge v9, v4, :cond_0

    .line 42
    .line 43
    invoke-static {v0, v4}, Landroidx/compose/runtime/m2;->s(Landroidx/compose/runtime/m2;I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->n(Landroidx/compose/runtime/m2;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ge v9, v6, :cond_1

    .line 51
    .line 52
    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/m2;->t(Landroidx/compose/runtime/m2;II)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    mul-int/lit8 v12, v10, 0x5

    .line 68
    .line 69
    mul-int/lit8 v13, v1, 0x5

    .line 70
    .line 71
    mul-int/lit8 v14, v4, 0x5

    .line 72
    .line 73
    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->j([I[IIII)[I

    .line 74
    .line 75
    .line 76
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->g(Landroidx/compose/runtime/m2;)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->c0()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {v9, v10, v6}, Landroidx/compose/runtime/l2;->A([III)V

    .line 96
    .line 97
    .line 98
    sub-int v13, v10, v1

    .line 99
    .line 100
    add-int v14, v10, v3

    .line 101
    .line 102
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    sub-int v15, v12, v15

    .line 107
    .line 108
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->m(Landroidx/compose/runtime/m2;)I

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    move/from16 v17, v8

    .line 113
    .line 114
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->l(Landroidx/compose/runtime/m2;)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    array-length v11, v11

    .line 119
    move/from16 v18, v12

    .line 120
    .line 121
    move/from16 v12, v16

    .line 122
    .line 123
    move/from16 v16, v5

    .line 124
    .line 125
    move v5, v10

    .line 126
    :goto_0
    const/16 v19, 0x0

    .line 127
    .line 128
    if-ge v5, v14, :cond_5

    .line 129
    .line 130
    if-eq v5, v10, :cond_2

    .line 131
    .line 132
    invoke-static {v9, v5}, Landroidx/compose/runtime/l2;->s([II)I

    .line 133
    .line 134
    .line 135
    move-result v20

    .line 136
    move/from16 v21, v14

    .line 137
    .line 138
    add-int v14, v20, v13

    .line 139
    .line 140
    invoke-static {v9, v5, v14}, Landroidx/compose/runtime/l2;->A([III)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    move/from16 v21, v14

    .line 145
    .line 146
    :goto_1
    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    add-int/2addr v14, v15

    .line 151
    if-ge v12, v5, :cond_3

    .line 152
    .line 153
    :goto_2
    move/from16 v20, v15

    .line 154
    .line 155
    move/from16 v15, v19

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->n(Landroidx/compose/runtime/m2;)I

    .line 159
    .line 160
    .line 161
    move-result v19

    .line 162
    goto :goto_2

    .line 163
    :goto_3
    invoke-static {v2, v14, v15, v8, v11}, Landroidx/compose/runtime/m2;->e(Landroidx/compose/runtime/m2;IIII)I

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    invoke-static {v9, v5, v14}, Landroidx/compose/runtime/l2;->w([III)V

    .line 168
    .line 169
    .line 170
    if-ne v5, v12, :cond_4

    .line 171
    .line 172
    add-int/lit8 v12, v12, 0x1

    .line 173
    .line 174
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    move/from16 v15, v20

    .line 177
    .line 178
    move/from16 v14, v21

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    move/from16 v21, v14

    .line 182
    .line 183
    invoke-static {v2, v12}, Landroidx/compose/runtime/m2;->z(Landroidx/compose/runtime/m2;I)V

    .line 184
    .line 185
    .line 186
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->d0()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->d0()I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-static {v8, v4, v11}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-ge v5, v4, :cond_7

    .line 211
    .line 212
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    new-instance v11, Ljava/util/ArrayList;

    .line 217
    .line 218
    sub-int v12, v4, v5

    .line 219
    .line 220
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .line 222
    .line 223
    move v12, v5

    .line 224
    :goto_4
    if-ge v12, v4, :cond_6

    .line 225
    .line 226
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v14

    .line 230
    check-cast v14, Landroidx/compose/runtime/c;

    .line 231
    .line 232
    invoke-virtual {v14}, Landroidx/compose/runtime/c;->a()I

    .line 233
    .line 234
    .line 235
    move-result v15

    .line 236
    add-int/2addr v15, v13

    .line 237
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/c;->c(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    add-int/lit8 v12, v12, 0x1

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_6
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->d0()I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    invoke-virtual {v13, v12, v11}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    :goto_5
    move-object v4, v11

    .line 282
    check-cast v4, Ljava/util/Collection;

    .line 283
    .line 284
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_8

    .line 289
    .line 290
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->o(Landroidx/compose/runtime/m2;)Ljava/util/HashMap;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->o(Landroidx/compose/runtime/m2;)Ljava/util/HashMap;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-eqz v4, :cond_8

    .line 299
    .line 300
    if-eqz v5, :cond_8

    .line 301
    .line 302
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    move/from16 v8, v19

    .line 307
    .line 308
    :goto_6
    if-ge v8, v5, :cond_8

    .line 309
    .line 310
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    check-cast v12, Landroidx/compose/runtime/c;

    .line 315
    .line 316
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    check-cast v12, Landroidx/compose/runtime/l0;

    .line 321
    .line 322
    add-int/lit8 v8, v8, 0x1

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->c0()I

    .line 326
    .line 327
    .line 328
    invoke-static {v2, v6}, Landroidx/compose/runtime/m2;->B(Landroidx/compose/runtime/m2;I)Landroidx/compose/runtime/l0;

    .line 329
    .line 330
    .line 331
    const/4 v4, 0x1

    .line 332
    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/m2;->E0(I)I

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-nez p6, :cond_9

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_9
    if-eqz p4, :cond_d

    .line 340
    .line 341
    if-ltz v5, :cond_a

    .line 342
    .line 343
    move/from16 v19, v4

    .line 344
    .line 345
    :cond_a
    if-eqz v19, :cond_b

    .line 346
    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->g1()V

    .line 348
    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->a0()I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    sub-int/2addr v5, v3

    .line 355
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/m2;->D(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->g1()V

    .line 359
    .line 360
    .line 361
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->a0()I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    sub-int/2addr v1, v3

    .line 366
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/m2;->D(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->L0()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v19, :cond_c

    .line 374
    .line 375
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->W0()V

    .line 376
    .line 377
    .line 378
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->T()I

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->W0()V

    .line 382
    .line 383
    .line 384
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->T()I

    .line 385
    .line 386
    .line 387
    :cond_c
    move/from16 v19, v1

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_d
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/m2;->u(Landroidx/compose/runtime/m2;II)Z

    .line 391
    .line 392
    .line 393
    move-result v19

    .line 394
    sub-int/2addr v1, v4

    .line 395
    move/from16 v3, v16

    .line 396
    .line 397
    invoke-static {v0, v3, v7, v1}, Landroidx/compose/runtime/m2;->v(Landroidx/compose/runtime/m2;III)V

    .line 398
    .line 399
    .line 400
    :goto_7
    if-eqz v19, :cond_e

    .line 401
    .line 402
    const-string v0, "Unexpectedly removed anchors"

    .line 403
    .line 404
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :cond_e
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->j(Landroidx/compose/runtime/m2;)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-static {v9, v10}, Landroidx/compose/runtime/l2;->m([II)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_f

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_f
    invoke-static {v9, v10}, Landroidx/compose/runtime/l2;->p([II)I

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    :goto_8
    add-int/2addr v0, v4

    .line 423
    invoke-static {v2, v0}, Landroidx/compose/runtime/m2;->y(Landroidx/compose/runtime/m2;I)V

    .line 424
    .line 425
    .line 426
    if-eqz p5, :cond_10

    .line 427
    .line 428
    move/from16 v10, v21

    .line 429
    .line 430
    invoke-static {v2, v10}, Landroidx/compose/runtime/m2;->w(Landroidx/compose/runtime/m2;I)V

    .line 431
    .line 432
    .line 433
    add-int v12, v18, v7

    .line 434
    .line 435
    invoke-static {v2, v12}, Landroidx/compose/runtime/m2;->x(Landroidx/compose/runtime/m2;I)V

    .line 436
    .line 437
    .line 438
    :cond_10
    if-eqz v17, :cond_11

    .line 439
    .line 440
    invoke-static {v2, v6}, Landroidx/compose/runtime/m2;->C(Landroidx/compose/runtime/m2;I)V

    .line 441
    .line 442
    .line 443
    :cond_11
    return-object v11
.end method

.method static synthetic c(Landroidx/compose/runtime/m2$a;Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x20

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p6, 0x1

    .line 6
    :cond_0
    move v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    move v5, p5

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/m2$a;->b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
