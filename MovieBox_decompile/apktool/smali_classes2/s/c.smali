.class public final Ls/c;
.super Ls/h;
.source "source.java"


# instance fields
.field private final a:Ls/g;

.field private final b:Ls/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls/g;

    .line 5
    .line 6
    invoke-direct {v0}, Ls/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls/c;->a:Ls/g;

    .line 10
    .line 11
    new-instance v0, Ls/g;

    .line 12
    .line 13
    invoke-direct {v0}, Ls/g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ls/c;->b:Ls/g;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->b:Ls/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/g;->m()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/c;->a:Ls/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Ls/g;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/c;)V
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
    iget-object v3, v0, Ls/c;->a:Ls/g;

    .line 8
    .line 9
    sget-object v4, Ls/d$n;->c:Ls/d$n;

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Ls/g;->y(Ls/d;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Ls/g$c;->a(Ls/g;)Ls/g;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x0

    .line 19
    invoke-static {v6}, Ls/d$t;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    move-object/from16 v8, p1

    .line 24
    .line 25
    invoke-static {v5, v7, v8}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v6}, Ls/d$q;->a(I)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    invoke-static {v5, v7, v1}, Ls/g$c;->c(Ls/g;II)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    invoke-static {v7}, Ls/d$t;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    invoke-static {v5, v8, v2}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Ls/g;->f(Ls/g;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v4}, Ls/d;->b()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-static {v3, v8}, Ls/g;->a(Ls/g;I)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-ne v5, v8, :cond_0

    .line 56
    .line 57
    invoke-static {v3}, Ls/g;->g(Ls/g;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {v4}, Ls/d;->d()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-static {v3, v8}, Ls/g;->a(Ls/g;I)I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-ne v5, v8, :cond_0

    .line 70
    .line 71
    move v5, v7

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move v5, v6

    .line 74
    :goto_0
    const-string v8, ")."

    .line 75
    .line 76
    const-string v9, " object arguments ("

    .line 77
    .line 78
    const-string v10, ") and "

    .line 79
    .line 80
    const-string v11, " int arguments ("

    .line 81
    .line 82
    const-string v12, ". Not all arguments were provided. Missing "

    .line 83
    .line 84
    const-string v13, "Error while pushing "

    .line 85
    .line 86
    const-string v14, "StringBuilder().apply(builderAction).toString()"

    .line 87
    .line 88
    const-string v15, ", "

    .line 89
    .line 90
    if-nez v5, :cond_7

    .line 91
    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ls/d;->b()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_1
    if-ge v2, v6, :cond_3

    .line 104
    .line 105
    shl-int v17, v7, v2

    .line 106
    .line 107
    invoke-static {v3}, Ls/g;->f(Ls/g;)I

    .line 108
    .line 109
    .line 110
    move-result v18

    .line 111
    and-int v17, v17, v18

    .line 112
    .line 113
    if-eqz v17, :cond_2

    .line 114
    .line 115
    if-lez v1, :cond_1

    .line 116
    .line 117
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-static {v2}, Ls/d$q;->a(I)I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-virtual {v4, v7}, Ls/d;->e(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ls/d;->d()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    const/4 v0, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    :goto_2
    if-ge v7, v6, :cond_6

    .line 156
    .line 157
    const/16 v17, 0x1

    .line 158
    .line 159
    shl-int v18, v17, v7

    .line 160
    .line 161
    invoke-static {v3}, Ls/g;->g(Ls/g;)I

    .line 162
    .line 163
    .line 164
    move-result v17

    .line 165
    and-int v17, v18, v17

    .line 166
    .line 167
    if-eqz v17, :cond_5

    .line 168
    .line 169
    if-lez v1, :cond_4

    .line 170
    .line 171
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    :cond_4
    move-object/from16 v17, v3

    .line 175
    .line 176
    invoke-static {v7}, Ls/d$t;->a(I)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v4, v3}, Ls/d;->f(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    move-object/from16 v17, v3

    .line 191
    .line 192
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 193
    .line 194
    move-object/from16 v3, v17

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    move-object/from16 v0, p0

    .line 250
    .line 251
    iget-object v1, v0, Ls/c;->b:Ls/g;

    .line 252
    .line 253
    sget-object v2, Ls/d$u;->c:Ls/d$u;

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ls/g;->y(Ls/d;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v1}, Ls/g$c;->a(Ls/g;)Ls/g;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const/4 v4, 0x0

    .line 263
    invoke-static {v4}, Ls/d$q;->a(I)I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    move/from16 v6, p2

    .line 268
    .line 269
    invoke-static {v3, v5, v6}, Ls/g$c;->c(Ls/g;II)V

    .line 270
    .line 271
    .line 272
    invoke-static {v4}, Ls/d$t;->a(I)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    move-object/from16 v6, p3

    .line 277
    .line 278
    invoke-static {v3, v5, v6}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v1}, Ls/g;->f(Ls/g;)I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    invoke-virtual {v2}, Ls/d;->b()I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-static {v1, v5}, Ls/g;->a(Ls/g;I)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-ne v3, v5, :cond_8

    .line 294
    .line 295
    invoke-static {v1}, Ls/g;->g(Ls/g;)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-virtual {v2}, Ls/d;->d()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-static {v1, v5}, Ls/g;->a(Ls/g;I)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-ne v3, v5, :cond_8

    .line 308
    .line 309
    const/4 v3, 0x1

    .line 310
    goto :goto_4

    .line 311
    :cond_8
    move v3, v4

    .line 312
    :goto_4
    if-nez v3, :cond_f

    .line 313
    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Ls/d;->b()I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    move v6, v4

    .line 324
    move v7, v6

    .line 325
    :goto_5
    if-ge v6, v5, :cond_b

    .line 326
    .line 327
    const/16 v16, 0x1

    .line 328
    .line 329
    shl-int v17, v16, v6

    .line 330
    .line 331
    invoke-static {v1}, Ls/g;->f(Ls/g;)I

    .line 332
    .line 333
    .line 334
    move-result v16

    .line 335
    and-int v16, v17, v16

    .line 336
    .line 337
    if-eqz v16, :cond_a

    .line 338
    .line 339
    if-lez v7, :cond_9

    .line 340
    .line 341
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    :cond_9
    invoke-static {v6}, Ls/d$q;->a(I)I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    invoke-virtual {v2, v4}, Ls/d;->e(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    add-int/lit8 v7, v7, 0x1

    .line 356
    .line 357
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 358
    .line 359
    const/4 v4, 0x0

    .line 360
    goto :goto_5

    .line 361
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ls/d;->d()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    const/4 v0, 0x0

    .line 378
    const/4 v6, 0x0

    .line 379
    :goto_6
    if-ge v6, v5, :cond_e

    .line 380
    .line 381
    const/16 v16, 0x1

    .line 382
    .line 383
    shl-int v17, v16, v6

    .line 384
    .line 385
    invoke-static {v1}, Ls/g;->g(Ls/g;)I

    .line 386
    .line 387
    .line 388
    move-result v18

    .line 389
    and-int v17, v17, v18

    .line 390
    .line 391
    if-eqz v17, :cond_d

    .line 392
    .line 393
    if-lez v7, :cond_c

    .line 394
    .line 395
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    :cond_c
    move-object/from16 v17, v1

    .line 399
    .line 400
    invoke-static {v6}, Ls/d$t;->a(I)I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-virtual {v2, v1}, Ls/d;->f(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    add-int/lit8 v0, v0, 0x1

    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_d
    move-object/from16 v17, v1

    .line 415
    .line 416
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 417
    .line 418
    move-object/from16 v1, v17

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_f
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls/c;->b:Ls/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/g;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Cannot end node insertion, there are no pending operations that can be realized."

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ls/c;->b:Ls/g;

    .line 15
    .line 16
    iget-object v1, p0, Ls/c;->a:Ls/g;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ls/g;->w(Ls/g;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->b:Ls/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/g;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ls/c;->a:Ls/g;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3}, Ls/g;->r(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls/c;->a:Ls/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/g;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 11

    .line 1
    iget-object v0, p0, Ls/c;->a:Ls/g;

    .line 2
    .line 3
    sget-object v1, Ls/d$e0;->c:Ls/d$e0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/g;->y(Ls/d;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ls/g$c;->a(Ls/g;)Ls/g;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ls/d$t;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v2, v4, p1}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ls/d$t;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    .line 26
    .line 27
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-static {p2, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    invoke-static {v2, v4, p2}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ls/g;->f(Ls/g;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {v1}, Ls/d;->b()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v0, v2}, Ls/g;->a(Ls/g;I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne p2, v2, :cond_0

    .line 53
    .line 54
    invoke-static {v0}, Ls/g;->g(Ls/g;)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {v1}, Ls/d;->d()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v0, v2}, Ls/g;->a(Ls/g;I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-ne p2, v2, :cond_0

    .line 67
    .line 68
    move p2, p1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move p2, v3

    .line 71
    :goto_0
    if-nez p2, :cond_7

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ls/d;->b()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    move v4, v3

    .line 83
    move v5, v4

    .line 84
    :goto_1
    const-string v6, ", "

    .line 85
    .line 86
    if-ge v4, v2, :cond_3

    .line 87
    .line 88
    shl-int v7, p1, v4

    .line 89
    .line 90
    invoke-static {v0}, Ls/g;->f(Ls/g;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    and-int/2addr v7, v8

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    if-lez v5, :cond_1

    .line 98
    .line 99
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-static {v4}, Ls/d$q;->a(I)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-virtual {v1, v6}, Ls/d;->e(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    const-string v2, "StringBuilder().apply(builderAction).toString()"

    .line 123
    .line 124
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ls/d;->d()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    move v8, v3

    .line 137
    :goto_2
    if-ge v3, v7, :cond_6

    .line 138
    .line 139
    shl-int v9, p1, v3

    .line 140
    .line 141
    invoke-static {v0}, Ls/g;->g(Ls/g;)I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    and-int/2addr v9, v10

    .line 146
    if-eqz v9, :cond_5

    .line 147
    .line 148
    if-lez v5, :cond_4

    .line 149
    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-static {v3}, Ls/d$t;->a(I)I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual {v1, v9}, Ls/d;->f(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    add-int/lit8 v8, v8, 0x1

    .line 165
    .line 166
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v2, "Error while pushing "

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v1, ". Not all arguments were provided. Missing "

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, " int arguments ("

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p2, ") and "

    .line 206
    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string p2, " object arguments ("

    .line 214
    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p1, ")."

    .line 222
    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    return-void
.end method
