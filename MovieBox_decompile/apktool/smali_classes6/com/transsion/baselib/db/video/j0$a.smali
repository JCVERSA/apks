.class Lcom/transsion/baselib/db/video/j0$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/j0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/video/j0;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/video/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/video/j0$a;->a:Lcom/transsion/baselib/db/video/j0;

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
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/db/video/j0$a;->f(Ly3/e;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `ugc_video_detail_play` (`collectionId`,`ugcVideoId`,`progress`,`title`,`coverUrl`,`thumbnail`,`position`,`type`,`cateLev1Id`,`cateLev2Id`,`cateLev3Id`,`cateLev4Id`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadResid`,`downloadFilePath`,`downloadSize`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`,`uid`,`userName`,`userAvatar`,`description`,`videoStyle`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

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
    const/4 v0, 0x3

    .line 38
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x4

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x5

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x6

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getPosition()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    int-to-long v0, v0

    .line 104
    const/4 v2, 0x7

    .line 105
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v1, 0x8

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev1Id()Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/16 v1, 0x9

    .line 132
    .line 133
    if-nez v0, :cond_6

    .line 134
    .line 135
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev1Id()Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    int-to-long v2, v0

    .line 148
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 149
    .line 150
    .line 151
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev2Id()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/16 v1, 0xa

    .line 156
    .line 157
    if-nez v0, :cond_7

    .line 158
    .line 159
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev2Id()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    int-to-long v2, v0

    .line 172
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 173
    .line 174
    .line 175
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev3Id()Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v1, 0xb

    .line 180
    .line 181
    if-nez v0, :cond_8

    .line 182
    .line 183
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev3Id()Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    int-to-long v2, v0

    .line 196
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 197
    .line 198
    .line 199
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev4Id()Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/16 v1, 0xc

    .line 204
    .line 205
    if-nez v0, :cond_9

    .line 206
    .line 207
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCateLev4Id()Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    int-to-long v2, v0

    .line 220
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 221
    .line 222
    .line 223
    :goto_9
    const/16 v0, 0xd

    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    .line 226
    .line 227
    .line 228
    move-result-wide v1

    .line 229
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/16 v1, 0xe

    .line 237
    .line 238
    if-nez v0, :cond_a

    .line 239
    .line 240
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const/16 v1, 0xf

    .line 256
    .line 257
    if-nez v0, :cond_b

    .line 258
    .line 259
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 272
    .line 273
    .line 274
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const/16 v1, 0x10

    .line 279
    .line 280
    if-nez v0, :cond_c

    .line 281
    .line 282
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v2

    .line 294
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 295
    .line 296
    .line 297
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/16 v1, 0x11

    .line 302
    .line 303
    if-nez v0, :cond_d

    .line 304
    .line 305
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 306
    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :goto_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const/16 v1, 0x12

    .line 321
    .line 322
    if-nez v0, :cond_e

    .line 323
    .line 324
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 325
    .line 326
    .line 327
    goto :goto_e

    .line 328
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    int-to-long v2, v0

    .line 337
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 338
    .line 339
    .line 340
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getHasDelete()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    const/16 v1, 0x13

    .line 345
    .line 346
    int-to-long v2, v0

    .line 347
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const/16 v1, 0x14

    .line 355
    .line 356
    if-nez v0, :cond_f

    .line 357
    .line 358
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 359
    .line 360
    .line 361
    goto :goto_f

    .line 362
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getPlayMode()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :goto_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const/16 v1, 0x15

    .line 374
    .line 375
    if-nez v0, :cond_10

    .line 376
    .line 377
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 378
    .line 379
    .line 380
    goto :goto_10

    .line 381
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadResid()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const/16 v1, 0x16

    .line 393
    .line 394
    if-nez v0, :cond_11

    .line 395
    .line 396
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 397
    .line 398
    .line 399
    goto :goto_11

    .line 400
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadResid()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :goto_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    const/16 v1, 0x17

    .line 412
    .line 413
    if-nez v0, :cond_12

    .line 414
    .line 415
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 416
    .line 417
    .line 418
    goto :goto_12

    .line 419
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :goto_12
    const/16 v0, 0x18

    .line 427
    .line 428
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadSize()J

    .line 429
    .line 430
    .line 431
    move-result-wide v1

    .line 432
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const/16 v1, 0x19

    .line 440
    .line 441
    if-nez v0, :cond_13

    .line 442
    .line 443
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 444
    .line 445
    .line 446
    goto :goto_13

    .line 447
    :cond_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 452
    .line 453
    .line 454
    move-result-wide v2

    .line 455
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 456
    .line 457
    .line 458
    :goto_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/16 v1, 0x1a

    .line 463
    .line 464
    if-nez v0, :cond_14

    .line 465
    .line 466
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 467
    .line 468
    .line 469
    goto :goto_14

    .line 470
    :cond_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 475
    .line 476
    .line 477
    move-result-wide v2

    .line 478
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 479
    .line 480
    .line 481
    :goto_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardPlayed()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    const/16 v1, 0x1b

    .line 486
    .line 487
    int-to-long v2, v0

    .line 488
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardUnlock()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    const/16 v1, 0x1c

    .line 496
    .line 497
    int-to-long v2, v0

    .line 498
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardFree()Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    const/16 v1, 0x1d

    .line 506
    .line 507
    int-to-long v2, v0

    .line 508
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const/16 v1, 0x1e

    .line 516
    .line 517
    if-nez v0, :cond_15

    .line 518
    .line 519
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 520
    .line 521
    .line 522
    goto :goto_15

    .line 523
    :cond_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getOps()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    :goto_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUid()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-nez v0, :cond_16

    .line 535
    .line 536
    const/16 v0, 0x1f

    .line 537
    .line 538
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_16

    .line 542
    :cond_16
    const/16 v0, 0x1f

    .line 543
    .line 544
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUid()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserName()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    if-nez v0, :cond_17

    .line 556
    .line 557
    const/16 v0, 0x20

    .line 558
    .line 559
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 560
    .line 561
    .line 562
    goto :goto_17

    .line 563
    :cond_17
    const/16 v0, 0x20

    .line 564
    .line 565
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserName()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :goto_17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserAvatar()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    if-nez v0, :cond_18

    .line 577
    .line 578
    const/16 v0, 0x21

    .line 579
    .line 580
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 581
    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_18
    const/16 v0, 0x21

    .line 585
    .line 586
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserAvatar()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :goto_18
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDescription()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    if-nez v0, :cond_19

    .line 598
    .line 599
    const/16 v0, 0x22

    .line 600
    .line 601
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 602
    .line 603
    .line 604
    goto :goto_19

    .line 605
    :cond_19
    const/16 v0, 0x22

    .line 606
    .line 607
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDescription()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    :goto_19
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getVideoStyle()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    if-nez v0, :cond_1a

    .line 619
    .line 620
    const/16 v0, 0x23

    .line 621
    .line 622
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 623
    .line 624
    .line 625
    goto :goto_1a

    .line 626
    :cond_1a
    const/16 v0, 0x23

    .line 627
    .line 628
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getVideoStyle()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 633
    .line 634
    .line 635
    :goto_1a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getKidId()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    if-nez v0, :cond_1b

    .line 640
    .line 641
    const/16 p2, 0x24

    .line 642
    .line 643
    invoke-interface {p1, p2}, Ly3/e;->g(I)V

    .line 644
    .line 645
    .line 646
    goto :goto_1b

    .line 647
    :cond_1b
    const/16 v0, 0x24

    .line 648
    .line 649
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getKidId()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p2

    .line 653
    invoke-interface {p1, v0, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 654
    .line 655
    .line 656
    :goto_1b
    return-void
.end method
