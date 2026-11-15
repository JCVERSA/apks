.class public final Lcom/transsion/home/bean/OperateItem$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/bean/OperateItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


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


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/home/bean/OperateItem;
    .locals 37

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v9, v1

    .line 62
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v10, v1

    .line 79
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    sget-object v1, Lcom/transsion/home/bean/BannerBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_3
    move-object v11, v1

    .line 94
    check-cast v11, Lcom/transsion/home/bean/BannerBean;

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    const/4 v13, 0x0

    .line 103
    goto :goto_5

    .line 104
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    new-instance v13, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const/4 v14, 0x0

    .line 114
    :goto_4
    if-eq v14, v1, :cond_5

    .line 115
    .line 116
    sget-object v15, Lcom/transsion/home/bean/FilterItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v15

    .line 122
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    add-int/lit8 v14, v14, 0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    const/4 v14, 0x0

    .line 135
    goto :goto_7

    .line 136
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    new-instance v14, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_6
    if-eq v15, v1, :cond_7

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    add-int/lit8 v15, v15, 0x1

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_7
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_8

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    goto :goto_8

    .line 166
    :cond_8
    sget-object v1, Lcom/transsion/home/bean/CustomData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    :goto_8
    check-cast v1, Lcom/transsion/home/bean/CustomData;

    .line 173
    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    move-object v15, v2

    .line 179
    check-cast v15, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_9

    .line 189
    :cond_9
    sget-object v2, Lcom/transsion/home/bean/SingleImagePage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 190
    .line 191
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    :goto_9
    move-object/from16 v17, v2

    .line 196
    .line 197
    check-cast v17, Lcom/transsion/home/bean/SingleImagePage;

    .line 198
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-nez v2, :cond_a

    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    goto :goto_a

    .line 207
    :cond_a
    sget-object v2, Lcom/transsion/home/bean/RankingData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 208
    .line 209
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_a
    move-object/from16 v18, v2

    .line 214
    .line 215
    check-cast v18, Lcom/transsion/home/bean/RankingData;

    .line 216
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_b

    .line 222
    .line 223
    const/4 v2, 0x0

    .line 224
    goto :goto_b

    .line 225
    :cond_b
    sget-object v2, Lcom/transsion/home/bean/RankingListData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 226
    .line 227
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    :goto_b
    move-object/from16 v19, v2

    .line 232
    .line 233
    check-cast v19, Lcom/transsion/home/bean/RankingListData;

    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-nez v2, :cond_c

    .line 240
    .line 241
    move-object/from16 v21, v15

    .line 242
    .line 243
    const/16 v22, 0x0

    .line 244
    .line 245
    goto :goto_d

    .line 246
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    new-instance v12, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v21, v15

    .line 256
    .line 257
    const/4 v15, 0x0

    .line 258
    :goto_c
    if-eq v15, v2, :cond_d

    .line 259
    .line 260
    move/from16 v22, v2

    .line 261
    .line 262
    sget-object v2, Lcom/transsion/home/bean/LiveListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 263
    .line 264
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    add-int/lit8 v15, v15, 0x1

    .line 272
    .line 273
    move/from16 v2, v22

    .line 274
    .line 275
    goto :goto_c

    .line 276
    :cond_d
    move-object/from16 v22, v12

    .line 277
    .line 278
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_e

    .line 283
    .line 284
    const/16 v23, 0x0

    .line 285
    .line 286
    goto :goto_f

    .line 287
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    new-instance v12, Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .line 295
    .line 296
    const/4 v15, 0x0

    .line 297
    :goto_e
    if-eq v15, v2, :cond_f

    .line 298
    .line 299
    move/from16 v23, v2

    .line 300
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    add-int/lit8 v15, v15, 0x1

    .line 309
    .line 310
    move/from16 v2, v23

    .line 311
    .line 312
    goto :goto_e

    .line 313
    :cond_f
    move-object/from16 v23, v12

    .line 314
    .line 315
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_10

    .line 320
    .line 321
    const/16 v24, 0x0

    .line 322
    .line 323
    goto :goto_11

    .line 324
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    new-instance v12, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .line 332
    .line 333
    const/4 v15, 0x0

    .line 334
    :goto_10
    if-eq v15, v2, :cond_11

    .line 335
    .line 336
    move/from16 v24, v2

    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    add-int/lit8 v15, v15, 0x1

    .line 346
    .line 347
    move/from16 v2, v24

    .line 348
    .line 349
    goto :goto_10

    .line 350
    :cond_11
    move-object/from16 v24, v12

    .line 351
    .line 352
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_12

    .line 357
    .line 358
    const/16 v25, 0x0

    .line 359
    .line 360
    goto :goto_13

    .line 361
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    new-instance v12, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .line 369
    .line 370
    const/4 v15, 0x0

    .line 371
    :goto_12
    if-eq v15, v2, :cond_13

    .line 372
    .line 373
    move/from16 v25, v2

    .line 374
    .line 375
    sget-object v2, Lcom/transsion/home/bean/BffCommonOpData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 376
    .line 377
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    add-int/lit8 v15, v15, 0x1

    .line 385
    .line 386
    move/from16 v2, v25

    .line 387
    .line 388
    goto :goto_12

    .line 389
    :cond_13
    move-object/from16 v25, v12

    .line 390
    .line 391
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    move-object/from16 v26, v2

    .line 396
    .line 397
    check-cast v26, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 398
    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    const-class v12, Lcom/transsion/home/bean/OperateItem;

    .line 404
    .line 405
    if-nez v2, :cond_14

    .line 406
    .line 407
    move-object/from16 v28, v1

    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    goto :goto_15

    .line 411
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    new-instance v15, Ljava/util/ArrayList;

    .line 416
    .line 417
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .line 419
    .line 420
    move-object/from16 v28, v1

    .line 421
    .line 422
    const/4 v1, 0x0

    .line 423
    :goto_14
    if-eq v1, v2, :cond_15

    .line 424
    .line 425
    move/from16 v27, v2

    .line 426
    .line 427
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    add-int/lit8 v1, v1, 0x1

    .line 439
    .line 440
    move/from16 v2, v27

    .line 441
    .line 442
    goto :goto_14

    .line 443
    :cond_15
    move-object v1, v15

    .line 444
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-nez v2, :cond_16

    .line 449
    .line 450
    move-object/from16 v29, v1

    .line 451
    .line 452
    const/4 v1, 0x0

    .line 453
    goto :goto_17

    .line 454
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    new-instance v15, Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    .line 462
    .line 463
    move-object/from16 v29, v1

    .line 464
    .line 465
    const/4 v1, 0x0

    .line 466
    :goto_16
    if-eq v1, v2, :cond_17

    .line 467
    .line 468
    move/from16 v20, v2

    .line 469
    .line 470
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    add-int/lit8 v1, v1, 0x1

    .line 482
    .line 483
    move/from16 v2, v20

    .line 484
    .line 485
    goto :goto_16

    .line 486
    :cond_17
    move-object v1, v15

    .line 487
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v34

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v35

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v36

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    if-nez v2, :cond_18

    .line 504
    .line 505
    const/4 v2, 0x0

    .line 506
    goto :goto_18

    .line 507
    :cond_18
    sget-object v2, Lcom/transsion/home/bean/OperateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    .line 509
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    :goto_18
    move-object/from16 v30, v2

    .line 514
    .line 515
    check-cast v30, Lcom/transsion/home/bean/OperateItem;

    .line 516
    .line 517
    new-instance v0, Lcom/transsion/home/bean/OperateItem;

    .line 518
    .line 519
    move-object v2, v0

    .line 520
    const/16 v27, 0x0

    .line 521
    .line 522
    const/16 v31, 0x0

    .line 523
    .line 524
    const/high16 v32, 0x11000000

    .line 525
    .line 526
    const/16 v33, 0x0

    .line 527
    .line 528
    move-object v12, v13

    .line 529
    move-object v13, v14

    .line 530
    move-object/from16 v14, v28

    .line 531
    .line 532
    move-object/from16 v15, v21

    .line 533
    .line 534
    move-object/from16 v16, v17

    .line 535
    .line 536
    move-object/from16 v17, v18

    .line 537
    .line 538
    move-object/from16 v18, v19

    .line 539
    .line 540
    move-object/from16 v19, v22

    .line 541
    .line 542
    move-object/from16 v20, v23

    .line 543
    .line 544
    move-object/from16 v21, v24

    .line 545
    .line 546
    move-object/from16 v22, v25

    .line 547
    .line 548
    move-object/from16 v23, v26

    .line 549
    .line 550
    move-object/from16 v24, v29

    .line 551
    .line 552
    move-object/from16 v25, v1

    .line 553
    .line 554
    move-object/from16 v26, v34

    .line 555
    .line 556
    move-object/from16 v28, v35

    .line 557
    .line 558
    move-object/from16 v29, v36

    .line 559
    .line 560
    invoke-direct/range {v2 .. v33}, Lcom/transsion/home/bean/OperateItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 561
    .line 562
    .line 563
    return-object v0
.end method

.method public final b(I)[Lcom/transsion/home/bean/OperateItem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/bean/OperateItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/bean/OperateItem$a;->b(I)[Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
