.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvs/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    move-object v0, p2

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 11
    .line 12
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getApp(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->A1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-ne p1, p2, :cond_0

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1
.end method

.method public b(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    :goto_0
    move-object v11, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    invoke-direct {v1, v2, v0}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    const/4 v5, 0x2

    .line 43
    const-string v6, "getApp(...)"

    .line 44
    .line 45
    const/4 v12, 0x1

    .line 46
    const/4 v7, 0x0

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    if-eq v3, v12, :cond_3

    .line 50
    .line 51
    if-eq v3, v5, :cond_2

    .line 52
    .line 53
    if-ne v3, v4, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_2
    :goto_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_3
    iget-wide v8, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->J$0:J

    .line 70
    .line 71
    iget-object v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v10, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v10, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v13, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v13, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object v15, v3

    .line 87
    move-wide/from16 v17, v8

    .line 88
    .line 89
    move-object/from16 v16, v10

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move-object v3, v7

    .line 111
    :goto_3
    if-eqz v0, :cond_d

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_6

    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_6
    if-eqz v3, :cond_d

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_7

    .line 128
    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :cond_7
    sget-object v8, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 132
    .line 133
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v9}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v8}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    move-object/from16 v9, p1

    .line 149
    .line 150
    iput-object v9, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v0, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v3, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    .line 155
    .line 156
    move-wide/from16 v13, p2

    .line 157
    .line 158
    iput-wide v13, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->J$0:J

    .line 159
    .line 160
    iput v12, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 161
    .line 162
    invoke-interface {v8, v3, v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    if-ne v8, v1, :cond_8

    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_8
    move-object/from16 v16, v0

    .line 170
    .line 171
    move-object v15, v3

    .line 172
    move-object v0, v8

    .line 173
    move-wide/from16 v17, v13

    .line 174
    .line 175
    move-object v13, v9

    .line 176
    :goto_4
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 177
    .line 178
    if-nez v0, :cond_b

    .line 179
    .line 180
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDurationMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v3

    .line 184
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v19

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v28

    .line 192
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object/from16 v20, v0

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_9
    move-object/from16 v20, v7

    .line 206
    .line 207
    :goto_5
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-eqz v0, :cond_a

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    move-object/from16 v21, v0

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_a
    move-object/from16 v21, v7

    .line 221
    .line 222
    :goto_6
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCategory()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v23

    .line 226
    sget-object v0, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v36

    .line 232
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getOps()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v47

    .line 236
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 237
    .line 238
    .line 239
    move-result v22

    .line 240
    sget-object v0, Lij/o;->a:Lij/o;

    .line 241
    .line 242
    invoke-virtual {v0}, Lij/o;->d()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v53

    .line 246
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 247
    .line 248
    move-object v14, v0

    .line 249
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 250
    .line 251
    .line 252
    move-result-object v31

    .line 253
    const/16 v55, 0x7

    .line 254
    .line 255
    const/16 v56, 0x0

    .line 256
    .line 257
    const/16 v24, 0x0

    .line 258
    .line 259
    const/16 v25, 0x0

    .line 260
    .line 261
    const/16 v26, 0x0

    .line 262
    .line 263
    const/16 v27, 0x0

    .line 264
    .line 265
    const/16 v30, 0x0

    .line 266
    .line 267
    const/16 v32, 0x0

    .line 268
    .line 269
    const/16 v33, 0x0

    .line 270
    .line 271
    const/16 v34, 0x0

    .line 272
    .line 273
    const/16 v35, 0x0

    .line 274
    .line 275
    const/16 v37, 0x0

    .line 276
    .line 277
    const/16 v38, 0x0

    .line 278
    .line 279
    const/16 v39, 0x0

    .line 280
    .line 281
    const-wide/16 v40, 0x0

    .line 282
    .line 283
    const/16 v42, 0x0

    .line 284
    .line 285
    const/16 v43, 0x0

    .line 286
    .line 287
    const/16 v44, 0x0

    .line 288
    .line 289
    const/16 v45, 0x0

    .line 290
    .line 291
    const/16 v46, 0x0

    .line 292
    .line 293
    const/16 v48, 0x0

    .line 294
    .line 295
    const/16 v49, 0x0

    .line 296
    .line 297
    const/16 v50, 0x0

    .line 298
    .line 299
    const/16 v51, 0x0

    .line 300
    .line 301
    const/16 v52, 0x0

    .line 302
    .line 303
    const v54, -0x20085100

    .line 304
    .line 305
    .line 306
    invoke-direct/range {v14 .. v56}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 307
    .line 308
    .line 309
    sget-object v3, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 310
    .line 311
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-virtual {v3}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    .line 331
    .line 332
    iput v5, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 333
    .line 334
    invoke-interface {v3, v0, v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-ne v0, v1, :cond_c

    .line 339
    .line 340
    return-object v1

    .line 341
    :cond_b
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 342
    .line 343
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    .line 360
    .line 361
    move-result-wide v8

    .line 362
    invoke-virtual {v13}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$0:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$1:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v7, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->L$2:Ljava/lang/Object;

    .line 371
    .line 372
    iput v4, v11, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$saveHistory$1;->label:I

    .line 373
    .line 374
    move-object v4, v15

    .line 375
    move-object/from16 v5, v16

    .line 376
    .line 377
    move-wide v6, v8

    .line 378
    move-wide/from16 v8, v17

    .line 379
    .line 380
    invoke-interface/range {v3 .. v11}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-ne v0, v1, :cond_c

    .line 385
    .line 386
    return-object v1

    .line 387
    :cond_c
    :goto_7
    new-instance v0, Lyw/e;

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    invoke-direct {v0, v12, v1}, Lyw/e;-><init>(ZZ)V

    .line 391
    .line 392
    .line 393
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 394
    .line 395
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 396
    .line 397
    invoke-virtual {v1, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 402
    .line 403
    const-class v3, Lyw/e;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    const-string v4, "getName(...)"

    .line 410
    .line 411
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    const-wide/16 v4, 0x0

    .line 415
    .line 416
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 417
    .line 418
    .line 419
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 420
    .line 421
    return-object v0

    .line 422
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 423
    .line 424
    return-object v0
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;

    .line 27
    .line 28
    move-object/from16 v3, p0

    .line 29
    .line 30
    invoke-direct {v2, v3, v1}, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;-><init>(Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget v5, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    const/4 v7, 0x2

    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    if-eq v5, v8, :cond_3

    .line 48
    .line 49
    if-eq v5, v7, :cond_2

    .line 50
    .line 51
    if-ne v5, v6, :cond_1

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    iget-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    .line 77
    .line 78
    iget-object v5, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v5, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v38, v1

    .line 86
    .line 87
    move-object v1, v0

    .line 88
    move-object v0, v5

    .line 89
    move-object/from16 v5, v38

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    return-object v9

    .line 98
    :cond_5
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 99
    .line 100
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v10, "getApp(...)"

    .line 105
    .line 106
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v5}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iput-object v0, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    .line 120
    .line 121
    iput v8, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 122
    .line 123
    invoke-interface {v5, v0, v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-ne v5, v4, :cond_6

    .line 128
    .line 129
    return-object v4

    .line 130
    :cond_6
    :goto_1
    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 131
    .line 132
    if-nez v5, :cond_a

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/transsion/baselib/db/AppDatabase;->A1()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iput-object v1, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v9, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$1:Ljava/lang/Object;

    .line 141
    .line 142
    iput v7, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 143
    .line 144
    invoke-interface {v5, v0, v2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-ne v0, v4, :cond_7

    .line 149
    .line 150
    return-object v4

    .line 151
    :cond_7
    move-object/from16 v38, v1

    .line 152
    .line 153
    move-object v1, v0

    .line 154
    move-object/from16 v0, v38

    .line 155
    .line 156
    :goto_2
    check-cast v1, Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v9, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    iput v6, v2, Lcom/transsion/postdetail/shorttv_pugc/factory/PugcShortTvHistoryProvider$getHistory$1;->label:I

    .line 167
    .line 168
    invoke-interface {v0, v1, v2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-ne v1, v4, :cond_8

    .line 173
    .line 174
    return-object v4

    .line 175
    :cond_8
    :goto_3
    move-object v5, v1

    .line 176
    check-cast v5, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_9
    move-object v5, v9

    .line 180
    :cond_a
    :goto_4
    if-eqz v5, :cond_b

    .line 181
    .line 182
    new-instance v9, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    .line 183
    .line 184
    move-object v10, v9

    .line 185
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    .line 194
    .line 195
    .line 196
    move-result-wide v13

    .line 197
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v17

    .line 209
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getPosition()I

    .line 210
    .line 211
    .line 212
    move-result v18

    .line 213
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getType()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v19

    .line 217
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTimeStamp()J

    .line 218
    .line 219
    .line 220
    move-result-wide v20

    .line 221
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v22

    .line 225
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v23

    .line 229
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v24

    .line 233
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getAverageHueLight()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v25

    .line 237
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v26

    .line 241
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getHasDelete()Z

    .line 242
    .line 243
    .line 244
    move-result v27

    .line 245
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadUrl()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v28

    .line 249
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadResid()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v29

    .line 253
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v30

    .line 257
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDownloadSize()J

    .line 258
    .line 259
    .line 260
    move-result-wide v31

    .line 261
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdStartTimeStamp()Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v33

    .line 265
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getLastAdEndTimeStamp()Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v34

    .line 269
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardPlayed()Z

    .line 270
    .line 271
    .line 272
    move-result v35

    .line 273
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardUnlock()Z

    .line 274
    .line 275
    .line 276
    move-result v36

    .line 277
    invoke-virtual {v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getRewardFree()Z

    .line 278
    .line 279
    .line 280
    move-result v37

    .line 281
    invoke-direct/range {v10 .. v37}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZ)V

    .line 282
    .line 283
    .line 284
    :cond_b
    return-object v9
.end method
