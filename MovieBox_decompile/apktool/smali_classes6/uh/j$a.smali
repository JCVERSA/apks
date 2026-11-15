.class Luh/j$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luh/j;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Luh/j;


# direct methods
.method constructor <init>(Luh/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Luh/j$a;->a:Luh/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Luh/j$a;->f(Ly3/e;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `mb_ad_db_plans` (`id`,`version`,`name`,`startTime`,`endTime`,`extraConfig`,`displayTimes`,`showedTimes`,`showDate`,`advertiserName`,`advertiserAvatar`,`advertiserAvatarPath`,`brand`,`denyBrand`,`model`,`denyModel`,`country`,`scenes`,`adSource`,`extAdSlot`,`adMaterialList`,`adPlanUpdateTime`,`sort`,`adShowLevel`,`filterClientVersion`,`adPlanCreateTime`,`appStarDesc`,`appSizeDesc`,`ctxEnableExpr`,`ctxDisableExpr`,`ctxAttributeConfig`,`dispatchTimeStart`,`dispatchTimeEnd`,`extImage`,`bidEcpmCent`,`ecpmCent`,`isValid`,`h5LinkPreload`,`h5LinkOpenByCct`,`countryCode`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x3

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x4

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x5

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x6

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v1, 0x7

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    int-to-long v2, v0

    .line 129
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 130
    .line 131
    .line 132
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    int-to-long v2, v0

    .line 153
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 154
    .line 155
    .line 156
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const/16 v1, 0x9

    .line 161
    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v1, 0xa

    .line 180
    .line 181
    if-nez v0, :cond_9

    .line 182
    .line 183
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/16 v1, 0xb

    .line 199
    .line 200
    if-nez v0, :cond_a

    .line 201
    .line 202
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const/16 v1, 0xc

    .line 218
    .line 219
    if-nez v0, :cond_b

    .line 220
    .line 221
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v1, 0xd

    .line 237
    .line 238
    if-nez v0, :cond_c

    .line 239
    .line 240
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_c

    .line 244
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const/16 v1, 0xe

    .line 256
    .line 257
    if-nez v0, :cond_d

    .line 258
    .line 259
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_d

    .line 263
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_d
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const/16 v1, 0xf

    .line 275
    .line 276
    if-nez v0, :cond_e

    .line 277
    .line 278
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 279
    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const/16 v1, 0x10

    .line 294
    .line 295
    if-nez v0, :cond_f

    .line 296
    .line 297
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_f

    .line 301
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_f
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const/16 v1, 0x11

    .line 313
    .line 314
    if-nez v0, :cond_10

    .line 315
    .line 316
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 317
    .line 318
    .line 319
    goto :goto_10

    .line 320
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const/16 v1, 0x12

    .line 332
    .line 333
    if-nez v0, :cond_11

    .line 334
    .line 335
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_11

    .line 339
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_11
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const/16 v1, 0x13

    .line 351
    .line 352
    if-nez v0, :cond_12

    .line 353
    .line 354
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_12

    .line 358
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 363
    .line 364
    .line 365
    :goto_12
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const/16 v1, 0x14

    .line 370
    .line 371
    if-nez v0, :cond_13

    .line 372
    .line 373
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_13

    .line 377
    :cond_13
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_13
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    const/16 v1, 0x15

    .line 389
    .line 390
    if-nez v0, :cond_14

    .line 391
    .line 392
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 393
    .line 394
    .line 395
    goto :goto_14

    .line 396
    :cond_14
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :goto_14
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const/16 v1, 0x16

    .line 408
    .line 409
    if-nez v0, :cond_15

    .line 410
    .line 411
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 412
    .line 413
    .line 414
    goto :goto_15

    .line 415
    :cond_15
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :goto_15
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    if-nez v0, :cond_16

    .line 427
    .line 428
    const/16 v0, 0x17

    .line 429
    .line 430
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_16

    .line 434
    :cond_16
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    int-to-long v0, v0

    .line 443
    const/16 v2, 0x17

    .line 444
    .line 445
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 446
    .line 447
    .line 448
    :goto_16
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    if-nez v0, :cond_17

    .line 453
    .line 454
    const/16 v0, 0x18

    .line 455
    .line 456
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 457
    .line 458
    .line 459
    goto :goto_17

    .line 460
    :cond_17
    const/16 v0, 0x18

    .line 461
    .line 462
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 467
    .line 468
    .line 469
    :goto_17
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-nez v0, :cond_18

    .line 474
    .line 475
    const/16 v0, 0x19

    .line 476
    .line 477
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 478
    .line 479
    .line 480
    goto :goto_18

    .line 481
    :cond_18
    const/16 v0, 0x19

    .line 482
    .line 483
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :goto_18
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    if-nez v0, :cond_19

    .line 495
    .line 496
    const/16 v0, 0x1a

    .line 497
    .line 498
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 499
    .line 500
    .line 501
    goto :goto_19

    .line 502
    :cond_19
    const/16 v0, 0x1a

    .line 503
    .line 504
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :goto_19
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    if-nez v0, :cond_1a

    .line 516
    .line 517
    const/16 v0, 0x1b

    .line 518
    .line 519
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 520
    .line 521
    .line 522
    goto :goto_1a

    .line 523
    :cond_1a
    const/16 v0, 0x1b

    .line 524
    .line 525
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :goto_1a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    if-nez v0, :cond_1b

    .line 537
    .line 538
    const/16 v0, 0x1c

    .line 539
    .line 540
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 541
    .line 542
    .line 543
    goto :goto_1b

    .line 544
    :cond_1b
    const/16 v0, 0x1c

    .line 545
    .line 546
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    :goto_1b
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    if-nez v0, :cond_1c

    .line 558
    .line 559
    const/16 v0, 0x1d

    .line 560
    .line 561
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 562
    .line 563
    .line 564
    goto :goto_1c

    .line 565
    :cond_1c
    const/16 v0, 0x1d

    .line 566
    .line 567
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    :goto_1c
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    if-nez v0, :cond_1d

    .line 579
    .line 580
    const/16 v0, 0x1e

    .line 581
    .line 582
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 583
    .line 584
    .line 585
    goto :goto_1d

    .line 586
    :cond_1d
    const/16 v0, 0x1e

    .line 587
    .line 588
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 593
    .line 594
    .line 595
    :goto_1d
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    if-nez v0, :cond_1e

    .line 600
    .line 601
    const/16 v0, 0x1f

    .line 602
    .line 603
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 604
    .line 605
    .line 606
    goto :goto_1e

    .line 607
    :cond_1e
    const/16 v0, 0x1f

    .line 608
    .line 609
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 614
    .line 615
    .line 616
    :goto_1e
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-nez v0, :cond_1f

    .line 621
    .line 622
    const/16 v0, 0x20

    .line 623
    .line 624
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 625
    .line 626
    .line 627
    goto :goto_1f

    .line 628
    :cond_1f
    const/16 v0, 0x20

    .line 629
    .line 630
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 635
    .line 636
    .line 637
    :goto_1f
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    if-nez v0, :cond_20

    .line 642
    .line 643
    const/16 v0, 0x21

    .line 644
    .line 645
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 646
    .line 647
    .line 648
    goto :goto_20

    .line 649
    :cond_20
    const/16 v0, 0x21

    .line 650
    .line 651
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 656
    .line 657
    .line 658
    :goto_20
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    if-nez v0, :cond_21

    .line 663
    .line 664
    const/16 v0, 0x22

    .line 665
    .line 666
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 667
    .line 668
    .line 669
    goto :goto_21

    .line 670
    :cond_21
    const/16 v0, 0x22

    .line 671
    .line 672
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 677
    .line 678
    .line 679
    :goto_21
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    if-nez v0, :cond_22

    .line 684
    .line 685
    const/16 v0, 0x23

    .line 686
    .line 687
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 688
    .line 689
    .line 690
    goto :goto_22

    .line 691
    :cond_22
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 696
    .line 697
    .line 698
    move-result-wide v0

    .line 699
    const/16 v2, 0x23

    .line 700
    .line 701
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->a(ID)V

    .line 702
    .line 703
    .line 704
    :goto_22
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    if-nez v0, :cond_23

    .line 709
    .line 710
    const/16 v0, 0x24

    .line 711
    .line 712
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 713
    .line 714
    .line 715
    goto :goto_23

    .line 716
    :cond_23
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 721
    .line 722
    .line 723
    move-result-wide v0

    .line 724
    const/16 v2, 0x24

    .line 725
    .line 726
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 727
    .line 728
    .line 729
    :goto_23
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->isValid()Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    const/16 v1, 0x25

    .line 734
    .line 735
    int-to-long v2, v0

    .line 736
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkPreload()Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    const/16 v1, 0x26

    .line 744
    .line 745
    int-to-long v2, v0

    .line 746
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkOpenByCct()Z

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    const/16 v1, 0x27

    .line 754
    .line 755
    int-to-long v2, v0

    .line 756
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    if-nez v0, :cond_24

    .line 764
    .line 765
    const/16 p2, 0x28

    .line 766
    .line 767
    invoke-interface {p1, p2}, Ly3/e;->g(I)V

    .line 768
    .line 769
    .line 770
    goto :goto_24

    .line 771
    :cond_24
    const/16 v0, 0x28

    .line 772
    .line 773
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object p2

    .line 777
    invoke-interface {p1, v0, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 778
    .line 779
    .line 780
    :goto_24
    return-void
.end method
