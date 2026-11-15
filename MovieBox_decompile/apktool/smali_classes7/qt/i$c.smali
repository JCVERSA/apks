.class Lqt/i$c;
.super Landroidx/room/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqt/i;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqt/i;


# direct methods
.method constructor <init>(Lqt/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqt/i$c;->a:Lqt/i;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ly3/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lqt/i$c;->d(Ly3/e;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE OR ABORT `st_download_table` SET `id` = ?,`resourceStreamType` = ?,`resourceId` = ?,`lan` = ?,`lanName` = ?,`url` = ?,`size` = ?,`delay` = ?,`downloads` = ?,`type` = ?,`postId` = ?,`subtitleName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`subjectName` = ?,`status` = ?,`fileCharsetName` = ?,`path` = ?,`zipPath` = ?,`taskId` = ?,`failCount` = ?,`ugcVideoId` = ?,`ugcVideoCollectionId` = ?,`ops` = ? WHERE `id` = ? AND `resourceStreamType` = ?"

    .line 2
    .line 3
    return-object v0
.end method

.method protected d(Ly3/e;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

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
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x5

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x6

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSize()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v1, 0x7

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSize()Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 120
    .line 121
    .line 122
    :goto_5
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDelay()Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 143
    .line 144
    .line 145
    :goto_6
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDownloads()Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const/16 v1, 0x9

    .line 150
    .line 151
    if-nez v0, :cond_7

    .line 152
    .line 153
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getDownloads()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    int-to-long v2, v0

    .line 166
    invoke-interface {p1, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 167
    .line 168
    .line 169
    :goto_7
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    int-to-long v0, v0

    .line 174
    const/16 v2, 0xa

    .line 175
    .line 176
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPostId()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/16 v1, 0xb

    .line 184
    .line 185
    if-nez v0, :cond_8

    .line 186
    .line 187
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPostId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :goto_8
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const/16 v1, 0xc

    .line 203
    .line 204
    if-nez v0, :cond_9

    .line 205
    .line 206
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :goto_9
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/16 v1, 0xd

    .line 222
    .line 223
    if-nez v0, :cond_a

    .line 224
    .line 225
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_a

    .line 229
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_a
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getEp()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    int-to-long v0, v0

    .line 241
    const/16 v2, 0xe

    .line 242
    .line 243
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSe()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    int-to-long v0, v0

    .line 251
    const/16 v2, 0xf

    .line 252
    .line 253
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResolution()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    int-to-long v0, v0

    .line 261
    const/16 v2, 0x10

    .line 262
    .line 263
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectName()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const/16 v1, 0x11

    .line 271
    .line 272
    if-nez v0, :cond_b

    .line 273
    .line 274
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_b

    .line 278
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubjectName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :goto_b
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    int-to-long v0, v0

    .line 290
    const/16 v2, 0x12

    .line 291
    .line 292
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getFileCharsetName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const/16 v1, 0x13

    .line 300
    .line 301
    if-nez v0, :cond_c

    .line 302
    .line 303
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 304
    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_c
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getFileCharsetName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :goto_c
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const/16 v1, 0x14

    .line 319
    .line 320
    if-nez v0, :cond_d

    .line 321
    .line 322
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_d
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_d
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getZipPath()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    const/16 v1, 0x15

    .line 338
    .line 339
    if-nez v0, :cond_e

    .line 340
    .line 341
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 342
    .line 343
    .line 344
    goto :goto_e

    .line 345
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getZipPath()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_e
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getTaskId()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const/16 v1, 0x16

    .line 357
    .line 358
    if-nez v0, :cond_f

    .line 359
    .line 360
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_f

    .line 364
    :cond_f
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getTaskId()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :goto_f
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getFailCount()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    int-to-long v0, v0

    .line 376
    const/16 v2, 0x17

    .line 377
    .line 378
    invoke-interface {p1, v2, v0, v1}, Ly3/e;->c(IJ)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUgcVideoId()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const/16 v1, 0x18

    .line 386
    .line 387
    if-nez v0, :cond_10

    .line 388
    .line 389
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 390
    .line 391
    .line 392
    goto :goto_10

    .line 393
    :cond_10
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUgcVideoId()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :goto_10
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const/16 v1, 0x19

    .line 405
    .line 406
    if-nez v0, :cond_11

    .line 407
    .line 408
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 409
    .line 410
    .line 411
    goto :goto_11

    .line 412
    :cond_11
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    :goto_11
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getOps()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    const/16 v1, 0x1a

    .line 424
    .line 425
    if-nez v0, :cond_12

    .line 426
    .line 427
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 428
    .line 429
    .line 430
    goto :goto_12

    .line 431
    :cond_12
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getOps()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 436
    .line 437
    .line 438
    :goto_12
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const/16 v1, 0x1b

    .line 443
    .line 444
    if-nez v0, :cond_13

    .line 445
    .line 446
    invoke-interface {p1, v1}, Ly3/e;->g(I)V

    .line 447
    .line 448
    .line 449
    goto :goto_13

    .line 450
    :cond_13
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-interface {p1, v1, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :goto_13
    invoke-virtual {p2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 458
    .line 459
    .line 460
    move-result p2

    .line 461
    int-to-long v0, p2

    .line 462
    const/16 p2, 0x1c

    .line 463
    .line 464
    invoke-interface {p1, p2, v0, v1}, Ly3/e;->c(IJ)V

    .line 465
    .line 466
    .line 467
    return-void
.end method
