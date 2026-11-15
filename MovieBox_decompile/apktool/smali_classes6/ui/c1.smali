.class public final Lui/c1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lui/v0;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lui/c1$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lui/c1$a;-><init>(Lui/c1;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lui/c1;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lui/c1$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lui/c1$b;-><init>(Lui/c1;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lui/c1;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lui/c1;->p(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lui/c1;->r(Ljava/lang/String;IILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lui/c1;Lcom/transsion/baselib/db/download/SubtitleBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lui/c1;->s(Lcom/transsion/baselib/db/download/SubtitleBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lui/c1;->n(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lui/c1;->o(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lui/c1;->q(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static m()Ljava/util/List;
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

.method private static synthetic n(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId=?"

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
    goto :goto_1

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
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    invoke-interface {p1}, Ly3/e;->close()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :goto_1
    invoke-interface {p1}, Ly3/e;->close()V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private static synthetic o(Ly3/b;)Ljava/util/List;
    .locals 40

    .line 1
    const-string v0, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v0, "resourceId"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "postId"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "url"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "path"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "lan"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "lanName"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "subtitleName"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "size"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "delayDuration"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "status"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "type"

    .line 70
    .line 71
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const-string v12, "fileCharsetName"

    .line 76
    .line 77
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    const-string v13, "subjectId"

    .line 82
    .line 83
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    const-string v14, "ep"

    .line 88
    .line 89
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const-string v15, "se"

    .line 94
    .line 95
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    move/from16 p0, v15

    .line 100
    .line 101
    const-string v15, "resolution"

    .line 102
    .line 103
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    move/from16 v16, v15

    .line 108
    .line 109
    new-instance v15, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 115
    .line 116
    .line 117
    move-result v17

    .line 118
    if-eqz v17, :cond_b

    .line 119
    .line 120
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 121
    .line 122
    .line 123
    move-result v17

    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    if-eqz v17, :cond_0

    .line 127
    .line 128
    move-object/from16 v20, v18

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_0
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v17

    .line 135
    move-object/from16 v20, v17

    .line 136
    .line 137
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v17

    .line 141
    if-eqz v17, :cond_1

    .line 142
    .line 143
    move-object/from16 v21, v18

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_1
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v17

    .line 150
    move-object/from16 v21, v17

    .line 151
    .line 152
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v17

    .line 156
    if-eqz v17, :cond_2

    .line 157
    .line 158
    move-object/from16 v22, v18

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v17

    .line 165
    move-object/from16 v22, v17

    .line 166
    .line 167
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 168
    .line 169
    .line 170
    move-result v17

    .line 171
    if-eqz v17, :cond_3

    .line 172
    .line 173
    move-object/from16 v23, v18

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v17

    .line 180
    move-object/from16 v23, v17

    .line 181
    .line 182
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v17

    .line 186
    if-eqz v17, :cond_4

    .line 187
    .line 188
    move-object/from16 v24, v18

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v17

    .line 195
    move-object/from16 v24, v17

    .line 196
    .line 197
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 198
    .line 199
    .line 200
    move-result v17

    .line 201
    if-eqz v17, :cond_5

    .line 202
    .line 203
    move-object/from16 v25, v18

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v17

    .line 210
    move-object/from16 v25, v17

    .line 211
    .line 212
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 213
    .line 214
    .line 215
    move-result v17

    .line 216
    if-eqz v17, :cond_6

    .line 217
    .line 218
    move-object/from16 v26, v18

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_6
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v17

    .line 225
    move-object/from16 v26, v17

    .line 226
    .line 227
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-eqz v17, :cond_7

    .line 232
    .line 233
    move-object/from16 v27, v18

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_7
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 237
    .line 238
    .line 239
    move-result-wide v27

    .line 240
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    .line 242
    .line 243
    move-result-object v17

    .line 244
    move-object/from16 v27, v17

    .line 245
    .line 246
    :goto_8
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 247
    .line 248
    .line 249
    move-result v17

    .line 250
    if-eqz v17, :cond_8

    .line 251
    .line 252
    move/from16 v17, v2

    .line 253
    .line 254
    move/from16 v36, v3

    .line 255
    .line 256
    move-object/from16 v28, v18

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_8
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 260
    .line 261
    .line 262
    move-result-wide v28

    .line 263
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v17

    .line 267
    move/from16 v36, v3

    .line 268
    .line 269
    move-object/from16 v28, v17

    .line 270
    .line 271
    move/from16 v17, v2

    .line 272
    .line 273
    :goto_9
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 274
    .line 275
    .line 276
    move-result-wide v2

    .line 277
    long-to-int v2, v2

    .line 278
    move/from16 v37, v4

    .line 279
    .line 280
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v3

    .line 284
    long-to-int v3, v3

    .line 285
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_9

    .line 290
    .line 291
    move-object/from16 v31, v18

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    move-object/from16 v31, v4

    .line 299
    .line 300
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_a

    .line 305
    .line 306
    :goto_b
    move-object/from16 v32, v18

    .line 307
    .line 308
    move/from16 v18, v5

    .line 309
    .line 310
    goto :goto_c

    .line 311
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v18

    .line 315
    goto :goto_b

    .line 316
    :goto_c
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    long-to-int v4, v4

    .line 321
    move/from16 v5, p0

    .line 322
    .line 323
    move/from16 p0, v6

    .line 324
    .line 325
    move/from16 v38, v7

    .line 326
    .line 327
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 328
    .line 329
    .line 330
    move-result-wide v6

    .line 331
    long-to-int v6, v6

    .line 332
    move/from16 v39, v9

    .line 333
    .line 334
    move/from16 v7, v16

    .line 335
    .line 336
    move/from16 v16, v8

    .line 337
    .line 338
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 339
    .line 340
    .line 341
    move-result-wide v8

    .line 342
    long-to-int v8, v8

    .line 343
    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 344
    .line 345
    move-object/from16 v19, v9

    .line 346
    .line 347
    move/from16 v29, v2

    .line 348
    .line 349
    move/from16 v30, v3

    .line 350
    .line 351
    move/from16 v33, v4

    .line 352
    .line 353
    move/from16 v34, v6

    .line 354
    .line 355
    move/from16 v35, v8

    .line 356
    .line 357
    invoke-direct/range {v19 .. v35}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .line 362
    .line 363
    move/from16 v6, p0

    .line 364
    .line 365
    move/from16 p0, v5

    .line 366
    .line 367
    move/from16 v8, v16

    .line 368
    .line 369
    move/from16 v2, v17

    .line 370
    .line 371
    move/from16 v5, v18

    .line 372
    .line 373
    move/from16 v3, v36

    .line 374
    .line 375
    move/from16 v4, v37

    .line 376
    .line 377
    move/from16 v9, v39

    .line 378
    .line 379
    move/from16 v16, v7

    .line 380
    .line 381
    move/from16 v7, v38

    .line 382
    .line 383
    goto/16 :goto_0

    .line 384
    .line 385
    :catchall_0
    move-exception v0

    .line 386
    goto :goto_d

    .line 387
    :cond_b
    invoke-interface {v1}, Ly3/e;->close()V

    .line 388
    .line 389
    .line 390
    return-object v15

    .line 391
    :goto_d
    invoke-interface {v1}, Ly3/e;->close()V

    .line 392
    .line 393
    .line 394
    throw v0
.end method

.method private static synthetic p(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId = ? "

    .line 4
    .line 5
    move-object/from16 v2, p1

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
    goto/16 :goto_e

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "resourceId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "postId"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "url"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "path"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "lan"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "lanName"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "subtitleName"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "size"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "delayDuration"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "status"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "type"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "fileCharsetName"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "subjectId"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "ep"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "se"

    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    move/from16 p0, v15

    .line 115
    .line 116
    const-string v15, "resolution"

    .line 117
    .line 118
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    move/from16 p1, v15

    .line 123
    .line 124
    new-instance v15, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-eqz v16, :cond_c

    .line 134
    .line 135
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result v16

    .line 139
    const/16 v17, 0x0

    .line 140
    .line 141
    if-eqz v16, :cond_1

    .line 142
    .line 143
    move-object/from16 v19, v17

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    move-object/from16 v19, v16

    .line 151
    .line 152
    :goto_2
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    if-eqz v16, :cond_2

    .line 157
    .line 158
    move-object/from16 v20, v17

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    move-object/from16 v20, v16

    .line 166
    .line 167
    :goto_3
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_3

    .line 172
    .line 173
    move-object/from16 v21, v17

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    move-object/from16 v21, v16

    .line 181
    .line 182
    :goto_4
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    if-eqz v16, :cond_4

    .line 187
    .line 188
    move-object/from16 v22, v17

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v16

    .line 195
    move-object/from16 v22, v16

    .line 196
    .line 197
    :goto_5
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 198
    .line 199
    .line 200
    move-result v16

    .line 201
    if-eqz v16, :cond_5

    .line 202
    .line 203
    move-object/from16 v23, v17

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v16

    .line 210
    move-object/from16 v23, v16

    .line 211
    .line 212
    :goto_6
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 213
    .line 214
    .line 215
    move-result v16

    .line 216
    if-eqz v16, :cond_6

    .line 217
    .line 218
    move-object/from16 v24, v17

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    move-object/from16 v24, v16

    .line 226
    .line 227
    :goto_7
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    if-eqz v16, :cond_7

    .line 232
    .line 233
    move-object/from16 v25, v17

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_7
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    move-object/from16 v25, v16

    .line 241
    .line 242
    :goto_8
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    if-eqz v16, :cond_8

    .line 247
    .line 248
    move-object/from16 v26, v17

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_8
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v26

    .line 255
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v16

    .line 259
    move-object/from16 v26, v16

    .line 260
    .line 261
    :goto_9
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_9

    .line 266
    .line 267
    move/from16 v16, v2

    .line 268
    .line 269
    move/from16 v35, v3

    .line 270
    .line 271
    move-object/from16 v27, v17

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_9
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v27

    .line 278
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    move/from16 v35, v3

    .line 283
    .line 284
    move-object/from16 v27, v16

    .line 285
    .line 286
    move/from16 v16, v2

    .line 287
    .line 288
    :goto_a
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 289
    .line 290
    .line 291
    move-result-wide v2

    .line 292
    long-to-int v2, v2

    .line 293
    move/from16 v36, v4

    .line 294
    .line 295
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v3

    .line 299
    long-to-int v3, v3

    .line 300
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_a

    .line 305
    .line 306
    move-object/from16 v30, v17

    .line 307
    .line 308
    goto :goto_b

    .line 309
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    move-object/from16 v30, v4

    .line 314
    .line 315
    :goto_b
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_b

    .line 320
    .line 321
    :goto_c
    move-object/from16 v31, v17

    .line 322
    .line 323
    move/from16 v17, v5

    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v17

    .line 330
    goto :goto_c

    .line 331
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v4

    .line 335
    long-to-int v4, v4

    .line 336
    move/from16 v5, p0

    .line 337
    .line 338
    move/from16 p0, v6

    .line 339
    .line 340
    move/from16 v37, v7

    .line 341
    .line 342
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v6

    .line 346
    long-to-int v6, v6

    .line 347
    move/from16 v7, p1

    .line 348
    .line 349
    move/from16 p1, v8

    .line 350
    .line 351
    move/from16 v38, v9

    .line 352
    .line 353
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v8

    .line 357
    long-to-int v8, v8

    .line 358
    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 359
    .line 360
    move-object/from16 v18, v9

    .line 361
    .line 362
    move/from16 v28, v2

    .line 363
    .line 364
    move/from16 v29, v3

    .line 365
    .line 366
    move/from16 v32, v4

    .line 367
    .line 368
    move/from16 v33, v6

    .line 369
    .line 370
    move/from16 v34, v8

    .line 371
    .line 372
    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .line 377
    .line 378
    move/from16 v6, p0

    .line 379
    .line 380
    move/from16 v8, p1

    .line 381
    .line 382
    move/from16 p0, v5

    .line 383
    .line 384
    move/from16 p1, v7

    .line 385
    .line 386
    move/from16 v2, v16

    .line 387
    .line 388
    move/from16 v5, v17

    .line 389
    .line 390
    move/from16 v3, v35

    .line 391
    .line 392
    move/from16 v4, v36

    .line 393
    .line 394
    move/from16 v7, v37

    .line 395
    .line 396
    move/from16 v9, v38

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 401
    .line 402
    .line 403
    return-object v15

    .line 404
    :goto_e
    invoke-interface {v1}, Ly3/e;->close()V

    .line 405
    .line 406
    .line 407
    throw v0
.end method

.method private static synthetic q(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? "

    .line 4
    .line 5
    move-object/from16 v2, p1

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
    goto/16 :goto_e

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "resourceId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "postId"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "url"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "path"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "lan"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "lanName"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "subtitleName"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "size"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "delayDuration"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "status"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "type"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "fileCharsetName"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "subjectId"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "ep"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "se"

    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    move/from16 p0, v15

    .line 115
    .line 116
    const-string v15, "resolution"

    .line 117
    .line 118
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    move/from16 p1, v15

    .line 123
    .line 124
    new-instance v15, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-eqz v16, :cond_c

    .line 134
    .line 135
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 136
    .line 137
    .line 138
    move-result v16

    .line 139
    const/16 v17, 0x0

    .line 140
    .line 141
    if-eqz v16, :cond_1

    .line 142
    .line 143
    move-object/from16 v19, v17

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    move-object/from16 v19, v16

    .line 151
    .line 152
    :goto_2
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v16

    .line 156
    if-eqz v16, :cond_2

    .line 157
    .line 158
    move-object/from16 v20, v17

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v16

    .line 165
    move-object/from16 v20, v16

    .line 166
    .line 167
    :goto_3
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_3

    .line 172
    .line 173
    move-object/from16 v21, v17

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v16

    .line 180
    move-object/from16 v21, v16

    .line 181
    .line 182
    :goto_4
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    if-eqz v16, :cond_4

    .line 187
    .line 188
    move-object/from16 v22, v17

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v16

    .line 195
    move-object/from16 v22, v16

    .line 196
    .line 197
    :goto_5
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 198
    .line 199
    .line 200
    move-result v16

    .line 201
    if-eqz v16, :cond_5

    .line 202
    .line 203
    move-object/from16 v23, v17

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v16

    .line 210
    move-object/from16 v23, v16

    .line 211
    .line 212
    :goto_6
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 213
    .line 214
    .line 215
    move-result v16

    .line 216
    if-eqz v16, :cond_6

    .line 217
    .line 218
    move-object/from16 v24, v17

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    move-object/from16 v24, v16

    .line 226
    .line 227
    :goto_7
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    if-eqz v16, :cond_7

    .line 232
    .line 233
    move-object/from16 v25, v17

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_7
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    move-object/from16 v25, v16

    .line 241
    .line 242
    :goto_8
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    if-eqz v16, :cond_8

    .line 247
    .line 248
    move-object/from16 v26, v17

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_8
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v26

    .line 255
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v16

    .line 259
    move-object/from16 v26, v16

    .line 260
    .line 261
    :goto_9
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 262
    .line 263
    .line 264
    move-result v16

    .line 265
    if-eqz v16, :cond_9

    .line 266
    .line 267
    move/from16 v16, v2

    .line 268
    .line 269
    move/from16 v35, v3

    .line 270
    .line 271
    move-object/from16 v27, v17

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_9
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v27

    .line 278
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v16

    .line 282
    move/from16 v35, v3

    .line 283
    .line 284
    move-object/from16 v27, v16

    .line 285
    .line 286
    move/from16 v16, v2

    .line 287
    .line 288
    :goto_a
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 289
    .line 290
    .line 291
    move-result-wide v2

    .line 292
    long-to-int v2, v2

    .line 293
    move/from16 v36, v4

    .line 294
    .line 295
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v3

    .line 299
    long-to-int v3, v3

    .line 300
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_a

    .line 305
    .line 306
    move-object/from16 v30, v17

    .line 307
    .line 308
    goto :goto_b

    .line 309
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    move-object/from16 v30, v4

    .line 314
    .line 315
    :goto_b
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_b

    .line 320
    .line 321
    :goto_c
    move-object/from16 v31, v17

    .line 322
    .line 323
    move/from16 v17, v5

    .line 324
    .line 325
    goto :goto_d

    .line 326
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v17

    .line 330
    goto :goto_c

    .line 331
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v4

    .line 335
    long-to-int v4, v4

    .line 336
    move/from16 v5, p0

    .line 337
    .line 338
    move/from16 p0, v6

    .line 339
    .line 340
    move/from16 v37, v7

    .line 341
    .line 342
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 343
    .line 344
    .line 345
    move-result-wide v6

    .line 346
    long-to-int v6, v6

    .line 347
    move/from16 v7, p1

    .line 348
    .line 349
    move/from16 p1, v8

    .line 350
    .line 351
    move/from16 v38, v9

    .line 352
    .line 353
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 354
    .line 355
    .line 356
    move-result-wide v8

    .line 357
    long-to-int v8, v8

    .line 358
    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 359
    .line 360
    move-object/from16 v18, v9

    .line 361
    .line 362
    move/from16 v28, v2

    .line 363
    .line 364
    move/from16 v29, v3

    .line 365
    .line 366
    move/from16 v32, v4

    .line 367
    .line 368
    move/from16 v33, v6

    .line 369
    .line 370
    move/from16 v34, v8

    .line 371
    .line 372
    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .line 377
    .line 378
    move/from16 v6, p0

    .line 379
    .line 380
    move/from16 v8, p1

    .line 381
    .line 382
    move/from16 p0, v5

    .line 383
    .line 384
    move/from16 p1, v7

    .line 385
    .line 386
    move/from16 v2, v16

    .line 387
    .line 388
    move/from16 v5, v17

    .line 389
    .line 390
    move/from16 v3, v35

    .line 391
    .line 392
    move/from16 v4, v36

    .line 393
    .line 394
    move/from16 v7, v37

    .line 395
    .line 396
    move/from16 v9, v38

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 401
    .line 402
    .line 403
    return-object v15

    .line 404
    :goto_e
    invoke-interface {v1}, Ly3/e;->close()V

    .line 405
    .line 406
    .line 407
    throw v0
.end method

.method private static synthetic r(Ljava/lang/String;IILy3/b;)Ljava/util/List;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? AND ep = ? AND se = ?"

    .line 4
    .line 5
    move-object/from16 v2, p3

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
    goto/16 :goto_e

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x2

    .line 25
    move/from16 v2, p1

    .line 26
    .line 27
    int-to-long v2, v2

    .line 28
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    move/from16 v2, p2

    .line 33
    .line 34
    int-to-long v2, v2

    .line 35
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 36
    .line 37
    .line 38
    const-string v0, "resourceId"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v2, "postId"

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v3, "url"

    .line 51
    .line 52
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const-string v4, "path"

    .line 57
    .line 58
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const-string v5, "lan"

    .line 63
    .line 64
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const-string v6, "lanName"

    .line 69
    .line 70
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    const-string v7, "subtitleName"

    .line 75
    .line 76
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    const-string v8, "size"

    .line 81
    .line 82
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const-string v9, "delayDuration"

    .line 87
    .line 88
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const-string v10, "status"

    .line 93
    .line 94
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    const-string v11, "type"

    .line 99
    .line 100
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    const-string v12, "fileCharsetName"

    .line 105
    .line 106
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    const-string v13, "subjectId"

    .line 111
    .line 112
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    const-string v14, "ep"

    .line 117
    .line 118
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    const-string v15, "se"

    .line 123
    .line 124
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    move/from16 p0, v15

    .line 129
    .line 130
    const-string v15, "resolution"

    .line 131
    .line 132
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    move/from16 p1, v15

    .line 137
    .line 138
    new-instance v15, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 144
    .line 145
    .line 146
    move-result v16

    .line 147
    if-eqz v16, :cond_c

    .line 148
    .line 149
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    if-eqz v16, :cond_1

    .line 156
    .line 157
    move-object/from16 v19, v17

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v16

    .line 164
    move-object/from16 v19, v16

    .line 165
    .line 166
    :goto_2
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 167
    .line 168
    .line 169
    move-result v16

    .line 170
    if-eqz v16, :cond_2

    .line 171
    .line 172
    move-object/from16 v20, v17

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v20, v16

    .line 180
    .line 181
    :goto_3
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 182
    .line 183
    .line 184
    move-result v16

    .line 185
    if-eqz v16, :cond_3

    .line 186
    .line 187
    move-object/from16 v21, v17

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v16

    .line 194
    move-object/from16 v21, v16

    .line 195
    .line 196
    :goto_4
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 197
    .line 198
    .line 199
    move-result v16

    .line 200
    if-eqz v16, :cond_4

    .line 201
    .line 202
    move-object/from16 v22, v17

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    move-object/from16 v22, v16

    .line 210
    .line 211
    :goto_5
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 212
    .line 213
    .line 214
    move-result v16

    .line 215
    if-eqz v16, :cond_5

    .line 216
    .line 217
    move-object/from16 v23, v17

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v16

    .line 224
    move-object/from16 v23, v16

    .line 225
    .line 226
    :goto_6
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 227
    .line 228
    .line 229
    move-result v16

    .line 230
    if-eqz v16, :cond_6

    .line 231
    .line 232
    move-object/from16 v24, v17

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v16

    .line 239
    move-object/from16 v24, v16

    .line 240
    .line 241
    :goto_7
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 242
    .line 243
    .line 244
    move-result v16

    .line 245
    if-eqz v16, :cond_7

    .line 246
    .line 247
    move-object/from16 v25, v17

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_7
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v16

    .line 254
    move-object/from16 v25, v16

    .line 255
    .line 256
    :goto_8
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 257
    .line 258
    .line 259
    move-result v16

    .line 260
    if-eqz v16, :cond_8

    .line 261
    .line 262
    move-object/from16 v26, v17

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_8
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 266
    .line 267
    .line 268
    move-result-wide v26

    .line 269
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    move-object/from16 v26, v16

    .line 274
    .line 275
    :goto_9
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 276
    .line 277
    .line 278
    move-result v16

    .line 279
    if-eqz v16, :cond_9

    .line 280
    .line 281
    move/from16 p2, v2

    .line 282
    .line 283
    move/from16 p3, v3

    .line 284
    .line 285
    move-object/from16 v27, v17

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :cond_9
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 289
    .line 290
    .line 291
    move-result-wide v27

    .line 292
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v16

    .line 296
    move/from16 p2, v2

    .line 297
    .line 298
    move/from16 p3, v3

    .line 299
    .line 300
    move-object/from16 v27, v16

    .line 301
    .line 302
    :goto_a
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 303
    .line 304
    .line 305
    move-result-wide v2

    .line 306
    long-to-int v2, v2

    .line 307
    move/from16 v16, v4

    .line 308
    .line 309
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 310
    .line 311
    .line 312
    move-result-wide v3

    .line 313
    long-to-int v3, v3

    .line 314
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_a

    .line 319
    .line 320
    move-object/from16 v30, v17

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    move-object/from16 v30, v4

    .line 328
    .line 329
    :goto_b
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-eqz v4, :cond_b

    .line 334
    .line 335
    :goto_c
    move-object/from16 v31, v17

    .line 336
    .line 337
    move/from16 v17, v5

    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v17

    .line 344
    goto :goto_c

    .line 345
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v4

    .line 349
    long-to-int v4, v4

    .line 350
    move/from16 v5, p0

    .line 351
    .line 352
    move/from16 p0, v6

    .line 353
    .line 354
    move/from16 v35, v7

    .line 355
    .line 356
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 357
    .line 358
    .line 359
    move-result-wide v6

    .line 360
    long-to-int v6, v6

    .line 361
    move/from16 v7, p1

    .line 362
    .line 363
    move/from16 p1, v8

    .line 364
    .line 365
    move/from16 v36, v9

    .line 366
    .line 367
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 368
    .line 369
    .line 370
    move-result-wide v8

    .line 371
    long-to-int v8, v8

    .line 372
    new-instance v9, Lcom/transsion/baselib/db/download/SubtitleBean;

    .line 373
    .line 374
    move-object/from16 v18, v9

    .line 375
    .line 376
    move/from16 v28, v2

    .line 377
    .line 378
    move/from16 v29, v3

    .line 379
    .line 380
    move/from16 v32, v4

    .line 381
    .line 382
    move/from16 v33, v6

    .line 383
    .line 384
    move/from16 v34, v8

    .line 385
    .line 386
    invoke-direct/range {v18 .. v34}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;III)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .line 391
    .line 392
    move/from16 v6, p0

    .line 393
    .line 394
    move/from16 v8, p1

    .line 395
    .line 396
    move/from16 v2, p2

    .line 397
    .line 398
    move/from16 v3, p3

    .line 399
    .line 400
    move/from16 p0, v5

    .line 401
    .line 402
    move/from16 p1, v7

    .line 403
    .line 404
    move/from16 v4, v16

    .line 405
    .line 406
    move/from16 v5, v17

    .line 407
    .line 408
    move/from16 v7, v35

    .line 409
    .line 410
    move/from16 v9, v36

    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :cond_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 415
    .line 416
    .line 417
    return-object v15

    .line 418
    :goto_e
    invoke-interface {v1}, Ly3/e;->close()V

    .line 419
    .line 420
    .line 421
    throw v0
.end method

.method private synthetic s(Lcom/transsion/baselib/db/download/SubtitleBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lui/c1;->c:Landroidx/room/e;

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


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/b1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lui/b1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Lcom/transsion/baselib/db/download/SubtitleBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lui/z0;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lui/z0;-><init>(Lui/c1;Lcom/transsion/baselib/db/download/SubtitleBean;)V

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

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/a1;

    .line 4
    .line 5
    invoke-direct {v1}, Lui/a1;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/y0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lui/y0;-><init>(Ljava/lang/String;)V

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

.method public e(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/w0;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lui/w0;-><init>(Ljava/lang/String;II)V

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

.method public f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lui/c1;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lui/x0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lui/x0;-><init>(Ljava/lang/String;)V

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
