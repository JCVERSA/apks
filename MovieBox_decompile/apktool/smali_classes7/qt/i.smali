.class public final Lqt/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqt/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lqt/i$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lqt/i$a;-><init>(Lqt/i;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lqt/i;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lqt/i$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lqt/i$b;-><init>(Lqt/i;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lqt/i;->c:Landroidx/room/e;

    .line 19
    .line 20
    new-instance p1, Lqt/i$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lqt/i$c;-><init>(Lqt/i;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lqt/i;->d:Landroidx/room/e;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic h(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqt/i;->p(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqt/i;->q(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(ILy3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqt/i;->r(ILy3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqt/i;->s(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;ILy3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lqt/i;->t(Ljava/lang/String;ILy3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqt/i;->u(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lqt/i;->v(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static o()Ljava/util/List;
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

.method private synthetic p(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lqt/i;->c:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method private static synthetic q(Ljava/lang/String;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM st_download_table WHERE resourceId =?"

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

.method private static synthetic r(ILy3/b;)Ljava/util/List;
    .locals 64

    .line 1
    const-string v0, "SELECT * FROM st_download_table WHERE status = ?"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v0, 0x1

    .line 10
    move/from16 v2, p0

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 14
    .line 15
    .line 16
    const-string v0, "id"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v2, "resourceStreamType"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "resourceId"

    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "lan"

    .line 35
    .line 36
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v5, "lanName"

    .line 41
    .line 42
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-string v6, "url"

    .line 47
    .line 48
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const-string v7, "size"

    .line 53
    .line 54
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string v8, "delay"

    .line 59
    .line 60
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v9, "downloads"

    .line 65
    .line 66
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const-string v10, "type"

    .line 71
    .line 72
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const-string v11, "postId"

    .line 77
    .line 78
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const-string v12, "subtitleName"

    .line 83
    .line 84
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const-string v13, "subjectId"

    .line 89
    .line 90
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    const-string v14, "ep"

    .line 95
    .line 96
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const-string v15, "se"

    .line 101
    .line 102
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    move/from16 p0, v15

    .line 107
    .line 108
    const-string v15, "resolution"

    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    move/from16 p1, v15

    .line 115
    .line 116
    const-string v15, "subjectName"

    .line 117
    .line 118
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v15

    .line 122
    move/from16 v16, v15

    .line 123
    .line 124
    const-string v15, "status"

    .line 125
    .line 126
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    move/from16 v17, v15

    .line 131
    .line 132
    const-string v15, "fileCharsetName"

    .line 133
    .line 134
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    move/from16 v18, v15

    .line 139
    .line 140
    const-string v15, "path"

    .line 141
    .line 142
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    move/from16 v19, v15

    .line 147
    .line 148
    const-string v15, "zipPath"

    .line 149
    .line 150
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    move/from16 v20, v15

    .line 155
    .line 156
    const-string v15, "taskId"

    .line 157
    .line 158
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    move/from16 v21, v15

    .line 163
    .line 164
    const-string v15, "failCount"

    .line 165
    .line 166
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    move/from16 v22, v15

    .line 171
    .line 172
    const-string v15, "ugcVideoId"

    .line 173
    .line 174
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    move/from16 v23, v15

    .line 179
    .line 180
    const-string v15, "ugcVideoCollectionId"

    .line 181
    .line 182
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    move/from16 v24, v15

    .line 187
    .line 188
    const-string v15, "ops"

    .line 189
    .line 190
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    move/from16 v25, v15

    .line 195
    .line 196
    new-instance v15, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 202
    .line 203
    .line 204
    move-result v26

    .line 205
    if-eqz v26, :cond_13

    .line 206
    .line 207
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 208
    .line 209
    .line 210
    move-result v26

    .line 211
    const/16 v27, 0x0

    .line 212
    .line 213
    if-eqz v26, :cond_0

    .line 214
    .line 215
    move/from16 v26, v14

    .line 216
    .line 217
    move-object/from16 v55, v15

    .line 218
    .line 219
    move-object/from16 v29, v27

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_0
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v26

    .line 226
    move-object/from16 v55, v15

    .line 227
    .line 228
    move-object/from16 v29, v26

    .line 229
    .line 230
    move/from16 v26, v14

    .line 231
    .line 232
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v14

    .line 236
    long-to-int v14, v14

    .line 237
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    if-eqz v15, :cond_1

    .line 242
    .line 243
    move-object/from16 v31, v27

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    move-object/from16 v31, v15

    .line 251
    .line 252
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    if-eqz v15, :cond_2

    .line 257
    .line 258
    move-object/from16 v32, v27

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_2
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    move-object/from16 v32, v15

    .line 266
    .line 267
    :goto_3
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    if-eqz v15, :cond_3

    .line 272
    .line 273
    move-object/from16 v33, v27

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_3
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v15

    .line 280
    move-object/from16 v33, v15

    .line 281
    .line 282
    :goto_4
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    if-eqz v15, :cond_4

    .line 287
    .line 288
    move-object/from16 v34, v27

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    move-object/from16 v34, v15

    .line 296
    .line 297
    :goto_5
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    if-eqz v15, :cond_5

    .line 302
    .line 303
    move-object/from16 v35, v27

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 307
    .line 308
    .line 309
    move-result-wide v35

    .line 310
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    move-object/from16 v35, v15

    .line 315
    .line 316
    :goto_6
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 317
    .line 318
    .line 319
    move-result v15

    .line 320
    if-eqz v15, :cond_6

    .line 321
    .line 322
    move-object/from16 v36, v27

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_6
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 326
    .line 327
    .line 328
    move-result-wide v36

    .line 329
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    move-object/from16 v36, v15

    .line 334
    .line 335
    :goto_7
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 336
    .line 337
    .line 338
    move-result v15

    .line 339
    if-eqz v15, :cond_7

    .line 340
    .line 341
    move v15, v2

    .line 342
    move/from16 v56, v3

    .line 343
    .line 344
    move-object/from16 v37, v27

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_7
    move v15, v2

    .line 348
    move/from16 v56, v3

    .line 349
    .line 350
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 351
    .line 352
    .line 353
    move-result-wide v2

    .line 354
    long-to-int v2, v2

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    move-object/from16 v37, v2

    .line 360
    .line 361
    :goto_8
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v2

    .line 365
    long-to-int v2, v2

    .line 366
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-eqz v3, :cond_8

    .line 371
    .line 372
    move-object/from16 v39, v27

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    move-object/from16 v39, v3

    .line 380
    .line 381
    :goto_9
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_9

    .line 386
    .line 387
    move-object/from16 v40, v27

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    move-object/from16 v40, v3

    .line 395
    .line 396
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_a

    .line 401
    .line 402
    move/from16 v57, v5

    .line 403
    .line 404
    move/from16 v3, v26

    .line 405
    .line 406
    move-object/from16 v41, v27

    .line 407
    .line 408
    :goto_b
    move/from16 v26, v4

    .line 409
    .line 410
    goto :goto_c

    .line 411
    :cond_a
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    move-object/from16 v41, v3

    .line 416
    .line 417
    move/from16 v57, v5

    .line 418
    .line 419
    move/from16 v3, v26

    .line 420
    .line 421
    goto :goto_b

    .line 422
    :goto_c
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 423
    .line 424
    .line 425
    move-result-wide v4

    .line 426
    long-to-int v4, v4

    .line 427
    move/from16 v5, p0

    .line 428
    .line 429
    move/from16 p0, v6

    .line 430
    .line 431
    move/from16 v58, v7

    .line 432
    .line 433
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 434
    .line 435
    .line 436
    move-result-wide v6

    .line 437
    long-to-int v6, v6

    .line 438
    move/from16 v7, p1

    .line 439
    .line 440
    move/from16 p1, v8

    .line 441
    .line 442
    move/from16 v59, v9

    .line 443
    .line 444
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 445
    .line 446
    .line 447
    move-result-wide v8

    .line 448
    long-to-int v8, v8

    .line 449
    move/from16 v9, v16

    .line 450
    .line 451
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 452
    .line 453
    .line 454
    move-result v16

    .line 455
    if-eqz v16, :cond_b

    .line 456
    .line 457
    move/from16 v16, v0

    .line 458
    .line 459
    move/from16 v60, v9

    .line 460
    .line 461
    move/from16 v0, v17

    .line 462
    .line 463
    move-object/from16 v45, v27

    .line 464
    .line 465
    :goto_d
    move/from16 v17, v10

    .line 466
    .line 467
    goto :goto_e

    .line 468
    :cond_b
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v16

    .line 472
    move/from16 v60, v9

    .line 473
    .line 474
    move-object/from16 v45, v16

    .line 475
    .line 476
    move/from16 v16, v0

    .line 477
    .line 478
    move/from16 v0, v17

    .line 479
    .line 480
    goto :goto_d

    .line 481
    :goto_e
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 482
    .line 483
    .line 484
    move-result-wide v9

    .line 485
    long-to-int v9, v9

    .line 486
    move/from16 v10, v18

    .line 487
    .line 488
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 489
    .line 490
    .line 491
    move-result v18

    .line 492
    if-eqz v18, :cond_c

    .line 493
    .line 494
    move/from16 v18, v0

    .line 495
    .line 496
    move/from16 v0, v19

    .line 497
    .line 498
    move-object/from16 v47, v27

    .line 499
    .line 500
    goto :goto_f

    .line 501
    :cond_c
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v18

    .line 505
    move-object/from16 v47, v18

    .line 506
    .line 507
    move/from16 v18, v0

    .line 508
    .line 509
    move/from16 v0, v19

    .line 510
    .line 511
    :goto_f
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 512
    .line 513
    .line 514
    move-result v19

    .line 515
    if-eqz v19, :cond_d

    .line 516
    .line 517
    move/from16 v19, v0

    .line 518
    .line 519
    move/from16 v0, v20

    .line 520
    .line 521
    move-object/from16 v48, v27

    .line 522
    .line 523
    goto :goto_10

    .line 524
    :cond_d
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v19

    .line 528
    move-object/from16 v48, v19

    .line 529
    .line 530
    move/from16 v19, v0

    .line 531
    .line 532
    move/from16 v0, v20

    .line 533
    .line 534
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 535
    .line 536
    .line 537
    move-result v20

    .line 538
    if-eqz v20, :cond_e

    .line 539
    .line 540
    move/from16 v20, v0

    .line 541
    .line 542
    move/from16 v0, v21

    .line 543
    .line 544
    move-object/from16 v49, v27

    .line 545
    .line 546
    goto :goto_11

    .line 547
    :cond_e
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v20

    .line 551
    move-object/from16 v49, v20

    .line 552
    .line 553
    move/from16 v20, v0

    .line 554
    .line 555
    move/from16 v0, v21

    .line 556
    .line 557
    :goto_11
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 558
    .line 559
    .line 560
    move-result v21

    .line 561
    if-eqz v21, :cond_f

    .line 562
    .line 563
    move/from16 v21, v0

    .line 564
    .line 565
    move/from16 v61, v10

    .line 566
    .line 567
    move/from16 v0, v22

    .line 568
    .line 569
    move-object/from16 v50, v27

    .line 570
    .line 571
    :goto_12
    move/from16 v22, v11

    .line 572
    .line 573
    goto :goto_13

    .line 574
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v21

    .line 578
    move/from16 v61, v10

    .line 579
    .line 580
    move-object/from16 v50, v21

    .line 581
    .line 582
    move/from16 v21, v0

    .line 583
    .line 584
    move/from16 v0, v22

    .line 585
    .line 586
    goto :goto_12

    .line 587
    :goto_13
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 588
    .line 589
    .line 590
    move-result-wide v10

    .line 591
    long-to-int v10, v10

    .line 592
    move/from16 v11, v23

    .line 593
    .line 594
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 595
    .line 596
    .line 597
    move-result v23

    .line 598
    if-eqz v23, :cond_10

    .line 599
    .line 600
    move/from16 v23, v0

    .line 601
    .line 602
    move/from16 v0, v24

    .line 603
    .line 604
    move-object/from16 v52, v27

    .line 605
    .line 606
    goto :goto_14

    .line 607
    :cond_10
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v23

    .line 611
    move-object/from16 v52, v23

    .line 612
    .line 613
    move/from16 v23, v0

    .line 614
    .line 615
    move/from16 v0, v24

    .line 616
    .line 617
    :goto_14
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 618
    .line 619
    .line 620
    move-result v24

    .line 621
    if-eqz v24, :cond_11

    .line 622
    .line 623
    move/from16 v24, v0

    .line 624
    .line 625
    move/from16 v0, v25

    .line 626
    .line 627
    move-object/from16 v53, v27

    .line 628
    .line 629
    goto :goto_15

    .line 630
    :cond_11
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v24

    .line 634
    move-object/from16 v53, v24

    .line 635
    .line 636
    move/from16 v24, v0

    .line 637
    .line 638
    move/from16 v0, v25

    .line 639
    .line 640
    :goto_15
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 641
    .line 642
    .line 643
    move-result v25

    .line 644
    if-eqz v25, :cond_12

    .line 645
    .line 646
    :goto_16
    move/from16 v25, v0

    .line 647
    .line 648
    move-object/from16 v54, v27

    .line 649
    .line 650
    goto :goto_17

    .line 651
    :cond_12
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v27

    .line 655
    goto :goto_16

    .line 656
    :goto_17
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 657
    .line 658
    move-object/from16 v28, v0

    .line 659
    .line 660
    move/from16 v30, v14

    .line 661
    .line 662
    move/from16 v38, v2

    .line 663
    .line 664
    move/from16 v42, v4

    .line 665
    .line 666
    move/from16 v43, v6

    .line 667
    .line 668
    move/from16 v44, v8

    .line 669
    .line 670
    move/from16 v46, v9

    .line 671
    .line 672
    move/from16 v51, v10

    .line 673
    .line 674
    invoke-direct/range {v28 .. v54}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    move-object/from16 v2, v55

    .line 678
    .line 679
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .line 681
    .line 682
    move/from16 v6, p0

    .line 683
    .line 684
    move/from16 v8, p1

    .line 685
    .line 686
    move v14, v3

    .line 687
    move/from16 p0, v5

    .line 688
    .line 689
    move/from16 p1, v7

    .line 690
    .line 691
    move/from16 v0, v16

    .line 692
    .line 693
    move/from16 v10, v17

    .line 694
    .line 695
    move/from16 v17, v18

    .line 696
    .line 697
    move/from16 v4, v26

    .line 698
    .line 699
    move/from16 v3, v56

    .line 700
    .line 701
    move/from16 v5, v57

    .line 702
    .line 703
    move/from16 v7, v58

    .line 704
    .line 705
    move/from16 v9, v59

    .line 706
    .line 707
    move/from16 v16, v60

    .line 708
    .line 709
    move/from16 v18, v61

    .line 710
    .line 711
    move/from16 v62, v15

    .line 712
    .line 713
    move-object v15, v2

    .line 714
    move/from16 v2, v62

    .line 715
    .line 716
    move/from16 v63, v23

    .line 717
    .line 718
    move/from16 v23, v11

    .line 719
    .line 720
    move/from16 v11, v22

    .line 721
    .line 722
    move/from16 v22, v63

    .line 723
    .line 724
    goto/16 :goto_0

    .line 725
    .line 726
    :catchall_0
    move-exception v0

    .line 727
    goto :goto_18

    .line 728
    :cond_13
    move-object v2, v15

    .line 729
    invoke-interface {v1}, Ly3/e;->close()V

    .line 730
    .line 731
    .line 732
    return-object v2

    .line 733
    :goto_18
    invoke-interface {v1}, Ly3/e;->close()V

    .line 734
    .line 735
    .line 736
    throw v0
.end method

.method private static synthetic s(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 64

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM st_download_table WHERE resourceId = ?"

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
    goto/16 :goto_19

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "id"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "resourceStreamType"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "resourceId"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "lan"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "lanName"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "url"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "size"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "delay"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "downloads"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "type"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "postId"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "subtitleName"

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
    const-string v15, "subjectName"

    .line 125
    .line 126
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    move/from16 v16, v15

    .line 131
    .line 132
    const-string v15, "status"

    .line 133
    .line 134
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v15

    .line 138
    move/from16 v17, v15

    .line 139
    .line 140
    const-string v15, "fileCharsetName"

    .line 141
    .line 142
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    move/from16 v18, v15

    .line 147
    .line 148
    const-string v15, "path"

    .line 149
    .line 150
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    move/from16 v19, v15

    .line 155
    .line 156
    const-string v15, "zipPath"

    .line 157
    .line 158
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    move/from16 v20, v15

    .line 163
    .line 164
    const-string v15, "taskId"

    .line 165
    .line 166
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    move/from16 v21, v15

    .line 171
    .line 172
    const-string v15, "failCount"

    .line 173
    .line 174
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    move/from16 v22, v15

    .line 179
    .line 180
    const-string v15, "ugcVideoId"

    .line 181
    .line 182
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    move/from16 v23, v15

    .line 187
    .line 188
    const-string v15, "ugcVideoCollectionId"

    .line 189
    .line 190
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v15

    .line 194
    move/from16 v24, v15

    .line 195
    .line 196
    const-string v15, "ops"

    .line 197
    .line 198
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    move/from16 v25, v15

    .line 203
    .line 204
    new-instance v15, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    :goto_1
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 210
    .line 211
    .line 212
    move-result v26

    .line 213
    if-eqz v26, :cond_14

    .line 214
    .line 215
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 216
    .line 217
    .line 218
    move-result v26

    .line 219
    const/16 v27, 0x0

    .line 220
    .line 221
    if-eqz v26, :cond_1

    .line 222
    .line 223
    move/from16 v26, v14

    .line 224
    .line 225
    move-object/from16 v55, v15

    .line 226
    .line 227
    move-object/from16 v29, v27

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v26

    .line 234
    move-object/from16 v55, v15

    .line 235
    .line 236
    move-object/from16 v29, v26

    .line 237
    .line 238
    move/from16 v26, v14

    .line 239
    .line 240
    :goto_2
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 241
    .line 242
    .line 243
    move-result-wide v14

    .line 244
    long-to-int v14, v14

    .line 245
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    if-eqz v15, :cond_2

    .line 250
    .line 251
    move-object/from16 v31, v27

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    move-object/from16 v31, v15

    .line 259
    .line 260
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 261
    .line 262
    .line 263
    move-result v15

    .line 264
    if-eqz v15, :cond_3

    .line 265
    .line 266
    move-object/from16 v32, v27

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v15

    .line 273
    move-object/from16 v32, v15

    .line 274
    .line 275
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    if-eqz v15, :cond_4

    .line 280
    .line 281
    move-object/from16 v33, v27

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v15

    .line 288
    move-object/from16 v33, v15

    .line 289
    .line 290
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 291
    .line 292
    .line 293
    move-result v15

    .line 294
    if-eqz v15, :cond_5

    .line 295
    .line 296
    move-object/from16 v34, v27

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    move-object/from16 v34, v15

    .line 304
    .line 305
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 306
    .line 307
    .line 308
    move-result v15

    .line 309
    if-eqz v15, :cond_6

    .line 310
    .line 311
    move-object/from16 v35, v27

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_6
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 315
    .line 316
    .line 317
    move-result-wide v35

    .line 318
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    move-object/from16 v35, v15

    .line 323
    .line 324
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 325
    .line 326
    .line 327
    move-result v15

    .line 328
    if-eqz v15, :cond_7

    .line 329
    .line 330
    move-object/from16 v36, v27

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_7
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 334
    .line 335
    .line 336
    move-result-wide v36

    .line 337
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v15

    .line 341
    move-object/from16 v36, v15

    .line 342
    .line 343
    :goto_8
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-eqz v15, :cond_8

    .line 348
    .line 349
    move v15, v2

    .line 350
    move/from16 v56, v3

    .line 351
    .line 352
    move-object/from16 v37, v27

    .line 353
    .line 354
    goto :goto_9

    .line 355
    :cond_8
    move v15, v2

    .line 356
    move/from16 v56, v3

    .line 357
    .line 358
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 359
    .line 360
    .line 361
    move-result-wide v2

    .line 362
    long-to-int v2, v2

    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    move-object/from16 v37, v2

    .line 368
    .line 369
    :goto_9
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    long-to-int v2, v2

    .line 374
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_9

    .line 379
    .line 380
    move-object/from16 v39, v27

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_9
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    move-object/from16 v39, v3

    .line 388
    .line 389
    :goto_a
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-eqz v3, :cond_a

    .line 394
    .line 395
    move-object/from16 v40, v27

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    move-object/from16 v40, v3

    .line 403
    .line 404
    :goto_b
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-eqz v3, :cond_b

    .line 409
    .line 410
    move/from16 v57, v5

    .line 411
    .line 412
    move/from16 v3, v26

    .line 413
    .line 414
    move-object/from16 v41, v27

    .line 415
    .line 416
    :goto_c
    move/from16 v26, v4

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    move-object/from16 v41, v3

    .line 424
    .line 425
    move/from16 v57, v5

    .line 426
    .line 427
    move/from16 v3, v26

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :goto_d
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 431
    .line 432
    .line 433
    move-result-wide v4

    .line 434
    long-to-int v4, v4

    .line 435
    move/from16 v5, p0

    .line 436
    .line 437
    move/from16 p0, v6

    .line 438
    .line 439
    move/from16 v58, v7

    .line 440
    .line 441
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v6

    .line 445
    long-to-int v6, v6

    .line 446
    move/from16 v7, p1

    .line 447
    .line 448
    move/from16 p1, v8

    .line 449
    .line 450
    move/from16 v59, v9

    .line 451
    .line 452
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 453
    .line 454
    .line 455
    move-result-wide v8

    .line 456
    long-to-int v8, v8

    .line 457
    move/from16 v9, v16

    .line 458
    .line 459
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 460
    .line 461
    .line 462
    move-result v16

    .line 463
    if-eqz v16, :cond_c

    .line 464
    .line 465
    move/from16 v16, v0

    .line 466
    .line 467
    move/from16 v60, v9

    .line 468
    .line 469
    move/from16 v0, v17

    .line 470
    .line 471
    move-object/from16 v45, v27

    .line 472
    .line 473
    :goto_e
    move/from16 v17, v10

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_c
    invoke-interface {v1, v9}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v16

    .line 480
    move/from16 v60, v9

    .line 481
    .line 482
    move-object/from16 v45, v16

    .line 483
    .line 484
    move/from16 v16, v0

    .line 485
    .line 486
    move/from16 v0, v17

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :goto_f
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 490
    .line 491
    .line 492
    move-result-wide v9

    .line 493
    long-to-int v9, v9

    .line 494
    move/from16 v10, v18

    .line 495
    .line 496
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 497
    .line 498
    .line 499
    move-result v18

    .line 500
    if-eqz v18, :cond_d

    .line 501
    .line 502
    move/from16 v18, v0

    .line 503
    .line 504
    move/from16 v0, v19

    .line 505
    .line 506
    move-object/from16 v47, v27

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_d
    invoke-interface {v1, v10}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v18

    .line 513
    move-object/from16 v47, v18

    .line 514
    .line 515
    move/from16 v18, v0

    .line 516
    .line 517
    move/from16 v0, v19

    .line 518
    .line 519
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 520
    .line 521
    .line 522
    move-result v19

    .line 523
    if-eqz v19, :cond_e

    .line 524
    .line 525
    move/from16 v19, v0

    .line 526
    .line 527
    move/from16 v0, v20

    .line 528
    .line 529
    move-object/from16 v48, v27

    .line 530
    .line 531
    goto :goto_11

    .line 532
    :cond_e
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v19

    .line 536
    move-object/from16 v48, v19

    .line 537
    .line 538
    move/from16 v19, v0

    .line 539
    .line 540
    move/from16 v0, v20

    .line 541
    .line 542
    :goto_11
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 543
    .line 544
    .line 545
    move-result v20

    .line 546
    if-eqz v20, :cond_f

    .line 547
    .line 548
    move/from16 v20, v0

    .line 549
    .line 550
    move/from16 v0, v21

    .line 551
    .line 552
    move-object/from16 v49, v27

    .line 553
    .line 554
    goto :goto_12

    .line 555
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v20

    .line 559
    move-object/from16 v49, v20

    .line 560
    .line 561
    move/from16 v20, v0

    .line 562
    .line 563
    move/from16 v0, v21

    .line 564
    .line 565
    :goto_12
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 566
    .line 567
    .line 568
    move-result v21

    .line 569
    if-eqz v21, :cond_10

    .line 570
    .line 571
    move/from16 v21, v0

    .line 572
    .line 573
    move/from16 v61, v10

    .line 574
    .line 575
    move/from16 v0, v22

    .line 576
    .line 577
    move-object/from16 v50, v27

    .line 578
    .line 579
    :goto_13
    move/from16 v22, v11

    .line 580
    .line 581
    goto :goto_14

    .line 582
    :cond_10
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v21

    .line 586
    move/from16 v61, v10

    .line 587
    .line 588
    move-object/from16 v50, v21

    .line 589
    .line 590
    move/from16 v21, v0

    .line 591
    .line 592
    move/from16 v0, v22

    .line 593
    .line 594
    goto :goto_13

    .line 595
    :goto_14
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 596
    .line 597
    .line 598
    move-result-wide v10

    .line 599
    long-to-int v10, v10

    .line 600
    move/from16 v11, v23

    .line 601
    .line 602
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 603
    .line 604
    .line 605
    move-result v23

    .line 606
    if-eqz v23, :cond_11

    .line 607
    .line 608
    move/from16 v23, v0

    .line 609
    .line 610
    move/from16 v0, v24

    .line 611
    .line 612
    move-object/from16 v52, v27

    .line 613
    .line 614
    goto :goto_15

    .line 615
    :cond_11
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v23

    .line 619
    move-object/from16 v52, v23

    .line 620
    .line 621
    move/from16 v23, v0

    .line 622
    .line 623
    move/from16 v0, v24

    .line 624
    .line 625
    :goto_15
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 626
    .line 627
    .line 628
    move-result v24

    .line 629
    if-eqz v24, :cond_12

    .line 630
    .line 631
    move/from16 v24, v0

    .line 632
    .line 633
    move/from16 v0, v25

    .line 634
    .line 635
    move-object/from16 v53, v27

    .line 636
    .line 637
    goto :goto_16

    .line 638
    :cond_12
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v24

    .line 642
    move-object/from16 v53, v24

    .line 643
    .line 644
    move/from16 v24, v0

    .line 645
    .line 646
    move/from16 v0, v25

    .line 647
    .line 648
    :goto_16
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 649
    .line 650
    .line 651
    move-result v25

    .line 652
    if-eqz v25, :cond_13

    .line 653
    .line 654
    :goto_17
    move/from16 v25, v0

    .line 655
    .line 656
    move-object/from16 v54, v27

    .line 657
    .line 658
    goto :goto_18

    .line 659
    :cond_13
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v27

    .line 663
    goto :goto_17

    .line 664
    :goto_18
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 665
    .line 666
    move-object/from16 v28, v0

    .line 667
    .line 668
    move/from16 v30, v14

    .line 669
    .line 670
    move/from16 v38, v2

    .line 671
    .line 672
    move/from16 v42, v4

    .line 673
    .line 674
    move/from16 v43, v6

    .line 675
    .line 676
    move/from16 v44, v8

    .line 677
    .line 678
    move/from16 v46, v9

    .line 679
    .line 680
    move/from16 v51, v10

    .line 681
    .line 682
    invoke-direct/range {v28 .. v54}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    move-object/from16 v2, v55

    .line 686
    .line 687
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    .line 689
    .line 690
    move/from16 v6, p0

    .line 691
    .line 692
    move/from16 v8, p1

    .line 693
    .line 694
    move v14, v3

    .line 695
    move/from16 p0, v5

    .line 696
    .line 697
    move/from16 p1, v7

    .line 698
    .line 699
    move/from16 v0, v16

    .line 700
    .line 701
    move/from16 v10, v17

    .line 702
    .line 703
    move/from16 v17, v18

    .line 704
    .line 705
    move/from16 v4, v26

    .line 706
    .line 707
    move/from16 v3, v56

    .line 708
    .line 709
    move/from16 v5, v57

    .line 710
    .line 711
    move/from16 v7, v58

    .line 712
    .line 713
    move/from16 v9, v59

    .line 714
    .line 715
    move/from16 v16, v60

    .line 716
    .line 717
    move/from16 v18, v61

    .line 718
    .line 719
    move/from16 v62, v15

    .line 720
    .line 721
    move-object v15, v2

    .line 722
    move/from16 v2, v62

    .line 723
    .line 724
    move/from16 v63, v23

    .line 725
    .line 726
    move/from16 v23, v11

    .line 727
    .line 728
    move/from16 v11, v22

    .line 729
    .line 730
    move/from16 v22, v63

    .line 731
    .line 732
    goto/16 :goto_1

    .line 733
    .line 734
    :cond_14
    move-object v2, v15

    .line 735
    invoke-interface {v1}, Ly3/e;->close()V

    .line 736
    .line 737
    .line 738
    return-object v2

    .line 739
    :goto_19
    invoke-interface {v1}, Ly3/e;->close()V

    .line 740
    .line 741
    .line 742
    throw v0
.end method

.method private static synthetic t(Ljava/lang/String;ILy3/b;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 53

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM st_download_table WHERE id = ? AND resourceStreamType = ?"

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
    goto/16 :goto_15

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
    const-string v0, "id"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-string v2, "resourceStreamType"

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const-string v3, "resourceId"

    .line 44
    .line 45
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const-string v4, "lan"

    .line 50
    .line 51
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string v5, "lanName"

    .line 56
    .line 57
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const-string v6, "url"

    .line 62
    .line 63
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const-string v7, "size"

    .line 68
    .line 69
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const-string v8, "delay"

    .line 74
    .line 75
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    const-string v9, "downloads"

    .line 80
    .line 81
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    const-string v10, "type"

    .line 86
    .line 87
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    const-string v11, "postId"

    .line 92
    .line 93
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    const-string v12, "subtitleName"

    .line 98
    .line 99
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const-string v13, "subjectId"

    .line 104
    .line 105
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    const-string v14, "ep"

    .line 110
    .line 111
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    const-string v15, "se"

    .line 116
    .line 117
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    move/from16 p0, v15

    .line 122
    .line 123
    const-string v15, "resolution"

    .line 124
    .line 125
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    move/from16 p1, v15

    .line 130
    .line 131
    const-string v15, "subjectName"

    .line 132
    .line 133
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v15

    .line 137
    move/from16 p2, v15

    .line 138
    .line 139
    const-string v15, "status"

    .line 140
    .line 141
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    move/from16 v16, v15

    .line 146
    .line 147
    const-string v15, "fileCharsetName"

    .line 148
    .line 149
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    move/from16 v17, v15

    .line 154
    .line 155
    const-string v15, "path"

    .line 156
    .line 157
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    move/from16 v18, v15

    .line 162
    .line 163
    const-string v15, "zipPath"

    .line 164
    .line 165
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v15

    .line 169
    move/from16 v19, v15

    .line 170
    .line 171
    const-string v15, "taskId"

    .line 172
    .line 173
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    move/from16 v20, v15

    .line 178
    .line 179
    const-string v15, "failCount"

    .line 180
    .line 181
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    move/from16 v21, v15

    .line 186
    .line 187
    const-string v15, "ugcVideoId"

    .line 188
    .line 189
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    move/from16 v22, v15

    .line 194
    .line 195
    const-string v15, "ugcVideoCollectionId"

    .line 196
    .line 197
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    move/from16 v23, v15

    .line 202
    .line 203
    const-string v15, "ops"

    .line 204
    .line 205
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 210
    .line 211
    .line 212
    move-result v24

    .line 213
    const/16 v25, 0x0

    .line 214
    .line 215
    if-eqz v24, :cond_14

    .line 216
    .line 217
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 218
    .line 219
    .line 220
    move-result v24

    .line 221
    if-eqz v24, :cond_1

    .line 222
    .line 223
    move v0, v14

    .line 224
    move/from16 v24, v15

    .line 225
    .line 226
    move-object/from16 v27, v25

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
    move-object/from16 v27, v0

    .line 234
    .line 235
    move v0, v14

    .line 236
    move/from16 v24, v15

    .line 237
    .line 238
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 239
    .line 240
    .line 241
    move-result-wide v14

    .line 242
    long-to-int v2, v14

    .line 243
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    if-eqz v14, :cond_2

    .line 248
    .line 249
    move-object/from16 v29, v25

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    move-object/from16 v29, v3

    .line 257
    .line 258
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_3

    .line 263
    .line 264
    move-object/from16 v30, v25

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object/from16 v30, v3

    .line 272
    .line 273
    :goto_3
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_4

    .line 278
    .line 279
    move-object/from16 v31, v25

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    move-object/from16 v31, v3

    .line 287
    .line 288
    :goto_4
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-eqz v3, :cond_5

    .line 293
    .line 294
    move-object/from16 v32, v25

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    move-object/from16 v32, v3

    .line 302
    .line 303
    :goto_5
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_6

    .line 308
    .line 309
    move-object/from16 v33, v25

    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_6
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 313
    .line 314
    .line 315
    move-result-wide v3

    .line 316
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    move-object/from16 v33, v3

    .line 321
    .line 322
    :goto_6
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_7

    .line 327
    .line 328
    move-object/from16 v34, v25

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_7
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 332
    .line 333
    .line 334
    move-result-wide v3

    .line 335
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    move-object/from16 v34, v3

    .line 340
    .line 341
    :goto_7
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_8

    .line 346
    .line 347
    move-object/from16 v35, v25

    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_8
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 351
    .line 352
    .line 353
    move-result-wide v3

    .line 354
    long-to-int v3, v3

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    move-object/from16 v35, v3

    .line 360
    .line 361
    :goto_8
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 362
    .line 363
    .line 364
    move-result-wide v3

    .line 365
    long-to-int v3, v3

    .line 366
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-eqz v4, :cond_9

    .line 371
    .line 372
    move-object/from16 v37, v25

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_9
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    move-object/from16 v37, v4

    .line 380
    .line 381
    :goto_9
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_a

    .line 386
    .line 387
    move-object/from16 v38, v25

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    move-object/from16 v38, v4

    .line 395
    .line 396
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_b

    .line 401
    .line 402
    move-object/from16 v39, v25

    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_b
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    move-object/from16 v39, v4

    .line 410
    .line 411
    :goto_b
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 412
    .line 413
    .line 414
    move-result-wide v4

    .line 415
    long-to-int v0, v4

    .line 416
    move/from16 v4, p0

    .line 417
    .line 418
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4

    .line 422
    long-to-int v4, v4

    .line 423
    move/from16 v5, p1

    .line 424
    .line 425
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 426
    .line 427
    .line 428
    move-result-wide v5

    .line 429
    long-to-int v5, v5

    .line 430
    move/from16 v6, p2

    .line 431
    .line 432
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    if-eqz v7, :cond_c

    .line 437
    .line 438
    move/from16 v6, v16

    .line 439
    .line 440
    move-object/from16 v43, v25

    .line 441
    .line 442
    goto :goto_c

    .line 443
    :cond_c
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    move-object/from16 v43, v6

    .line 448
    .line 449
    move/from16 v6, v16

    .line 450
    .line 451
    :goto_c
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 452
    .line 453
    .line 454
    move-result-wide v6

    .line 455
    long-to-int v6, v6

    .line 456
    move/from16 v7, v17

    .line 457
    .line 458
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    if-eqz v8, :cond_d

    .line 463
    .line 464
    move/from16 v7, v18

    .line 465
    .line 466
    move-object/from16 v45, v25

    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_d
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    move-object/from16 v45, v7

    .line 474
    .line 475
    move/from16 v7, v18

    .line 476
    .line 477
    :goto_d
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 478
    .line 479
    .line 480
    move-result v8

    .line 481
    if-eqz v8, :cond_e

    .line 482
    .line 483
    move/from16 v7, v19

    .line 484
    .line 485
    move-object/from16 v46, v25

    .line 486
    .line 487
    goto :goto_e

    .line 488
    :cond_e
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    move-object/from16 v46, v7

    .line 493
    .line 494
    move/from16 v7, v19

    .line 495
    .line 496
    :goto_e
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 497
    .line 498
    .line 499
    move-result v8

    .line 500
    if-eqz v8, :cond_f

    .line 501
    .line 502
    move/from16 v7, v20

    .line 503
    .line 504
    move-object/from16 v47, v25

    .line 505
    .line 506
    goto :goto_f

    .line 507
    :cond_f
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    move-object/from16 v47, v7

    .line 512
    .line 513
    move/from16 v7, v20

    .line 514
    .line 515
    :goto_f
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    if-eqz v8, :cond_10

    .line 520
    .line 521
    move/from16 v7, v21

    .line 522
    .line 523
    move-object/from16 v48, v25

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_10
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v7

    .line 530
    move-object/from16 v48, v7

    .line 531
    .line 532
    move/from16 v7, v21

    .line 533
    .line 534
    :goto_10
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 535
    .line 536
    .line 537
    move-result-wide v7

    .line 538
    long-to-int v7, v7

    .line 539
    move/from16 v8, v22

    .line 540
    .line 541
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    if-eqz v9, :cond_11

    .line 546
    .line 547
    move/from16 v8, v23

    .line 548
    .line 549
    move-object/from16 v50, v25

    .line 550
    .line 551
    goto :goto_11

    .line 552
    :cond_11
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    move-object/from16 v50, v8

    .line 557
    .line 558
    move/from16 v8, v23

    .line 559
    .line 560
    :goto_11
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 561
    .line 562
    .line 563
    move-result v9

    .line 564
    if-eqz v9, :cond_12

    .line 565
    .line 566
    move/from16 v8, v24

    .line 567
    .line 568
    move-object/from16 v51, v25

    .line 569
    .line 570
    goto :goto_12

    .line 571
    :cond_12
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v8

    .line 575
    move-object/from16 v51, v8

    .line 576
    .line 577
    move/from16 v8, v24

    .line 578
    .line 579
    :goto_12
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 580
    .line 581
    .line 582
    move-result v9

    .line 583
    if-eqz v9, :cond_13

    .line 584
    .line 585
    :goto_13
    move-object/from16 v52, v25

    .line 586
    .line 587
    goto :goto_14

    .line 588
    :cond_13
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v25

    .line 592
    goto :goto_13

    .line 593
    :goto_14
    new-instance v25, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 594
    .line 595
    move-object/from16 v26, v25

    .line 596
    .line 597
    move/from16 v28, v2

    .line 598
    .line 599
    move/from16 v36, v3

    .line 600
    .line 601
    move/from16 v40, v0

    .line 602
    .line 603
    move/from16 v41, v4

    .line 604
    .line 605
    move/from16 v42, v5

    .line 606
    .line 607
    move/from16 v44, v6

    .line 608
    .line 609
    move/from16 v49, v7

    .line 610
    .line 611
    invoke-direct/range {v26 .. v52}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    .line 613
    .line 614
    :cond_14
    invoke-interface {v1}, Ly3/e;->close()V

    .line 615
    .line 616
    .line 617
    return-object v25

    .line 618
    :goto_15
    invoke-interface {v1}, Ly3/e;->close()V

    .line 619
    .line 620
    .line 621
    throw v0
.end method

.method private synthetic u(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lqt/i;->b:Landroidx/room/g;

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

.method private synthetic v(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Ly3/b;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lqt/i;->d:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lqt/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lqt/b;-><init>(Ljava/lang/String;)V

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

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lqt/h;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lqt/h;-><init>(Ljava/lang/String;)V

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

.method public c(Ljava/lang/String;I)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 2

    .line 1
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lqt/d;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lqt/d;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 15
    .line 16
    return-object p1
.end method

.method public d(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lqt/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lqt/e;-><init>(I)V

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

.method public e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lqt/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lqt/c;-><init>(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

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

.method public f(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lqt/f;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lqt/f;-><init>(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public g(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lqt/i;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lqt/g;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lqt/g;-><init>(Lqt/i;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method
