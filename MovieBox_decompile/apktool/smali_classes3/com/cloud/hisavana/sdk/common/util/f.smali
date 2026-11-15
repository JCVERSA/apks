.class public Lcom/cloud/hisavana/sdk/common/util/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 37

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move-object/from16 v3, p0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    move-object/from16 v4, p0

    .line 15
    .line 16
    invoke-virtual {v4, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :goto_0
    if-ge v0, v2, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    mul-int v14, v12, v13

    .line 32
    .line 33
    new-array v15, v14, [I

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v4, v3

    .line 39
    move-object v5, v15

    .line 40
    move v7, v12

    .line 41
    move v10, v12

    .line 42
    move v11, v13

    .line 43
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v4, v12, -0x1

    .line 47
    .line 48
    add-int/lit8 v5, v13, -0x1

    .line 49
    .line 50
    add-int v6, v0, v0

    .line 51
    .line 52
    add-int/lit8 v7, v6, 0x1

    .line 53
    .line 54
    new-array v8, v14, [I

    .line 55
    .line 56
    new-array v9, v14, [I

    .line 57
    .line 58
    new-array v10, v14, [I

    .line 59
    .line 60
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    new-array v11, v11, [I

    .line 65
    .line 66
    const/4 v14, 0x2

    .line 67
    add-int/2addr v6, v14

    .line 68
    shr-int/2addr v6, v2

    .line 69
    mul-int/2addr v6, v6

    .line 70
    mul-int/lit16 v1, v6, 0x100

    .line 71
    .line 72
    new-array v2, v1, [I

    .line 73
    .line 74
    const/4 v14, 0x0

    .line 75
    :goto_1
    if-ge v14, v1, :cond_2

    .line 76
    .line 77
    div-int v17, v14, v6

    .line 78
    .line 79
    aput v17, v2, v14

    .line 80
    .line 81
    add-int/lit8 v14, v14, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_2
    const/4 v1, 0x2

    .line 88
    new-array v6, v1, [I

    .line 89
    .line 90
    const/4 v1, 0x3

    .line 91
    const/4 v14, 0x1

    .line 92
    aput v1, v6, v14

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    aput v7, v6, v1

    .line 96
    .line 97
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, [[I

    .line 104
    .line 105
    add-int/lit8 v6, v0, 0x1

    .line 106
    .line 107
    const/4 v14, 0x0

    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    :goto_2
    if-ge v14, v13, :cond_7

    .line 113
    .line 114
    move-object/from16 v19, v3

    .line 115
    .line 116
    neg-int v3, v0

    .line 117
    move/from16 v28, v13

    .line 118
    .line 119
    const/16 v20, 0x0

    .line 120
    .line 121
    const/16 v21, 0x0

    .line 122
    .line 123
    const/16 v22, 0x0

    .line 124
    .line 125
    const/16 v23, 0x0

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    const/16 v25, 0x0

    .line 130
    .line 131
    const/16 v26, 0x0

    .line 132
    .line 133
    const/16 v27, 0x0

    .line 134
    .line 135
    move v13, v3

    .line 136
    const/4 v3, 0x0

    .line 137
    :goto_3
    const v29, 0xff00

    .line 138
    .line 139
    .line 140
    const/high16 v30, 0xff0000

    .line 141
    .line 142
    if-gt v13, v0, :cond_4

    .line 143
    .line 144
    move/from16 v31, v5

    .line 145
    .line 146
    move-object/from16 v32, v11

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    add-int v5, v17, v5

    .line 158
    .line 159
    aget v5, v15, v5

    .line 160
    .line 161
    add-int v11, v13, v0

    .line 162
    .line 163
    aget-object v11, v1, v11

    .line 164
    .line 165
    and-int v30, v5, v30

    .line 166
    .line 167
    shr-int/lit8 v30, v30, 0x10

    .line 168
    .line 169
    const/16 v33, 0x0

    .line 170
    .line 171
    aput v30, v11, v33

    .line 172
    .line 173
    and-int v29, v5, v29

    .line 174
    .line 175
    shr-int/lit8 v29, v29, 0x8

    .line 176
    .line 177
    const/16 v16, 0x1

    .line 178
    .line 179
    aput v29, v11, v16

    .line 180
    .line 181
    and-int/lit16 v5, v5, 0xff

    .line 182
    .line 183
    const/16 v29, 0x2

    .line 184
    .line 185
    aput v5, v11, v29

    .line 186
    .line 187
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    sub-int v5, v6, v5

    .line 192
    .line 193
    const/16 v29, 0x0

    .line 194
    .line 195
    aget v30, v11, v29

    .line 196
    .line 197
    mul-int v29, v30, v5

    .line 198
    .line 199
    add-int v21, v21, v29

    .line 200
    .line 201
    const/16 v16, 0x1

    .line 202
    .line 203
    aget v29, v11, v16

    .line 204
    .line 205
    mul-int v33, v29, v5

    .line 206
    .line 207
    add-int v20, v20, v33

    .line 208
    .line 209
    const/16 v33, 0x2

    .line 210
    .line 211
    aget v11, v11, v33

    .line 212
    .line 213
    mul-int/2addr v5, v11

    .line 214
    add-int/2addr v3, v5

    .line 215
    if-lez v13, :cond_3

    .line 216
    .line 217
    add-int v25, v25, v30

    .line 218
    .line 219
    add-int v27, v27, v29

    .line 220
    .line 221
    add-int v26, v26, v11

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_3
    add-int v24, v24, v30

    .line 225
    .line 226
    add-int v23, v23, v29

    .line 227
    .line 228
    add-int v22, v22, v11

    .line 229
    .line 230
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 231
    .line 232
    move/from16 v5, v31

    .line 233
    .line 234
    move-object/from16 v11, v32

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_4
    move/from16 v31, v5

    .line 238
    .line 239
    move-object/from16 v32, v11

    .line 240
    .line 241
    move v11, v0

    .line 242
    move v5, v3

    .line 243
    const/4 v3, 0x0

    .line 244
    :goto_5
    if-ge v3, v12, :cond_6

    .line 245
    .line 246
    aget v13, v2, v21

    .line 247
    .line 248
    aput v13, v8, v17

    .line 249
    .line 250
    aget v13, v2, v20

    .line 251
    .line 252
    aput v13, v9, v17

    .line 253
    .line 254
    aget v13, v2, v5

    .line 255
    .line 256
    aput v13, v10, v17

    .line 257
    .line 258
    sub-int v21, v21, v24

    .line 259
    .line 260
    sub-int v20, v20, v23

    .line 261
    .line 262
    sub-int v5, v5, v22

    .line 263
    .line 264
    sub-int v13, v11, v0

    .line 265
    .line 266
    add-int/2addr v13, v7

    .line 267
    rem-int/2addr v13, v7

    .line 268
    aget-object v13, v1, v13

    .line 269
    .line 270
    const/16 v33, 0x0

    .line 271
    .line 272
    aget v34, v13, v33

    .line 273
    .line 274
    sub-int v24, v24, v34

    .line 275
    .line 276
    const/16 v16, 0x1

    .line 277
    .line 278
    aget v33, v13, v16

    .line 279
    .line 280
    sub-int v23, v23, v33

    .line 281
    .line 282
    const/16 v33, 0x2

    .line 283
    .line 284
    aget v34, v13, v33

    .line 285
    .line 286
    sub-int v22, v22, v34

    .line 287
    .line 288
    if-nez v14, :cond_5

    .line 289
    .line 290
    add-int v33, v3, v0

    .line 291
    .line 292
    move-object/from16 v34, v2

    .line 293
    .line 294
    add-int/lit8 v2, v33, 0x1

    .line 295
    .line 296
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    aput v2, v32, v3

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_5
    move-object/from16 v34, v2

    .line 304
    .line 305
    :goto_6
    aget v2, v32, v3

    .line 306
    .line 307
    add-int v2, v18, v2

    .line 308
    .line 309
    aget v2, v15, v2

    .line 310
    .line 311
    and-int v33, v2, v30

    .line 312
    .line 313
    shr-int/lit8 v33, v33, 0x10

    .line 314
    .line 315
    const/16 v35, 0x0

    .line 316
    .line 317
    aput v33, v13, v35

    .line 318
    .line 319
    and-int v35, v2, v29

    .line 320
    .line 321
    shr-int/lit8 v35, v35, 0x8

    .line 322
    .line 323
    const/16 v16, 0x1

    .line 324
    .line 325
    aput v35, v13, v16

    .line 326
    .line 327
    and-int/lit16 v2, v2, 0xff

    .line 328
    .line 329
    const/16 v36, 0x2

    .line 330
    .line 331
    aput v2, v13, v36

    .line 332
    .line 333
    add-int v25, v25, v33

    .line 334
    .line 335
    add-int v27, v27, v35

    .line 336
    .line 337
    add-int v26, v26, v2

    .line 338
    .line 339
    add-int v21, v21, v25

    .line 340
    .line 341
    add-int v20, v20, v27

    .line 342
    .line 343
    add-int v5, v5, v26

    .line 344
    .line 345
    add-int/lit8 v11, v11, 0x1

    .line 346
    .line 347
    rem-int/2addr v11, v7

    .line 348
    rem-int v2, v11, v7

    .line 349
    .line 350
    aget-object v2, v1, v2

    .line 351
    .line 352
    const/4 v13, 0x0

    .line 353
    aget v33, v2, v13

    .line 354
    .line 355
    add-int v24, v24, v33

    .line 356
    .line 357
    const/4 v13, 0x1

    .line 358
    aget v35, v2, v13

    .line 359
    .line 360
    add-int v23, v23, v35

    .line 361
    .line 362
    const/4 v13, 0x2

    .line 363
    aget v2, v2, v13

    .line 364
    .line 365
    add-int v22, v22, v2

    .line 366
    .line 367
    sub-int v25, v25, v33

    .line 368
    .line 369
    sub-int v27, v27, v35

    .line 370
    .line 371
    sub-int v26, v26, v2

    .line 372
    .line 373
    add-int/lit8 v17, v17, 0x1

    .line 374
    .line 375
    add-int/lit8 v3, v3, 0x1

    .line 376
    .line 377
    move-object/from16 v2, v34

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_6
    move-object/from16 v34, v2

    .line 382
    .line 383
    add-int v18, v18, v12

    .line 384
    .line 385
    add-int/lit8 v14, v14, 0x1

    .line 386
    .line 387
    move-object/from16 v3, v19

    .line 388
    .line 389
    move/from16 v13, v28

    .line 390
    .line 391
    move/from16 v5, v31

    .line 392
    .line 393
    move-object/from16 v11, v32

    .line 394
    .line 395
    goto/16 :goto_2

    .line 396
    .line 397
    :cond_7
    move-object/from16 v34, v2

    .line 398
    .line 399
    move-object/from16 v19, v3

    .line 400
    .line 401
    move/from16 v31, v5

    .line 402
    .line 403
    move-object/from16 v32, v11

    .line 404
    .line 405
    move/from16 v28, v13

    .line 406
    .line 407
    const/4 v2, 0x0

    .line 408
    :goto_7
    if-ge v2, v12, :cond_d

    .line 409
    .line 410
    neg-int v3, v0

    .line 411
    mul-int v4, v3, v12

    .line 412
    .line 413
    move/from16 v21, v7

    .line 414
    .line 415
    move-object/from16 v22, v15

    .line 416
    .line 417
    const/4 v5, 0x0

    .line 418
    const/4 v11, 0x0

    .line 419
    const/4 v13, 0x0

    .line 420
    const/4 v14, 0x0

    .line 421
    const/16 v17, 0x0

    .line 422
    .line 423
    const/16 v18, 0x0

    .line 424
    .line 425
    const/16 v20, 0x0

    .line 426
    .line 427
    move v7, v3

    .line 428
    move v15, v4

    .line 429
    const/4 v3, 0x0

    .line 430
    const/4 v4, 0x0

    .line 431
    :goto_8
    if-gt v7, v0, :cond_a

    .line 432
    .line 433
    move/from16 v23, v12

    .line 434
    .line 435
    const/4 v12, 0x0

    .line 436
    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    .line 437
    .line 438
    .line 439
    move-result v24

    .line 440
    add-int v24, v24, v2

    .line 441
    .line 442
    add-int v25, v7, v0

    .line 443
    .line 444
    aget-object v25, v1, v25

    .line 445
    .line 446
    aget v26, v8, v24

    .line 447
    .line 448
    aput v26, v25, v12

    .line 449
    .line 450
    aget v12, v9, v24

    .line 451
    .line 452
    const/16 v16, 0x1

    .line 453
    .line 454
    aput v12, v25, v16

    .line 455
    .line 456
    aget v12, v10, v24

    .line 457
    .line 458
    const/16 v26, 0x2

    .line 459
    .line 460
    aput v12, v25, v26

    .line 461
    .line 462
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    sub-int v12, v6, v12

    .line 467
    .line 468
    aget v26, v8, v24

    .line 469
    .line 470
    mul-int v26, v26, v12

    .line 471
    .line 472
    add-int v5, v5, v26

    .line 473
    .line 474
    aget v26, v9, v24

    .line 475
    .line 476
    mul-int v26, v26, v12

    .line 477
    .line 478
    add-int v4, v4, v26

    .line 479
    .line 480
    aget v24, v10, v24

    .line 481
    .line 482
    mul-int v24, v24, v12

    .line 483
    .line 484
    add-int v3, v3, v24

    .line 485
    .line 486
    if-lez v7, :cond_8

    .line 487
    .line 488
    const/4 v12, 0x0

    .line 489
    aget v24, v25, v12

    .line 490
    .line 491
    add-int v20, v20, v24

    .line 492
    .line 493
    const/4 v12, 0x1

    .line 494
    aget v24, v25, v12

    .line 495
    .line 496
    add-int v18, v18, v24

    .line 497
    .line 498
    const/4 v12, 0x2

    .line 499
    aget v24, v25, v12

    .line 500
    .line 501
    add-int v17, v17, v24

    .line 502
    .line 503
    :goto_9
    move/from16 v12, v31

    .line 504
    .line 505
    goto :goto_a

    .line 506
    :cond_8
    const/4 v12, 0x0

    .line 507
    aget v24, v25, v12

    .line 508
    .line 509
    add-int v14, v14, v24

    .line 510
    .line 511
    const/4 v12, 0x1

    .line 512
    aget v24, v25, v12

    .line 513
    .line 514
    add-int v13, v13, v24

    .line 515
    .line 516
    const/4 v12, 0x2

    .line 517
    aget v24, v25, v12

    .line 518
    .line 519
    add-int v11, v11, v24

    .line 520
    .line 521
    goto :goto_9

    .line 522
    :goto_a
    if-ge v7, v12, :cond_9

    .line 523
    .line 524
    add-int v15, v15, v23

    .line 525
    .line 526
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 527
    .line 528
    move/from16 v31, v12

    .line 529
    .line 530
    move/from16 v12, v23

    .line 531
    .line 532
    goto :goto_8

    .line 533
    :cond_a
    move/from16 v23, v12

    .line 534
    .line 535
    move/from16 v12, v31

    .line 536
    .line 537
    move/from16 v24, v0

    .line 538
    .line 539
    move/from16 v25, v2

    .line 540
    .line 541
    move v7, v5

    .line 542
    move/from16 v15, v28

    .line 543
    .line 544
    move v5, v4

    .line 545
    move v4, v3

    .line 546
    const/4 v3, 0x0

    .line 547
    :goto_b
    if-ge v3, v15, :cond_c

    .line 548
    .line 549
    aget v26, v22, v25

    .line 550
    .line 551
    const/high16 v27, -0x1000000

    .line 552
    .line 553
    and-int v26, v26, v27

    .line 554
    .line 555
    aget v27, v34, v7

    .line 556
    .line 557
    shl-int/lit8 v27, v27, 0x10

    .line 558
    .line 559
    or-int v26, v26, v27

    .line 560
    .line 561
    aget v27, v34, v5

    .line 562
    .line 563
    shl-int/lit8 v27, v27, 0x8

    .line 564
    .line 565
    or-int v26, v26, v27

    .line 566
    .line 567
    aget v27, v34, v4

    .line 568
    .line 569
    or-int v26, v26, v27

    .line 570
    .line 571
    aput v26, v22, v25

    .line 572
    .line 573
    sub-int/2addr v7, v14

    .line 574
    sub-int/2addr v5, v13

    .line 575
    sub-int/2addr v4, v11

    .line 576
    sub-int v26, v24, v0

    .line 577
    .line 578
    add-int v26, v26, v21

    .line 579
    .line 580
    rem-int v26, v26, v21

    .line 581
    .line 582
    aget-object v26, v1, v26

    .line 583
    .line 584
    const/16 v27, 0x0

    .line 585
    .line 586
    aget v28, v26, v27

    .line 587
    .line 588
    sub-int v14, v14, v28

    .line 589
    .line 590
    const/16 v16, 0x1

    .line 591
    .line 592
    aget v27, v26, v16

    .line 593
    .line 594
    sub-int v13, v13, v27

    .line 595
    .line 596
    const/16 v27, 0x2

    .line 597
    .line 598
    aget v28, v26, v27

    .line 599
    .line 600
    sub-int v11, v11, v28

    .line 601
    .line 602
    if-nez v2, :cond_b

    .line 603
    .line 604
    add-int v0, v3, v6

    .line 605
    .line 606
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    mul-int v0, v0, v23

    .line 611
    .line 612
    aput v0, v32, v3

    .line 613
    .line 614
    :cond_b
    aget v0, v32, v3

    .line 615
    .line 616
    add-int/2addr v0, v2

    .line 617
    aget v27, v8, v0

    .line 618
    .line 619
    const/16 v28, 0x0

    .line 620
    .line 621
    aput v27, v26, v28

    .line 622
    .line 623
    aget v28, v9, v0

    .line 624
    .line 625
    const/16 v16, 0x1

    .line 626
    .line 627
    aput v28, v26, v16

    .line 628
    .line 629
    aget v0, v10, v0

    .line 630
    .line 631
    const/16 v29, 0x2

    .line 632
    .line 633
    aput v0, v26, v29

    .line 634
    .line 635
    add-int v20, v20, v27

    .line 636
    .line 637
    add-int v18, v18, v28

    .line 638
    .line 639
    add-int v17, v17, v0

    .line 640
    .line 641
    add-int v7, v7, v20

    .line 642
    .line 643
    add-int v5, v5, v18

    .line 644
    .line 645
    add-int v4, v4, v17

    .line 646
    .line 647
    add-int/lit8 v24, v24, 0x1

    .line 648
    .line 649
    rem-int v24, v24, v21

    .line 650
    .line 651
    aget-object v0, v1, v24

    .line 652
    .line 653
    const/16 v26, 0x0

    .line 654
    .line 655
    aget v27, v0, v26

    .line 656
    .line 657
    add-int v14, v14, v27

    .line 658
    .line 659
    const/16 v16, 0x1

    .line 660
    .line 661
    aget v28, v0, v16

    .line 662
    .line 663
    add-int v13, v13, v28

    .line 664
    .line 665
    const/16 v29, 0x2

    .line 666
    .line 667
    aget v0, v0, v29

    .line 668
    .line 669
    add-int/2addr v11, v0

    .line 670
    sub-int v20, v20, v27

    .line 671
    .line 672
    sub-int v18, v18, v28

    .line 673
    .line 674
    sub-int v17, v17, v0

    .line 675
    .line 676
    add-int v25, v25, v23

    .line 677
    .line 678
    add-int/lit8 v3, v3, 0x1

    .line 679
    .line 680
    move/from16 v0, p1

    .line 681
    .line 682
    goto/16 :goto_b

    .line 683
    .line 684
    :cond_c
    const/16 v16, 0x1

    .line 685
    .line 686
    const/16 v26, 0x0

    .line 687
    .line 688
    const/16 v29, 0x2

    .line 689
    .line 690
    add-int/lit8 v2, v2, 0x1

    .line 691
    .line 692
    move/from16 v0, p1

    .line 693
    .line 694
    move/from16 v31, v12

    .line 695
    .line 696
    move/from16 v28, v15

    .line 697
    .line 698
    move/from16 v7, v21

    .line 699
    .line 700
    move-object/from16 v15, v22

    .line 701
    .line 702
    move/from16 v12, v23

    .line 703
    .line 704
    goto/16 :goto_7

    .line 705
    .line 706
    :cond_d
    move/from16 v23, v12

    .line 707
    .line 708
    move-object/from16 v22, v15

    .line 709
    .line 710
    move/from16 v15, v28

    .line 711
    .line 712
    const/4 v8, 0x0

    .line 713
    const/4 v9, 0x0

    .line 714
    const/4 v6, 0x0

    .line 715
    move-object/from16 v4, v19

    .line 716
    .line 717
    move-object/from16 v5, v22

    .line 718
    .line 719
    move/from16 v7, v23

    .line 720
    .line 721
    move/from16 v10, v23

    .line 722
    .line 723
    move v11, v15

    .line 724
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    .line 726
    .line 727
    return-object v19

    .line 728
    :goto_c
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/4 v1, 0x0

    .line 740
    return-object v1
.end method
