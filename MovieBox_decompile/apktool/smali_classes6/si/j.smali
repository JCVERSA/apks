.class public final Lsi/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lsi/a;


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
    iput-object p1, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lsi/j$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lsi/j$a;-><init>(Lsi/j;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lsi/j;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lsi/j$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lsi/j$b;-><init>(Lsi/j;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lsi/j;->c:Landroidx/room/e;

    .line 19
    .line 20
    new-instance p1, Lsi/j$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lsi/j$c;-><init>(Lsi/j;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lsi/j;->d:Landroidx/room/e;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsi/j;->t(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lsi/j;->r(Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsi/j;->y(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsi/j;->u(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsi/j;->v(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lsi/j;->w(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsi/j;->x(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsi/j;->s(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static q()Ljava/util/List;
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

.method private static synthetic r(Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM Audio"

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

.method private synthetic s(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lsi/j;->c:Landroidx/room/e;

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

.method private static synthetic t(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Audio WHERE audioId = ?"

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
    goto/16 :goto_13

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "audioId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "cover"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "duration"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "size"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "url"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "title"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "desc"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "bitrate"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "updateTimeStamp"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "readProcess"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "localPath"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "ops"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "resourceId"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "postId"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "subjectId"

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
    const-string v15, "groupId"

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
    const-string v15, "status"

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
    const-string v15, "subjectTitle"

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
    const-string v15, "se"

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
    const-string v15, "ep"

    .line 149
    .line 150
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 155
    .line 156
    .line 157
    move-result v19

    .line 158
    const/16 v20, 0x0

    .line 159
    .line 160
    if-eqz v19, :cond_12

    .line 161
    .line 162
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 163
    .line 164
    .line 165
    move-result v19

    .line 166
    if-eqz v19, :cond_1

    .line 167
    .line 168
    move-object/from16 v22, v20

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object/from16 v22, v0

    .line 176
    .line 177
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    .line 183
    move-object/from16 v23, v20

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object/from16 v23, v0

    .line 191
    .line 192
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    .line 198
    move-object/from16 v24, v20

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v24, v0

    .line 210
    .line 211
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    move-object/from16 v25, v20

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 221
    .line 222
    .line 223
    move-result-wide v2

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object/from16 v25, v0

    .line 229
    .line 230
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    move-object/from16 v26, v20

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    move-object/from16 v26, v0

    .line 244
    .line 245
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    move-object/from16 v27, v20

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    move-object/from16 v27, v0

    .line 259
    .line 260
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    move-object/from16 v28, v20

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_7
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    move-object/from16 v28, v0

    .line 274
    .line 275
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_8

    .line 280
    .line 281
    move-object/from16 v29, v20

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_8
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    long-to-int v0, v2

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move-object/from16 v29, v0

    .line 294
    .line 295
    :goto_8
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    move-object/from16 v30, v20

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_9
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    move-object/from16 v30, v0

    .line 313
    .line 314
    :goto_9
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_a

    .line 319
    .line 320
    move-object/from16 v31, v20

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_a
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    move-object/from16 v31, v0

    .line 332
    .line 333
    :goto_a
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_b

    .line 338
    .line 339
    move-object/from16 v32, v20

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_b
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    move-object/from16 v32, v0

    .line 347
    .line 348
    :goto_b
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_c

    .line 353
    .line 354
    move-object/from16 v33, v20

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_c
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    move-object/from16 v33, v0

    .line 362
    .line 363
    :goto_c
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    move-object/from16 v34, v20

    .line 370
    .line 371
    goto :goto_d

    .line 372
    :cond_d
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object/from16 v34, v0

    .line 377
    .line 378
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_e

    .line 383
    .line 384
    move/from16 v0, p0

    .line 385
    .line 386
    move-object/from16 v35, v20

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_e
    invoke-interface {v1, v14}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object/from16 v35, v0

    .line 394
    .line 395
    move/from16 v0, p0

    .line 396
    .line 397
    :goto_e
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_f

    .line 402
    .line 403
    move/from16 v0, p1

    .line 404
    .line 405
    move-object/from16 v36, v20

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    move-object/from16 v36, v0

    .line 413
    .line 414
    move/from16 v0, p1

    .line 415
    .line 416
    :goto_f
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_10

    .line 421
    .line 422
    move/from16 v0, v16

    .line 423
    .line 424
    move-object/from16 v37, v20

    .line 425
    .line 426
    goto :goto_10

    .line 427
    :cond_10
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    move-object/from16 v37, v0

    .line 432
    .line 433
    move/from16 v0, v16

    .line 434
    .line 435
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v2

    .line 439
    long-to-int v0, v2

    .line 440
    move/from16 v2, v17

    .line 441
    .line 442
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-eqz v3, :cond_11

    .line 447
    .line 448
    :goto_11
    move/from16 v2, v18

    .line 449
    .line 450
    move-object/from16 v39, v20

    .line 451
    .line 452
    goto :goto_12

    .line 453
    :cond_11
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v20

    .line 457
    goto :goto_11

    .line 458
    :goto_12
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v2

    .line 462
    long-to-int v2, v2

    .line 463
    invoke-interface {v1, v15}, Ly3/e;->getLong(I)J

    .line 464
    .line 465
    .line 466
    move-result-wide v3

    .line 467
    long-to-int v3, v3

    .line 468
    new-instance v20, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 469
    .line 470
    move-object/from16 v21, v20

    .line 471
    .line 472
    move/from16 v38, v0

    .line 473
    .line 474
    move/from16 v40, v2

    .line 475
    .line 476
    move/from16 v41, v3

    .line 477
    .line 478
    invoke-direct/range {v21 .. v41}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .line 480
    .line 481
    :cond_12
    invoke-interface {v1}, Ly3/e;->close()V

    .line 482
    .line 483
    .line 484
    return-object v20

    .line 485
    :goto_13
    invoke-interface {v1}, Ly3/e;->close()V

    .line 486
    .line 487
    .line 488
    throw v0
.end method

.method private static synthetic u(Ljava/lang/String;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SELECT * FROM Audio WHERE postId = ? AND subjectId =?"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-interface {v3, v2}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v2, v3}, Ly3/e;->g(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto/16 :goto_14

    .line 22
    .line 23
    :cond_0
    invoke-interface {v2, v3, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x2

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ly3/e;->g(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, v0, v1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    const-string v0, "audioId"

    .line 37
    .line 38
    invoke-static {v2, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v1, "cover"

    .line 43
    .line 44
    invoke-static {v2, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v3, "duration"

    .line 49
    .line 50
    invoke-static {v2, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const-string v4, "size"

    .line 55
    .line 56
    invoke-static {v2, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const-string v5, "url"

    .line 61
    .line 62
    invoke-static {v2, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const-string v6, "title"

    .line 67
    .line 68
    invoke-static {v2, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    const-string v7, "desc"

    .line 73
    .line 74
    invoke-static {v2, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const-string v8, "bitrate"

    .line 79
    .line 80
    invoke-static {v2, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    const-string v9, "updateTimeStamp"

    .line 85
    .line 86
    invoke-static {v2, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    const-string v10, "readProcess"

    .line 91
    .line 92
    invoke-static {v2, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    const-string v11, "localPath"

    .line 97
    .line 98
    invoke-static {v2, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const-string v12, "ops"

    .line 103
    .line 104
    invoke-static {v2, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    const-string v13, "resourceId"

    .line 109
    .line 110
    invoke-static {v2, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    const-string v14, "postId"

    .line 115
    .line 116
    invoke-static {v2, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    const-string v15, "subjectId"

    .line 121
    .line 122
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    move/from16 p0, v15

    .line 127
    .line 128
    const-string v15, "groupId"

    .line 129
    .line 130
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    move/from16 p1, v15

    .line 135
    .line 136
    const-string v15, "status"

    .line 137
    .line 138
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    move/from16 p2, v15

    .line 143
    .line 144
    const-string v15, "subjectTitle"

    .line 145
    .line 146
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    move/from16 v16, v15

    .line 151
    .line 152
    const-string v15, "se"

    .line 153
    .line 154
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v15

    .line 158
    move/from16 v17, v15

    .line 159
    .line 160
    const-string v15, "ep"

    .line 161
    .line 162
    invoke-static {v2, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    invoke-interface {v2}, Ly3/e;->C0()Z

    .line 167
    .line 168
    .line 169
    move-result v18

    .line 170
    const/16 v19, 0x0

    .line 171
    .line 172
    if-eqz v18, :cond_13

    .line 173
    .line 174
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 175
    .line 176
    .line 177
    move-result v18

    .line 178
    if-eqz v18, :cond_2

    .line 179
    .line 180
    move-object/from16 v21, v19

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_2
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    move-object/from16 v21, v0

    .line 188
    .line 189
    :goto_2
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    move-object/from16 v22, v19

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object/from16 v22, v0

    .line 203
    .line 204
    :goto_3
    invoke-interface {v2, v3}, Ly3/e;->isNull(I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    move-object/from16 v23, v19

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_4
    invoke-interface {v2, v3}, Ly3/e;->getLong(I)J

    .line 214
    .line 215
    .line 216
    move-result-wide v0

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    move-object/from16 v23, v0

    .line 222
    .line 223
    :goto_4
    invoke-interface {v2, v4}, Ly3/e;->isNull(I)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_5

    .line 228
    .line 229
    move-object/from16 v24, v19

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_5
    invoke-interface {v2, v4}, Ly3/e;->getLong(I)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object/from16 v24, v0

    .line 241
    .line 242
    :goto_5
    invoke-interface {v2, v5}, Ly3/e;->isNull(I)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_6

    .line 247
    .line 248
    move-object/from16 v25, v19

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_6
    invoke-interface {v2, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object/from16 v25, v0

    .line 256
    .line 257
    :goto_6
    invoke-interface {v2, v6}, Ly3/e;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_7

    .line 262
    .line 263
    move-object/from16 v26, v19

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_7
    invoke-interface {v2, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    move-object/from16 v26, v0

    .line 271
    .line 272
    :goto_7
    invoke-interface {v2, v7}, Ly3/e;->isNull(I)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_8

    .line 277
    .line 278
    move-object/from16 v27, v19

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_8
    invoke-interface {v2, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    move-object/from16 v27, v0

    .line 286
    .line 287
    :goto_8
    invoke-interface {v2, v8}, Ly3/e;->isNull(I)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_9

    .line 292
    .line 293
    move-object/from16 v28, v19

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_9
    invoke-interface {v2, v8}, Ly3/e;->getLong(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v0

    .line 300
    long-to-int v0, v0

    .line 301
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    move-object/from16 v28, v0

    .line 306
    .line 307
    :goto_9
    invoke-interface {v2, v9}, Ly3/e;->isNull(I)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_a

    .line 312
    .line 313
    move-object/from16 v29, v19

    .line 314
    .line 315
    goto :goto_a

    .line 316
    :cond_a
    invoke-interface {v2, v9}, Ly3/e;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v0

    .line 320
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    move-object/from16 v29, v0

    .line 325
    .line 326
    :goto_a
    invoke-interface {v2, v10}, Ly3/e;->isNull(I)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_b

    .line 331
    .line 332
    move-object/from16 v30, v19

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_b
    invoke-interface {v2, v10}, Ly3/e;->getLong(I)J

    .line 336
    .line 337
    .line 338
    move-result-wide v0

    .line 339
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    move-object/from16 v30, v0

    .line 344
    .line 345
    :goto_b
    invoke-interface {v2, v11}, Ly3/e;->isNull(I)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_c

    .line 350
    .line 351
    move-object/from16 v31, v19

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_c
    invoke-interface {v2, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    move-object/from16 v31, v0

    .line 359
    .line 360
    :goto_c
    invoke-interface {v2, v12}, Ly3/e;->isNull(I)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_d

    .line 365
    .line 366
    move-object/from16 v32, v19

    .line 367
    .line 368
    goto :goto_d

    .line 369
    :cond_d
    invoke-interface {v2, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    move-object/from16 v32, v0

    .line 374
    .line 375
    :goto_d
    invoke-interface {v2, v13}, Ly3/e;->isNull(I)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_e

    .line 380
    .line 381
    move-object/from16 v33, v19

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_e
    invoke-interface {v2, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    move-object/from16 v33, v0

    .line 389
    .line 390
    :goto_e
    invoke-interface {v2, v14}, Ly3/e;->isNull(I)Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_f

    .line 395
    .line 396
    move/from16 v0, p0

    .line 397
    .line 398
    move-object/from16 v34, v19

    .line 399
    .line 400
    goto :goto_f

    .line 401
    :cond_f
    invoke-interface {v2, v14}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    move-object/from16 v34, v0

    .line 406
    .line 407
    move/from16 v0, p0

    .line 408
    .line 409
    :goto_f
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_10

    .line 414
    .line 415
    move/from16 v0, p1

    .line 416
    .line 417
    move-object/from16 v35, v19

    .line 418
    .line 419
    goto :goto_10

    .line 420
    :cond_10
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    move-object/from16 v35, v0

    .line 425
    .line 426
    move/from16 v0, p1

    .line 427
    .line 428
    :goto_10
    invoke-interface {v2, v0}, Ly3/e;->isNull(I)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_11

    .line 433
    .line 434
    move/from16 v0, p2

    .line 435
    .line 436
    move-object/from16 v36, v19

    .line 437
    .line 438
    goto :goto_11

    .line 439
    :cond_11
    invoke-interface {v2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    move-object/from16 v36, v0

    .line 444
    .line 445
    move/from16 v0, p2

    .line 446
    .line 447
    :goto_11
    invoke-interface {v2, v0}, Ly3/e;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v0

    .line 451
    long-to-int v0, v0

    .line 452
    move/from16 v1, v16

    .line 453
    .line 454
    invoke-interface {v2, v1}, Ly3/e;->isNull(I)Z

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-eqz v3, :cond_12

    .line 459
    .line 460
    :goto_12
    move/from16 v1, v17

    .line 461
    .line 462
    move-object/from16 v38, v19

    .line 463
    .line 464
    goto :goto_13

    .line 465
    :cond_12
    invoke-interface {v2, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v19

    .line 469
    goto :goto_12

    .line 470
    :goto_13
    invoke-interface {v2, v1}, Ly3/e;->getLong(I)J

    .line 471
    .line 472
    .line 473
    move-result-wide v3

    .line 474
    long-to-int v1, v3

    .line 475
    invoke-interface {v2, v15}, Ly3/e;->getLong(I)J

    .line 476
    .line 477
    .line 478
    move-result-wide v3

    .line 479
    long-to-int v3, v3

    .line 480
    new-instance v19, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 481
    .line 482
    move-object/from16 v20, v19

    .line 483
    .line 484
    move/from16 v37, v0

    .line 485
    .line 486
    move/from16 v39, v1

    .line 487
    .line 488
    move/from16 v40, v3

    .line 489
    .line 490
    invoke-direct/range {v20 .. v40}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .line 492
    .line 493
    :cond_13
    invoke-interface {v2}, Ly3/e;->close()V

    .line 494
    .line 495
    .line 496
    return-object v19

    .line 497
    :goto_14
    invoke-interface {v2}, Ly3/e;->close()V

    .line 498
    .line 499
    .line 500
    throw v0
.end method

.method private static synthetic v(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/audio/AudioBean;
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM Audio WHERE resourceId = ?"

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
    goto/16 :goto_13

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const-string v0, "audioId"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "cover"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "duration"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "size"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "url"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "title"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "desc"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "bitrate"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "updateTimeStamp"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "readProcess"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "localPath"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "ops"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "resourceId"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "postId"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "subjectId"

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
    const-string v15, "groupId"

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
    const-string v15, "status"

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
    const-string v15, "subjectTitle"

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
    const-string v15, "se"

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
    const-string v15, "ep"

    .line 149
    .line 150
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 155
    .line 156
    .line 157
    move-result v19

    .line 158
    const/16 v20, 0x0

    .line 159
    .line 160
    if-eqz v19, :cond_12

    .line 161
    .line 162
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 163
    .line 164
    .line 165
    move-result v19

    .line 166
    if-eqz v19, :cond_1

    .line 167
    .line 168
    move-object/from16 v22, v20

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object/from16 v22, v0

    .line 176
    .line 177
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    .line 183
    move-object/from16 v23, v20

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_2
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object/from16 v23, v0

    .line 191
    .line 192
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    .line 198
    move-object/from16 v24, v20

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v24, v0

    .line 210
    .line 211
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    move-object/from16 v25, v20

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_4
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 221
    .line 222
    .line 223
    move-result-wide v2

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    move-object/from16 v25, v0

    .line 229
    .line 230
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_5

    .line 235
    .line 236
    move-object/from16 v26, v20

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_5
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    move-object/from16 v26, v0

    .line 244
    .line 245
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    move-object/from16 v27, v20

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_6
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    move-object/from16 v27, v0

    .line 259
    .line 260
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    move-object/from16 v28, v20

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_7
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    move-object/from16 v28, v0

    .line 274
    .line 275
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_8

    .line 280
    .line 281
    move-object/from16 v29, v20

    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_8
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    long-to-int v0, v2

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    move-object/from16 v29, v0

    .line 294
    .line 295
    :goto_8
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    move-object/from16 v30, v20

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_9
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    move-object/from16 v30, v0

    .line 313
    .line 314
    :goto_9
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_a

    .line 319
    .line 320
    move-object/from16 v31, v20

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_a
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    move-object/from16 v31, v0

    .line 332
    .line 333
    :goto_a
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_b

    .line 338
    .line 339
    move-object/from16 v32, v20

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_b
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    move-object/from16 v32, v0

    .line 347
    .line 348
    :goto_b
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_c

    .line 353
    .line 354
    move-object/from16 v33, v20

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_c
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    move-object/from16 v33, v0

    .line 362
    .line 363
    :goto_c
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    move-object/from16 v34, v20

    .line 370
    .line 371
    goto :goto_d

    .line 372
    :cond_d
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object/from16 v34, v0

    .line 377
    .line 378
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_e

    .line 383
    .line 384
    move/from16 v0, p0

    .line 385
    .line 386
    move-object/from16 v35, v20

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_e
    invoke-interface {v1, v14}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    move-object/from16 v35, v0

    .line 394
    .line 395
    move/from16 v0, p0

    .line 396
    .line 397
    :goto_e
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_f

    .line 402
    .line 403
    move/from16 v0, p1

    .line 404
    .line 405
    move-object/from16 v36, v20

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_f
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    move-object/from16 v36, v0

    .line 413
    .line 414
    move/from16 v0, p1

    .line 415
    .line 416
    :goto_f
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_10

    .line 421
    .line 422
    move/from16 v0, v16

    .line 423
    .line 424
    move-object/from16 v37, v20

    .line 425
    .line 426
    goto :goto_10

    .line 427
    :cond_10
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    move-object/from16 v37, v0

    .line 432
    .line 433
    move/from16 v0, v16

    .line 434
    .line 435
    :goto_10
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 436
    .line 437
    .line 438
    move-result-wide v2

    .line 439
    long-to-int v0, v2

    .line 440
    move/from16 v2, v17

    .line 441
    .line 442
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-eqz v3, :cond_11

    .line 447
    .line 448
    :goto_11
    move/from16 v2, v18

    .line 449
    .line 450
    move-object/from16 v39, v20

    .line 451
    .line 452
    goto :goto_12

    .line 453
    :cond_11
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v20

    .line 457
    goto :goto_11

    .line 458
    :goto_12
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v2

    .line 462
    long-to-int v2, v2

    .line 463
    invoke-interface {v1, v15}, Ly3/e;->getLong(I)J

    .line 464
    .line 465
    .line 466
    move-result-wide v3

    .line 467
    long-to-int v3, v3

    .line 468
    new-instance v20, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 469
    .line 470
    move-object/from16 v21, v20

    .line 471
    .line 472
    move/from16 v38, v0

    .line 473
    .line 474
    move/from16 v40, v2

    .line 475
    .line 476
    move/from16 v41, v3

    .line 477
    .line 478
    invoke-direct/range {v21 .. v41}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .line 480
    .line 481
    :cond_12
    invoke-interface {v1}, Ly3/e;->close()V

    .line 482
    .line 483
    .line 484
    return-object v20

    .line 485
    :goto_13
    invoke-interface {v1}, Ly3/e;->close()V

    .line 486
    .line 487
    .line 488
    throw v0
.end method

.method private static synthetic w(Ly3/b;)Ljava/util/List;
    .locals 46

    .line 1
    const-string v0, "SELECT * FROM Audio ORDER BY updateTimeStamp DESC"

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
    const-string v0, "audioId"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "cover"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "duration"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "size"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "url"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "title"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "desc"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "bitrate"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "updateTimeStamp"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "readProcess"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "localPath"

    .line 70
    .line 71
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const-string v12, "ops"

    .line 76
    .line 77
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    const-string v13, "resourceId"

    .line 82
    .line 83
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    const-string v14, "postId"

    .line 88
    .line 89
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const-string v15, "subjectId"

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
    const-string v15, "groupId"

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
    const-string v15, "status"

    .line 110
    .line 111
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v15

    .line 115
    move/from16 v17, v15

    .line 116
    .line 117
    const-string v15, "subjectTitle"

    .line 118
    .line 119
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    move/from16 v18, v15

    .line 124
    .line 125
    const-string v15, "se"

    .line 126
    .line 127
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    move/from16 v19, v15

    .line 132
    .line 133
    const-string v15, "ep"

    .line 134
    .line 135
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v15

    .line 139
    move/from16 v20, v15

    .line 140
    .line 141
    new-instance v15, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 147
    .line 148
    .line 149
    move-result v21

    .line 150
    if-eqz v21, :cond_11

    .line 151
    .line 152
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 153
    .line 154
    .line 155
    move-result v21

    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    if-eqz v21, :cond_0

    .line 159
    .line 160
    move-object/from16 v24, v22

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_0
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v21

    .line 167
    move-object/from16 v24, v21

    .line 168
    .line 169
    :goto_1
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 170
    .line 171
    .line 172
    move-result v21

    .line 173
    if-eqz v21, :cond_1

    .line 174
    .line 175
    move-object/from16 v25, v22

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_1
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v21

    .line 182
    move-object/from16 v25, v21

    .line 183
    .line 184
    :goto_2
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 185
    .line 186
    .line 187
    move-result v21

    .line 188
    if-eqz v21, :cond_2

    .line 189
    .line 190
    move-object/from16 v26, v22

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v26

    .line 197
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v21

    .line 201
    move-object/from16 v26, v21

    .line 202
    .line 203
    :goto_3
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 204
    .line 205
    .line 206
    move-result v21

    .line 207
    if-eqz v21, :cond_3

    .line 208
    .line 209
    move-object/from16 v27, v22

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 213
    .line 214
    .line 215
    move-result-wide v27

    .line 216
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v21

    .line 220
    move-object/from16 v27, v21

    .line 221
    .line 222
    :goto_4
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 223
    .line 224
    .line 225
    move-result v21

    .line 226
    if-eqz v21, :cond_4

    .line 227
    .line 228
    move-object/from16 v28, v22

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_4
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v21

    .line 235
    move-object/from16 v28, v21

    .line 236
    .line 237
    :goto_5
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 238
    .line 239
    .line 240
    move-result v21

    .line 241
    if-eqz v21, :cond_5

    .line 242
    .line 243
    move-object/from16 v29, v22

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_5
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v21

    .line 250
    move-object/from16 v29, v21

    .line 251
    .line 252
    :goto_6
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 253
    .line 254
    .line 255
    move-result v21

    .line 256
    if-eqz v21, :cond_6

    .line 257
    .line 258
    move-object/from16 v30, v22

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_6
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v21

    .line 265
    move-object/from16 v30, v21

    .line 266
    .line 267
    :goto_7
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 268
    .line 269
    .line 270
    move-result v21

    .line 271
    if-eqz v21, :cond_7

    .line 272
    .line 273
    move/from16 v21, v2

    .line 274
    .line 275
    move/from16 v44, v3

    .line 276
    .line 277
    move-object/from16 v31, v22

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_7
    move/from16 v21, v2

    .line 281
    .line 282
    move/from16 v44, v3

    .line 283
    .line 284
    invoke-interface {v1, v8}, Ly3/e;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    long-to-int v2, v2

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    move-object/from16 v31, v2

    .line 294
    .line 295
    :goto_8
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_8

    .line 300
    .line 301
    move-object/from16 v32, v22

    .line 302
    .line 303
    goto :goto_9

    .line 304
    :cond_8
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    move-object/from16 v32, v2

    .line 313
    .line 314
    :goto_9
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_9

    .line 319
    .line 320
    move-object/from16 v33, v22

    .line 321
    .line 322
    goto :goto_a

    .line 323
    :cond_9
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    move-object/from16 v33, v2

    .line 332
    .line 333
    :goto_a
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_a

    .line 338
    .line 339
    move-object/from16 v34, v22

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_a
    invoke-interface {v1, v11}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    move-object/from16 v34, v2

    .line 347
    .line 348
    :goto_b
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_b

    .line 353
    .line 354
    move-object/from16 v35, v22

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_b
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    move-object/from16 v35, v2

    .line 362
    .line 363
    :goto_c
    invoke-interface {v1, v13}, Ly3/e;->isNull(I)Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-eqz v2, :cond_c

    .line 368
    .line 369
    move-object/from16 v36, v22

    .line 370
    .line 371
    goto :goto_d

    .line 372
    :cond_c
    invoke-interface {v1, v13}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    move-object/from16 v36, v2

    .line 377
    .line 378
    :goto_d
    invoke-interface {v1, v14}, Ly3/e;->isNull(I)Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eqz v2, :cond_d

    .line 383
    .line 384
    move/from16 v2, p0

    .line 385
    .line 386
    move-object/from16 v37, v22

    .line 387
    .line 388
    goto :goto_e

    .line 389
    :cond_d
    invoke-interface {v1, v14}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    move-object/from16 v37, v2

    .line 394
    .line 395
    move/from16 v2, p0

    .line 396
    .line 397
    :goto_e
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_e

    .line 402
    .line 403
    move/from16 v3, v16

    .line 404
    .line 405
    move-object/from16 v38, v22

    .line 406
    .line 407
    goto :goto_f

    .line 408
    :cond_e
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    move-object/from16 v38, v3

    .line 413
    .line 414
    move/from16 v3, v16

    .line 415
    .line 416
    :goto_f
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 417
    .line 418
    .line 419
    move-result v16

    .line 420
    if-eqz v16, :cond_f

    .line 421
    .line 422
    move/from16 p0, v0

    .line 423
    .line 424
    move/from16 v16, v2

    .line 425
    .line 426
    move/from16 v0, v17

    .line 427
    .line 428
    move-object/from16 v39, v22

    .line 429
    .line 430
    :goto_10
    move/from16 v17, v3

    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_f
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v16

    .line 437
    move/from16 p0, v0

    .line 438
    .line 439
    move-object/from16 v39, v16

    .line 440
    .line 441
    move/from16 v0, v17

    .line 442
    .line 443
    move/from16 v16, v2

    .line 444
    .line 445
    goto :goto_10

    .line 446
    :goto_11
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 447
    .line 448
    .line 449
    move-result-wide v2

    .line 450
    long-to-int v2, v2

    .line 451
    move/from16 v3, v18

    .line 452
    .line 453
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 454
    .line 455
    .line 456
    move-result v18

    .line 457
    if-eqz v18, :cond_10

    .line 458
    .line 459
    :goto_12
    move/from16 v18, v0

    .line 460
    .line 461
    move/from16 v0, v19

    .line 462
    .line 463
    move-object/from16 v41, v22

    .line 464
    .line 465
    move/from16 v22, v3

    .line 466
    .line 467
    move/from16 v19, v4

    .line 468
    .line 469
    goto :goto_13

    .line 470
    :cond_10
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v22

    .line 474
    goto :goto_12

    .line 475
    :goto_13
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 476
    .line 477
    .line 478
    move-result-wide v3

    .line 479
    long-to-int v3, v3

    .line 480
    move/from16 v45, v6

    .line 481
    .line 482
    move/from16 v4, v20

    .line 483
    .line 484
    move/from16 v20, v5

    .line 485
    .line 486
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 487
    .line 488
    .line 489
    move-result-wide v5

    .line 490
    long-to-int v5, v5

    .line 491
    new-instance v6, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 492
    .line 493
    move-object/from16 v23, v6

    .line 494
    .line 495
    move/from16 v40, v2

    .line 496
    .line 497
    move/from16 v42, v3

    .line 498
    .line 499
    move/from16 v43, v5

    .line 500
    .line 501
    invoke-direct/range {v23 .. v43}, Lcom/transsion/baselib/db/audio/AudioBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    .line 506
    .line 507
    move/from16 v5, v20

    .line 508
    .line 509
    move/from16 v2, v21

    .line 510
    .line 511
    move/from16 v3, v44

    .line 512
    .line 513
    move/from16 v6, v45

    .line 514
    .line 515
    move/from16 v20, v4

    .line 516
    .line 517
    move/from16 v4, v19

    .line 518
    .line 519
    move/from16 v19, v0

    .line 520
    .line 521
    move/from16 v0, p0

    .line 522
    .line 523
    move/from16 p0, v16

    .line 524
    .line 525
    move/from16 v16, v17

    .line 526
    .line 527
    move/from16 v17, v18

    .line 528
    .line 529
    move/from16 v18, v22

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :catchall_0
    move-exception v0

    .line 534
    goto :goto_14

    .line 535
    :cond_11
    invoke-interface {v1}, Ly3/e;->close()V

    .line 536
    .line 537
    .line 538
    return-object v15

    .line 539
    :goto_14
    invoke-interface {v1}, Ly3/e;->close()V

    .line 540
    .line 541
    .line 542
    throw v0
.end method

.method private synthetic x(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lsi/j;->b:Landroidx/room/g;

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

.method private synthetic y(Lcom/transsion/baselib/db/audio/AudioBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lsi/j;->d:Landroidx/room/e;

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
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsi/f;

    .line 4
    .line 5
    invoke-direct {v1}, Lsi/f;-><init>()V

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

.method public b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lsi/i;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lsi/i;-><init>(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

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

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsi/d;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lsi/d;-><init>(Ljava/lang/String;)V

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

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsi/g;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lsi/g;-><init>(Ljava/lang/String;)V

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

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsi/h;

    .line 4
    .line 5
    invoke-direct {v1}, Lsi/h;-><init>()V

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

.method public f(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lsi/e;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lsi/e;-><init>(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

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

.method public g(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lsi/b;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lsi/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

.method public h(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsi/j;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lsi/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lsi/c;-><init>(Lsi/j;Lcom/transsion/baselib/db/audio/AudioBean;)V

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
