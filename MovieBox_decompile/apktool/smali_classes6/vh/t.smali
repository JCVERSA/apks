.class public final Lvh/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvh/l;


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
    iput-object p1, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lvh/t$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lvh/t$a;-><init>(Lvh/t;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lvh/t;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lvh/t$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lvh/t$b;-><init>(Lvh/t;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lvh/t;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic h(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lvh/t;->q(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Ly3/b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvh/t;->r(Ljava/lang/String;Ly3/b;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvh/t;->t(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lvh/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvh/t;->v(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lvh/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvh/t;->u(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lvh/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(ILy3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvh/t;->s(ILy3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

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

.method private static synthetic p(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-interface {p3, p0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p3, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p0, p3}, Ly3/e;->g(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_3

    .line 14
    :cond_0
    invoke-interface {p0, p3, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x2

    .line 22
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Ljava/lang/Integer;

    .line 33
    .line 34
    if-nez p3, :cond_1

    .line 35
    .line 36
    invoke-interface {p0, p2}, Ly3/e;->g(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    int-to-long v0, p3

    .line 45
    invoke-interface {p0, p2, v0, v1}, Ly3/e;->c(IJ)V

    .line 46
    .line 47
    .line 48
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 52
    .line 53
    .line 54
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    invoke-interface {p0}, Ly3/e;->close()V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :goto_3
    invoke-interface {p0}, Ly3/e;->close()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method private static synthetic q(Ly3/b;)Ljava/util/List;
    .locals 38

    .line 1
    const-string v0, "SELECT * FROM ps_link_ad"

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
    const-string v0, "id"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "nonId"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "adSource"

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "extAdSlot"

    .line 28
    .line 29
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "rank"

    .line 34
    .line 35
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const-string v6, "psPlanId"

    .line 40
    .line 41
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, "psLinkAdInfoStr"

    .line 46
    .line 47
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const-string v8, "psInfoJson"

    .line 52
    .line 53
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const-string v9, "updateTimestamp"

    .line 58
    .line 59
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    const-string v10, "showMax"

    .line 64
    .line 65
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    const-string v11, "clickMax"

    .line 70
    .line 71
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    const-string v12, "showHours"

    .line 76
    .line 77
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v12

    .line 81
    const-string v13, "showedTimes"

    .line 82
    .line 83
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    const-string v14, "clickedTimes"

    .line 88
    .line 89
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const-string v15, "showDate"

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
    new-instance v15, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    if-eqz v16, :cond_b

    .line 111
    .line 112
    move/from16 v16, v14

    .line 113
    .line 114
    move-object/from16 v17, v15

    .line 115
    .line 116
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v14

    .line 120
    long-to-int v14, v14

    .line 121
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    if-eqz v15, :cond_0

    .line 128
    .line 129
    move-object/from16 v20, v18

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    move-object/from16 v20, v15

    .line 137
    .line 138
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    if-eqz v15, :cond_1

    .line 143
    .line 144
    move-object/from16 v21, v18

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    move-object/from16 v21, v15

    .line 152
    .line 153
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    if-eqz v15, :cond_2

    .line 158
    .line 159
    move v15, v2

    .line 160
    move/from16 v34, v3

    .line 161
    .line 162
    move-object/from16 v22, v18

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_2
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    move/from16 v34, v3

    .line 170
    .line 171
    move-object/from16 v22, v15

    .line 172
    .line 173
    move v15, v2

    .line 174
    :goto_3
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    long-to-int v2, v2

    .line 179
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_3

    .line 184
    .line 185
    move-object/from16 v24, v18

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_3
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    move-object/from16 v24, v3

    .line 193
    .line 194
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_4

    .line 199
    .line 200
    move-object/from16 v25, v18

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_4
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    move-object/from16 v25, v3

    .line 208
    .line 209
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_5

    .line 214
    .line 215
    move-object/from16 v26, v18

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_5
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object/from16 v26, v3

    .line 223
    .line 224
    :goto_6
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_6

    .line 229
    .line 230
    move-object/from16 v27, v18

    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v27

    .line 237
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    move-object/from16 v27, v3

    .line 242
    .line 243
    :goto_7
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_7

    .line 248
    .line 249
    move/from16 v35, v4

    .line 250
    .line 251
    move-object/from16 v28, v18

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_7
    move/from16 v35, v4

    .line 255
    .line 256
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v3

    .line 260
    long-to-int v3, v3

    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    move-object/from16 v28, v3

    .line 266
    .line 267
    :goto_8
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_8

    .line 272
    .line 273
    move-object/from16 v29, v18

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    long-to-int v3, v3

    .line 281
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    move-object/from16 v29, v3

    .line 286
    .line 287
    :goto_9
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_9

    .line 292
    .line 293
    move-object/from16 v30, v18

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    move-object/from16 v30, v3

    .line 301
    .line 302
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 303
    .line 304
    .line 305
    move-result-wide v3

    .line 306
    long-to-int v3, v3

    .line 307
    move/from16 v36, v6

    .line 308
    .line 309
    move/from16 v4, v16

    .line 310
    .line 311
    move/from16 v16, v5

    .line 312
    .line 313
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 314
    .line 315
    .line 316
    move-result-wide v5

    .line 317
    long-to-int v5, v5

    .line 318
    move/from16 v6, p0

    .line 319
    .line 320
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 321
    .line 322
    .line 323
    move-result v19

    .line 324
    if-eqz v19, :cond_a

    .line 325
    .line 326
    :goto_b
    move/from16 p0, v0

    .line 327
    .line 328
    move-object/from16 v33, v18

    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_a
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v18

    .line 335
    goto :goto_b

    .line 336
    :goto_c
    new-instance v0, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 337
    .line 338
    move-object/from16 v18, v0

    .line 339
    .line 340
    move/from16 v19, v14

    .line 341
    .line 342
    move/from16 v23, v2

    .line 343
    .line 344
    move/from16 v31, v3

    .line 345
    .line 346
    move/from16 v32, v5

    .line 347
    .line 348
    invoke-direct/range {v18 .. v33}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    move-object/from16 v2, v17

    .line 352
    .line 353
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .line 355
    .line 356
    move/from16 v0, p0

    .line 357
    .line 358
    move v14, v4

    .line 359
    move/from16 p0, v6

    .line 360
    .line 361
    move/from16 v5, v16

    .line 362
    .line 363
    move/from16 v3, v34

    .line 364
    .line 365
    move/from16 v4, v35

    .line 366
    .line 367
    move/from16 v6, v36

    .line 368
    .line 369
    move/from16 v37, v15

    .line 370
    .line 371
    move-object v15, v2

    .line 372
    move/from16 v2, v37

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :catchall_0
    move-exception v0

    .line 377
    goto :goto_d

    .line 378
    :cond_b
    move-object v2, v15

    .line 379
    invoke-interface {v1}, Ly3/e;->close()V

    .line 380
    .line 381
    .line 382
    return-object v2

    .line 383
    :goto_d
    invoke-interface {v1}, Ly3/e;->close()V

    .line 384
    .line 385
    .line 386
    throw v0
.end method

.method private static synthetic r(Ljava/lang/String;Ly3/b;)Ljava/lang/Integer;
    .locals 2

    .line 1
    const-string v0, "SELECT COUNT(*) FROM ps_link_ad WHERE extAdSlot = ?"

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
    long-to-int p0, v0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_2
    :goto_1
    invoke-interface {p1}, Ly3/e;->close()V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :goto_2
    invoke-interface {p1}, Ly3/e;->close()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method private static synthetic s(ILy3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 34

    .line 1
    const-string v0, "SELECT * FROM ps_link_ad WHERE id =?"

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
    const-string v2, "nonId"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "adSource"

    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const-string v4, "extAdSlot"

    .line 35
    .line 36
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string v5, "rank"

    .line 41
    .line 42
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-string v6, "psPlanId"

    .line 47
    .line 48
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const-string v7, "psLinkAdInfoStr"

    .line 53
    .line 54
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const-string v8, "psInfoJson"

    .line 59
    .line 60
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v9, "updateTimestamp"

    .line 65
    .line 66
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    const-string v10, "showMax"

    .line 71
    .line 72
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const-string v11, "clickMax"

    .line 77
    .line 78
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    const-string v12, "showHours"

    .line 83
    .line 84
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const-string v13, "showedTimes"

    .line 89
    .line 90
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    const-string v14, "clickedTimes"

    .line 95
    .line 96
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const-string v15, "showDate"

    .line 101
    .line 102
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    if-eqz v16, :cond_b

    .line 113
    .line 114
    move/from16 p0, v14

    .line 115
    .line 116
    move/from16 p1, v15

    .line 117
    .line 118
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    long-to-int v0, v14

    .line 123
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    if-eqz v14, :cond_0

    .line 128
    .line 129
    move-object/from16 v20, v17

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object/from16 v20, v2

    .line 137
    .line 138
    :goto_0
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_1

    .line 143
    .line 144
    move-object/from16 v21, v17

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_1
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    move-object/from16 v21, v2

    .line 152
    .line 153
    :goto_1
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_2

    .line 158
    .line 159
    move-object/from16 v22, v17

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_2
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object/from16 v22, v2

    .line 167
    .line 168
    :goto_2
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    long-to-int v2, v2

    .line 173
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_3

    .line 178
    .line 179
    move-object/from16 v24, v17

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_3
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object/from16 v24, v3

    .line 187
    .line 188
    :goto_3
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_4

    .line 193
    .line 194
    move-object/from16 v25, v17

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_4
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    move-object/from16 v25, v3

    .line 202
    .line 203
    :goto_4
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_5

    .line 208
    .line 209
    move-object/from16 v26, v17

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_5
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    move-object/from16 v26, v3

    .line 217
    .line 218
    :goto_5
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_6

    .line 223
    .line 224
    move-object/from16 v27, v17

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_6
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object/from16 v27, v3

    .line 236
    .line 237
    :goto_6
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_7

    .line 242
    .line 243
    move-object/from16 v28, v17

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_7
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 247
    .line 248
    .line 249
    move-result-wide v3

    .line 250
    long-to-int v3, v3

    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    move-object/from16 v28, v3

    .line 256
    .line 257
    :goto_7
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_8

    .line 262
    .line 263
    move-object/from16 v29, v17

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_8
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 267
    .line 268
    .line 269
    move-result-wide v3

    .line 270
    long-to-int v3, v3

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    move-object/from16 v29, v3

    .line 276
    .line 277
    :goto_8
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_9

    .line 282
    .line 283
    move-object/from16 v30, v17

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_9
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    move-object/from16 v30, v3

    .line 291
    .line 292
    :goto_9
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 293
    .line 294
    .line 295
    move-result-wide v3

    .line 296
    long-to-int v3, v3

    .line 297
    move/from16 v4, p0

    .line 298
    .line 299
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 300
    .line 301
    .line 302
    move-result-wide v4

    .line 303
    long-to-int v4, v4

    .line 304
    move/from16 v5, p1

    .line 305
    .line 306
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_a

    .line 311
    .line 312
    :goto_a
    move-object/from16 v33, v17

    .line 313
    .line 314
    goto :goto_b

    .line 315
    :cond_a
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v17

    .line 319
    goto :goto_a

    .line 320
    :goto_b
    new-instance v17, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 321
    .line 322
    move-object/from16 v18, v17

    .line 323
    .line 324
    move/from16 v19, v0

    .line 325
    .line 326
    move/from16 v23, v2

    .line 327
    .line 328
    move/from16 v31, v3

    .line 329
    .line 330
    move/from16 v32, v4

    .line 331
    .line 332
    invoke-direct/range {v18 .. v33}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .line 334
    .line 335
    goto :goto_c

    .line 336
    :catchall_0
    move-exception v0

    .line 337
    goto :goto_d

    .line 338
    :cond_b
    :goto_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 339
    .line 340
    .line 341
    return-object v17

    .line 342
    :goto_d
    invoke-interface {v1}, Ly3/e;->close()V

    .line 343
    .line 344
    .line 345
    throw v0
.end method

.method private static synthetic t(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/pslink/PsLinkAdPlan;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "SELECT * FROM ps_link_ad WHERE extAdSlot = ? ORDER BY updateTimestamp ASC LIMIT 1"

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
    goto/16 :goto_d

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
    const-string v2, "nonId"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "adSource"

    .line 37
    .line 38
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "extAdSlot"

    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "rank"

    .line 49
    .line 50
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const-string v6, "psPlanId"

    .line 55
    .line 56
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const-string v7, "psLinkAdInfoStr"

    .line 61
    .line 62
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v8, "psInfoJson"

    .line 67
    .line 68
    invoke-static {v1, v8}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const-string v9, "updateTimestamp"

    .line 73
    .line 74
    invoke-static {v1, v9}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const-string v10, "showMax"

    .line 79
    .line 80
    invoke-static {v1, v10}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "clickMax"

    .line 85
    .line 86
    invoke-static {v1, v11}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    const-string v12, "showHours"

    .line 91
    .line 92
    invoke-static {v1, v12}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    const-string v13, "showedTimes"

    .line 97
    .line 98
    invoke-static {v1, v13}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    const-string v14, "clickedTimes"

    .line 103
    .line 104
    invoke-static {v1, v14}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    const-string v15, "showDate"

    .line 109
    .line 110
    invoke-static {v1, v15}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 115
    .line 116
    .line 117
    move-result v16

    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    if-eqz v16, :cond_c

    .line 121
    .line 122
    move/from16 p0, v14

    .line 123
    .line 124
    move/from16 p1, v15

    .line 125
    .line 126
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v14

    .line 130
    long-to-int v0, v14

    .line 131
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-eqz v14, :cond_1

    .line 136
    .line 137
    move-object/from16 v20, v17

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object/from16 v20, v2

    .line 145
    .line 146
    :goto_1
    invoke-interface {v1, v3}, Ly3/e;->isNull(I)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    move-object/from16 v21, v17

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    invoke-interface {v1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    move-object/from16 v21, v2

    .line 160
    .line 161
    :goto_2
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_3

    .line 166
    .line 167
    move-object/from16 v22, v17

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    move-object/from16 v22, v2

    .line 175
    .line 176
    :goto_3
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    long-to-int v2, v2

    .line 181
    invoke-interface {v1, v6}, Ly3/e;->isNull(I)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    move-object/from16 v24, v17

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_4
    invoke-interface {v1, v6}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    move-object/from16 v24, v3

    .line 195
    .line 196
    :goto_4
    invoke-interface {v1, v7}, Ly3/e;->isNull(I)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_5

    .line 201
    .line 202
    move-object/from16 v25, v17

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_5
    invoke-interface {v1, v7}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    move-object/from16 v25, v3

    .line 210
    .line 211
    :goto_5
    invoke-interface {v1, v8}, Ly3/e;->isNull(I)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_6

    .line 216
    .line 217
    move-object/from16 v26, v17

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_6
    invoke-interface {v1, v8}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    move-object/from16 v26, v3

    .line 225
    .line 226
    :goto_6
    invoke-interface {v1, v9}, Ly3/e;->isNull(I)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    move-object/from16 v27, v17

    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_7
    invoke-interface {v1, v9}, Ly3/e;->getLong(I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v3

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    move-object/from16 v27, v3

    .line 244
    .line 245
    :goto_7
    invoke-interface {v1, v10}, Ly3/e;->isNull(I)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_8

    .line 250
    .line 251
    move-object/from16 v28, v17

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_8
    invoke-interface {v1, v10}, Ly3/e;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    long-to-int v3, v3

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    move-object/from16 v28, v3

    .line 264
    .line 265
    :goto_8
    invoke-interface {v1, v11}, Ly3/e;->isNull(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_9

    .line 270
    .line 271
    move-object/from16 v29, v17

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_9
    invoke-interface {v1, v11}, Ly3/e;->getLong(I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v3

    .line 278
    long-to-int v3, v3

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    move-object/from16 v29, v3

    .line 284
    .line 285
    :goto_9
    invoke-interface {v1, v12}, Ly3/e;->isNull(I)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_a

    .line 290
    .line 291
    move-object/from16 v30, v17

    .line 292
    .line 293
    goto :goto_a

    .line 294
    :cond_a
    invoke-interface {v1, v12}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    move-object/from16 v30, v3

    .line 299
    .line 300
    :goto_a
    invoke-interface {v1, v13}, Ly3/e;->getLong(I)J

    .line 301
    .line 302
    .line 303
    move-result-wide v3

    .line 304
    long-to-int v3, v3

    .line 305
    move/from16 v4, p0

    .line 306
    .line 307
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    long-to-int v4, v4

    .line 312
    move/from16 v5, p1

    .line 313
    .line 314
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-eqz v6, :cond_b

    .line 319
    .line 320
    :goto_b
    move-object/from16 v33, v17

    .line 321
    .line 322
    goto :goto_c

    .line 323
    :cond_b
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v17

    .line 327
    goto :goto_b

    .line 328
    :goto_c
    new-instance v17, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;

    .line 329
    .line 330
    move-object/from16 v18, v17

    .line 331
    .line 332
    move/from16 v19, v0

    .line 333
    .line 334
    move/from16 v23, v2

    .line 335
    .line 336
    move/from16 v31, v3

    .line 337
    .line 338
    move/from16 v32, v4

    .line 339
    .line 340
    invoke-direct/range {v18 .. v33}, Lcom/transsion/ad/db/pslink/PsLinkAdPlan;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    .line 342
    .line 343
    :cond_c
    invoke-interface {v1}, Ly3/e;->close()V

    .line 344
    .line 345
    .line 346
    return-object v17

    .line 347
    :goto_d
    invoke-interface {v1}, Ly3/e;->close()V

    .line 348
    .line 349
    .line 350
    throw v0
.end method

.method private synthetic u(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lvh/t;->b:Landroidx/room/g;

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

.method private synthetic v(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lvh/t;->c:Landroidx/room/e;

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
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvh/m;

    .line 4
    .line 5
    invoke-direct {v1}, Lvh/m;-><init>()V

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

.method public b(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvh/n;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvh/n;-><init>(Lvh/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

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
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvh/r;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lvh/r;-><init>(Ljava/lang/String;)V

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

.method public d(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\n"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "    DELETE FROM ps_link_ad "

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "    WHERE extAdSlot = "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "?"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "      AND id NOT IN ("

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v0, v2}, Landroidx/room/util/l;->a(Ljava/lang/StringBuilder;I)V

    .line 47
    .line 48
    .line 49
    const-string v2, ")"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 62
    .line 63
    new-instance v2, Lvh/s;

    .line 64
    .line 65
    invoke-direct {v2, v0, p1, p2}, Lvh/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    const/4 p2, 0x1

    .line 70
    invoke-static {v1, p1, p2, v2, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/pslink/PsLinkAdPlan;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvh/q;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvh/q;-><init>(Lvh/t;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V

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

.method public f(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvh/o;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lvh/o;-><init>(I)V

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

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvh/t;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvh/p;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lvh/p;-><init>(Ljava/lang/String;)V

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
