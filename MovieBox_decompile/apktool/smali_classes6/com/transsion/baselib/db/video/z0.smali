.class public final Lcom/transsion/baselib/db/video/z0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/video/VideoDetailPlayDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Lri/b;

.field private final d:Landroidx/room/e;

.field private final e:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lri/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lri/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/baselib/db/video/z0$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/z0$a;-><init>(Lcom/transsion/baselib/db/video/z0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0;->b:Landroidx/room/g;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/baselib/db/video/z0$b;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/z0$b;-><init>(Lcom/transsion/baselib/db/video/z0;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0;->d:Landroidx/room/e;

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/baselib/db/video/z0$c;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/z0$c;-><init>(Lcom/transsion/baselib/db/video/z0;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/baselib/db/video/z0;->e:Landroidx/room/e;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic A(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->L(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->P(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Ljava/lang/String;Ly3/b;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/z0;->N(Ljava/lang/String;Ly3/b;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic D(Lcom/transsion/baselib/db/video/z0;)Lri/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static E()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->d:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method private static synthetic G(Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM VIDEO_DETAIL_PLAY"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    invoke-interface {p0}, Ly3/e;->close()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-interface {p0}, Ly3/e;->close()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private synthetic H(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 60

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC LIMIT 1"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    move-object/from16 v6, p0

    .line 20
    .line 21
    goto/16 :goto_19

    .line 22
    .line 23
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v0, "subjectId"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v3, "id"

    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v4, "ep"

    .line 39
    .line 40
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-string v5, "se"

    .line 45
    .line 46
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const-string v6, "progress"

    .line 51
    .line 52
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const-string v7, "title"

    .line 57
    .line 58
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const-string v8, "coverUrl"

    .line 63
    .line 64
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const-string v9, "thumbnail"

    .line 69
    .line 70
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const-string v10, "videoUrl"

    .line 75
    .line 76
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    const-string v11, "timeStamp"

    .line 81
    .line 82
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const-string v12, "subtitleSelectId"

    .line 87
    .line 88
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const-string v13, "totalDuration"

    .line 93
    .line 94
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    const-string v14, "subjectDurationSeconds"

    .line 99
    .line 100
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    const-string v15, "averageHueLight"

    .line 105
    .line 106
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    const-string v2, "subjectType"

    .line 111
    .line 112
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    move/from16 p1, v2

    .line 117
    .line 118
    const-string v2, "hasDelete"

    .line 119
    .line 120
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    move/from16 v16, v2

    .line 125
    .line 126
    const-string v2, "playMode"

    .line 127
    .line 128
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    move/from16 v17, v2

    .line 133
    .line 134
    const-string v2, "downloadUrl"

    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    move/from16 v18, v2

    .line 141
    .line 142
    const-string v2, "downloadFilePath"

    .line 143
    .line 144
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move/from16 v19, v2

    .line 149
    .line 150
    const-string v2, "downloadSize"

    .line 151
    .line 152
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    move/from16 v20, v2

    .line 157
    .line 158
    const-string v2, "dubs"

    .line 159
    .line 160
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    move/from16 v21, v2

    .line 165
    .line 166
    const-string v2, "lastAdStartTimeStamp"

    .line 167
    .line 168
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    move/from16 v22, v2

    .line 173
    .line 174
    const-string v2, "lastAdEndTimeStamp"

    .line 175
    .line 176
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    move/from16 v23, v2

    .line 181
    .line 182
    const-string v2, "rewardPlayed"

    .line 183
    .line 184
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    move/from16 v24, v2

    .line 189
    .line 190
    const-string v2, "rewardUnlock"

    .line 191
    .line 192
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    move/from16 v25, v2

    .line 197
    .line 198
    const-string v2, "rewardFree"

    .line 199
    .line 200
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    move/from16 v26, v2

    .line 205
    .line 206
    const-string v2, "ops"

    .line 207
    .line 208
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 213
    .line 214
    .line 215
    move-result v27

    .line 216
    const/16 v28, 0x0

    .line 217
    .line 218
    if-eqz v27, :cond_17

    .line 219
    .line 220
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 221
    .line 222
    .line 223
    move-result v27

    .line 224
    if-eqz v27, :cond_1

    .line 225
    .line 226
    move-object/from16 v30, v28

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object/from16 v30, v0

    .line 234
    .line 235
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    .line 241
    move-object/from16 v31, v28

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    move-object/from16 v31, v0

    .line 249
    .line 250
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    long-to-int v0, v3

    .line 255
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    long-to-int v3, v3

    .line 260
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v34

    .line 264
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_3

    .line 269
    .line 270
    move-object/from16 v36, v28

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_3
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    move-object/from16 v36, v4

    .line 278
    .line 279
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_4

    .line 284
    .line 285
    move-object/from16 v37, v28

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_4
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    move-object/from16 v37, v4

    .line 293
    .line 294
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_5

    .line 299
    .line 300
    move-object/from16 v38, v28

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    move-object/from16 v38, v4

    .line 308
    .line 309
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_6

    .line 314
    .line 315
    move-object/from16 v39, v28

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_6
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    move-object/from16 v39, v4

    .line 323
    .line 324
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v40

    .line 328
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_7

    .line 333
    .line 334
    move-object/from16 v42, v28

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_7
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    move-object/from16 v42, v4

    .line 342
    .line 343
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_8

    .line 348
    .line 349
    move-object/from16 v43, v28

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_8
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v4

    .line 356
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    move-object/from16 v43, v4

    .line 361
    .line 362
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_9

    .line 367
    .line 368
    move-object/from16 v44, v28

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_9
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    move-object/from16 v44, v4

    .line 380
    .line 381
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_a

    .line 386
    .line 387
    move/from16 v4, p1

    .line 388
    .line 389
    move-object/from16 v45, v28

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    move-object/from16 v45, v4

    .line 397
    .line 398
    move/from16 v4, p1

    .line 399
    .line 400
    :goto_a
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_b

    .line 405
    .line 406
    move/from16 v4, v16

    .line 407
    .line 408
    move-object/from16 v46, v28

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    long-to-int v4, v4

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    move-object/from16 v46, v4

    .line 421
    .line 422
    move/from16 v4, v16

    .line 423
    .line 424
    :goto_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 425
    .line 426
    .line 427
    move-result-wide v4

    .line 428
    long-to-int v4, v4

    .line 429
    const/4 v5, 0x0

    .line 430
    if-eqz v4, :cond_c

    .line 431
    .line 432
    move/from16 v4, v17

    .line 433
    .line 434
    const/16 v47, 0x1

    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_c
    move/from16 v47, v5

    .line 438
    .line 439
    move/from16 v4, v17

    .line 440
    .line 441
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_d

    .line 446
    .line 447
    move/from16 v4, v18

    .line 448
    .line 449
    move-object/from16 v48, v28

    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_d
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    move-object/from16 v48, v4

    .line 457
    .line 458
    move/from16 v4, v18

    .line 459
    .line 460
    :goto_d
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_e

    .line 465
    .line 466
    move/from16 v4, v19

    .line 467
    .line 468
    move-object/from16 v49, v28

    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_e
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    move-object/from16 v49, v4

    .line 476
    .line 477
    move/from16 v4, v19

    .line 478
    .line 479
    :goto_e
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_f

    .line 484
    .line 485
    move/from16 v4, v20

    .line 486
    .line 487
    move-object/from16 v50, v28

    .line 488
    .line 489
    goto :goto_f

    .line 490
    :cond_f
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    move-object/from16 v50, v4

    .line 495
    .line 496
    move/from16 v4, v20

    .line 497
    .line 498
    :goto_f
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v51

    .line 502
    move/from16 v4, v21

    .line 503
    .line 504
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-eqz v6, :cond_10

    .line 509
    .line 510
    move-object/from16 v6, p0

    .line 511
    .line 512
    move-object/from16 v4, v28

    .line 513
    .line 514
    goto :goto_10

    .line 515
    :cond_10
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    move-object/from16 v6, p0

    .line 520
    .line 521
    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 522
    .line 523
    invoke-virtual {v7, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 524
    .line 525
    .line 526
    move-result-object v53

    .line 527
    move/from16 v4, v22

    .line 528
    .line 529
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_11

    .line 534
    .line 535
    move/from16 v4, v23

    .line 536
    .line 537
    move-object/from16 v54, v28

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_11
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 541
    .line 542
    .line 543
    move-result-wide v7

    .line 544
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    move-object/from16 v54, v4

    .line 549
    .line 550
    move/from16 v4, v23

    .line 551
    .line 552
    :goto_11
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    if-eqz v7, :cond_12

    .line 557
    .line 558
    move/from16 v4, v24

    .line 559
    .line 560
    move-object/from16 v55, v28

    .line 561
    .line 562
    goto :goto_12

    .line 563
    :cond_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v7

    .line 567
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    move-object/from16 v55, v4

    .line 572
    .line 573
    move/from16 v4, v24

    .line 574
    .line 575
    :goto_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 576
    .line 577
    .line 578
    move-result-wide v7

    .line 579
    long-to-int v4, v7

    .line 580
    if-eqz v4, :cond_13

    .line 581
    .line 582
    move/from16 v4, v25

    .line 583
    .line 584
    const/16 v56, 0x1

    .line 585
    .line 586
    goto :goto_13

    .line 587
    :cond_13
    move/from16 v56, v5

    .line 588
    .line 589
    move/from16 v4, v25

    .line 590
    .line 591
    :goto_13
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 592
    .line 593
    .line 594
    move-result-wide v7

    .line 595
    long-to-int v4, v7

    .line 596
    if-eqz v4, :cond_14

    .line 597
    .line 598
    move/from16 v4, v26

    .line 599
    .line 600
    const/16 v57, 0x1

    .line 601
    .line 602
    goto :goto_14

    .line 603
    :cond_14
    move/from16 v57, v5

    .line 604
    .line 605
    move/from16 v4, v26

    .line 606
    .line 607
    :goto_14
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v7

    .line 611
    long-to-int v4, v7

    .line 612
    if-eqz v4, :cond_15

    .line 613
    .line 614
    const/16 v58, 0x1

    .line 615
    .line 616
    goto :goto_15

    .line 617
    :cond_15
    move/from16 v58, v5

    .line 618
    .line 619
    :goto_15
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    if-eqz v4, :cond_16

    .line 624
    .line 625
    :goto_16
    move-object/from16 v59, v28

    .line 626
    .line 627
    goto :goto_17

    .line 628
    :cond_16
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v28

    .line 632
    goto :goto_16

    .line 633
    :goto_17
    new-instance v28, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 634
    .line 635
    move-object/from16 v29, v28

    .line 636
    .line 637
    move/from16 v32, v0

    .line 638
    .line 639
    move/from16 v33, v3

    .line 640
    .line 641
    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 642
    .line 643
    .line 644
    goto :goto_18

    .line 645
    :catchall_1
    move-exception v0

    .line 646
    goto :goto_19

    .line 647
    :cond_17
    move-object/from16 v6, p0

    .line 648
    .line 649
    :goto_18
    invoke-interface {v1}, Ly3/e;->close()V

    .line 650
    .line 651
    .line 652
    return-object v28

    .line 653
    :goto_19
    invoke-interface {v1}, Ly3/e;->close()V

    .line 654
    .line 655
    .line 656
    throw v0
.end method

.method private synthetic I(IILjava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 58

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE se = ? AND ep = ? AND subjectId = ? ORDER BY timeStamp DESC LIMIT 1"

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    move/from16 v2, p1

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    const/4 v4, 0x1

    .line 15
    :try_start_0
    invoke-interface {v1, v4, v2, v3}, Ly3/e;->c(IJ)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    move/from16 v3, p2

    .line 20
    .line 21
    int-to-long v5, v3

    .line 22
    invoke-interface {v1, v2, v5, v6}, Ly3/e;->c(IJ)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    move-object/from16 v6, p0

    .line 34
    .line 35
    goto/16 :goto_19

    .line 36
    .line 37
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    const-string v0, "subjectId"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v2, "id"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const-string v3, "ep"

    .line 53
    .line 54
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const-string v5, "se"

    .line 59
    .line 60
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const-string v6, "progress"

    .line 65
    .line 66
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const-string v7, "title"

    .line 71
    .line 72
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const-string v8, "coverUrl"

    .line 77
    .line 78
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const-string v9, "thumbnail"

    .line 83
    .line 84
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const-string v10, "videoUrl"

    .line 89
    .line 90
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    const-string v11, "timeStamp"

    .line 95
    .line 96
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    const-string v12, "subtitleSelectId"

    .line 101
    .line 102
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    const-string v13, "totalDuration"

    .line 107
    .line 108
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    const-string v14, "subjectDurationSeconds"

    .line 113
    .line 114
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    const-string v15, "averageHueLight"

    .line 119
    .line 120
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    const-string v4, "subjectType"

    .line 125
    .line 126
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    move/from16 p2, v4

    .line 131
    .line 132
    const-string v4, "hasDelete"

    .line 133
    .line 134
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    move/from16 p3, v4

    .line 139
    .line 140
    const-string v4, "playMode"

    .line 141
    .line 142
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    move/from16 p4, v4

    .line 147
    .line 148
    const-string v4, "downloadUrl"

    .line 149
    .line 150
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    move/from16 v16, v4

    .line 155
    .line 156
    const-string v4, "downloadFilePath"

    .line 157
    .line 158
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    move/from16 v17, v4

    .line 163
    .line 164
    const-string v4, "downloadSize"

    .line 165
    .line 166
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    move/from16 v18, v4

    .line 171
    .line 172
    const-string v4, "dubs"

    .line 173
    .line 174
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    move/from16 v19, v4

    .line 179
    .line 180
    const-string v4, "lastAdStartTimeStamp"

    .line 181
    .line 182
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    move/from16 v20, v4

    .line 187
    .line 188
    const-string v4, "lastAdEndTimeStamp"

    .line 189
    .line 190
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    move/from16 v21, v4

    .line 195
    .line 196
    const-string v4, "rewardPlayed"

    .line 197
    .line 198
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    move/from16 v22, v4

    .line 203
    .line 204
    const-string v4, "rewardUnlock"

    .line 205
    .line 206
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    move/from16 v23, v4

    .line 211
    .line 212
    const-string v4, "rewardFree"

    .line 213
    .line 214
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    move/from16 v24, v4

    .line 219
    .line 220
    const-string v4, "ops"

    .line 221
    .line 222
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 227
    .line 228
    .line 229
    move-result v25

    .line 230
    const/16 v26, 0x0

    .line 231
    .line 232
    if-eqz v25, :cond_17

    .line 233
    .line 234
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v25

    .line 238
    if-eqz v25, :cond_1

    .line 239
    .line 240
    move-object/from16 v28, v26

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object/from16 v28, v0

    .line 248
    .line 249
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    move-object/from16 v29, v26

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object/from16 v29, v0

    .line 263
    .line 264
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    long-to-int v0, v2

    .line 269
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v2

    .line 273
    long-to-int v2, v2

    .line 274
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v32

    .line 278
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_3

    .line 283
    .line 284
    move-object/from16 v34, v26

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_3
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    move-object/from16 v34, v3

    .line 292
    .line 293
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-eqz v3, :cond_4

    .line 298
    .line 299
    move-object/from16 v35, v26

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_4
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    move-object/from16 v35, v3

    .line 307
    .line 308
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    if-eqz v3, :cond_5

    .line 313
    .line 314
    move-object/from16 v36, v26

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move-object/from16 v36, v3

    .line 322
    .line 323
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_6

    .line 328
    .line 329
    move-object/from16 v37, v26

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_6
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    move-object/from16 v37, v3

    .line 337
    .line 338
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v38

    .line 342
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_7

    .line 347
    .line 348
    move-object/from16 v40, v26

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_7
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    move-object/from16 v40, v3

    .line 356
    .line 357
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_8

    .line 362
    .line 363
    move-object/from16 v41, v26

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_8
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v5

    .line 370
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    move-object/from16 v41, v3

    .line 375
    .line 376
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_9

    .line 381
    .line 382
    move-object/from16 v42, v26

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_9
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 386
    .line 387
    .line 388
    move-result-wide v5

    .line 389
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    move-object/from16 v42, v3

    .line 394
    .line 395
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-eqz v3, :cond_a

    .line 400
    .line 401
    move/from16 v3, p2

    .line 402
    .line 403
    move-object/from16 v43, v26

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    move-object/from16 v43, v3

    .line 411
    .line 412
    move/from16 v3, p2

    .line 413
    .line 414
    :goto_a
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_b

    .line 419
    .line 420
    move/from16 v3, p3

    .line 421
    .line 422
    move-object/from16 v44, v26

    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_b
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 426
    .line 427
    .line 428
    move-result-wide v5

    .line 429
    long-to-int v3, v5

    .line 430
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    move-object/from16 v44, v3

    .line 435
    .line 436
    move/from16 v3, p3

    .line 437
    .line 438
    :goto_b
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v5

    .line 442
    long-to-int v3, v5

    .line 443
    const/4 v5, 0x0

    .line 444
    if-eqz v3, :cond_c

    .line 445
    .line 446
    move/from16 v3, p4

    .line 447
    .line 448
    const/16 v45, 0x1

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_c
    move/from16 v3, p4

    .line 452
    .line 453
    move/from16 v45, v5

    .line 454
    .line 455
    :goto_c
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_d

    .line 460
    .line 461
    move/from16 v3, v16

    .line 462
    .line 463
    move-object/from16 v46, v26

    .line 464
    .line 465
    goto :goto_d

    .line 466
    :cond_d
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    move-object/from16 v46, v3

    .line 471
    .line 472
    move/from16 v3, v16

    .line 473
    .line 474
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-eqz v6, :cond_e

    .line 479
    .line 480
    move/from16 v3, v17

    .line 481
    .line 482
    move-object/from16 v47, v26

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_e
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    move-object/from16 v47, v3

    .line 490
    .line 491
    move/from16 v3, v17

    .line 492
    .line 493
    :goto_e
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    if-eqz v6, :cond_f

    .line 498
    .line 499
    move/from16 v3, v18

    .line 500
    .line 501
    move-object/from16 v48, v26

    .line 502
    .line 503
    goto :goto_f

    .line 504
    :cond_f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    move-object/from16 v48, v3

    .line 509
    .line 510
    move/from16 v3, v18

    .line 511
    .line 512
    :goto_f
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v49

    .line 516
    move/from16 v3, v19

    .line 517
    .line 518
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_10

    .line 523
    .line 524
    move-object/from16 v6, p0

    .line 525
    .line 526
    move-object/from16 v3, v26

    .line 527
    .line 528
    goto :goto_10

    .line 529
    :cond_10
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    move-object/from16 v6, p0

    .line 534
    .line 535
    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 536
    .line 537
    invoke-virtual {v7, v3}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 538
    .line 539
    .line 540
    move-result-object v51

    .line 541
    move/from16 v3, v20

    .line 542
    .line 543
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-eqz v7, :cond_11

    .line 548
    .line 549
    move/from16 v3, v21

    .line 550
    .line 551
    move-object/from16 v52, v26

    .line 552
    .line 553
    goto :goto_11

    .line 554
    :cond_11
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 555
    .line 556
    .line 557
    move-result-wide v7

    .line 558
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    move-object/from16 v52, v3

    .line 563
    .line 564
    move/from16 v3, v21

    .line 565
    .line 566
    :goto_11
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_12

    .line 571
    .line 572
    move/from16 v3, v22

    .line 573
    .line 574
    move-object/from16 v53, v26

    .line 575
    .line 576
    goto :goto_12

    .line 577
    :cond_12
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 578
    .line 579
    .line 580
    move-result-wide v7

    .line 581
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    move-object/from16 v53, v3

    .line 586
    .line 587
    move/from16 v3, v22

    .line 588
    .line 589
    :goto_12
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v7

    .line 593
    long-to-int v3, v7

    .line 594
    if-eqz v3, :cond_13

    .line 595
    .line 596
    move/from16 v3, v23

    .line 597
    .line 598
    const/16 v54, 0x1

    .line 599
    .line 600
    goto :goto_13

    .line 601
    :cond_13
    move/from16 v54, v5

    .line 602
    .line 603
    move/from16 v3, v23

    .line 604
    .line 605
    :goto_13
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 606
    .line 607
    .line 608
    move-result-wide v7

    .line 609
    long-to-int v3, v7

    .line 610
    if-eqz v3, :cond_14

    .line 611
    .line 612
    move/from16 v3, v24

    .line 613
    .line 614
    const/16 v55, 0x1

    .line 615
    .line 616
    goto :goto_14

    .line 617
    :cond_14
    move/from16 v55, v5

    .line 618
    .line 619
    move/from16 v3, v24

    .line 620
    .line 621
    :goto_14
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v7

    .line 625
    long-to-int v3, v7

    .line 626
    if-eqz v3, :cond_15

    .line 627
    .line 628
    const/16 v56, 0x1

    .line 629
    .line 630
    goto :goto_15

    .line 631
    :cond_15
    move/from16 v56, v5

    .line 632
    .line 633
    :goto_15
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-eqz v3, :cond_16

    .line 638
    .line 639
    :goto_16
    move-object/from16 v57, v26

    .line 640
    .line 641
    goto :goto_17

    .line 642
    :cond_16
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v26

    .line 646
    goto :goto_16

    .line 647
    :goto_17
    new-instance v26, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 648
    .line 649
    move-object/from16 v27, v26

    .line 650
    .line 651
    move/from16 v30, v0

    .line 652
    .line 653
    move/from16 v31, v2

    .line 654
    .line 655
    invoke-direct/range {v27 .. v57}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    .line 657
    .line 658
    goto :goto_18

    .line 659
    :catchall_1
    move-exception v0

    .line 660
    goto :goto_19

    .line 661
    :cond_17
    move-object/from16 v6, p0

    .line 662
    .line 663
    :goto_18
    invoke-interface {v1}, Ly3/e;->close()V

    .line 664
    .line 665
    .line 666
    return-object v26

    .line 667
    :goto_19
    invoke-interface {v1}, Ly3/e;->close()V

    .line 668
    .line 669
    .line 670
    throw v0
.end method

.method private synthetic J(Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 58

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? AND se = ? AND ep = ?"

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    move-object/from16 v6, p0

    .line 20
    .line 21
    goto/16 :goto_19

    .line 22
    .line 23
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x2

    .line 27
    move/from16 v3, p2

    .line 28
    .line 29
    int-to-long v3, v3

    .line 30
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    move/from16 v3, p3

    .line 35
    .line 36
    int-to-long v3, v3

    .line 37
    invoke-interface {v1, v0, v3, v4}, Ly3/e;->c(IJ)V

    .line 38
    .line 39
    .line 40
    const-string v0, "subjectId"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const-string v3, "id"

    .line 47
    .line 48
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const-string v4, "ep"

    .line 53
    .line 54
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const-string v5, "se"

    .line 59
    .line 60
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const-string v6, "progress"

    .line 65
    .line 66
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const-string v7, "title"

    .line 71
    .line 72
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const-string v8, "coverUrl"

    .line 77
    .line 78
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    const-string v9, "thumbnail"

    .line 83
    .line 84
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const-string v10, "videoUrl"

    .line 89
    .line 90
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    const-string v11, "timeStamp"

    .line 95
    .line 96
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    const-string v12, "subtitleSelectId"

    .line 101
    .line 102
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    const-string v13, "totalDuration"

    .line 107
    .line 108
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v13

    .line 112
    const-string v14, "subjectDurationSeconds"

    .line 113
    .line 114
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    const-string v15, "averageHueLight"

    .line 119
    .line 120
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    const-string v2, "subjectType"

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    move/from16 p1, v2

    .line 131
    .line 132
    const-string v2, "hasDelete"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 p2, v2

    .line 139
    .line 140
    const-string v2, "playMode"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 p3, v2

    .line 147
    .line 148
    const-string v2, "downloadUrl"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 v16, v2

    .line 155
    .line 156
    const-string v2, "downloadFilePath"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v17, v2

    .line 163
    .line 164
    const-string v2, "downloadSize"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v18, v2

    .line 171
    .line 172
    const-string v2, "dubs"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v19, v2

    .line 179
    .line 180
    const-string v2, "lastAdStartTimeStamp"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v20, v2

    .line 187
    .line 188
    const-string v2, "lastAdEndTimeStamp"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v21, v2

    .line 195
    .line 196
    const-string v2, "rewardPlayed"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v22, v2

    .line 203
    .line 204
    const-string v2, "rewardUnlock"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v23, v2

    .line 211
    .line 212
    const-string v2, "rewardFree"

    .line 213
    .line 214
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    move/from16 v24, v2

    .line 219
    .line 220
    const-string v2, "ops"

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 227
    .line 228
    .line 229
    move-result v25

    .line 230
    const/16 v26, 0x0

    .line 231
    .line 232
    if-eqz v25, :cond_17

    .line 233
    .line 234
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 235
    .line 236
    .line 237
    move-result v25

    .line 238
    if-eqz v25, :cond_1

    .line 239
    .line 240
    move-object/from16 v28, v26

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    move-object/from16 v28, v0

    .line 248
    .line 249
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    move-object/from16 v29, v26

    .line 256
    .line 257
    goto :goto_2

    .line 258
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object/from16 v29, v0

    .line 263
    .line 264
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 265
    .line 266
    .line 267
    move-result-wide v3

    .line 268
    long-to-int v0, v3

    .line 269
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v3

    .line 273
    long-to-int v3, v3

    .line 274
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v32

    .line 278
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_3

    .line 283
    .line 284
    move-object/from16 v34, v26

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_3
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    move-object/from16 v34, v4

    .line 292
    .line 293
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_4

    .line 298
    .line 299
    move-object/from16 v35, v26

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_4
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    move-object/from16 v35, v4

    .line 307
    .line 308
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_5

    .line 313
    .line 314
    move-object/from16 v36, v26

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    move-object/from16 v36, v4

    .line 322
    .line 323
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_6

    .line 328
    .line 329
    move-object/from16 v37, v26

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_6
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    move-object/from16 v37, v4

    .line 337
    .line 338
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v38

    .line 342
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_7

    .line 347
    .line 348
    move-object/from16 v40, v26

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_7
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    move-object/from16 v40, v4

    .line 356
    .line 357
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_8

    .line 362
    .line 363
    move-object/from16 v41, v26

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_8
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v4

    .line 370
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    move-object/from16 v41, v4

    .line 375
    .line 376
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_9

    .line 381
    .line 382
    move-object/from16 v42, v26

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_9
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 386
    .line 387
    .line 388
    move-result-wide v4

    .line 389
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    move-object/from16 v42, v4

    .line 394
    .line 395
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_a

    .line 400
    .line 401
    move/from16 v4, p1

    .line 402
    .line 403
    move-object/from16 v43, v26

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    move-object/from16 v43, v4

    .line 411
    .line 412
    move/from16 v4, p1

    .line 413
    .line 414
    :goto_a
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    if-eqz v5, :cond_b

    .line 419
    .line 420
    move/from16 v4, p2

    .line 421
    .line 422
    move-object/from16 v44, v26

    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 426
    .line 427
    .line 428
    move-result-wide v4

    .line 429
    long-to-int v4, v4

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    move-object/from16 v44, v4

    .line 435
    .line 436
    move/from16 v4, p2

    .line 437
    .line 438
    :goto_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 439
    .line 440
    .line 441
    move-result-wide v4

    .line 442
    long-to-int v4, v4

    .line 443
    const/4 v5, 0x0

    .line 444
    if-eqz v4, :cond_c

    .line 445
    .line 446
    move/from16 v4, p3

    .line 447
    .line 448
    const/16 v45, 0x1

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_c
    move/from16 v4, p3

    .line 452
    .line 453
    move/from16 v45, v5

    .line 454
    .line 455
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    if-eqz v6, :cond_d

    .line 460
    .line 461
    move/from16 v4, v16

    .line 462
    .line 463
    move-object/from16 v46, v26

    .line 464
    .line 465
    goto :goto_d

    .line 466
    :cond_d
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    move-object/from16 v46, v4

    .line 471
    .line 472
    move/from16 v4, v16

    .line 473
    .line 474
    :goto_d
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    if-eqz v6, :cond_e

    .line 479
    .line 480
    move/from16 v4, v17

    .line 481
    .line 482
    move-object/from16 v47, v26

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_e
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    move-object/from16 v47, v4

    .line 490
    .line 491
    move/from16 v4, v17

    .line 492
    .line 493
    :goto_e
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    if-eqz v6, :cond_f

    .line 498
    .line 499
    move/from16 v4, v18

    .line 500
    .line 501
    move-object/from16 v48, v26

    .line 502
    .line 503
    goto :goto_f

    .line 504
    :cond_f
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    move-object/from16 v48, v4

    .line 509
    .line 510
    move/from16 v4, v18

    .line 511
    .line 512
    :goto_f
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v49

    .line 516
    move/from16 v4, v19

    .line 517
    .line 518
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    if-eqz v6, :cond_10

    .line 523
    .line 524
    move-object/from16 v6, p0

    .line 525
    .line 526
    move-object/from16 v4, v26

    .line 527
    .line 528
    goto :goto_10

    .line 529
    :cond_10
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    move-object/from16 v6, p0

    .line 534
    .line 535
    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 536
    .line 537
    invoke-virtual {v7, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 538
    .line 539
    .line 540
    move-result-object v51

    .line 541
    move/from16 v4, v20

    .line 542
    .line 543
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    if-eqz v7, :cond_11

    .line 548
    .line 549
    move/from16 v4, v21

    .line 550
    .line 551
    move-object/from16 v52, v26

    .line 552
    .line 553
    goto :goto_11

    .line 554
    :cond_11
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 555
    .line 556
    .line 557
    move-result-wide v7

    .line 558
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    move-object/from16 v52, v4

    .line 563
    .line 564
    move/from16 v4, v21

    .line 565
    .line 566
    :goto_11
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_12

    .line 571
    .line 572
    move/from16 v4, v22

    .line 573
    .line 574
    move-object/from16 v53, v26

    .line 575
    .line 576
    goto :goto_12

    .line 577
    :cond_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 578
    .line 579
    .line 580
    move-result-wide v7

    .line 581
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    move-object/from16 v53, v4

    .line 586
    .line 587
    move/from16 v4, v22

    .line 588
    .line 589
    :goto_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 590
    .line 591
    .line 592
    move-result-wide v7

    .line 593
    long-to-int v4, v7

    .line 594
    if-eqz v4, :cond_13

    .line 595
    .line 596
    move/from16 v4, v23

    .line 597
    .line 598
    const/16 v54, 0x1

    .line 599
    .line 600
    goto :goto_13

    .line 601
    :cond_13
    move/from16 v54, v5

    .line 602
    .line 603
    move/from16 v4, v23

    .line 604
    .line 605
    :goto_13
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 606
    .line 607
    .line 608
    move-result-wide v7

    .line 609
    long-to-int v4, v7

    .line 610
    if-eqz v4, :cond_14

    .line 611
    .line 612
    move/from16 v4, v24

    .line 613
    .line 614
    const/16 v55, 0x1

    .line 615
    .line 616
    goto :goto_14

    .line 617
    :cond_14
    move/from16 v55, v5

    .line 618
    .line 619
    move/from16 v4, v24

    .line 620
    .line 621
    :goto_14
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 622
    .line 623
    .line 624
    move-result-wide v7

    .line 625
    long-to-int v4, v7

    .line 626
    if-eqz v4, :cond_15

    .line 627
    .line 628
    const/16 v56, 0x1

    .line 629
    .line 630
    goto :goto_15

    .line 631
    :cond_15
    move/from16 v56, v5

    .line 632
    .line 633
    :goto_15
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    if-eqz v4, :cond_16

    .line 638
    .line 639
    :goto_16
    move-object/from16 v57, v26

    .line 640
    .line 641
    goto :goto_17

    .line 642
    :cond_16
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v26

    .line 646
    goto :goto_16

    .line 647
    :goto_17
    new-instance v26, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 648
    .line 649
    move-object/from16 v27, v26

    .line 650
    .line 651
    move/from16 v30, v0

    .line 652
    .line 653
    move/from16 v31, v3

    .line 654
    .line 655
    invoke-direct/range {v27 .. v57}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 656
    .line 657
    .line 658
    goto :goto_18

    .line 659
    :catchall_1
    move-exception v0

    .line 660
    goto :goto_19

    .line 661
    :cond_17
    move-object/from16 v6, p0

    .line 662
    .line 663
    :goto_18
    invoke-interface {v1}, Ly3/e;->close()V

    .line 664
    .line 665
    .line 666
    return-object v26

    .line 667
    :goto_19
    invoke-interface {v1}, Ly3/e;->close()V

    .line 668
    .line 669
    .line 670
    throw v0
.end method

.method private synthetic K(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 66

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto/16 :goto_1b

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "subjectId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v3, "id"

    .line 31
    .line 32
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const-string v4, "ep"

    .line 37
    .line 38
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "se"

    .line 43
    .line 44
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const-string v6, "progress"

    .line 49
    .line 50
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const-string v7, "title"

    .line 55
    .line 56
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    const-string v8, "coverUrl"

    .line 61
    .line 62
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    const-string v9, "thumbnail"

    .line 67
    .line 68
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const-string v10, "videoUrl"

    .line 73
    .line 74
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-string v11, "timeStamp"

    .line 79
    .line 80
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    const-string v12, "subtitleSelectId"

    .line 85
    .line 86
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const-string v13, "totalDuration"

    .line 91
    .line 92
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v13

    .line 96
    const-string v14, "subjectDurationSeconds"

    .line 97
    .line 98
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const-string v15, "averageHueLight"

    .line 103
    .line 104
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    const-string v2, "subjectType"

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    move/from16 p1, v2

    .line 115
    .line 116
    const-string v2, "hasDelete"

    .line 117
    .line 118
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    const-string v2, "playMode"

    .line 125
    .line 126
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    move/from16 v17, v2

    .line 131
    .line 132
    const-string v2, "downloadUrl"

    .line 133
    .line 134
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    move/from16 v18, v2

    .line 139
    .line 140
    const-string v2, "downloadFilePath"

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    move/from16 v19, v2

    .line 147
    .line 148
    const-string v2, "downloadSize"

    .line 149
    .line 150
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    move/from16 v20, v2

    .line 155
    .line 156
    const-string v2, "dubs"

    .line 157
    .line 158
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    move/from16 v21, v2

    .line 163
    .line 164
    const-string v2, "lastAdStartTimeStamp"

    .line 165
    .line 166
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    move/from16 v22, v2

    .line 171
    .line 172
    const-string v2, "lastAdEndTimeStamp"

    .line 173
    .line 174
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    move/from16 v23, v2

    .line 179
    .line 180
    const-string v2, "rewardPlayed"

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    move/from16 v24, v2

    .line 187
    .line 188
    const-string v2, "rewardUnlock"

    .line 189
    .line 190
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    move/from16 v25, v2

    .line 195
    .line 196
    const-string v2, "rewardFree"

    .line 197
    .line 198
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    move/from16 v26, v2

    .line 203
    .line 204
    const-string v2, "ops"

    .line 205
    .line 206
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    move/from16 v27, v2

    .line 211
    .line 212
    new-instance v2, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 218
    .line 219
    .line 220
    move-result v28

    .line 221
    if-eqz v28, :cond_17

    .line 222
    .line 223
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 224
    .line 225
    .line 226
    move-result v28

    .line 227
    const/16 v29, 0x0

    .line 228
    .line 229
    if-eqz v28, :cond_1

    .line 230
    .line 231
    move-object/from16 v31, v29

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v28

    .line 238
    move-object/from16 v31, v28

    .line 239
    .line 240
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 241
    .line 242
    .line 243
    move-result v28

    .line 244
    if-eqz v28, :cond_2

    .line 245
    .line 246
    move-object/from16 v61, v2

    .line 247
    .line 248
    move/from16 v28, v3

    .line 249
    .line 250
    move-object/from16 v32, v29

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v28

    .line 257
    move-object/from16 v61, v2

    .line 258
    .line 259
    move-object/from16 v32, v28

    .line 260
    .line 261
    move/from16 v28, v3

    .line 262
    .line 263
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    long-to-int v2, v2

    .line 268
    move/from16 v62, v4

    .line 269
    .line 270
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 271
    .line 272
    .line 273
    move-result-wide v3

    .line 274
    long-to-int v3, v3

    .line 275
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 276
    .line 277
    .line 278
    move-result-wide v35

    .line 279
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_3

    .line 284
    .line 285
    move-object/from16 v37, v29

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_3
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    move-object/from16 v37, v4

    .line 293
    .line 294
    :goto_4
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_4

    .line 299
    .line 300
    move-object/from16 v38, v29

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_4
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    move-object/from16 v38, v4

    .line 308
    .line 309
    :goto_5
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_5

    .line 314
    .line 315
    move-object/from16 v39, v29

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    move-object/from16 v39, v4

    .line 323
    .line 324
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    if-eqz v4, :cond_6

    .line 329
    .line 330
    move-object/from16 v40, v29

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_6
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    move-object/from16 v40, v4

    .line 338
    .line 339
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 340
    .line 341
    .line 342
    move-result-wide v41

    .line 343
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_7

    .line 348
    .line 349
    move-object/from16 v43, v29

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_7
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    move-object/from16 v43, v4

    .line 357
    .line 358
    :goto_8
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    if-eqz v4, :cond_8

    .line 363
    .line 364
    move-object/from16 v44, v29

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_8
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 368
    .line 369
    .line 370
    move-result-wide v33

    .line 371
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    move-object/from16 v44, v4

    .line 376
    .line 377
    :goto_9
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_9

    .line 382
    .line 383
    move-object/from16 v45, v29

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_9
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 387
    .line 388
    .line 389
    move-result-wide v33

    .line 390
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    move-object/from16 v45, v4

    .line 395
    .line 396
    :goto_a
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_a

    .line 401
    .line 402
    move/from16 v4, p1

    .line 403
    .line 404
    move-object/from16 v46, v29

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    move-object/from16 v46, v4

    .line 412
    .line 413
    move/from16 v4, p1

    .line 414
    .line 415
    :goto_b
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 416
    .line 417
    .line 418
    move-result v30

    .line 419
    if-eqz v30, :cond_b

    .line 420
    .line 421
    move/from16 p1, v5

    .line 422
    .line 423
    move/from16 v63, v6

    .line 424
    .line 425
    move/from16 v5, v16

    .line 426
    .line 427
    move-object/from16 v47, v29

    .line 428
    .line 429
    :goto_c
    move/from16 v16, v7

    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_b
    move/from16 p1, v5

    .line 433
    .line 434
    move/from16 v63, v6

    .line 435
    .line 436
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v5

    .line 440
    long-to-int v5, v5

    .line 441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    move-object/from16 v47, v5

    .line 446
    .line 447
    move/from16 v5, v16

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :goto_d
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v6

    .line 454
    long-to-int v6, v6

    .line 455
    if-eqz v6, :cond_c

    .line 456
    .line 457
    move/from16 v6, v17

    .line 458
    .line 459
    const/16 v48, 0x1

    .line 460
    .line 461
    goto :goto_e

    .line 462
    :cond_c
    move/from16 v6, v17

    .line 463
    .line 464
    const/16 v48, 0x0

    .line 465
    .line 466
    :goto_e
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 467
    .line 468
    .line 469
    move-result v17

    .line 470
    if-eqz v17, :cond_d

    .line 471
    .line 472
    move/from16 v7, v18

    .line 473
    .line 474
    move-object/from16 v49, v29

    .line 475
    .line 476
    goto :goto_f

    .line 477
    :cond_d
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v17

    .line 481
    move-object/from16 v49, v17

    .line 482
    .line 483
    move/from16 v7, v18

    .line 484
    .line 485
    :goto_f
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 486
    .line 487
    .line 488
    move-result v18

    .line 489
    if-eqz v18, :cond_e

    .line 490
    .line 491
    move/from16 v18, v0

    .line 492
    .line 493
    move/from16 v0, v19

    .line 494
    .line 495
    move-object/from16 v50, v29

    .line 496
    .line 497
    goto :goto_10

    .line 498
    :cond_e
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v18

    .line 502
    move-object/from16 v50, v18

    .line 503
    .line 504
    move/from16 v18, v0

    .line 505
    .line 506
    move/from16 v0, v19

    .line 507
    .line 508
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 509
    .line 510
    .line 511
    move-result v19

    .line 512
    if-eqz v19, :cond_f

    .line 513
    .line 514
    move/from16 v19, v0

    .line 515
    .line 516
    move/from16 v0, v20

    .line 517
    .line 518
    move-object/from16 v51, v29

    .line 519
    .line 520
    goto :goto_11

    .line 521
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v19

    .line 525
    move-object/from16 v51, v19

    .line 526
    .line 527
    move/from16 v19, v0

    .line 528
    .line 529
    move/from16 v0, v20

    .line 530
    .line 531
    :goto_11
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 532
    .line 533
    .line 534
    move-result-wide v52

    .line 535
    move/from16 v20, v0

    .line 536
    .line 537
    move/from16 v0, v21

    .line 538
    .line 539
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 540
    .line 541
    .line 542
    move-result v21

    .line 543
    if-eqz v21, :cond_10

    .line 544
    .line 545
    move/from16 v64, v0

    .line 546
    .line 547
    move/from16 v21, v4

    .line 548
    .line 549
    move/from16 v65, v5

    .line 550
    .line 551
    move-object/from16 v0, v29

    .line 552
    .line 553
    :goto_12
    move-object/from16 v4, p0

    .line 554
    .line 555
    goto :goto_13

    .line 556
    :cond_10
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v21

    .line 560
    move/from16 v64, v0

    .line 561
    .line 562
    move/from16 v65, v5

    .line 563
    .line 564
    move-object/from16 v0, v21

    .line 565
    .line 566
    move/from16 v21, v4

    .line 567
    .line 568
    goto :goto_12

    .line 569
    :goto_13
    iget-object v5, v4, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 570
    .line 571
    invoke-virtual {v5, v0}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 572
    .line 573
    .line 574
    move-result-object v54

    .line 575
    move/from16 v0, v22

    .line 576
    .line 577
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 578
    .line 579
    .line 580
    move-result v5

    .line 581
    if-eqz v5, :cond_11

    .line 582
    .line 583
    move/from16 v5, v23

    .line 584
    .line 585
    move-object/from16 v55, v29

    .line 586
    .line 587
    goto :goto_14

    .line 588
    :cond_11
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 589
    .line 590
    .line 591
    move-result-wide v33

    .line 592
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    move-object/from16 v55, v5

    .line 597
    .line 598
    move/from16 v5, v23

    .line 599
    .line 600
    :goto_14
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 601
    .line 602
    .line 603
    move-result v22

    .line 604
    if-eqz v22, :cond_12

    .line 605
    .line 606
    move/from16 v22, v0

    .line 607
    .line 608
    move/from16 v23, v5

    .line 609
    .line 610
    move/from16 v0, v24

    .line 611
    .line 612
    move-object/from16 v56, v29

    .line 613
    .line 614
    goto :goto_15

    .line 615
    :cond_12
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 616
    .line 617
    .line 618
    move-result-wide v22

    .line 619
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 620
    .line 621
    .line 622
    move-result-object v22

    .line 623
    move/from16 v23, v5

    .line 624
    .line 625
    move-object/from16 v56, v22

    .line 626
    .line 627
    move/from16 v22, v0

    .line 628
    .line 629
    move/from16 v0, v24

    .line 630
    .line 631
    :goto_15
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v4

    .line 635
    long-to-int v4, v4

    .line 636
    move/from16 v24, v6

    .line 637
    .line 638
    if-eqz v4, :cond_13

    .line 639
    .line 640
    move/from16 v4, v25

    .line 641
    .line 642
    const/16 v57, 0x1

    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_13
    move/from16 v4, v25

    .line 646
    .line 647
    const/16 v57, 0x0

    .line 648
    .line 649
    :goto_16
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 650
    .line 651
    .line 652
    move-result-wide v5

    .line 653
    long-to-int v5, v5

    .line 654
    move/from16 v25, v7

    .line 655
    .line 656
    if-eqz v5, :cond_14

    .line 657
    .line 658
    move/from16 v5, v26

    .line 659
    .line 660
    const/16 v58, 0x1

    .line 661
    .line 662
    goto :goto_17

    .line 663
    :cond_14
    move/from16 v5, v26

    .line 664
    .line 665
    const/16 v58, 0x0

    .line 666
    .line 667
    :goto_17
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 668
    .line 669
    .line 670
    move-result-wide v6

    .line 671
    long-to-int v6, v6

    .line 672
    if-eqz v6, :cond_15

    .line 673
    .line 674
    move/from16 v6, v27

    .line 675
    .line 676
    const/16 v59, 0x1

    .line 677
    .line 678
    goto :goto_18

    .line 679
    :cond_15
    move/from16 v6, v27

    .line 680
    .line 681
    const/16 v59, 0x0

    .line 682
    .line 683
    :goto_18
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 684
    .line 685
    .line 686
    move-result v7

    .line 687
    if-eqz v7, :cond_16

    .line 688
    .line 689
    :goto_19
    move-object/from16 v60, v29

    .line 690
    .line 691
    goto :goto_1a

    .line 692
    :cond_16
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v29

    .line 696
    goto :goto_19

    .line 697
    :goto_1a
    new-instance v7, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 698
    .line 699
    move-object/from16 v30, v7

    .line 700
    .line 701
    move/from16 v33, v2

    .line 702
    .line 703
    move/from16 v34, v3

    .line 704
    .line 705
    invoke-direct/range {v30 .. v60}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v2, v61

    .line 709
    .line 710
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .line 712
    .line 713
    move/from16 v26, v5

    .line 714
    .line 715
    move/from16 v27, v6

    .line 716
    .line 717
    move/from16 v7, v16

    .line 718
    .line 719
    move/from16 v17, v24

    .line 720
    .line 721
    move/from16 v3, v28

    .line 722
    .line 723
    move/from16 v6, v63

    .line 724
    .line 725
    move/from16 v16, v65

    .line 726
    .line 727
    move/from16 v5, p1

    .line 728
    .line 729
    move/from16 v24, v0

    .line 730
    .line 731
    move/from16 v0, v18

    .line 732
    .line 733
    move/from16 p1, v21

    .line 734
    .line 735
    move/from16 v18, v25

    .line 736
    .line 737
    move/from16 v21, v64

    .line 738
    .line 739
    move/from16 v25, v4

    .line 740
    .line 741
    move/from16 v4, v62

    .line 742
    .line 743
    goto/16 :goto_1

    .line 744
    .line 745
    :cond_17
    invoke-interface {v1}, Ly3/e;->close()V

    .line 746
    .line 747
    .line 748
    return-object v2

    .line 749
    :goto_1b
    invoke-interface {v1}, Ly3/e;->close()V

    .line 750
    .line 751
    .line 752
    throw v0
.end method

.method private synthetic L(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 60

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE dubs LIKE \'%\' || ? || \'%\' ORDER BY timeStamp DESC LIMIT 1"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    move-object/from16 v6, p0

    .line 20
    .line 21
    goto/16 :goto_19

    .line 22
    .line 23
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v0, "subjectId"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v3, "id"

    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v4, "ep"

    .line 39
    .line 40
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const-string v5, "se"

    .line 45
    .line 46
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const-string v6, "progress"

    .line 51
    .line 52
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const-string v7, "title"

    .line 57
    .line 58
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const-string v8, "coverUrl"

    .line 63
    .line 64
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const-string v9, "thumbnail"

    .line 69
    .line 70
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const-string v10, "videoUrl"

    .line 75
    .line 76
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    const-string v11, "timeStamp"

    .line 81
    .line 82
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    const-string v12, "subtitleSelectId"

    .line 87
    .line 88
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const-string v13, "totalDuration"

    .line 93
    .line 94
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    const-string v14, "subjectDurationSeconds"

    .line 99
    .line 100
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    const-string v15, "averageHueLight"

    .line 105
    .line 106
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    const-string v2, "subjectType"

    .line 111
    .line 112
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    move/from16 p1, v2

    .line 117
    .line 118
    const-string v2, "hasDelete"

    .line 119
    .line 120
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    move/from16 v16, v2

    .line 125
    .line 126
    const-string v2, "playMode"

    .line 127
    .line 128
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    move/from16 v17, v2

    .line 133
    .line 134
    const-string v2, "downloadUrl"

    .line 135
    .line 136
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    move/from16 v18, v2

    .line 141
    .line 142
    const-string v2, "downloadFilePath"

    .line 143
    .line 144
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move/from16 v19, v2

    .line 149
    .line 150
    const-string v2, "downloadSize"

    .line 151
    .line 152
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    move/from16 v20, v2

    .line 157
    .line 158
    const-string v2, "dubs"

    .line 159
    .line 160
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    move/from16 v21, v2

    .line 165
    .line 166
    const-string v2, "lastAdStartTimeStamp"

    .line 167
    .line 168
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    move/from16 v22, v2

    .line 173
    .line 174
    const-string v2, "lastAdEndTimeStamp"

    .line 175
    .line 176
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    move/from16 v23, v2

    .line 181
    .line 182
    const-string v2, "rewardPlayed"

    .line 183
    .line 184
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    move/from16 v24, v2

    .line 189
    .line 190
    const-string v2, "rewardUnlock"

    .line 191
    .line 192
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    move/from16 v25, v2

    .line 197
    .line 198
    const-string v2, "rewardFree"

    .line 199
    .line 200
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    move/from16 v26, v2

    .line 205
    .line 206
    const-string v2, "ops"

    .line 207
    .line 208
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 213
    .line 214
    .line 215
    move-result v27

    .line 216
    const/16 v28, 0x0

    .line 217
    .line 218
    if-eqz v27, :cond_17

    .line 219
    .line 220
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 221
    .line 222
    .line 223
    move-result v27

    .line 224
    if-eqz v27, :cond_1

    .line 225
    .line 226
    move-object/from16 v30, v28

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object/from16 v30, v0

    .line 234
    .line 235
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    .line 241
    move-object/from16 v31, v28

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    move-object/from16 v31, v0

    .line 249
    .line 250
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    long-to-int v0, v3

    .line 255
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    long-to-int v3, v3

    .line 260
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 261
    .line 262
    .line 263
    move-result-wide v34

    .line 264
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_3

    .line 269
    .line 270
    move-object/from16 v36, v28

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_3
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    move-object/from16 v36, v4

    .line 278
    .line 279
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_4

    .line 284
    .line 285
    move-object/from16 v37, v28

    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_4
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    move-object/from16 v37, v4

    .line 293
    .line 294
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_5

    .line 299
    .line 300
    move-object/from16 v38, v28

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_5
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    move-object/from16 v38, v4

    .line 308
    .line 309
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    if-eqz v4, :cond_6

    .line 314
    .line 315
    move-object/from16 v39, v28

    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_6
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    move-object/from16 v39, v4

    .line 323
    .line 324
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v40

    .line 328
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_7

    .line 333
    .line 334
    move-object/from16 v42, v28

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_7
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    move-object/from16 v42, v4

    .line 342
    .line 343
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_8

    .line 348
    .line 349
    move-object/from16 v43, v28

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_8
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 353
    .line 354
    .line 355
    move-result-wide v4

    .line 356
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    move-object/from16 v43, v4

    .line 361
    .line 362
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_9

    .line 367
    .line 368
    move-object/from16 v44, v28

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_9
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 372
    .line 373
    .line 374
    move-result-wide v4

    .line 375
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    move-object/from16 v44, v4

    .line 380
    .line 381
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_a

    .line 386
    .line 387
    move/from16 v4, p1

    .line 388
    .line 389
    move-object/from16 v45, v28

    .line 390
    .line 391
    goto :goto_a

    .line 392
    :cond_a
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    move-object/from16 v45, v4

    .line 397
    .line 398
    move/from16 v4, p1

    .line 399
    .line 400
    :goto_a
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_b

    .line 405
    .line 406
    move/from16 v4, v16

    .line 407
    .line 408
    move-object/from16 v46, v28

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    long-to-int v4, v4

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    move-object/from16 v46, v4

    .line 421
    .line 422
    move/from16 v4, v16

    .line 423
    .line 424
    :goto_b
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 425
    .line 426
    .line 427
    move-result-wide v4

    .line 428
    long-to-int v4, v4

    .line 429
    const/4 v5, 0x0

    .line 430
    if-eqz v4, :cond_c

    .line 431
    .line 432
    move/from16 v4, v17

    .line 433
    .line 434
    const/16 v47, 0x1

    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_c
    move/from16 v47, v5

    .line 438
    .line 439
    move/from16 v4, v17

    .line 440
    .line 441
    :goto_c
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_d

    .line 446
    .line 447
    move/from16 v4, v18

    .line 448
    .line 449
    move-object/from16 v48, v28

    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_d
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    move-object/from16 v48, v4

    .line 457
    .line 458
    move/from16 v4, v18

    .line 459
    .line 460
    :goto_d
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-eqz v6, :cond_e

    .line 465
    .line 466
    move/from16 v4, v19

    .line 467
    .line 468
    move-object/from16 v49, v28

    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_e
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    move-object/from16 v49, v4

    .line 476
    .line 477
    move/from16 v4, v19

    .line 478
    .line 479
    :goto_e
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 480
    .line 481
    .line 482
    move-result v6

    .line 483
    if-eqz v6, :cond_f

    .line 484
    .line 485
    move/from16 v4, v20

    .line 486
    .line 487
    move-object/from16 v50, v28

    .line 488
    .line 489
    goto :goto_f

    .line 490
    :cond_f
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    move-object/from16 v50, v4

    .line 495
    .line 496
    move/from16 v4, v20

    .line 497
    .line 498
    :goto_f
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v51

    .line 502
    move/from16 v4, v21

    .line 503
    .line 504
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-eqz v6, :cond_10

    .line 509
    .line 510
    move-object/from16 v6, p0

    .line 511
    .line 512
    move-object/from16 v4, v28

    .line 513
    .line 514
    goto :goto_10

    .line 515
    :cond_10
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    move-object/from16 v6, p0

    .line 520
    .line 521
    :goto_10
    :try_start_1
    iget-object v7, v6, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 522
    .line 523
    invoke-virtual {v7, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 524
    .line 525
    .line 526
    move-result-object v53

    .line 527
    move/from16 v4, v22

    .line 528
    .line 529
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 530
    .line 531
    .line 532
    move-result v7

    .line 533
    if-eqz v7, :cond_11

    .line 534
    .line 535
    move/from16 v4, v23

    .line 536
    .line 537
    move-object/from16 v54, v28

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_11
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 541
    .line 542
    .line 543
    move-result-wide v7

    .line 544
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    move-object/from16 v54, v4

    .line 549
    .line 550
    move/from16 v4, v23

    .line 551
    .line 552
    :goto_11
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 553
    .line 554
    .line 555
    move-result v7

    .line 556
    if-eqz v7, :cond_12

    .line 557
    .line 558
    move/from16 v4, v24

    .line 559
    .line 560
    move-object/from16 v55, v28

    .line 561
    .line 562
    goto :goto_12

    .line 563
    :cond_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 564
    .line 565
    .line 566
    move-result-wide v7

    .line 567
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 568
    .line 569
    .line 570
    move-result-object v4

    .line 571
    move-object/from16 v55, v4

    .line 572
    .line 573
    move/from16 v4, v24

    .line 574
    .line 575
    :goto_12
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 576
    .line 577
    .line 578
    move-result-wide v7

    .line 579
    long-to-int v4, v7

    .line 580
    if-eqz v4, :cond_13

    .line 581
    .line 582
    move/from16 v4, v25

    .line 583
    .line 584
    const/16 v56, 0x1

    .line 585
    .line 586
    goto :goto_13

    .line 587
    :cond_13
    move/from16 v56, v5

    .line 588
    .line 589
    move/from16 v4, v25

    .line 590
    .line 591
    :goto_13
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 592
    .line 593
    .line 594
    move-result-wide v7

    .line 595
    long-to-int v4, v7

    .line 596
    if-eqz v4, :cond_14

    .line 597
    .line 598
    move/from16 v4, v26

    .line 599
    .line 600
    const/16 v57, 0x1

    .line 601
    .line 602
    goto :goto_14

    .line 603
    :cond_14
    move/from16 v57, v5

    .line 604
    .line 605
    move/from16 v4, v26

    .line 606
    .line 607
    :goto_14
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v7

    .line 611
    long-to-int v4, v7

    .line 612
    if-eqz v4, :cond_15

    .line 613
    .line 614
    const/16 v58, 0x1

    .line 615
    .line 616
    goto :goto_15

    .line 617
    :cond_15
    move/from16 v58, v5

    .line 618
    .line 619
    :goto_15
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    if-eqz v4, :cond_16

    .line 624
    .line 625
    :goto_16
    move-object/from16 v59, v28

    .line 626
    .line 627
    goto :goto_17

    .line 628
    :cond_16
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v28

    .line 632
    goto :goto_16

    .line 633
    :goto_17
    new-instance v28, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 634
    .line 635
    move-object/from16 v29, v28

    .line 636
    .line 637
    move/from16 v32, v0

    .line 638
    .line 639
    move/from16 v33, v3

    .line 640
    .line 641
    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 642
    .line 643
    .line 644
    goto :goto_18

    .line 645
    :catchall_1
    move-exception v0

    .line 646
    goto :goto_19

    .line 647
    :cond_17
    move-object/from16 v6, p0

    .line 648
    .line 649
    :goto_18
    invoke-interface {v1}, Ly3/e;->close()V

    .line 650
    .line 651
    .line 652
    return-object v28

    .line 653
    :goto_19
    invoke-interface {v1}, Ly3/e;->close()V

    .line 654
    .line 655
    .line 656
    throw v0
.end method

.method private synthetic M(IILy3/b;)Ljava/util/List;
    .locals 65

    .line 1
    const-string v0, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;"

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move/from16 v0, p1

    .line 10
    .line 11
    int-to-long v2, v0

    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    move/from16 v3, p2

    .line 18
    .line 19
    int-to-long v3, v3

    .line 20
    invoke-interface {v1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 21
    .line 22
    .line 23
    const-string v2, "subjectId"

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "id"

    .line 30
    .line 31
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "ep"

    .line 36
    .line 37
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-string v5, "se"

    .line 42
    .line 43
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const-string v6, "progress"

    .line 48
    .line 49
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const-string v7, "title"

    .line 54
    .line 55
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    const-string v8, "coverUrl"

    .line 60
    .line 61
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const-string v9, "thumbnail"

    .line 66
    .line 67
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    const-string v10, "videoUrl"

    .line 72
    .line 73
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const-string v11, "timeStamp"

    .line 78
    .line 79
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    const-string v12, "subtitleSelectId"

    .line 84
    .line 85
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    const-string v13, "totalDuration"

    .line 90
    .line 91
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    const-string v14, "subjectDurationSeconds"

    .line 96
    .line 97
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    const-string v15, "averageHueLight"

    .line 102
    .line 103
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    const-string v0, "subjectType"

    .line 108
    .line 109
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    move/from16 p2, v0

    .line 114
    .line 115
    const-string v0, "hasDelete"

    .line 116
    .line 117
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move/from16 p3, v0

    .line 122
    .line 123
    const-string v0, "playMode"

    .line 124
    .line 125
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    move/from16 v16, v0

    .line 130
    .line 131
    const-string v0, "downloadUrl"

    .line 132
    .line 133
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    move/from16 v17, v0

    .line 138
    .line 139
    const-string v0, "downloadFilePath"

    .line 140
    .line 141
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    move/from16 v18, v0

    .line 146
    .line 147
    const-string v0, "downloadSize"

    .line 148
    .line 149
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    move/from16 v19, v0

    .line 154
    .line 155
    const-string v0, "dubs"

    .line 156
    .line 157
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    move/from16 v20, v0

    .line 162
    .line 163
    const-string v0, "lastAdStartTimeStamp"

    .line 164
    .line 165
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    move/from16 v21, v0

    .line 170
    .line 171
    const-string v0, "lastAdEndTimeStamp"

    .line 172
    .line 173
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    move/from16 v22, v0

    .line 178
    .line 179
    const-string v0, "rewardPlayed"

    .line 180
    .line 181
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    move/from16 v23, v0

    .line 186
    .line 187
    const-string v0, "rewardUnlock"

    .line 188
    .line 189
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    move/from16 v24, v0

    .line 194
    .line 195
    const-string v0, "rewardFree"

    .line 196
    .line 197
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    move/from16 v25, v0

    .line 202
    .line 203
    const-string v0, "ops"

    .line 204
    .line 205
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    move/from16 v26, v0

    .line 210
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 217
    .line 218
    .line 219
    move-result v27

    .line 220
    if-eqz v27, :cond_16

    .line 221
    .line 222
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 223
    .line 224
    .line 225
    move-result v27

    .line 226
    const/16 v28, 0x0

    .line 227
    .line 228
    if-eqz v27, :cond_0

    .line 229
    .line 230
    move-object/from16 v30, v28

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v27

    .line 237
    move-object/from16 v30, v27

    .line 238
    .line 239
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 240
    .line 241
    .line 242
    move-result v27

    .line 243
    if-eqz v27, :cond_1

    .line 244
    .line 245
    move/from16 v27, v2

    .line 246
    .line 247
    move/from16 v60, v3

    .line 248
    .line 249
    move-object/from16 v31, v28

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v27

    .line 256
    move/from16 v60, v3

    .line 257
    .line 258
    move-object/from16 v31, v27

    .line 259
    .line 260
    move/from16 v27, v2

    .line 261
    .line 262
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 263
    .line 264
    .line 265
    move-result-wide v2

    .line 266
    long-to-int v2, v2

    .line 267
    move/from16 v61, v4

    .line 268
    .line 269
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v3

    .line 273
    long-to-int v3, v3

    .line 274
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v34

    .line 278
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_2

    .line 283
    .line 284
    move-object/from16 v36, v28

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_2
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    move-object/from16 v36, v4

    .line 292
    .line 293
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_3

    .line 298
    .line 299
    move-object/from16 v37, v28

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_3
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    move-object/from16 v37, v4

    .line 307
    .line 308
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_4

    .line 313
    .line 314
    move-object/from16 v38, v28

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_4
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    move-object/from16 v38, v4

    .line 322
    .line 323
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-eqz v4, :cond_5

    .line 328
    .line 329
    move-object/from16 v39, v28

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_5
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    move-object/from16 v39, v4

    .line 337
    .line 338
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v40

    .line 342
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_6

    .line 347
    .line 348
    move-object/from16 v42, v28

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_6
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    move-object/from16 v42, v4

    .line 356
    .line 357
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_7

    .line 362
    .line 363
    move-object/from16 v43, v28

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_7
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v32

    .line 370
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    move-object/from16 v43, v4

    .line 375
    .line 376
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_8

    .line 381
    .line 382
    move-object/from16 v44, v28

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_8
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 386
    .line 387
    .line 388
    move-result-wide v32

    .line 389
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    move-object/from16 v44, v4

    .line 394
    .line 395
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-eqz v4, :cond_9

    .line 400
    .line 401
    move/from16 v4, p2

    .line 402
    .line 403
    move-object/from16 v45, v28

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_9
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    move-object/from16 v45, v4

    .line 411
    .line 412
    move/from16 v4, p2

    .line 413
    .line 414
    :goto_a
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 415
    .line 416
    .line 417
    move-result v29

    .line 418
    if-eqz v29, :cond_a

    .line 419
    .line 420
    move/from16 p2, v5

    .line 421
    .line 422
    move/from16 v62, v6

    .line 423
    .line 424
    move-object/from16 v46, v28

    .line 425
    .line 426
    :goto_b
    move/from16 v5, p3

    .line 427
    .line 428
    move/from16 p3, v7

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_a
    move/from16 p2, v5

    .line 432
    .line 433
    move/from16 v62, v6

    .line 434
    .line 435
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v5

    .line 439
    long-to-int v5, v5

    .line 440
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    move-object/from16 v46, v5

    .line 445
    .line 446
    goto :goto_b

    .line 447
    :goto_c
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v6

    .line 451
    long-to-int v6, v6

    .line 452
    if-eqz v6, :cond_b

    .line 453
    .line 454
    move/from16 v6, v16

    .line 455
    .line 456
    const/16 v47, 0x1

    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_b
    move/from16 v6, v16

    .line 460
    .line 461
    const/16 v47, 0x0

    .line 462
    .line 463
    :goto_d
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 464
    .line 465
    .line 466
    move-result v16

    .line 467
    if-eqz v16, :cond_c

    .line 468
    .line 469
    move/from16 v7, v17

    .line 470
    .line 471
    move-object/from16 v48, v28

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_c
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v16

    .line 478
    move-object/from16 v48, v16

    .line 479
    .line 480
    move/from16 v7, v17

    .line 481
    .line 482
    :goto_e
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 483
    .line 484
    .line 485
    move-result v17

    .line 486
    if-eqz v17, :cond_d

    .line 487
    .line 488
    move/from16 v17, v4

    .line 489
    .line 490
    move/from16 v4, v18

    .line 491
    .line 492
    move-object/from16 v49, v28

    .line 493
    .line 494
    goto :goto_f

    .line 495
    :cond_d
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v17

    .line 499
    move-object/from16 v49, v17

    .line 500
    .line 501
    move/from16 v17, v4

    .line 502
    .line 503
    move/from16 v4, v18

    .line 504
    .line 505
    :goto_f
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 506
    .line 507
    .line 508
    move-result v18

    .line 509
    if-eqz v18, :cond_e

    .line 510
    .line 511
    move/from16 v18, v4

    .line 512
    .line 513
    move/from16 v4, v19

    .line 514
    .line 515
    move-object/from16 v50, v28

    .line 516
    .line 517
    goto :goto_10

    .line 518
    :cond_e
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v18

    .line 522
    move-object/from16 v50, v18

    .line 523
    .line 524
    move/from16 v18, v4

    .line 525
    .line 526
    move/from16 v4, v19

    .line 527
    .line 528
    :goto_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 529
    .line 530
    .line 531
    move-result-wide v51

    .line 532
    move/from16 v19, v4

    .line 533
    .line 534
    move/from16 v4, v20

    .line 535
    .line 536
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 537
    .line 538
    .line 539
    move-result v20

    .line 540
    if-eqz v20, :cond_f

    .line 541
    .line 542
    move/from16 v63, v4

    .line 543
    .line 544
    move/from16 v20, v5

    .line 545
    .line 546
    move/from16 v64, v6

    .line 547
    .line 548
    move-object/from16 v4, v28

    .line 549
    .line 550
    :goto_11
    move-object/from16 v5, p0

    .line 551
    .line 552
    goto :goto_12

    .line 553
    :cond_f
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v20

    .line 557
    move/from16 v63, v4

    .line 558
    .line 559
    move/from16 v64, v6

    .line 560
    .line 561
    move-object/from16 v4, v20

    .line 562
    .line 563
    move/from16 v20, v5

    .line 564
    .line 565
    goto :goto_11

    .line 566
    :goto_12
    iget-object v6, v5, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 567
    .line 568
    invoke-virtual {v6, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 569
    .line 570
    .line 571
    move-result-object v53

    .line 572
    move/from16 v4, v21

    .line 573
    .line 574
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    if-eqz v6, :cond_10

    .line 579
    .line 580
    move/from16 v6, v22

    .line 581
    .line 582
    move-object/from16 v54, v28

    .line 583
    .line 584
    goto :goto_13

    .line 585
    :cond_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 586
    .line 587
    .line 588
    move-result-wide v32

    .line 589
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    move-object/from16 v54, v6

    .line 594
    .line 595
    move/from16 v6, v22

    .line 596
    .line 597
    :goto_13
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 598
    .line 599
    .line 600
    move-result v21

    .line 601
    if-eqz v21, :cond_11

    .line 602
    .line 603
    move/from16 v21, v4

    .line 604
    .line 605
    move/from16 v22, v6

    .line 606
    .line 607
    move/from16 v4, v23

    .line 608
    .line 609
    move-object/from16 v55, v28

    .line 610
    .line 611
    goto :goto_14

    .line 612
    :cond_11
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 613
    .line 614
    .line 615
    move-result-wide v21

    .line 616
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v21

    .line 620
    move/from16 v22, v6

    .line 621
    .line 622
    move-object/from16 v55, v21

    .line 623
    .line 624
    move/from16 v21, v4

    .line 625
    .line 626
    move/from16 v4, v23

    .line 627
    .line 628
    :goto_14
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 629
    .line 630
    .line 631
    move-result-wide v5

    .line 632
    long-to-int v5, v5

    .line 633
    move/from16 v23, v7

    .line 634
    .line 635
    if-eqz v5, :cond_12

    .line 636
    .line 637
    move/from16 v5, v24

    .line 638
    .line 639
    const/16 v56, 0x1

    .line 640
    .line 641
    goto :goto_15

    .line 642
    :cond_12
    move/from16 v5, v24

    .line 643
    .line 644
    const/16 v56, 0x0

    .line 645
    .line 646
    :goto_15
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 647
    .line 648
    .line 649
    move-result-wide v6

    .line 650
    long-to-int v6, v6

    .line 651
    move v7, v4

    .line 652
    move/from16 v24, v5

    .line 653
    .line 654
    if-eqz v6, :cond_13

    .line 655
    .line 656
    move/from16 v6, v25

    .line 657
    .line 658
    const/16 v57, 0x1

    .line 659
    .line 660
    goto :goto_16

    .line 661
    :cond_13
    move/from16 v6, v25

    .line 662
    .line 663
    const/16 v57, 0x0

    .line 664
    .line 665
    :goto_16
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 666
    .line 667
    .line 668
    move-result-wide v4

    .line 669
    long-to-int v4, v4

    .line 670
    if-eqz v4, :cond_14

    .line 671
    .line 672
    move/from16 v4, v26

    .line 673
    .line 674
    const/16 v58, 0x1

    .line 675
    .line 676
    goto :goto_17

    .line 677
    :cond_14
    move/from16 v4, v26

    .line 678
    .line 679
    const/16 v58, 0x0

    .line 680
    .line 681
    :goto_17
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    if-eqz v5, :cond_15

    .line 686
    .line 687
    :goto_18
    move-object/from16 v59, v28

    .line 688
    .line 689
    goto :goto_19

    .line 690
    :cond_15
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v28

    .line 694
    goto :goto_18

    .line 695
    :goto_19
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 696
    .line 697
    move-object/from16 v29, v5

    .line 698
    .line 699
    move/from16 v32, v2

    .line 700
    .line 701
    move/from16 v33, v3

    .line 702
    .line 703
    invoke-direct/range {v29 .. v59}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .line 708
    .line 709
    move/from16 v5, p2

    .line 710
    .line 711
    move/from16 v26, v4

    .line 712
    .line 713
    move/from16 v25, v6

    .line 714
    .line 715
    move/from16 p2, v17

    .line 716
    .line 717
    move/from16 v17, v23

    .line 718
    .line 719
    move/from16 v2, v27

    .line 720
    .line 721
    move/from16 v3, v60

    .line 722
    .line 723
    move/from16 v4, v61

    .line 724
    .line 725
    move/from16 v6, v62

    .line 726
    .line 727
    move/from16 v16, v64

    .line 728
    .line 729
    move/from16 v23, v7

    .line 730
    .line 731
    move/from16 v7, p3

    .line 732
    .line 733
    move/from16 p3, v20

    .line 734
    .line 735
    move/from16 v20, v63

    .line 736
    .line 737
    goto/16 :goto_0

    .line 738
    .line 739
    :catchall_0
    move-exception v0

    .line 740
    goto :goto_1a

    .line 741
    :cond_16
    invoke-interface {v1}, Ly3/e;->close()V

    .line 742
    .line 743
    .line 744
    return-object v0

    .line 745
    :goto_1a
    invoke-interface {v1}, Ly3/e;->close()V

    .line 746
    .line 747
    .line 748
    throw v0
.end method

.method private static synthetic N(Ljava/lang/String;Ly3/b;)Ljava/lang/Long;
    .locals 2

    .line 1
    const-string v0, "SELECT SUM(progress) AS totalProgress FROM VIDEO_DETAIL_PLAY WHERE subjectId = ?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-interface {p1, p0}, Ly3/e;->isNull(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {p1, p0}, Ly3/e;->getLong(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_2
    :goto_1
    invoke-interface {p1}, Ly3/e;->close()V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :goto_2
    invoke-interface {p1}, Ly3/e;->close()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method private synthetic O(IIILy3/b;)Ljava/util/List;
    .locals 64

    .line 1
    const-string v0, "SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND subjectType=? AND subjectDurationSeconds > 0 AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;"

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move/from16 v0, p1

    .line 10
    .line 11
    int-to-long v2, v0

    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    move/from16 v3, p2

    .line 18
    .line 19
    int-to-long v3, v3

    .line 20
    invoke-interface {v1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    move/from16 v3, p3

    .line 25
    .line 26
    int-to-long v3, v3

    .line 27
    invoke-interface {v1, v2, v3, v4}, Ly3/e;->c(IJ)V

    .line 28
    .line 29
    .line 30
    const-string v2, "subjectId"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "id"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "ep"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "se"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "progress"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "title"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "coverUrl"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "thumbnail"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "videoUrl"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "timeStamp"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "subtitleSelectId"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "totalDuration"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "subjectDurationSeconds"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "averageHueLight"

    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    const-string v0, "subjectType"

    .line 115
    .line 116
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    move/from16 p2, v0

    .line 121
    .line 122
    const-string v0, "hasDelete"

    .line 123
    .line 124
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    move/from16 p3, v0

    .line 129
    .line 130
    const-string v0, "playMode"

    .line 131
    .line 132
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    move/from16 p4, v0

    .line 137
    .line 138
    const-string v0, "downloadUrl"

    .line 139
    .line 140
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    move/from16 v16, v0

    .line 145
    .line 146
    const-string v0, "downloadFilePath"

    .line 147
    .line 148
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    move/from16 v17, v0

    .line 153
    .line 154
    const-string v0, "downloadSize"

    .line 155
    .line 156
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    move/from16 v18, v0

    .line 161
    .line 162
    const-string v0, "dubs"

    .line 163
    .line 164
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    move/from16 v19, v0

    .line 169
    .line 170
    const-string v0, "lastAdStartTimeStamp"

    .line 171
    .line 172
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    move/from16 v20, v0

    .line 177
    .line 178
    const-string v0, "lastAdEndTimeStamp"

    .line 179
    .line 180
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    move/from16 v21, v0

    .line 185
    .line 186
    const-string v0, "rewardPlayed"

    .line 187
    .line 188
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    move/from16 v22, v0

    .line 193
    .line 194
    const-string v0, "rewardUnlock"

    .line 195
    .line 196
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    move/from16 v23, v0

    .line 201
    .line 202
    const-string v0, "rewardFree"

    .line 203
    .line 204
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    move/from16 v24, v0

    .line 209
    .line 210
    const-string v0, "ops"

    .line 211
    .line 212
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    move/from16 v25, v0

    .line 217
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 224
    .line 225
    .line 226
    move-result v26

    .line 227
    if-eqz v26, :cond_16

    .line 228
    .line 229
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 230
    .line 231
    .line 232
    move-result v26

    .line 233
    const/16 v27, 0x0

    .line 234
    .line 235
    if-eqz v26, :cond_0

    .line 236
    .line 237
    move-object/from16 v29, v27

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v26

    .line 244
    move-object/from16 v29, v26

    .line 245
    .line 246
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 247
    .line 248
    .line 249
    move-result v26

    .line 250
    if-eqz v26, :cond_1

    .line 251
    .line 252
    move/from16 v26, v2

    .line 253
    .line 254
    move/from16 v59, v3

    .line 255
    .line 256
    move-object/from16 v30, v27

    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v26

    .line 263
    move/from16 v59, v3

    .line 264
    .line 265
    move-object/from16 v30, v26

    .line 266
    .line 267
    move/from16 v26, v2

    .line 268
    .line 269
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v2

    .line 273
    long-to-int v2, v2

    .line 274
    move/from16 v60, v4

    .line 275
    .line 276
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    long-to-int v3, v3

    .line 281
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 282
    .line 283
    .line 284
    move-result-wide v33

    .line 285
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_2

    .line 290
    .line 291
    move-object/from16 v35, v27

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_2
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    move-object/from16 v35, v4

    .line 299
    .line 300
    :goto_3
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_3

    .line 305
    .line 306
    move-object/from16 v36, v27

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_3
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    move-object/from16 v36, v4

    .line 314
    .line 315
    :goto_4
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_4

    .line 320
    .line 321
    move-object/from16 v37, v27

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_4
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    move-object/from16 v37, v4

    .line 329
    .line 330
    :goto_5
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_5

    .line 335
    .line 336
    move-object/from16 v38, v27

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_5
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    move-object/from16 v38, v4

    .line 344
    .line 345
    :goto_6
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v39

    .line 349
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-eqz v4, :cond_6

    .line 354
    .line 355
    move-object/from16 v41, v27

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_6
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    move-object/from16 v41, v4

    .line 363
    .line 364
    :goto_7
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_7

    .line 369
    .line 370
    move-object/from16 v42, v27

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_7
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 374
    .line 375
    .line 376
    move-result-wide v31

    .line 377
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    move-object/from16 v42, v4

    .line 382
    .line 383
    :goto_8
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_8

    .line 388
    .line 389
    move-object/from16 v43, v27

    .line 390
    .line 391
    goto :goto_9

    .line 392
    :cond_8
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 393
    .line 394
    .line 395
    move-result-wide v31

    .line 396
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    move-object/from16 v43, v4

    .line 401
    .line 402
    :goto_9
    invoke-interface {v1, v15}, Ly3/e;->isNull(I)Z

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    if-eqz v4, :cond_9

    .line 407
    .line 408
    move/from16 v4, p2

    .line 409
    .line 410
    move-object/from16 v44, v27

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_9
    invoke-interface {v1, v15}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    move-object/from16 v44, v4

    .line 418
    .line 419
    move/from16 v4, p2

    .line 420
    .line 421
    :goto_a
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 422
    .line 423
    .line 424
    move-result v28

    .line 425
    if-eqz v28, :cond_a

    .line 426
    .line 427
    move/from16 p2, v5

    .line 428
    .line 429
    move/from16 v61, v6

    .line 430
    .line 431
    move-object/from16 v45, v27

    .line 432
    .line 433
    :goto_b
    move/from16 v5, p3

    .line 434
    .line 435
    move/from16 p3, v7

    .line 436
    .line 437
    goto :goto_c

    .line 438
    :cond_a
    move/from16 p2, v5

    .line 439
    .line 440
    move/from16 v61, v6

    .line 441
    .line 442
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v5

    .line 446
    long-to-int v5, v5

    .line 447
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    move-object/from16 v45, v5

    .line 452
    .line 453
    goto :goto_b

    .line 454
    :goto_c
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 455
    .line 456
    .line 457
    move-result-wide v6

    .line 458
    long-to-int v6, v6

    .line 459
    if-eqz v6, :cond_b

    .line 460
    .line 461
    move/from16 v6, p4

    .line 462
    .line 463
    const/16 v46, 0x1

    .line 464
    .line 465
    goto :goto_d

    .line 466
    :cond_b
    move/from16 v6, p4

    .line 467
    .line 468
    const/16 v46, 0x0

    .line 469
    .line 470
    :goto_d
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 471
    .line 472
    .line 473
    move-result v28

    .line 474
    if-eqz v28, :cond_c

    .line 475
    .line 476
    move/from16 v7, v16

    .line 477
    .line 478
    move-object/from16 v47, v27

    .line 479
    .line 480
    goto :goto_e

    .line 481
    :cond_c
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v28

    .line 485
    move/from16 v7, v16

    .line 486
    .line 487
    move-object/from16 v47, v28

    .line 488
    .line 489
    :goto_e
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 490
    .line 491
    .line 492
    move-result v16

    .line 493
    if-eqz v16, :cond_d

    .line 494
    .line 495
    move/from16 v16, v4

    .line 496
    .line 497
    move/from16 v4, v17

    .line 498
    .line 499
    move-object/from16 v48, v27

    .line 500
    .line 501
    goto :goto_f

    .line 502
    :cond_d
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v16

    .line 506
    move-object/from16 v48, v16

    .line 507
    .line 508
    move/from16 v16, v4

    .line 509
    .line 510
    move/from16 v4, v17

    .line 511
    .line 512
    :goto_f
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 513
    .line 514
    .line 515
    move-result v17

    .line 516
    if-eqz v17, :cond_e

    .line 517
    .line 518
    move/from16 v17, v4

    .line 519
    .line 520
    move/from16 v4, v18

    .line 521
    .line 522
    move-object/from16 v49, v27

    .line 523
    .line 524
    goto :goto_10

    .line 525
    :cond_e
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v17

    .line 529
    move-object/from16 v49, v17

    .line 530
    .line 531
    move/from16 v17, v4

    .line 532
    .line 533
    move/from16 v4, v18

    .line 534
    .line 535
    :goto_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 536
    .line 537
    .line 538
    move-result-wide v50

    .line 539
    move/from16 v18, v4

    .line 540
    .line 541
    move/from16 v4, v19

    .line 542
    .line 543
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 544
    .line 545
    .line 546
    move-result v19

    .line 547
    if-eqz v19, :cond_f

    .line 548
    .line 549
    move/from16 v62, v4

    .line 550
    .line 551
    move/from16 v19, v5

    .line 552
    .line 553
    move/from16 v63, v6

    .line 554
    .line 555
    move-object/from16 v4, v27

    .line 556
    .line 557
    :goto_11
    move-object/from16 v5, p0

    .line 558
    .line 559
    goto :goto_12

    .line 560
    :cond_f
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v19

    .line 564
    move/from16 v62, v4

    .line 565
    .line 566
    move/from16 v63, v6

    .line 567
    .line 568
    move-object/from16 v4, v19

    .line 569
    .line 570
    move/from16 v19, v5

    .line 571
    .line 572
    goto :goto_11

    .line 573
    :goto_12
    iget-object v6, v5, Lcom/transsion/baselib/db/video/z0;->c:Lri/b;

    .line 574
    .line 575
    invoke-virtual {v6, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 576
    .line 577
    .line 578
    move-result-object v52

    .line 579
    move/from16 v4, v20

    .line 580
    .line 581
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 582
    .line 583
    .line 584
    move-result v6

    .line 585
    if-eqz v6, :cond_10

    .line 586
    .line 587
    move/from16 v6, v21

    .line 588
    .line 589
    move-object/from16 v53, v27

    .line 590
    .line 591
    goto :goto_13

    .line 592
    :cond_10
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 593
    .line 594
    .line 595
    move-result-wide v31

    .line 596
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    move-object/from16 v53, v6

    .line 601
    .line 602
    move/from16 v6, v21

    .line 603
    .line 604
    :goto_13
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 605
    .line 606
    .line 607
    move-result v20

    .line 608
    if-eqz v20, :cond_11

    .line 609
    .line 610
    move/from16 v20, v4

    .line 611
    .line 612
    move/from16 v21, v6

    .line 613
    .line 614
    move/from16 v4, v22

    .line 615
    .line 616
    move-object/from16 v54, v27

    .line 617
    .line 618
    goto :goto_14

    .line 619
    :cond_11
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 620
    .line 621
    .line 622
    move-result-wide v20

    .line 623
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 624
    .line 625
    .line 626
    move-result-object v20

    .line 627
    move/from16 v21, v6

    .line 628
    .line 629
    move-object/from16 v54, v20

    .line 630
    .line 631
    move/from16 v20, v4

    .line 632
    .line 633
    move/from16 v4, v22

    .line 634
    .line 635
    :goto_14
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 636
    .line 637
    .line 638
    move-result-wide v5

    .line 639
    long-to-int v5, v5

    .line 640
    move/from16 v22, v7

    .line 641
    .line 642
    if-eqz v5, :cond_12

    .line 643
    .line 644
    move/from16 v5, v23

    .line 645
    .line 646
    const/16 v55, 0x1

    .line 647
    .line 648
    goto :goto_15

    .line 649
    :cond_12
    move/from16 v5, v23

    .line 650
    .line 651
    const/16 v55, 0x0

    .line 652
    .line 653
    :goto_15
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 654
    .line 655
    .line 656
    move-result-wide v6

    .line 657
    long-to-int v6, v6

    .line 658
    move v7, v4

    .line 659
    move/from16 v23, v5

    .line 660
    .line 661
    if-eqz v6, :cond_13

    .line 662
    .line 663
    move/from16 v6, v24

    .line 664
    .line 665
    const/16 v56, 0x1

    .line 666
    .line 667
    goto :goto_16

    .line 668
    :cond_13
    move/from16 v6, v24

    .line 669
    .line 670
    const/16 v56, 0x0

    .line 671
    .line 672
    :goto_16
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 673
    .line 674
    .line 675
    move-result-wide v4

    .line 676
    long-to-int v4, v4

    .line 677
    if-eqz v4, :cond_14

    .line 678
    .line 679
    move/from16 v4, v25

    .line 680
    .line 681
    const/16 v57, 0x1

    .line 682
    .line 683
    goto :goto_17

    .line 684
    :cond_14
    move/from16 v4, v25

    .line 685
    .line 686
    const/16 v57, 0x0

    .line 687
    .line 688
    :goto_17
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-eqz v5, :cond_15

    .line 693
    .line 694
    :goto_18
    move-object/from16 v58, v27

    .line 695
    .line 696
    goto :goto_19

    .line 697
    :cond_15
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v27

    .line 701
    goto :goto_18

    .line 702
    :goto_19
    new-instance v5, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 703
    .line 704
    move-object/from16 v28, v5

    .line 705
    .line 706
    move/from16 v31, v2

    .line 707
    .line 708
    move/from16 v32, v3

    .line 709
    .line 710
    invoke-direct/range {v28 .. v58}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .line 715
    .line 716
    move/from16 v5, p2

    .line 717
    .line 718
    move/from16 v25, v4

    .line 719
    .line 720
    move/from16 v24, v6

    .line 721
    .line 722
    move/from16 p2, v16

    .line 723
    .line 724
    move/from16 v16, v22

    .line 725
    .line 726
    move/from16 v2, v26

    .line 727
    .line 728
    move/from16 v3, v59

    .line 729
    .line 730
    move/from16 v4, v60

    .line 731
    .line 732
    move/from16 v6, v61

    .line 733
    .line 734
    move/from16 p4, v63

    .line 735
    .line 736
    move/from16 v22, v7

    .line 737
    .line 738
    move/from16 v7, p3

    .line 739
    .line 740
    move/from16 p3, v19

    .line 741
    .line 742
    move/from16 v19, v62

    .line 743
    .line 744
    goto/16 :goto_0

    .line 745
    .line 746
    :catchall_0
    move-exception v0

    .line 747
    goto :goto_1a

    .line 748
    :cond_16
    invoke-interface {v1}, Ly3/e;->close()V

    .line 749
    .line 750
    .line 751
    return-object v0

    .line 752
    :goto_1a
    invoke-interface {v1}, Ly3/e;->close()V

    .line 753
    .line 754
    .line 755
    throw v0
.end method

.method private synthetic P(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Ly3/b;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method private synthetic Q(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->e:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method private static synthetic R(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "UPDATE VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE subjectId = ? "

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-interface {p2, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x2

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p2, p0}, Ly3/e;->g(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {p2, p0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-interface {p2}, Ly3/e;->C0()Z

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    invoke-interface {p2}, Ly3/e;->close()V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :goto_2
    invoke-interface {p2}, Ly3/e;->close()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static synthetic q(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/z0;->J(Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->R(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/baselib/db/video/z0;IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/z0;->M(IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->K(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v(Lcom/transsion/baselib/db/video/z0;IILjava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/z0;->I(IILjava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->Q(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lcom/transsion/baselib/db/video/z0;IIILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/video/z0;->O(IIILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/z0;->H(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/db/video/z0;->G(Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/y0;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/baselib/db/video/y0;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/p0;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/transsion/baselib/db/video/p0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/s0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/baselib/db/video/s0;-><init>(Lcom/transsion/baselib/db/video/z0;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/w0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/w0;-><init>(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public f(Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->c(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Ljava/lang/String;IIJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/v0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/v0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public h(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/o0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/o0;-><init>(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public i(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/r0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p2, p1}, Lcom/transsion/baselib/db/video/r0;-><init>(Lcom/transsion/baselib/db/video/z0;III)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/n0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/n0;-><init>(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public k(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/t0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/t0;-><init>(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public l(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/u0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p3, p1}, Lcom/transsion/baselib/db/video/u0;-><init>(Lcom/transsion/baselib/db/video/z0;IILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public m(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/q0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/q0;-><init>(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/x0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/x0;-><init>(Lcom/transsion/baselib/db/video/z0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public o(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/z0;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/m0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/m0;-><init>(Lcom/transsion/baselib/db/video/z0;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public p(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/VideoDetailPlayDao;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
