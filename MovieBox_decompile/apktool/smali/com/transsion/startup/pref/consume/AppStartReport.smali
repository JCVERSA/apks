.class public final Lcom/transsion/startup/pref/consume/AppStartReport;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/startup/pref/consume/AppStartReport;

.field private static b:Z

.field private static c:Z

.field private static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartReport;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/AppStartReport;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/startup/pref/consume/AppStartReport;->g(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic b(Lcom/transsion/startup/pref/consume/AppStartReport;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/AppStartReport;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method private final f()Ljava/util/Map;
    .locals 28

    .line 1
    const-string v0, "trending_render"

    .line 2
    .line 3
    const-string v1, "trending_create"

    .line 4
    .line 5
    const-string v2, "ad_rendering"

    .line 6
    .line 7
    const-string v3, "ad_end"

    .line 8
    .line 9
    const-string v4, "ad_loading"

    .line 10
    .line 11
    const-string v5, "splash_resume"

    .line 12
    .line 13
    const-string v6, "splash_start"

    .line 14
    .line 15
    const-string v7, "app_start"

    .line 16
    .line 17
    const-string v8, "trending_end"

    .line 18
    .line 19
    const-string v9, "main_create"

    .line 20
    .line 21
    const-string v10, "app_end"

    .line 22
    .line 23
    :try_start_0
    sget-object v12, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 24
    .line 25
    new-instance v12, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v13, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    check-cast v14, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 37
    .line 38
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v15

    .line 42
    check-cast v15, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 43
    .line 44
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v16

    .line 48
    check-cast v16, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 49
    .line 50
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    check-cast v13, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 55
    .line 56
    const-string v17, "cold"

    .line 57
    .line 58
    const-wide/16 v18, 0x0

    .line 59
    .line 60
    if-eqz v16, :cond_1

    .line 61
    .line 62
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 63
    .line 64
    .line 65
    move-result-wide v20

    .line 66
    if-eqz v15, :cond_0

    .line 67
    .line 68
    invoke-virtual {v15}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 69
    .line 70
    .line 71
    move-result-wide v22

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_b

    .line 75
    .line 76
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 77
    .line 78
    .line 79
    move-result-wide v22

    .line 80
    :goto_0
    sub-long v20, v20, v22

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-wide/from16 v20, v18

    .line 84
    .line 85
    :goto_1
    if-eqz v15, :cond_2

    .line 86
    .line 87
    invoke-virtual {v15}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 88
    .line 89
    .line 90
    move-result-wide v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move-wide/from16 v22, v18

    .line 93
    .line 94
    :goto_2
    cmp-long v15, v22, v18

    .line 95
    .line 96
    const-string v11, "warm"

    .line 97
    .line 98
    if-lez v15, :cond_4

    .line 99
    .line 100
    const-wide/16 v23, 0x2710

    .line 101
    .line 102
    cmp-long v15, v20, v23

    .line 103
    .line 104
    if-gtz v15, :cond_4

    .line 105
    .line 106
    cmp-long v15, v20, v18

    .line 107
    .line 108
    if-gtz v15, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move-object/from16 v15, v17

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    :goto_3
    move-object v15, v11

    .line 115
    :goto_4
    :try_start_1
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    move-object/from16 v17, v8

    .line 120
    .line 121
    const-string v8, "0"

    .line 122
    .line 123
    move-object/from16 v23, v0

    .line 124
    .line 125
    const-string v0, "act_app_gap"

    .line 126
    .line 127
    if-eqz v11, :cond_7

    .line 128
    .line 129
    if-eqz v13, :cond_6

    .line 130
    .line 131
    :try_start_2
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 132
    .line 133
    .line 134
    move-result-wide v20

    .line 135
    if-eqz v16, :cond_5

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 138
    .line 139
    .line 140
    move-result-wide v24

    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 143
    .line 144
    .line 145
    move-result-wide v24

    .line 146
    :goto_5
    sub-long v20, v20, v24

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_6
    move-wide/from16 v20, v18

    .line 150
    .line 151
    :goto_6
    invoke-interface {v12, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_9

    .line 155
    :cond_7
    if-eqz v13, :cond_9

    .line 156
    .line 157
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 158
    .line 159
    .line 160
    move-result-wide v24

    .line 161
    if-eqz v14, :cond_8

    .line 162
    .line 163
    invoke-virtual {v14}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 164
    .line 165
    .line 166
    move-result-wide v26

    .line 167
    goto :goto_7

    .line 168
    :cond_8
    invoke-virtual {v13}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 169
    .line 170
    .line 171
    move-result-wide v26

    .line 172
    :goto_7
    sub-long v24, v24, v26

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_9
    move-wide/from16 v24, v18

    .line 176
    .line 177
    :goto_8
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-wide/from16 v20, v24

    .line 185
    .line 186
    :goto_9
    cmp-long v0, v20, v18

    .line 187
    .line 188
    if-gtz v0, :cond_a

    .line 189
    .line 190
    const/4 v11, 0x0

    .line 191
    return-object v11

    .line 192
    :cond_a
    const-string v0, "total_time"

    .line 193
    .line 194
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v0, "type"

    .line 202
    .line 203
    sget-object v11, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 204
    .line 205
    invoke-virtual {v11}, Lcom/transsion/baselib/report/h;->d()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v0, "model"

    .line 213
    .line 214
    invoke-interface {v12, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    sget-object v0, Ltg/b;->a:Ltg/b;

    .line 218
    .line 219
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    const-string v13, "getApp(...)"

    .line 224
    .line 225
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v11}, Ltg/b;->k(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v11, "mem_size"

    .line 233
    .line 234
    move-object v13, v1

    .line 235
    move-object v15, v2

    .line 236
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 237
    .line 238
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const-string v1, "low_memory"

    .line 246
    .line 247
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 248
    .line 249
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    sget-object v0, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->a:Lcom/transsnet/downloader/util/DownloadSDCardUtil;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/transsnet/downloader/util/DownloadSDCardUtil;->b()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Ljava/lang/Iterable;

    .line 263
    .line 264
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    move-wide/from16 v1, v18

    .line 269
    .line 270
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    if-eqz v11, :cond_b

    .line 275
    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v11

    .line 280
    check-cast v11, Lyw/f;

    .line 281
    .line 282
    invoke-virtual {v11}, Lyw/f;->a()J

    .line 283
    .line 284
    .line 285
    move-result-wide v20

    .line 286
    add-long v1, v1, v20

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_b
    const-string v0, "available"

    .line 290
    .line 291
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    const-string v0, "cpu_size"

    .line 299
    .line 300
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->c:Z

    .line 316
    .line 317
    if-eqz v0, :cond_c

    .line 318
    .line 319
    const-string v1, "first_open"

    .line 320
    .line 321
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :cond_c
    new-instance v0, Lcom/transsion/startup/pref/consume/a;

    .line 329
    .line 330
    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/a;-><init>()V

    .line 331
    .line 332
    .line 333
    if-eqz v14, :cond_d

    .line 334
    .line 335
    invoke-virtual {v14}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 336
    .line 337
    .line 338
    move-result-wide v18

    .line 339
    :cond_d
    invoke-interface {v12, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    check-cast v1, Ljava/lang/Number;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 349
    .line 350
    .line 351
    move-result-wide v1

    .line 352
    sub-long v1, v1, v18

    .line 353
    .line 354
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/Number;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 368
    .line 369
    .line 370
    move-result-wide v1

    .line 371
    sub-long v1, v1, v18

    .line 372
    .line 373
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-interface {v12, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, Ljava/lang/Number;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 387
    .line 388
    .line 389
    move-result-wide v1

    .line 390
    sub-long v1, v1, v18

    .line 391
    .line 392
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-interface {v12, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Ljava/lang/Number;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 406
    .line 407
    .line 408
    move-result-wide v1

    .line 409
    sub-long v1, v1, v18

    .line 410
    .line 411
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Ljava/lang/Number;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 425
    .line 426
    .line 427
    move-result-wide v1

    .line 428
    sub-long v1, v1, v18

    .line 429
    .line 430
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-object v1, v15

    .line 438
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Ljava/lang/Number;

    .line 443
    .line 444
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 445
    .line 446
    .line 447
    move-result-wide v2

    .line 448
    sub-long v2, v2, v18

    .line 449
    .line 450
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    check-cast v1, Ljava/lang/Number;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 464
    .line 465
    .line 466
    move-result-wide v1

    .line 467
    sub-long v1, v1, v18

    .line 468
    .line 469
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-interface {v12, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    invoke-interface {v0, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Ljava/lang/Number;

    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v1

    .line 486
    sub-long v1, v1, v18

    .line 487
    .line 488
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-object/from16 v1, v23

    .line 496
    .line 497
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    check-cast v2, Ljava/lang/Number;

    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 504
    .line 505
    .line 506
    move-result-wide v2

    .line 507
    sub-long v2, v2, v18

    .line 508
    .line 509
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-object/from16 v1, v17

    .line 517
    .line 518
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ljava/lang/Number;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 525
    .line 526
    .line 527
    move-result-wide v2

    .line 528
    sub-long v2, v2, v18

    .line 529
    .line 530
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    .line 536
    .line 537
    return-object v12

    .line 538
    :goto_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 539
    .line 540
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    if-eqz v0, :cond_e

    .line 553
    .line 554
    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->a:Lcom/transsion/startup/pref/consume/AppStartReport;

    .line 555
    .line 556
    const-string v1, "error error error --- failed to obtain device information"

    .line 557
    .line 558
    invoke-direct {v0, v1}, Lcom/transsion/startup/pref/consume/AppStartReport;->h(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    const/4 v1, 0x0

    .line 562
    return-object v1

    .line 563
    :cond_e
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 564
    .line 565
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 566
    .line 567
    .line 568
    throw v0
.end method

.method private static final g(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "dot"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/transsion/startup/pref/consume/AppStartDotState;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getTimestamp()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method private final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "zxb_log_dot"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(Lcom/transsion/startup/pref/consume/AppStartDotState;)V
    .locals 3

    .line 1
    const-string v0, "dot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/startup/pref/consume/AppStartReport;->d:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "main_create"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x1

    .line 48
    const-string v2, "first_open"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sput-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->c:Z

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/startup/pref/consume/AppStartDotState;->getState()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "trending_end"

    .line 70
    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/AppStartReport;->i()V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/startup/pref/consume/AppStartReport$report$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, v0}, Lcom/transsion/startup/pref/consume/AppStartReport$report$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/transsion/startup/pref/consume/AppStartReport;->b:Z

    .line 3
    .line 4
    return-void
.end method
