.class public abstract Lzk/h;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzk/h;->d(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lzk/h;->e(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Ljava/util/List;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_1c

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_10

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lzk/f;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lzk/f;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lzk/g;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lzk/g;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p0, :cond_1c

    .line 22
    .line 23
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1c

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/transsion/home/bean/OperateItem;

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/transsion/home/bean/OperateItem;->setOps(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move-object v3, v4

    .line 57
    :goto_1
    check-cast v3, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/transsion/home/bean/BannerData;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v3, p1}, Lcom/transsion/home/bean/BannerData;->setOps(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/util/Collection;

    .line 109
    .line 110
    if-eqz v3, :cond_7

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getSubjects()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getCustomData()Lcom/transsion/home/bean/CustomData;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_5

    .line 138
    :cond_8
    move-object v3, v4

    .line 139
    :goto_5
    if-eqz v3, :cond_9

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getCustomData()Lcom/transsion/home/bean/CustomData;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_1

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_1

    .line 152
    .line 153
    check-cast v2, Ljava/lang/Iterable;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_1

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Lcom/transsion/home/bean/BannerData;

    .line 170
    .line 171
    invoke-virtual {v3, p1}, Lcom/transsion/home/bean/BannerData;->setOps(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Ljava/util/Collection;

    .line 180
    .line 181
    if-eqz v3, :cond_b

    .line 182
    .line 183
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_a

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getRankings()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_b
    :goto_7
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    if-eqz v3, :cond_c

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    goto :goto_8

    .line 210
    :cond_c
    move-object v3, v4

    .line 211
    :goto_8
    check-cast v3, Ljava/util/Collection;

    .line 212
    .line 213
    if-eqz v3, :cond_e

    .line 214
    .line 215
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_d

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_d
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getRankingListData()Lcom/transsion/home/bean/RankingListData;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-eqz v2, :cond_1

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/transsion/home/bean/RankingListData;->getItems()Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_1

    .line 233
    .line 234
    check-cast v2, Ljava/lang/Iterable;

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_1

    .line 245
    .line 246
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    check-cast v3, Lcom/transsion/home/bean/RankingListItem;

    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/transsion/home/bean/RankingListItem;->getSubjects()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/transsion/home/bean/RankingListItem;->getContentList()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    goto :goto_9

    .line 267
    :cond_e
    :goto_a
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    if-eqz v3, :cond_11

    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-eqz v3, :cond_f

    .line 278
    .line 279
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    :cond_f
    if-eqz v4, :cond_10

    .line 284
    .line 285
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-nez v3, :cond_1

    .line 290
    .line 291
    :cond_10
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getFeedsSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    if-eqz v2, :cond_1

    .line 296
    .line 297
    invoke-virtual {v2, p1}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_11
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    check-cast v3, Ljava/util/Collection;

    .line 307
    .line 308
    if-eqz v3, :cond_15

    .line 309
    .line 310
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_12

    .line 315
    .line 316
    goto :goto_c

    .line 317
    :cond_12
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getLiveList()Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-eqz v2, :cond_1

    .line 322
    .line 323
    check-cast v2, Ljava/lang/Iterable;

    .line 324
    .line 325
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    :cond_13
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_1

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Lcom/transsion/home/bean/LiveListItem;

    .line 340
    .line 341
    invoke-virtual {v3}, Lcom/transsion/home/bean/LiveListItem;->getOps()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    if-eqz v4, :cond_14

    .line 346
    .line 347
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-nez v4, :cond_13

    .line 352
    .line 353
    :cond_14
    invoke-virtual {v3, p1}, Lcom/transsion/home/bean/LiveListItem;->setOps(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    goto :goto_b

    .line 357
    :cond_15
    :goto_c
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    if-eqz v3, :cond_1

    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/transsion/home/bean/OperateItem;->getContentList()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    if-eqz v2, :cond_1

    .line 368
    .line 369
    check-cast v2, Ljava/lang/Iterable;

    .line 370
    .line 371
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    :cond_16
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_1

    .line 380
    .line 381
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 386
    .line 387
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    if-eqz v5, :cond_19

    .line 392
    .line 393
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    if-eqz v5, :cond_17

    .line 398
    .line 399
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    goto :goto_e

    .line 404
    :cond_17
    move-object v5, v4

    .line 405
    :goto_e
    if-eqz v5, :cond_18

    .line 406
    .line 407
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-nez v5, :cond_19

    .line 412
    .line 413
    :cond_18
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    if-eqz v3, :cond_16

    .line 418
    .line 419
    invoke-virtual {v3, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setOps(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_19
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-eqz v5, :cond_16

    .line 428
    .line 429
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    if-eqz v5, :cond_1a

    .line 434
    .line 435
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getOps()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    goto :goto_f

    .line 440
    :cond_1a
    move-object v5, v4

    .line 441
    :goto_f
    if-eqz v5, :cond_1b

    .line 442
    .line 443
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 444
    .line 445
    .line 446
    move-result v5

    .line 447
    if-nez v5, :cond_16

    .line 448
    .line 449
    :cond_1b
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    if-eqz v3, :cond_16

    .line 454
    .line 455
    invoke-virtual {v3, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->setOps(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_1c
    :goto_10
    return-void
.end method

.method private static final d(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, p0}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method private static final e(Ljava/lang/String;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setOps(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "playModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpBrowser()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_4

    .line 26
    .line 27
    invoke-static {p0}, Lij/k;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isJumpWebview()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getPlayUrl()Lcom/transsion/moviedetailapi/bean/PlayUrl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PlayUrl;->getPlayUrl()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-static {p0, p1, v1, p1}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v0, "/movie/detail"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_0
    const-string v3, "subject_type"

    .line 79
    .line 80
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v2, "id"

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, "module_name"

    .line 95
    .line 96
    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v0, "season"

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeason()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p1, v0, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "autoPlay"

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "ops"

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_1
    return-void
.end method

.method public static final g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    const-string v1, "pageName"

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "context"

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "playModule"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v13, "download_subject"

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, v4, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v1, v2

    .line 54
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/16 v10, 0x180

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const-string v5, ""

    .line 64
    .line 65
    const-string v6, "download_subject"

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    move-object v3, v5

    .line 73
    move-object v5, v6

    .line 74
    move v6, v8

    .line 75
    move-object/from16 v7, p0

    .line 76
    .line 77
    move-object v8, v9

    .line 78
    move-object v9, v12

    .line 79
    invoke-static/range {v0 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_1
    :goto_0
    sget-object v1, Lij/t;->a:Lij/t;

    .line 85
    .line 86
    invoke-virtual {v1}, Lij/t;->b()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v8, "play_subject"

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-static {v7, v0}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    move-object v13, v8

    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    const/4 v1, 0x0

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    move-object v15, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move-object v15, v1

    .line 116
    :goto_2
    if-eqz v7, :cond_5

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    move-object/from16 v16, v4

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move-object/from16 v16, v1

    .line 132
    .line 133
    :goto_3
    const/4 v4, 0x0

    .line 134
    if-eqz v7, :cond_6

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    const/4 v6, 0x1

    .line 141
    if-ne v5, v6, :cond_6

    .line 142
    .line 143
    move/from16 v17, v6

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move/from16 v17, v4

    .line 147
    .line 148
    :goto_4
    const/16 v19, 0x8

    .line 149
    .line 150
    const/16 v20, 0x0

    .line 151
    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    invoke-static/range {v14 .. v20}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_7

    .line 159
    .line 160
    if-eqz v7, :cond_2

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_2

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/16 v5, 0x8

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v4, 0x0

    .line 176
    move-object/from16 v2, p2

    .line 177
    .line 178
    move-object/from16 v3, p1

    .line 179
    .line 180
    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 189
    .line 190
    if-eqz v7, :cond_8

    .line 191
    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_8
    move-object v5, v1

    .line 197
    if-eqz v7, :cond_a

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    if-eqz v1, :cond_a

    .line 204
    .line 205
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-nez v1, :cond_9

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_9
    :goto_5
    move-object v6, v1

    .line 213
    goto :goto_7

    .line 214
    :cond_a
    :goto_6
    const-string v1, ""

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :goto_7
    const/16 v11, 0x3c0

    .line 218
    .line 219
    const/4 v12, 0x0

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    const/4 v10, 0x0

    .line 224
    const/4 v14, 0x0

    .line 225
    move-object v1, v2

    .line 226
    move-object/from16 v2, p0

    .line 227
    .line 228
    move-object/from16 v3, p1

    .line 229
    .line 230
    move-object v7, v8

    .line 231
    move-object v8, v9

    .line 232
    move-object v9, v10

    .line 233
    move v10, v14

    .line 234
    invoke-static/range {v0 .. v12}, Lcom/transsnet/downloader/DownloadManagerApi;->M(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :goto_8
    return-object v13
.end method
