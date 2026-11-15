.class Lcom/transsion/baselib/db/video/z0$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/z0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/z0;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0$a;->a:Lcom/transsion/baselib/db/video/z0;

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
    check-cast p2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0$a;->f(Ly3/e;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `video_detail_play` (`subjectId`,`id`,`ep`,`se`,`progress`,`title`,`coverUrl`,`thumbnail`,`videoUrl`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadFilePath`,`downloadSize`,`dubs`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-long v0, v0

    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v0, v0

    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x6

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x7

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v1, 0x8

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/16 v1, 0x9

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getVideoUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_5
    const/16 v0, 0xa

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTimeStamp()J

    .line 140
    .line 141
    .line 142
    move-result-wide v1

    .line 143
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const/16 v1, 0xb

    .line 151
    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/16 v1, 0xc

    .line 170
    .line 171
    if-nez v0, :cond_7

    .line 172
    .line 173
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 186
    .line 187
    .line 188
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const/16 v1, 0xd

    .line 193
    .line 194
    if-nez v0, :cond_8

    .line 195
    .line 196
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 205
    .line 206
    .line 207
    move-result-wide v2

    .line 208
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 209
    .line 210
    .line 211
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const/16 v1, 0xe

    .line 216
    .line 217
    if-nez v0, :cond_9

    .line 218
    .line 219
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/16 v1, 0xf

    .line 235
    .line 236
    if-nez v0, :cond_a

    .line 237
    .line 238
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    int-to-long v2, v0

    .line 251
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 252
    .line 253
    .line 254
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getHasDelete()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    const/16 v1, 0x10

    .line 259
    .line 260
    int-to-long v2, v0

    .line 261
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const/16 v1, 0x11

    .line 269
    .line 270
    if-nez v0, :cond_b

    .line 271
    .line 272
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_b

    .line 276
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const/16 v1, 0x12

    .line 288
    .line 289
    if-nez v0, :cond_c

    .line 290
    .line 291
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 292
    .line 293
    .line 294
    goto :goto_c

    .line 295
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const/16 v1, 0x13

    .line 307
    .line 308
    if-nez v0, :cond_d

    .line 309
    .line 310
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    :goto_d
    const/16 v0, 0x14

    .line 322
    .line 323
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadSize()J

    .line 324
    .line 325
    .line 326
    move-result-wide v1

    .line 327
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0$a;->a:Lcom/transsion/baselib/db/video/z0;

    .line 331
    .line 332
    invoke-static {v0}, Lcom/transsion/baselib/db/video/z0;->D(Lcom/transsion/baselib/db/video/z0;)Lri/b;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDubs()Ljava/util/ArrayList;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lri/b;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const/16 v1, 0x15

    .line 345
    .line 346
    if-nez v0, :cond_e

    .line 347
    .line 348
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 349
    .line 350
    .line 351
    goto :goto_e

    .line 352
    :cond_e
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    const/16 v1, 0x16

    .line 360
    .line 361
    if-nez v0, :cond_f

    .line 362
    .line 363
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 364
    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 372
    .line 373
    .line 374
    move-result-wide v2

    .line 375
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 376
    .line 377
    .line 378
    :goto_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    const/16 v1, 0x17

    .line 383
    .line 384
    if-nez v0, :cond_10

    .line 385
    .line 386
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_10

    .line 390
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 399
    .line 400
    .line 401
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardPlayed()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    const/16 v1, 0x18

    .line 406
    .line 407
    int-to-long v2, v0

    .line 408
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardUnlock()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    const/16 v1, 0x19

    .line 416
    .line 417
    int-to-long v2, v0

    .line 418
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getRewardFree()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    const/16 v1, 0x1a

    .line 426
    .line 427
    int-to-long v2, v0

    .line 428
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    const/16 v1, 0x1b

    .line 436
    .line 437
    if-nez v0, :cond_11

    .line 438
    .line 439
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 440
    .line 441
    .line 442
    goto :goto_11

    .line 443
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    invoke-interface {p1, v1, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :goto_11
    return-void
.end method
