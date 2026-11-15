.class public final Low/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Low/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Low/b;

    .line 2
    .line 3
    invoke-direct {v0}, Low/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Low/b;->a:Low/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_15

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sparse-switch v0, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :sswitch_0
    const-string v0, "ProfileDetailBottomScene"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p2, Low/f;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Low/f;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :sswitch_1
    const-string v0, "VideoEndBidScene"

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_a

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v0, "DownloadPopupScene"

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    new-instance p2, Low/a;

    .line 55
    .line 56
    invoke-direct {p2, p1}, Low/a;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_3
    const-string v0, "StreamingMediaContentScene"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_12

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :sswitch_4
    const-string v0, "VideoFloatingNativeScene"

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_c

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :sswitch_5
    const-string v0, "TrendingNativeBannerScene"

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_2

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_2
    new-instance p2, Low/j;

    .line 92
    .line 93
    invoke-direct {p2, p1}, Low/j;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :sswitch_6
    const-string v0, "VideoForYouListScene"

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_b

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :sswitch_7
    const-string v0, "TrendingScene"

    .line 109
    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_8

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :sswitch_8
    const-string v0, "PostDetailRecommendScene"

    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_8

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :sswitch_9
    const-string v0, "ALLHistoricalPlayRecordScene"

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-nez p2, :cond_11

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :sswitch_a
    const-string v0, "TrendingTwoLevelloftScene"

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_3

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    new-instance p2, Low/u;

    .line 149
    .line 150
    invoke-direct {p2, p1}, Low/u;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :sswitch_b
    const-string v0, "DownloadInterceptIconAdScene"

    .line 156
    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_4

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_4
    new-instance p2, Low/c;

    .line 166
    .line 167
    invoke-direct {p2, p1}, Low/c;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :sswitch_c
    const-string v0, "HomeFragmentListLinearTemplateAd"

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_8

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :sswitch_d
    const-string v0, "DownloadTvListScene"

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-nez p2, :cond_11

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :sswitch_e
    const-string v0, "HomeFragmentListGrid2TemplateAd"

    .line 193
    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-nez p2, :cond_5

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_5
    new-instance p2, Low/h;

    .line 203
    .line 204
    invoke-direct {p2, p1}, Low/h;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :sswitch_f
    const-string v0, "DownloadMovieAppDistributionScene"

    .line 210
    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_6

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_6
    new-instance p2, Low/d;

    .line 220
    .line 221
    invoke-direct {p2, p1}, Low/d;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :sswitch_10
    const-string v0, "VerticalPauseScene"

    .line 227
    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_13

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :sswitch_11
    const-string v0, "DownloadListScene"

    .line 237
    .line 238
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-nez p2, :cond_7

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_7
    new-instance p2, Low/e;

    .line 247
    .line 248
    invoke-direct {p2, p1}, Low/e;-><init>(Landroid/content/Context;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :sswitch_12
    const-string v0, "ShortTvDiscoverMostTrendingScene"

    .line 254
    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    if-nez p2, :cond_8

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_8
    new-instance p2, Low/x;

    .line 264
    .line 265
    invoke-direct {p2, p1}, Low/x;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :sswitch_13
    const-string v0, "VideoStartBidScene"

    .line 271
    .line 272
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-nez p2, :cond_a

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :sswitch_14
    const-string v0, "HomeLeftTopBrandNonstandardScene"

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-nez p2, :cond_9

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :sswitch_15
    const-string v0, "HomeRIGHTTopGameNonstandardScene"

    .line 291
    .line 292
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p2

    .line 296
    if-nez p2, :cond_9

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_9
    new-instance p2, Low/i;

    .line 301
    .line 302
    invoke-direct {p2, p1}, Low/i;-><init>(Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :sswitch_16
    const-string v0, "VideoInterpolateBidScene"

    .line 308
    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    if-nez p2, :cond_a

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_a
    new-instance p2, Low/m;

    .line 318
    .line 319
    invoke-direct {p2, p1}, Low/m;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :sswitch_17
    const-string v0, "TabDownloadIrregularFloatingScene"

    .line 325
    .line 326
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-nez p2, :cond_c

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :sswitch_18
    const-string v0, "ShortTvListScene"

    .line 335
    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-nez p2, :cond_b

    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_b
    new-instance p2, Low/k;

    .line 345
    .line 346
    invoke-direct {p2, p1}, Low/k;-><init>(Landroid/content/Context;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :sswitch_19
    const-string v0, "PlayListScene"

    .line 352
    .line 353
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    if-nez p2, :cond_11

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :sswitch_1a
    const-string v0, "TrendingFloatIrregularAd"

    .line 362
    .line 363
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-nez p2, :cond_c

    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :cond_c
    new-instance p2, Low/w;

    .line 372
    .line 373
    invoke-direct {p2, p1}, Low/w;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :sswitch_1b
    const-string v0, "HomeFragmentListGrid3TemplateAd"

    .line 379
    .line 380
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result p2

    .line 384
    if-nez p2, :cond_d

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :cond_d
    new-instance p2, Low/g;

    .line 389
    .line 390
    invoke-direct {p2, p1}, Low/g;-><init>(Landroid/content/Context;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :sswitch_1c
    const-string v0, "TabDownloadTopIrregularScene"

    .line 396
    .line 397
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p2

    .line 401
    if-nez p2, :cond_e

    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :cond_e
    new-instance p2, Low/r;

    .line 406
    .line 407
    invoke-direct {p2, p1}, Low/r;-><init>(Landroid/content/Context;)V

    .line 408
    .line 409
    .line 410
    goto :goto_1

    .line 411
    :sswitch_1d
    const-string v0, "SubjectDetailRecommendScene"

    .line 412
    .line 413
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result p2

    .line 417
    if-nez p2, :cond_f

    .line 418
    .line 419
    goto :goto_0

    .line 420
    :cond_f
    new-instance p2, Low/v;

    .line 421
    .line 422
    invoke-direct {p2, p1}, Low/v;-><init>(Landroid/content/Context;)V

    .line 423
    .line 424
    .line 425
    goto :goto_1

    .line 426
    :sswitch_1e
    const-string v0, "SearchHotNativeScene"

    .line 427
    .line 428
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result p2

    .line 432
    if-nez p2, :cond_10

    .line 433
    .line 434
    goto :goto_0

    .line 435
    :cond_10
    new-instance p2, Low/t;

    .line 436
    .line 437
    invoke-direct {p2, p1}, Low/t;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    goto :goto_1

    .line 441
    :sswitch_1f
    const-string v0, "VerticalMediaPlayerRecommendScene"

    .line 442
    .line 443
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p2

    .line 447
    if-nez p2, :cond_11

    .line 448
    .line 449
    goto :goto_0

    .line 450
    :cond_11
    new-instance p2, Low/y;

    .line 451
    .line 452
    invoke-direct {p2, p1}, Low/y;-><init>(Landroid/content/Context;)V

    .line 453
    .line 454
    .line 455
    goto :goto_1

    .line 456
    :sswitch_20
    const-string v0, "MediaPlayerMidDescScene"

    .line 457
    .line 458
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result p2

    .line 462
    if-nez p2, :cond_12

    .line 463
    .line 464
    goto :goto_0

    .line 465
    :cond_12
    new-instance p2, Low/q;

    .line 466
    .line 467
    invoke-direct {p2, p1}, Low/q;-><init>(Landroid/content/Context;)V

    .line 468
    .line 469
    .line 470
    goto :goto_1

    .line 471
    :sswitch_21
    const-string v0, "LandscapePauseSceneNew"

    .line 472
    .line 473
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p2

    .line 477
    if-nez p2, :cond_13

    .line 478
    .line 479
    goto :goto_0

    .line 480
    :cond_13
    new-instance p2, Low/n;

    .line 481
    .line 482
    invoke-direct {p2, p1}, Low/n;-><init>(Landroid/content/Context;)V

    .line 483
    .line 484
    .line 485
    goto :goto_1

    .line 486
    :sswitch_22
    const-string v0, "DownloadInterceptDialogNativeScene"

    .line 487
    .line 488
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result p2

    .line 492
    if-nez p2, :cond_14

    .line 493
    .line 494
    goto :goto_0

    .line 495
    :cond_14
    new-instance p2, Low/l;

    .line 496
    .line 497
    invoke-direct {p2, p1}, Low/l;-><init>(Landroid/content/Context;)V

    .line 498
    .line 499
    .line 500
    goto :goto_1

    .line 501
    :cond_15
    :goto_0
    const/4 p2, 0x0

    .line 502
    :goto_1
    return-object p2

    .line 503
    :sswitch_data_0
    .sparse-switch
        -0x7cfa618d -> :sswitch_22
        -0x76db9d51 -> :sswitch_21
        -0x6a816088 -> :sswitch_20
        -0x66d21681 -> :sswitch_1f
        -0x660efff0 -> :sswitch_1e
        -0x5d6e2cf3 -> :sswitch_1d
        -0x59fc5aef -> :sswitch_1c
        -0x52b0a9a3 -> :sswitch_1b
        -0x4f6316c1 -> :sswitch_1a
        -0x28f2b666 -> :sswitch_19
        -0x17df8fd0 -> :sswitch_18
        -0xed8a7f0 -> :sswitch_17
        -0xa47baab -> :sswitch_16
        -0x8d841f4 -> :sswitch_15
        -0x4e67ec6 -> :sswitch_14
        -0x462e08a -> :sswitch_13
        -0x37783a3 -> :sswitch_12
        0x819dac6 -> :sswitch_11
        0x1526f06c -> :sswitch_10
        0x1547b3cf -> :sswitch_f
        0x186aa39c -> :sswitch_e
        0x239bf064 -> :sswitch_d
        0x3b00ff0f -> :sswitch_c
        0x4989a216 -> :sswitch_b
        0x4dda811e -> :sswitch_a
        0x5057ae3c -> :sswitch_9
        0x509c10c1 -> :sswitch_8
        0x5b6a7247 -> :sswitch_7
        0x5c4a96bd -> :sswitch_6
        0x60921164 -> :sswitch_5
        0x61f12674 -> :sswitch_4
        0x64573975 -> :sswitch_3
        0x73be9a08 -> :sswitch_2
        0x7a28f02f -> :sswitch_1
        0x7f8e5587 -> :sswitch_0
    .end sparse-switch
.end method
