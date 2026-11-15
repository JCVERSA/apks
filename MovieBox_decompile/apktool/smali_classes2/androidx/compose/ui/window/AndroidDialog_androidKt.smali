.class public abstract Landroidx/compose/ui/window/AndroidDialog_androidKt;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p4

    .line 6
    .line 7
    const v0, -0x792b3ec6

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p3

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    and-int/lit8 v1, p5, 0x1

    .line 17
    .line 18
    const/4 v5, 0x4

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    or-int/lit8 v1, v9, 0x6

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    and-int/lit8 v1, v9, 0x6

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v6, v7}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    move v1, v5

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x2

    .line 37
    :goto_0
    or-int/2addr v1, v9

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v9

    .line 40
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 41
    .line 42
    const/16 v4, 0x20

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    or-int/lit8 v1, v1, 0x30

    .line 47
    .line 48
    :cond_3
    move-object/from16 v3, p1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    and-int/lit8 v3, v9, 0x30

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move-object/from16 v3, p1

    .line 56
    .line 57
    invoke-interface {v6, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_5

    .line 62
    .line 63
    move v10, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    const/16 v10, 0x10

    .line 66
    .line 67
    :goto_2
    or-int/2addr v1, v10

    .line 68
    :goto_3
    and-int/lit8 v10, p5, 0x4

    .line 69
    .line 70
    if-eqz v10, :cond_6

    .line 71
    .line 72
    or-int/lit16 v1, v1, 0x180

    .line 73
    .line 74
    goto :goto_5

    .line 75
    :cond_6
    and-int/lit16 v10, v9, 0x180

    .line 76
    .line 77
    if-nez v10, :cond_8

    .line 78
    .line 79
    invoke-interface {v6, v8}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    if-eqz v10, :cond_7

    .line 84
    .line 85
    const/16 v10, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_7
    const/16 v10, 0x80

    .line 89
    .line 90
    :goto_4
    or-int/2addr v1, v10

    .line 91
    :cond_8
    :goto_5
    and-int/lit16 v10, v1, 0x93

    .line 92
    .line 93
    const/16 v11, 0x92

    .line 94
    .line 95
    if-ne v10, v11, :cond_a

    .line 96
    .line 97
    invoke-interface {v6}, Landroidx/compose/runtime/i;->h()Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    if-nez v10, :cond_9

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/i;->G()V

    .line 105
    .line 106
    .line 107
    move-object v2, v3

    .line 108
    move-object v11, v6

    .line 109
    goto/16 :goto_d

    .line 110
    .line 111
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 112
    .line 113
    new-instance v2, Landroidx/compose/ui/window/c;

    .line 114
    .line 115
    const/4 v15, 0x7

    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    const/4 v13, 0x0

    .line 120
    const/4 v14, 0x0

    .line 121
    move-object v11, v2

    .line 122
    invoke-direct/range {v11 .. v16}, Landroidx/compose/ui/window/c;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    move-object v3, v2

    .line 126
    :cond_b
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_c

    .line 131
    .line 132
    const/4 v2, -0x1

    .line 133
    const-string v10, "androidx.compose.ui.window.Dialog (AndroidDialog.android.kt:166)"

    .line 134
    .line 135
    invoke-static {v0, v1, v2, v10}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_c
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/s1;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    move-object v2, v0

    .line 147
    check-cast v2, Landroid/view/View;

    .line 148
    .line 149
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lo0/e;

    .line 158
    .line 159
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/s1;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    invoke-interface {v6, v10}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    move-object v15, v10

    .line 168
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 169
    .line 170
    const/4 v14, 0x0

    .line 171
    invoke-static {v6, v14}, Landroidx/compose/runtime/g;->c(Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/m;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    shr-int/lit8 v10, v1, 0x6

    .line 176
    .line 177
    and-int/lit8 v10, v10, 0xe

    .line 178
    .line 179
    invoke-static {v8, v6, v10}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    new-array v10, v14, [Ljava/lang/Object;

    .line 184
    .line 185
    sget-object v16, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialogId$1;

    .line 186
    .line 187
    const/16 v17, 0xc00

    .line 188
    .line 189
    const/16 v18, 0x6

    .line 190
    .line 191
    const/4 v11, 0x0

    .line 192
    const/16 v19, 0x0

    .line 193
    .line 194
    move-object/from16 v20, v12

    .line 195
    .line 196
    move-object/from16 v12, v19

    .line 197
    .line 198
    move-object/from16 v21, v13

    .line 199
    .line 200
    move-object/from16 v13, v16

    .line 201
    .line 202
    move-object v14, v6

    .line 203
    move-object/from16 p1, v15

    .line 204
    .line 205
    move/from16 v15, v17

    .line 206
    .line 207
    move/from16 v16, v18

    .line 208
    .line 209
    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;II)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Ljava/util/UUID;

    .line 214
    .line 215
    invoke-interface {v6, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-interface {v6, v0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    or-int/2addr v11, v12

    .line 224
    invoke-interface {v6}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    const/4 v14, 0x1

    .line 229
    if-nez v11, :cond_e

    .line 230
    .line 231
    sget-object v11, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 232
    .line 233
    invoke-virtual {v11}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    if-ne v12, v11, :cond_d

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_d
    move v13, v1

    .line 241
    move-object/from16 v22, v3

    .line 242
    .line 243
    move v15, v5

    .line 244
    move-object v11, v6

    .line 245
    goto :goto_8

    .line 246
    :cond_e
    :goto_7
    new-instance v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 247
    .line 248
    move-object v11, v0

    .line 249
    move-object v0, v12

    .line 250
    move v13, v1

    .line 251
    move-object/from16 v1, p0

    .line 252
    .line 253
    move-object v15, v2

    .line 254
    move-object v2, v3

    .line 255
    move-object/from16 v22, v3

    .line 256
    .line 257
    move-object v3, v15

    .line 258
    move v15, v4

    .line 259
    move-object/from16 v4, p1

    .line 260
    .line 261
    move v15, v5

    .line 262
    move-object v5, v11

    .line 263
    move-object v11, v6

    .line 264
    move-object v6, v10

    .line 265
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Lo0/e;Ljava/util/UUID;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;

    .line 269
    .line 270
    move-object/from16 v1, v20

    .line 271
    .line 272
    invoke-direct {v0, v1}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$dialog$1$1$1;-><init>(Landroidx/compose/runtime/a3;)V

    .line 273
    .line 274
    .line 275
    const v1, 0x1d1a4619

    .line 276
    .line 277
    .line 278
    invoke-static {v1, v14, v0}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    move-object/from16 v1, v21

    .line 283
    .line 284
    invoke-virtual {v12, v1, v0}, Landroidx/compose/ui/window/DialogWrapper;->h(Landroidx/compose/runtime/m;Lkotlin/jvm/functions/Function2;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v11, v12}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_8
    check-cast v12, Landroidx/compose/ui/window/DialogWrapper;

    .line 291
    .line 292
    invoke-interface {v11, v12}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    if-nez v0, :cond_f

    .line 301
    .line 302
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 303
    .line 304
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-ne v1, v0, :cond_10

    .line 309
    .line 310
    :cond_f
    new-instance v1, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;

    .line 311
    .line 312
    invoke-direct {v1, v12}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$1$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v11, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    :cond_10
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 319
    .line 320
    const/4 v0, 0x0

    .line 321
    invoke-static {v12, v1, v11, v0}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    .line 322
    .line 323
    .line 324
    invoke-interface {v11, v12}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    and-int/lit8 v2, v13, 0xe

    .line 329
    .line 330
    if-ne v2, v15, :cond_11

    .line 331
    .line 332
    move v2, v14

    .line 333
    goto :goto_9

    .line 334
    :cond_11
    move v2, v0

    .line 335
    :goto_9
    or-int/2addr v1, v2

    .line 336
    and-int/lit8 v2, v13, 0x70

    .line 337
    .line 338
    const/16 v3, 0x20

    .line 339
    .line 340
    if-ne v2, v3, :cond_12

    .line 341
    .line 342
    goto :goto_a

    .line 343
    :cond_12
    move v14, v0

    .line 344
    :goto_a
    or-int/2addr v1, v14

    .line 345
    move-object/from16 v10, p1

    .line 346
    .line 347
    invoke-interface {v11, v10}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    or-int/2addr v1, v2

    .line 352
    invoke-interface {v11}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    if-nez v1, :cond_14

    .line 357
    .line 358
    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 359
    .line 360
    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    if-ne v2, v1, :cond_13

    .line 365
    .line 366
    goto :goto_b

    .line 367
    :cond_13
    move-object/from16 v3, v22

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_14
    :goto_b
    new-instance v2, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;

    .line 371
    .line 372
    move-object/from16 v3, v22

    .line 373
    .line 374
    invoke-direct {v2, v12, v7, v3, v10}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$2$1;-><init>(Landroidx/compose/ui/window/DialogWrapper;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v11, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :goto_c
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 381
    .line 382
    invoke-static {v2, v11, v0}, Landroidx/compose/runtime/g0;->e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V

    .line 383
    .line 384
    .line 385
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_15

    .line 390
    .line 391
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 392
    .line 393
    .line 394
    :cond_15
    move-object v2, v3

    .line 395
    :goto_d
    invoke-interface {v11}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    if-eqz v6, :cond_16

    .line 400
    .line 401
    new-instance v10, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;

    .line 402
    .line 403
    move-object v0, v10

    .line 404
    move-object/from16 v1, p0

    .line 405
    .line 406
    move-object/from16 v3, p2

    .line 407
    .line 408
    move/from16 v4, p4

    .line 409
    .line 410
    move/from16 v5, p5

    .line 411
    .line 412
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/window/AndroidDialog_androidKt$Dialog$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Lkotlin/jvm/functions/Function2;II)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v6, v10}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    :cond_16
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/a3;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
    .locals 8

    .line 1
    const v0, -0x4634f888

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    and-int/lit8 v1, p4, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    or-int/lit8 v2, p3, 0x6

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    and-int/lit8 v2, p3, 0x6

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int/2addr v2, p3

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v2, p3

    .line 31
    :goto_1
    and-int/lit8 v3, p4, 0x2

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    or-int/lit8 v2, v2, 0x30

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    and-int/lit8 v3, p3, 0x30

    .line 39
    .line 40
    if-nez v3, :cond_5

    .line 41
    .line 42
    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    const/16 v3, 0x20

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/16 v3, 0x10

    .line 52
    .line 53
    :goto_2
    or-int/2addr v2, v3

    .line 54
    :cond_5
    :goto_3
    and-int/lit8 v3, v2, 0x13

    .line 55
    .line 56
    const/16 v4, 0x12

    .line 57
    .line 58
    if-ne v3, v4, :cond_7

    .line 59
    .line 60
    invoke-interface {p2}, Landroidx/compose/runtime/i;->h()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_6

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/i;->G()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 73
    .line 74
    sget-object p0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 75
    .line 76
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_9

    .line 81
    .line 82
    const/4 v1, -0x1

    .line 83
    const-string v3, "androidx.compose.ui.window.DialogLayout (AndroidDialog.android.kt:464)"

    .line 84
    .line 85
    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_9
    sget-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->a:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    .line 89
    .line 90
    shr-int/lit8 v1, v2, 0x3

    .line 91
    .line 92
    and-int/lit8 v1, v1, 0xe

    .line 93
    .line 94
    or-int/lit16 v1, v1, 0x180

    .line 95
    .line 96
    shl-int/lit8 v2, v2, 0x3

    .line 97
    .line 98
    and-int/lit8 v2, v2, 0x70

    .line 99
    .line 100
    or-int/2addr v1, v2

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-static {p2, v2}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-interface {p2}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {p2, p0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    shl-int/lit8 v1, v1, 0x6

    .line 121
    .line 122
    and-int/lit16 v1, v1, 0x380

    .line 123
    .line 124
    or-int/lit8 v1, v1, 0x6

    .line 125
    .line 126
    invoke-interface {p2}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    instance-of v7, v7, Landroidx/compose/runtime/f;

    .line 131
    .line 132
    if-nez v7, :cond_a

    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    .line 135
    .line 136
    .line 137
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/i;->C()V

    .line 138
    .line 139
    .line 140
    invoke-interface {p2}, Landroidx/compose/runtime/i;->e()Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_b

    .line 145
    .line 146
    invoke-interface {p2, v6}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_b
    invoke-interface {p2}, Landroidx/compose/runtime/i;->o()V

    .line 151
    .line 152
    .line 153
    :goto_5
    invoke-static {p2}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-interface {v6}, Landroidx/compose/runtime/i;->e()Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_c

    .line 180
    .line 181
    invoke-interface {v6}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_d

    .line 194
    .line 195
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-interface {v6, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-interface {v6, v2, v0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    shr-int/lit8 v0, v1, 0x6

    .line 217
    .line 218
    and-int/lit8 v0, v0, 0xe

    .line 219
    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-interface {p2}, Landroidx/compose/runtime/i;->r()V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_e

    .line 235
    .line 236
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 237
    .line 238
    .line 239
    :cond_e
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    if-eqz p2, :cond_f

    .line 244
    .line 245
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;

    .line 246
    .line 247
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$2;-><init>(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;II)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p2, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    :cond_f
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/a3;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->b(Landroidx/compose/runtime/a3;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/window/AndroidDialog_androidKt;->c(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
