.class public Lv0/a;
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

.method private static a(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    .line 7
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    .line 9
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    return p0
.end method

.method public static b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "\""

    .line 6
    .line 7
    const-string v4, " on View \""

    .line 8
    .line 9
    const-string v5, "CustomSupport"

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "set"

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    :try_start_0
    sget-object v8, Lv0/a$a;->a:[I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    aget v8, v8, v9

    .line 47
    .line 48
    const/4 v9, 0x3

    .line 49
    const/4 v10, 0x2

    .line 50
    const-wide v11, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const/high16 v13, 0x437f0000    # 255.0f

    .line 56
    .line 57
    packed-switch v8, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :pswitch_0
    new-array v8, v2, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v9, v8, v0

    .line 67
    .line 68
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    aget v8, p2, v0

    .line 73
    .line 74
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object v8, v2, v0

    .line 81
    .line 82
    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :catch_0
    move-exception v0

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :catch_1
    move-exception v0

    .line 91
    move-object v8, v1

    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :catch_2
    move-exception v0

    .line 95
    move-object v8, v1

    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :pswitch_1
    new-array v8, v2, [Ljava/lang/Class;

    .line 99
    .line 100
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    aput-object v9, v8, v0

    .line 103
    .line 104
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    aget v8, p2, v0

    .line 109
    .line 110
    const/high16 v9, 0x3f000000    # 0.5f

    .line 111
    .line 112
    cmpl-float v8, v8, v9

    .line 113
    .line 114
    if-lez v8, :cond_0

    .line 115
    .line 116
    move v8, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    move v8, v0

    .line 119
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object v8, v2, v0

    .line 126
    .line 127
    invoke-virtual {v6, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 133
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v6, "unable to interpolate strings "

    .line 140
    .line 141
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :pswitch_3
    new-array v8, v2, [Ljava/lang/Class;

    .line 160
    .line 161
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 162
    .line 163
    aput-object v14, v8, v0

    .line 164
    .line 165
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    aget v8, p2, v0

    .line 170
    .line 171
    float-to-double v14, v8

    .line 172
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 173
    .line 174
    .line 175
    move-result-wide v14

    .line 176
    double-to-float v8, v14

    .line 177
    mul-float/2addr v8, v13

    .line 178
    float-to-int v8, v8

    .line 179
    invoke-static {v8}, Lv0/a;->a(I)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    aget v14, p2, v2

    .line 184
    .line 185
    float-to-double v14, v14

    .line 186
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 187
    .line 188
    .line 189
    move-result-wide v14

    .line 190
    double-to-float v14, v14

    .line 191
    mul-float/2addr v14, v13

    .line 192
    float-to-int v14, v14

    .line 193
    invoke-static {v14}, Lv0/a;->a(I)I

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    aget v10, p2, v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    float-to-double v0, v10

    .line 200
    :try_start_1
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 201
    .line 202
    .line 203
    move-result-wide v0

    .line 204
    double-to-float v0, v0

    .line 205
    mul-float/2addr v0, v13

    .line 206
    float-to-int v0, v0

    .line 207
    invoke-static {v0}, Lv0/a;->a(I)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    aget v1, p2, v9

    .line 212
    .line 213
    mul-float/2addr v1, v13

    .line 214
    float-to-int v1, v1

    .line 215
    invoke-static {v1}, Lv0/a;->a(I)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    shl-int/lit8 v1, v1, 0x18

    .line 220
    .line 221
    shl-int/lit8 v8, v8, 0x10

    .line 222
    .line 223
    or-int/2addr v1, v8

    .line 224
    shl-int/lit8 v8, v14, 0x8

    .line 225
    .line 226
    or-int/2addr v1, v8

    .line 227
    or-int/2addr v0, v1

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-array v1, v2, [Ljava/lang/Object;

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    aput-object v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    .line 237
    move-object/from16 v8, p1

    .line 238
    .line 239
    :try_start_2
    invoke-virtual {v6, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :catch_3
    move-exception v0

    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :catch_4
    move-exception v0

    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :catch_5
    move-exception v0

    .line 251
    move-object/from16 v8, p1

    .line 252
    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :catch_6
    move-exception v0

    .line 256
    move-object/from16 v8, p1

    .line 257
    .line 258
    goto/16 :goto_3

    .line 259
    .line 260
    :pswitch_4
    move-object v8, v1

    .line 261
    new-array v0, v2, [Ljava/lang/Class;

    .line 262
    .line 263
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    const/4 v14, 0x0

    .line 266
    aput-object v1, v0, v14

    .line 267
    .line 268
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    aget v1, p2, v14

    .line 273
    .line 274
    float-to-double v9, v1

    .line 275
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 276
    .line 277
    .line 278
    move-result-wide v9

    .line 279
    double-to-float v1, v9

    .line 280
    mul-float/2addr v1, v13

    .line 281
    float-to-int v1, v1

    .line 282
    invoke-static {v1}, Lv0/a;->a(I)I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    aget v6, p2, v2

    .line 287
    .line 288
    float-to-double v9, v6

    .line 289
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 290
    .line 291
    .line 292
    move-result-wide v9

    .line 293
    double-to-float v6, v9

    .line 294
    mul-float/2addr v6, v13

    .line 295
    float-to-int v6, v6

    .line 296
    invoke-static {v6}, Lv0/a;->a(I)I

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    const/4 v9, 0x2

    .line 301
    aget v9, p2, v9

    .line 302
    .line 303
    float-to-double v9, v9

    .line 304
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 305
    .line 306
    .line 307
    move-result-wide v9

    .line 308
    double-to-float v9, v9

    .line 309
    mul-float/2addr v9, v13

    .line 310
    float-to-int v9, v9

    .line 311
    invoke-static {v9}, Lv0/a;->a(I)I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    const/4 v10, 0x3

    .line 316
    aget v10, p2, v10

    .line 317
    .line 318
    mul-float/2addr v10, v13

    .line 319
    float-to-int v10, v10

    .line 320
    invoke-static {v10}, Lv0/a;->a(I)I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    shl-int/lit8 v10, v10, 0x18

    .line 325
    .line 326
    shl-int/lit8 v1, v1, 0x10

    .line 327
    .line 328
    or-int/2addr v1, v10

    .line 329
    shl-int/lit8 v6, v6, 0x8

    .line 330
    .line 331
    or-int/2addr v1, v6

    .line 332
    or-int/2addr v1, v9

    .line 333
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 334
    .line 335
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 339
    .line 340
    .line 341
    new-array v1, v2, [Ljava/lang/Object;

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    aput-object v6, v1, v2

    .line 345
    .line 346
    invoke-virtual {v0, v8, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :pswitch_5
    move-object v8, v1

    .line 352
    new-array v0, v2, [Ljava/lang/Class;

    .line 353
    .line 354
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 355
    .line 356
    const/4 v9, 0x0

    .line 357
    aput-object v1, v0, v9

    .line 358
    .line 359
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    aget v1, p2, v9

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-array v2, v2, [Ljava/lang/Object;

    .line 370
    .line 371
    aput-object v1, v2, v9

    .line 372
    .line 373
    invoke-virtual {v0, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :pswitch_6
    move-object v8, v1

    .line 378
    new-array v0, v2, [Ljava/lang/Class;

    .line 379
    .line 380
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 381
    .line 382
    const/4 v9, 0x0

    .line 383
    aput-object v1, v0, v9

    .line 384
    .line 385
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    aget v1, p2, v9

    .line 390
    .line 391
    float-to-int v1, v1

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    new-array v2, v2, [Ljava/lang/Object;

    .line 397
    .line 398
    aput-object v1, v2, v9

    .line 399
    .line 400
    invoke-virtual {v0, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v2, "cannot access method "

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/a;->d(Landroid/view/View;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 442
    .line 443
    .line 444
    goto :goto_4

    .line 445
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v2, "no method "

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/a;->d(Landroid/view/View;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    :goto_4
    return-void

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
