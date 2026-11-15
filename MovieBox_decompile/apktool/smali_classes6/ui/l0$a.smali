.class Lui/l0$a;
.super Landroidx/room/g;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/l0;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui/l0;


# direct methods
.method constructor <init>(Lui/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/l0$a;->a:Lui/l0;

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
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lui/l0$a;->f(Ly3/e;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `download_table` (`url`,`resourceId`,`name`,`cover`,`size`,`postId`,`sizeFormat`,`path`,`duration`,`updateTimeStamp`,`progress`,`supportRanges`,`status`,`type`,`readProgress`,`createAt`,`isRead`,`episode`,`ep`,`se`,`resolution`,`resourcePosition`,`multiresolution`,`videoWidth`,`videoHeight`,`downloadErrorCount`,`subtitleStarted`,`subjectId`,`pageFrom`,`lastPageFrom`,`subjectName`,`lastPlayTimeStamp`,`fileType`,`totalEpisode`,`uploadBy`,`sourceUrl`,`urlCreateAt`,`subtitleSelectId`,`taskId`,`sessionTime`,`reportStatus`,`downloadHeaderSize`,`rootPath`,`rootPathType`,`thumbnail`,`averageHueLight`,`isTransferFailed`,`isClosedTransferFailed`,`subjectType`,`genre`,`subjectDurationSeconds`,`currentDubLanName`,`currentDubLanCode`,`ops`,`restrictLevel`,`releaseDate`,`countryName`,`seNum`,`subtitles`,`imdbRate`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`subtitleIdType`,`ugcVideoCollectionId`,`ugcVideoId`,`ugcVideoName`,`ugcVideoCollectionName`,`ugcVideoPosition`,`ugcVideoType`,`ugcCateLev1Id`,`ugcCateLev2Id`,`ugcCateLev3Id`,`ugcCateLev4Id`,`ugcVideoTrackId`,`ugcVideoParentVideoId`,`ugcVideoParentTrackId`,`ugcVideoEpTitle`,`ugcVideoIsVertical`,`originData`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method protected f(Ly3/e;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

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
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 93
    .line 94
    .line 95
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v1, 0x6

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const/4 v1, 0x7

    .line 118
    if-nez v0, :cond_6

    .line 119
    .line 120
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/16 v1, 0x8

    .line 136
    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const/16 v1, 0x9

    .line 155
    .line 156
    if-nez v0, :cond_8

    .line 157
    .line 158
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 171
    .line 172
    .line 173
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const/16 v1, 0xa

    .line 178
    .line 179
    if-nez v0, :cond_9

    .line 180
    .line 181
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_9

    .line 185
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUpdateTimeStamp()Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 194
    .line 195
    .line 196
    :goto_9
    const/16 v0, 0xb

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 199
    .line 200
    .line 201
    move-result-wide v1

    .line 202
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSupportRanges()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    int-to-long v0, v0

    .line 210
    const/16 v2, 0xc

    .line 211
    .line 212
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    int-to-long v0, v0

    .line 220
    const/16 v2, 0xd

    .line 221
    .line 222
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    int-to-long v0, v0

    .line 230
    const/16 v2, 0xe

    .line 231
    .line 232
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 233
    .line 234
    .line 235
    const/16 v0, 0xf

    .line 236
    .line 237
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 238
    .line 239
    .line 240
    move-result-wide v1

    .line 241
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x10

    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 247
    .line 248
    .line 249
    move-result-wide v1

    .line 250
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isRead()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    int-to-long v0, v0

    .line 258
    const/16 v2, 0x11

    .line 259
    .line 260
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    int-to-long v0, v0

    .line 268
    const/16 v2, 0x12

    .line 269
    .line 270
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    int-to-long v0, v0

    .line 278
    const/16 v2, 0x13

    .line 279
    .line 280
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    int-to-long v0, v0

    .line 288
    const/16 v2, 0x14

    .line 289
    .line 290
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    int-to-long v0, v0

    .line 298
    const/16 v2, 0x15

    .line 299
    .line 300
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourcePosition()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    int-to-long v0, v0

    .line 308
    const/16 v2, 0x16

    .line 309
    .line 310
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getMultiresolution()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    int-to-long v0, v0

    .line 318
    const/16 v2, 0x17

    .line 319
    .line 320
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    int-to-long v0, v0

    .line 328
    const/16 v2, 0x18

    .line 329
    .line 330
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    int-to-long v0, v0

    .line 338
    const/16 v2, 0x19

    .line 339
    .line 340
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadErrorCount()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    int-to-long v0, v0

    .line 348
    const/16 v2, 0x1a

    .line 349
    .line 350
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleStarted()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    int-to-long v0, v0

    .line 358
    const/16 v2, 0x1b

    .line 359
    .line 360
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const/16 v1, 0x1c

    .line 368
    .line 369
    if-nez v0, :cond_a

    .line 370
    .line 371
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const/16 v1, 0x1d

    .line 387
    .line 388
    if-nez v0, :cond_b

    .line 389
    .line 390
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 391
    .line 392
    .line 393
    goto :goto_b

    .line 394
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPageFrom()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    const/16 v1, 0x1e

    .line 406
    .line 407
    if-nez v0, :cond_c

    .line 408
    .line 409
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 410
    .line 411
    .line 412
    goto :goto_c

    .line 413
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPageFrom()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 418
    .line 419
    .line 420
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    const/16 v1, 0x1f

    .line 425
    .line 426
    if-nez v0, :cond_d

    .line 427
    .line 428
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 429
    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :goto_d
    const/16 v0, 0x20

    .line 440
    .line 441
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastPlayTimeStamp()J

    .line 442
    .line 443
    .line 444
    move-result-wide v1

    .line 445
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileType()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    int-to-long v0, v0

    .line 453
    const/16 v2, 0x21

    .line 454
    .line 455
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    int-to-long v0, v0

    .line 463
    const/16 v2, 0x22

    .line 464
    .line 465
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const/16 v1, 0x23

    .line 473
    .line 474
    if-nez v0, :cond_e

    .line 475
    .line 476
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 477
    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    const/16 v1, 0x24

    .line 492
    .line 493
    if-nez v0, :cond_f

    .line 494
    .line 495
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 496
    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 504
    .line 505
    .line 506
    :goto_f
    const/16 v0, 0x25

    .line 507
    .line 508
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrlCreateAt()J

    .line 509
    .line 510
    .line 511
    move-result-wide v1

    .line 512
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    const/16 v1, 0x26

    .line 520
    .line 521
    if-nez v0, :cond_10

    .line 522
    .line 523
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 524
    .line 525
    .line 526
    goto :goto_10

    .line 527
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 532
    .line 533
    .line 534
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const/16 v1, 0x27

    .line 539
    .line 540
    if-nez v0, :cond_11

    .line 541
    .line 542
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_11

    .line 546
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    :goto_11
    const/16 v0, 0x28

    .line 554
    .line 555
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSessionTime()J

    .line 556
    .line 557
    .line 558
    move-result-wide v1

    .line 559
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReportStatus()I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    int-to-long v0, v0

    .line 567
    const/16 v2, 0x29

    .line 568
    .line 569
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 570
    .line 571
    .line 572
    const/16 v0, 0x2a

    .line 573
    .line 574
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    .line 575
    .line 576
    .line 577
    move-result-wide v1

    .line 578
    invoke-interface {p1, v0, v1, v2}, Ly3/e;->c(IJ)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    const/16 v1, 0x2b

    .line 586
    .line 587
    if-nez v0, :cond_12

    .line 588
    .line 589
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 590
    .line 591
    .line 592
    goto :goto_12

    .line 593
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 598
    .line 599
    .line 600
    :goto_12
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    int-to-long v0, v0

    .line 605
    const/16 v2, 0x2c

    .line 606
    .line 607
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    const/16 v1, 0x2d

    .line 615
    .line 616
    if-nez v0, :cond_13

    .line 617
    .line 618
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 619
    .line 620
    .line 621
    goto :goto_13

    .line 622
    :cond_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 627
    .line 628
    .line 629
    :goto_13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getAverageHueLight()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    const/16 v1, 0x2e

    .line 634
    .line 635
    if-nez v0, :cond_14

    .line 636
    .line 637
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 638
    .line 639
    .line 640
    goto :goto_14

    .line 641
    :cond_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getAverageHueLight()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 646
    .line 647
    .line 648
    :goto_14
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isTransferFailed()Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    const/16 v1, 0x2f

    .line 653
    .line 654
    int-to-long v2, v0

    .line 655
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isClosedTransferFailed()Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    const/16 v1, 0x30

    .line 663
    .line 664
    int-to-long v2, v0

    .line 665
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    int-to-long v0, v0

    .line 673
    const/16 v2, 0x31

    .line 674
    .line 675
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    const/16 v1, 0x32

    .line 683
    .line 684
    if-nez v0, :cond_15

    .line 685
    .line 686
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 687
    .line 688
    .line 689
    goto :goto_15

    .line 690
    :cond_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 695
    .line 696
    .line 697
    :goto_15
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectDurationSeconds()Ljava/lang/Integer;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    if-nez v0, :cond_16

    .line 702
    .line 703
    const/16 v0, 0x33

    .line 704
    .line 705
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 706
    .line 707
    .line 708
    goto :goto_16

    .line 709
    :cond_16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectDurationSeconds()Ljava/lang/Integer;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    int-to-long v0, v0

    .line 718
    const/16 v2, 0x33

    .line 719
    .line 720
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 721
    .line 722
    .line 723
    :goto_16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanName()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    if-nez v0, :cond_17

    .line 728
    .line 729
    const/16 v0, 0x34

    .line 730
    .line 731
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 732
    .line 733
    .line 734
    goto :goto_17

    .line 735
    :cond_17
    const/16 v0, 0x34

    .line 736
    .line 737
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanName()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 742
    .line 743
    .line 744
    :goto_17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanCode()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    if-nez v0, :cond_18

    .line 749
    .line 750
    const/16 v0, 0x35

    .line 751
    .line 752
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 753
    .line 754
    .line 755
    goto :goto_18

    .line 756
    :cond_18
    const/16 v0, 0x35

    .line 757
    .line 758
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentDubLanCode()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 763
    .line 764
    .line 765
    :goto_18
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    if-nez v0, :cond_19

    .line 770
    .line 771
    const/16 v0, 0x36

    .line 772
    .line 773
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 774
    .line 775
    .line 776
    goto :goto_19

    .line 777
    :cond_19
    const/16 v0, 0x36

    .line 778
    .line 779
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 784
    .line 785
    .line 786
    :goto_19
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestrictLevel()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    if-nez v0, :cond_1a

    .line 791
    .line 792
    const/16 v0, 0x37

    .line 793
    .line 794
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 795
    .line 796
    .line 797
    goto :goto_1a

    .line 798
    :cond_1a
    const/16 v0, 0x37

    .line 799
    .line 800
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getRestrictLevel()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 805
    .line 806
    .line 807
    :goto_1a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    if-nez v0, :cond_1b

    .line 812
    .line 813
    const/16 v0, 0x38

    .line 814
    .line 815
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 816
    .line 817
    .line 818
    goto :goto_1b

    .line 819
    :cond_1b
    const/16 v0, 0x38

    .line 820
    .line 821
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 826
    .line 827
    .line 828
    :goto_1b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCountryName()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    if-nez v0, :cond_1c

    .line 833
    .line 834
    const/16 v0, 0x39

    .line 835
    .line 836
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 837
    .line 838
    .line 839
    goto :goto_1c

    .line 840
    :cond_1c
    const/16 v0, 0x39

    .line 841
    .line 842
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCountryName()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 847
    .line 848
    .line 849
    :goto_1c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeNum()Ljava/lang/Integer;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    if-nez v0, :cond_1d

    .line 854
    .line 855
    const/16 v0, 0x3a

    .line 856
    .line 857
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 858
    .line 859
    .line 860
    goto :goto_1d

    .line 861
    :cond_1d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeNum()Ljava/lang/Integer;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    int-to-long v0, v0

    .line 870
    const/16 v2, 0x3a

    .line 871
    .line 872
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 873
    .line 874
    .line 875
    :goto_1d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitles()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    if-nez v0, :cond_1e

    .line 880
    .line 881
    const/16 v0, 0x3b

    .line 882
    .line 883
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 884
    .line 885
    .line 886
    goto :goto_1e

    .line 887
    :cond_1e
    const/16 v0, 0x3b

    .line 888
    .line 889
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitles()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v1

    .line 893
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 894
    .line 895
    .line 896
    :goto_1e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getImdbRate()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    if-nez v0, :cond_1f

    .line 901
    .line 902
    const/16 v0, 0x3c

    .line 903
    .line 904
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 905
    .line 906
    .line 907
    goto :goto_1f

    .line 908
    :cond_1f
    const/16 v0, 0x3c

    .line 909
    .line 910
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getImdbRate()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 915
    .line 916
    .line 917
    :goto_1f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    if-nez v0, :cond_20

    .line 922
    .line 923
    const/16 v0, 0x3d

    .line 924
    .line 925
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 926
    .line 927
    .line 928
    goto :goto_20

    .line 929
    :cond_20
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 934
    .line 935
    .line 936
    move-result-wide v0

    .line 937
    const/16 v2, 0x3d

    .line 938
    .line 939
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 940
    .line 941
    .line 942
    :goto_20
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    if-nez v0, :cond_21

    .line 947
    .line 948
    const/16 v0, 0x3e

    .line 949
    .line 950
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 951
    .line 952
    .line 953
    goto :goto_21

    .line 954
    :cond_21
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 959
    .line 960
    .line 961
    move-result-wide v0

    .line 962
    const/16 v2, 0x3e

    .line 963
    .line 964
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 965
    .line 966
    .line 967
    :goto_21
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    if-nez v0, :cond_22

    .line 972
    .line 973
    const/16 v0, 0x3f

    .line 974
    .line 975
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 976
    .line 977
    .line 978
    goto :goto_22

    .line 979
    :cond_22
    const/16 v0, 0x3f

    .line 980
    .line 981
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 986
    .line 987
    .line 988
    :goto_22
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    if-nez v0, :cond_23

    .line 993
    .line 994
    const/16 v0, 0x40

    .line 995
    .line 996
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 997
    .line 998
    .line 999
    goto :goto_23

    .line 1000
    :cond_23
    const/16 v0, 0x40

    .line 1001
    .line 1002
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    :goto_23
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    if-nez v0, :cond_24

    .line 1014
    .line 1015
    const/16 v0, 0x41

    .line 1016
    .line 1017
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1018
    .line 1019
    .line 1020
    goto :goto_24

    .line 1021
    :cond_24
    const/16 v0, 0x41

    .line 1022
    .line 1023
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    :goto_24
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    if-nez v0, :cond_25

    .line 1035
    .line 1036
    const/16 v0, 0x42

    .line 1037
    .line 1038
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_25

    .line 1042
    :cond_25
    const/16 v0, 0x42

    .line 1043
    .line 1044
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    :goto_25
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    if-nez v0, :cond_26

    .line 1056
    .line 1057
    const/16 v0, 0x43

    .line 1058
    .line 1059
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_26

    .line 1063
    :cond_26
    const/16 v0, 0x43

    .line 1064
    .line 1065
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    :goto_26
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    if-nez v0, :cond_27

    .line 1077
    .line 1078
    const/16 v0, 0x44

    .line 1079
    .line 1080
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1081
    .line 1082
    .line 1083
    goto :goto_27

    .line 1084
    :cond_27
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1089
    .line 1090
    .line 1091
    move-result v0

    .line 1092
    int-to-long v0, v0

    .line 1093
    const/16 v2, 0x44

    .line 1094
    .line 1095
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 1096
    .line 1097
    .line 1098
    :goto_27
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    if-nez v0, :cond_28

    .line 1103
    .line 1104
    const/16 v0, 0x45

    .line 1105
    .line 1106
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_28

    .line 1110
    :cond_28
    const/16 v0, 0x45

    .line 1111
    .line 1112
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    :goto_28
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    if-nez v0, :cond_29

    .line 1124
    .line 1125
    const/16 v0, 0x46

    .line 1126
    .line 1127
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1128
    .line 1129
    .line 1130
    goto :goto_29

    .line 1131
    :cond_29
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev1Id()Ljava/lang/Integer;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1136
    .line 1137
    .line 1138
    move-result v0

    .line 1139
    int-to-long v0, v0

    .line 1140
    const/16 v2, 0x46

    .line 1141
    .line 1142
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 1143
    .line 1144
    .line 1145
    :goto_29
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    if-nez v0, :cond_2a

    .line 1150
    .line 1151
    const/16 v0, 0x47

    .line 1152
    .line 1153
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_2a

    .line 1157
    :cond_2a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev2Id()Ljava/lang/Integer;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1162
    .line 1163
    .line 1164
    move-result v0

    .line 1165
    int-to-long v0, v0

    .line 1166
    const/16 v2, 0x47

    .line 1167
    .line 1168
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 1169
    .line 1170
    .line 1171
    :goto_2a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    if-nez v0, :cond_2b

    .line 1176
    .line 1177
    const/16 v0, 0x48

    .line 1178
    .line 1179
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_2b

    .line 1183
    :cond_2b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev3Id()Ljava/lang/Integer;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1188
    .line 1189
    .line 1190
    move-result v0

    .line 1191
    int-to-long v0, v0

    .line 1192
    const/16 v2, 0x48

    .line 1193
    .line 1194
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 1195
    .line 1196
    .line 1197
    :goto_2b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    if-nez v0, :cond_2c

    .line 1202
    .line 1203
    const/16 v0, 0x49

    .line 1204
    .line 1205
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_2c

    .line 1209
    :cond_2c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcCateLev4Id()Ljava/lang/Integer;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    int-to-long v0, v0

    .line 1218
    const/16 v2, 0x49

    .line 1219
    .line 1220
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 1221
    .line 1222
    .line 1223
    :goto_2c
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    if-nez v0, :cond_2d

    .line 1228
    .line 1229
    const/16 v0, 0x4a

    .line 1230
    .line 1231
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1232
    .line 1233
    .line 1234
    goto :goto_2d

    .line 1235
    :cond_2d
    const/16 v0, 0x4a

    .line 1236
    .line 1237
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v1

    .line 1241
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1242
    .line 1243
    .line 1244
    :goto_2d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    if-nez v0, :cond_2e

    .line 1249
    .line 1250
    const/16 v0, 0x4b

    .line 1251
    .line 1252
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1253
    .line 1254
    .line 1255
    goto :goto_2e

    .line 1256
    :cond_2e
    const/16 v0, 0x4b

    .line 1257
    .line 1258
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v1

    .line 1262
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    :goto_2e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0

    .line 1269
    if-nez v0, :cond_2f

    .line 1270
    .line 1271
    const/16 v0, 0x4c

    .line 1272
    .line 1273
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1274
    .line 1275
    .line 1276
    goto :goto_2f

    .line 1277
    :cond_2f
    const/16 v0, 0x4c

    .line 1278
    .line 1279
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v1

    .line 1283
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1284
    .line 1285
    .line 1286
    :goto_2f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoEpTitle()Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    if-nez v0, :cond_30

    .line 1291
    .line 1292
    const/16 v0, 0x4d

    .line 1293
    .line 1294
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_30

    .line 1298
    :cond_30
    const/16 v0, 0x4d

    .line 1299
    .line 1300
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoEpTitle()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    :goto_30
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoIsVertical()Z

    .line 1308
    .line 1309
    .line 1310
    move-result v0

    .line 1311
    const/16 v1, 0x4e

    .line 1312
    .line 1313
    int-to-long v2, v0

    .line 1314
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    if-nez v0, :cond_31

    .line 1322
    .line 1323
    const/16 v0, 0x4f

    .line 1324
    .line 1325
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_31

    .line 1329
    :cond_31
    const/16 v0, 0x4f

    .line 1330
    .line 1331
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v1

    .line 1335
    invoke-interface {p1, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1336
    .line 1337
    .line 1338
    :goto_31
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getKidId()Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    if-nez v0, :cond_32

    .line 1343
    .line 1344
    const/16 p2, 0x50

    .line 1345
    .line 1346
    invoke-interface {p1, p2}, Ly3/e;->g(I)V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_32

    .line 1350
    :cond_32
    const/16 v0, 0x50

    .line 1351
    .line 1352
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getKidId()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object p2

    .line 1356
    invoke-interface {p1, v0, p2}, Ly3/e;->i(ILjava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    :goto_32
    return-void
.end method
