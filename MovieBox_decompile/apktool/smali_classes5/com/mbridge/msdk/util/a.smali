.class public Lcom/mbridge/msdk/util/a;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 17

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const-string v2, "errorCode: "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0xf

    .line 19
    .line 20
    const/16 v4, 0x10

    .line 21
    .line 22
    const/16 v5, 0xb

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-le v2, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto/16 :goto_10

    .line 43
    .line 44
    :cond_1
    const-string v2, "do not have sorceList"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v6, 0x1

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    add-int/lit16 v0, v1, 0x258

    .line 54
    .line 55
    :goto_0
    move v3, v6

    .line 56
    goto/16 :goto_f

    .line 57
    .line 58
    :cond_2
    const-string v2, "Network error,UnknownHostException"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v7, 0x2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    add-int/lit16 v0, v1, 0x258

    .line 68
    .line 69
    :goto_1
    move v3, v7

    .line 70
    goto/16 :goto_f

    .line 71
    .line 72
    :cond_3
    const-string v2, "v3 is timeout"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v8, 0x3

    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    add-int/lit16 v0, v1, 0x258

    .line 82
    .line 83
    :goto_2
    move v3, v8

    .line 84
    goto/16 :goto_f

    .line 85
    .line 86
    :cond_4
    const-string v2, "Current unit is loading!"

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v9, 0x4

    .line 93
    if-nez v2, :cond_2a

    .line 94
    .line 95
    const-string v2, "current unit is loading"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    goto/16 :goto_e

    .line 104
    .line 105
    :cond_5
    const-string v2, "Network error,I/O exception response null"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const/4 v10, 0x5

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    add-int/lit16 v0, v1, 0x258

    .line 115
    .line 116
    :goto_3
    move v3, v10

    .line 117
    goto/16 :goto_f

    .line 118
    .line 119
    :cond_6
    const-string v2, "Network error,ConnectException"

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    const/4 v11, 0x6

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    add-int/lit16 v0, v1, 0x258

    .line 129
    .line 130
    :goto_4
    move v3, v11

    .line 131
    goto/16 :goto_f

    .line 132
    .line 133
    :cond_7
    const-string v2, "Network error,socket timeout exception"

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const/4 v12, 0x7

    .line 140
    if-eqz v2, :cond_8

    .line 141
    .line 142
    add-int/lit16 v0, v1, 0x258

    .line 143
    .line 144
    :goto_5
    move v3, v12

    .line 145
    goto/16 :goto_f

    .line 146
    .line 147
    :cond_8
    const-string v2, "Network error,disconnected network exception"

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/16 v13, 0x8

    .line 154
    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    add-int/lit16 v0, v1, 0x258

    .line 158
    .line 159
    :goto_6
    move v3, v13

    .line 160
    goto/16 :goto_f

    .line 161
    .line 162
    :cond_9
    const-string v2, "Network error,timeout exception"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/16 v14, 0x9

    .line 169
    .line 170
    if-eqz v2, :cond_a

    .line 171
    .line 172
    add-int/lit16 v0, v1, 0x258

    .line 173
    .line 174
    :goto_7
    move v3, v14

    .line 175
    goto/16 :goto_f

    .line 176
    .line 177
    :cond_a
    const-string v2, "Network error,please check state code"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    const/16 v15, 0xa

    .line 184
    .line 185
    if-eqz v2, :cond_b

    .line 186
    .line 187
    add-int/lit16 v0, v1, 0x258

    .line 188
    .line 189
    :goto_8
    move v3, v15

    .line 190
    goto/16 :goto_f

    .line 191
    .line 192
    :cond_b
    const-string v2, "Network error,I/O exception contents null"

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_c

    .line 199
    .line 200
    add-int/lit16 v0, v1, 0x258

    .line 201
    .line 202
    :goto_9
    move v3, v5

    .line 203
    goto/16 :goto_f

    .line 204
    .line 205
    :cond_c
    const-string v2, "Network unknown error"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/16 v16, 0xc

    .line 212
    .line 213
    if-eqz v2, :cond_d

    .line 214
    .line 215
    add-int/lit16 v0, v1, 0x258

    .line 216
    .line 217
    :goto_a
    move/from16 v3, v16

    .line 218
    .line 219
    goto/16 :goto_f

    .line 220
    .line 221
    :cond_d
    const-string v2, "Network error,I/O exception"

    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_e

    .line 228
    .line 229
    add-int/lit16 v0, v1, 0x258

    .line 230
    .line 231
    const/16 v3, 0xd

    .line 232
    .line 233
    goto/16 :goto_f

    .line 234
    .line 235
    :cond_e
    const-string v2, "web env is not support"

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_f

    .line 242
    .line 243
    add-int/lit16 v0, v1, 0x258

    .line 244
    .line 245
    const/16 v3, 0xe

    .line 246
    .line 247
    goto/16 :goto_f

    .line 248
    .line 249
    :cond_f
    const-string v2, "Network error,unknown"

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_10

    .line 256
    .line 257
    add-int/lit16 v0, v1, 0x258

    .line 258
    .line 259
    goto/16 :goto_f

    .line 260
    .line 261
    :cond_10
    const-string v2, "Network error\uff0csslp exception"

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_11

    .line 268
    .line 269
    add-int/lit16 v0, v1, 0x258

    .line 270
    .line 271
    move v3, v4

    .line 272
    goto/16 :goto_f

    .line 273
    .line 274
    :cond_11
    const-string v2, "Cast exception, return data"

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_12

    .line 281
    .line 282
    add-int/lit16 v0, v1, 0x258

    .line 283
    .line 284
    const/16 v3, 0x11

    .line 285
    .line 286
    goto/16 :goto_f

    .line 287
    .line 288
    :cond_12
    const-string v2, "REQUEST_TIMEOUT"

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_13

    .line 295
    .line 296
    add-int/lit16 v0, v1, 0x2bc

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_13
    const-string v2, "The server returns an exception"

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_14

    .line 307
    .line 308
    add-int/lit16 v0, v1, 0x2bc

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_14
    const-string v2, "APP ALREADY INSTALLED"

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-nez v2, :cond_29

    .line 319
    .line 320
    const-string v2, "Need show campaign list is NULL!"

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_15

    .line 327
    .line 328
    goto/16 :goto_d

    .line 329
    .line 330
    :cond_15
    const-string v2, "load no ad"

    .line 331
    .line 332
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-eqz v2, :cond_16

    .line 337
    .line 338
    add-int/lit16 v0, v1, 0x2bc

    .line 339
    .line 340
    :goto_b
    move v3, v9

    .line 341
    goto/16 :goto_f

    .line 342
    .line 343
    :cond_16
    const-string v2, "EXCEPTION_UNIT_NOT_FOUND_IN_APP"

    .line 344
    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_17

    .line 350
    .line 351
    add-int/lit16 v0, v1, 0x2bc

    .line 352
    .line 353
    goto/16 :goto_3

    .line 354
    .line 355
    :cond_17
    const-string v2, "EXCEPTION_UNIT_BIDDING_TYPE_ERROR"

    .line 356
    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_18

    .line 362
    .line 363
    add-int/lit16 v0, v1, 0x2bc

    .line 364
    .line 365
    goto/16 :goto_4

    .line 366
    .line 367
    :cond_18
    const-string v2, "No video campaign"

    .line 368
    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_19

    .line 374
    .line 375
    add-int/lit16 v0, v1, 0x2bc

    .line 376
    .line 377
    goto/16 :goto_5

    .line 378
    .line 379
    :cond_19
    const-string v2, "EXCEPTION_RETURN_EMPTY"

    .line 380
    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    if-eqz v2, :cond_1a

    .line 386
    .line 387
    add-int/lit16 v0, v1, 0x2bc

    .line 388
    .line 389
    goto/16 :goto_6

    .line 390
    .line 391
    :cond_1a
    const-string v2, "EXCEPTION_APP_PLATFORM_ERROR"

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-eqz v2, :cond_1b

    .line 398
    .line 399
    add-int/lit16 v0, v1, 0x2bc

    .line 400
    .line 401
    goto/16 :goto_7

    .line 402
    .line 403
    :cond_1b
    const-string v2, "EXCEPTION_SERVICE_REQUEST_OS_VERSION_REQUIRED"

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_1c

    .line 410
    .line 411
    add-int/lit16 v0, v1, 0x2bc

    .line 412
    .line 413
    goto/16 :goto_8

    .line 414
    .line 415
    :cond_1c
    const-string v2, "banner res load failed"

    .line 416
    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_1d

    .line 422
    .line 423
    add-int/lit16 v0, v1, 0x320

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_1d
    const-string v2, "resource load timeout is tpl: false"

    .line 428
    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_1e

    .line 434
    .line 435
    add-int/lit16 v0, v1, 0x320

    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :cond_1e
    const-string v2, "resource download failed"

    .line 440
    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_1f

    .line 446
    .line 447
    add-int/lit16 v0, v1, 0x320

    .line 448
    .line 449
    goto/16 :goto_2

    .line 450
    .line 451
    :cond_1f
    const-string v2, "temp preload success but isReady false"

    .line 452
    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_20

    .line 458
    .line 459
    add-int/lit16 v0, v1, 0x320

    .line 460
    .line 461
    goto :goto_b

    .line 462
    :cond_20
    const-string v2, "temp resource download failed"

    .line 463
    .line 464
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_21

    .line 469
    .line 470
    add-int/lit16 v0, v1, 0x320

    .line 471
    .line 472
    goto/16 :goto_3

    .line 473
    .line 474
    :cond_21
    const-string v2, "tpl temp resource download failed"

    .line 475
    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_22

    .line 481
    .line 482
    add-int/lit16 v0, v1, 0x320

    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :cond_22
    const-string v2, "resource load timeout is tpl: true"

    .line 487
    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-eqz v2, :cond_23

    .line 493
    .line 494
    add-int/lit16 v0, v1, 0x320

    .line 495
    .line 496
    goto/16 :goto_5

    .line 497
    .line 498
    :cond_23
    const-string v2, "https://"

    .line 499
    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-nez v2, :cond_28

    .line 505
    .line 506
    const-string v2, "http://"

    .line 507
    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    if-eqz v2, :cond_24

    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_24
    const-string v2, "mraid resource write fail"

    .line 516
    .line 517
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    if-eqz v2, :cond_25

    .line 522
    .line 523
    add-int/lit16 v0, v1, 0x320

    .line 524
    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_25
    const-string v2, "data save failed:"

    .line 528
    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_26

    .line 534
    .line 535
    add-int/lit16 v0, v1, 0x320

    .line 536
    .line 537
    goto/16 :goto_8

    .line 538
    .line 539
    :cond_26
    const-string v2, "resource load timeout"

    .line 540
    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_27

    .line 546
    .line 547
    add-int/lit16 v0, v1, 0x320

    .line 548
    .line 549
    goto/16 :goto_9

    .line 550
    .line 551
    :cond_27
    const-string v2, "tpl temp preload failed"

    .line 552
    .line 553
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 554
    .line 555
    .line 556
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    if-eqz v0, :cond_2b

    .line 558
    .line 559
    add-int/lit16 v0, v1, 0x320

    .line 560
    .line 561
    goto/16 :goto_a

    .line 562
    .line 563
    :cond_28
    :goto_c
    add-int/lit16 v0, v1, 0x320

    .line 564
    .line 565
    goto/16 :goto_6

    .line 566
    .line 567
    :cond_29
    :goto_d
    add-int/lit16 v0, v1, 0x2bc

    .line 568
    .line 569
    goto/16 :goto_2

    .line 570
    .line 571
    :cond_2a
    :goto_e
    add-int/lit16 v0, v1, 0x258

    .line 572
    .line 573
    goto/16 :goto_b

    .line 574
    .line 575
    :goto_f
    add-int/2addr v0, v3

    .line 576
    goto :goto_11

    .line 577
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 578
    .line 579
    .line 580
    :cond_2b
    move v0, v1

    .line 581
    :goto_11
    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 1
    add-int/lit16 p0, p0, 0x384

    .line 2
    .line 3
    return p0
.end method
