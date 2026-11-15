.class public final Lmh/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmh/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/b;->a:Lmh/b;

    .line 7
    .line 8
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

.method private final a()Z
    .locals 5

    .line 1
    sget-object v0, Lmh/k;->a:Lmh/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmh/k;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Lmh/k;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    const-wide/16 v3, 0xbb8

    .line 19
    .line 20
    cmp-long v0, v1, v3

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    :goto_1
    return v0
.end method

.method public static synthetic c(Lmh/b;Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v8, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move/from16 v8, p6

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x40

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move v9, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move/from16 v9, p7

    .line 17
    .line 18
    :goto_1
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move v7, p5

    .line 24
    invoke-virtual/range {v2 .. v9}, Lmh/b;->b(Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final b(Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    const-string v1, "requestInfo"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "channel"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "tag"

    .line 16
    .line 17
    move-object/from16 v3, p4

    .line 18
    .line 19
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ne v4, v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v4, v5

    .line 45
    :goto_0
    const-string v6, ""

    .line 46
    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    move-object v4, v6

    .line 50
    :cond_2
    sget-object v7, Lmh/e;->J:Lmh/e$a;

    .line 51
    .line 52
    move/from16 v8, p2

    .line 53
    .line 54
    invoke-virtual {v7, v8, v0}, Lmh/e$a;->a(ILjava/lang/String;)Lmh/e;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7, v1}, Lmh/e;->V(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v4}, Lmh/e;->Z(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/16 v4, 0x1e0

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    move v8, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v8, v4

    .line 79
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 84
    .line 85
    const/16 v10, 0xa

    .line 86
    .line 87
    const/4 v11, 0x1

    .line 88
    invoke-direct {v0, v11, v10}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 89
    .line 90
    .line 91
    sget-object v10, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 92
    .line 93
    invoke-static {v0, v10}, Lkotlin/ranges/RangesKt;->p(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    if-gt v0, v1, :cond_4

    .line 106
    .line 107
    move-object v0, v10

    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-object v0, v6

    .line 110
    :goto_2
    invoke-virtual {v7, v0}, Lmh/e;->P(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getAnnotations()Ljava/util/Collection;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v12, "requestInfo.annotations"

    .line 119
    .line 120
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    check-cast v0, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v12

    .line 133
    if-eqz v12, :cond_6

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    instance-of v13, v12, Lokhttp3/Headers;

    .line 140
    .line 141
    if-eqz v13, :cond_5

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move v3, v15

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :cond_6
    move-object v12, v5

    .line 149
    :goto_3
    instance-of v0, v12, Lokhttp3/Headers;

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    check-cast v12, Lokhttp3/Headers;

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    move-object v12, v5

    .line 157
    :goto_4
    if-eqz v12, :cond_d

    .line 158
    .line 159
    const-string v0, "isDownload"

    .line 160
    .line 161
    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    const/16 v14, 0x54

    .line 172
    .line 173
    if-eq v13, v14, :cond_9

    .line 174
    .line 175
    const v14, 0x36758e

    .line 176
    .line 177
    .line 178
    if-eq v13, v14, :cond_8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    const-string v13, "true"

    .line 182
    .line 183
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_9
    const-string v13, "T"

    .line 191
    .line 192
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_b

    .line 197
    .line 198
    :cond_a
    :goto_5
    move v0, v15

    .line 199
    goto :goto_7

    .line 200
    :cond_b
    :goto_6
    move v0, v11

    .line 201
    :goto_7
    invoke-virtual {v7, v0}, Lmh/e;->l0(I)V

    .line 202
    .line 203
    .line 204
    :cond_c
    const-string v0, "offlineAd"

    .line 205
    .line 206
    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v13, "1"

    .line 211
    .line 212
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    invoke-virtual {v7, v0}, Lmh/e;->X(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_d
    move-object v12, v5

    .line 221
    :goto_8
    if-eqz v12, :cond_e

    .line 222
    .line 223
    const-string v0, "infoeyes-tag"

    .line 224
    .line 225
    invoke-virtual {v12, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    goto :goto_9

    .line 230
    :cond_e
    move-object v0, v5

    .line 231
    :goto_9
    if-nez v0, :cond_f

    .line 232
    .line 233
    move-object v0, v3

    .line 234
    :cond_f
    invoke-virtual {v7, v0}, Lmh/e;->O(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7}, Lmh/e;->G()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-nez v0, :cond_10

    .line 242
    .line 243
    const-string v0, "?"

    .line 244
    .line 245
    invoke-static {v10, v0, v15, v1, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_10

    .line 250
    .line 251
    const-string v13, "?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    const/16 v16, 0x6

    .line 254
    .line 255
    const/16 v17, 0x0

    .line 256
    .line 257
    const/4 v14, 0x0

    .line 258
    const/4 v0, 0x0

    .line 259
    move-object v12, v10

    .line 260
    move v3, v15

    .line 261
    move v15, v0

    .line 262
    :try_start_1
    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    invoke-virtual {v10, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const-string v12, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 271
    .line 272
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    goto :goto_a

    .line 276
    :catch_1
    move-exception v0

    .line 277
    goto :goto_b

    .line 278
    :cond_10
    move v3, v15

    .line 279
    move-object v0, v10

    .line 280
    :goto_a
    invoke-virtual {v7, v0}, Lmh/e;->g0(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v0, Ljava/net/URL;

    .line 284
    .line 285
    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    new-instance v12, Ljava/net/URL;

    .line 293
    .line 294
    invoke-direct {v12, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    const-string v12, "host"

    .line 302
    .line 303
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v0}, Lmh/e;->U(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const-string v0, "path"

    .line 310
    .line 311
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v10}, Lmh/e;->Y(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    .line 316
    .line 317
    goto :goto_c

    .line 318
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_11

    .line 323
    .line 324
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_11
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    const/16 v10, 0x3fc

    .line 332
    .line 333
    if-nez v0, :cond_27

    .line 334
    .line 335
    invoke-virtual {v7, v11}, Lmh/e;->I(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsStart()Ljava/util/Date;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-wide/16 v12, 0x0

    .line 343
    .line 344
    if-eqz v0, :cond_12

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v0

    .line 350
    goto :goto_d

    .line 351
    :cond_12
    move-wide v0, v12

    .line 352
    :goto_d
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getDnsEnd()Ljava/util/Date;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    if-eqz v4, :cond_13

    .line 357
    .line 358
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 359
    .line 360
    .line 361
    move-result-wide v14

    .line 362
    goto :goto_e

    .line 363
    :cond_13
    move-wide v14, v12

    .line 364
    :goto_e
    sub-long/2addr v14, v0

    .line 365
    invoke-virtual {v7, v14, v15}, Lmh/e;->R(J)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslStart()Ljava/util/Date;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-eqz v0, :cond_14

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 375
    .line 376
    .line 377
    move-result-wide v0

    .line 378
    goto :goto_f

    .line 379
    :cond_14
    move-wide v0, v12

    .line 380
    :goto_f
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSslEnd()Ljava/util/Date;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    if-eqz v4, :cond_15

    .line 385
    .line 386
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 387
    .line 388
    .line 389
    move-result-wide v14

    .line 390
    goto :goto_10

    .line 391
    :cond_15
    move-wide v14, v12

    .line 392
    :goto_10
    sub-long/2addr v14, v0

    .line 393
    invoke-virtual {v7, v14, v15}, Lmh/e;->i0(J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectStart()Ljava/util/Date;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_16

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 403
    .line 404
    .line 405
    move-result-wide v0

    .line 406
    goto :goto_11

    .line 407
    :cond_16
    move-wide v0, v12

    .line 408
    :goto_11
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getConnectEnd()Ljava/util/Date;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    if-eqz v4, :cond_17

    .line 413
    .line 414
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 415
    .line 416
    .line 417
    move-result-wide v14

    .line 418
    goto :goto_12

    .line 419
    :cond_17
    move-wide v14, v12

    .line 420
    :goto_12
    sub-long/2addr v14, v0

    .line 421
    invoke-virtual {v7, v14, v15}, Lmh/e;->j0(J)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSendingStart()Ljava/util/Date;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    if-eqz v0, :cond_18

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 431
    .line 432
    .line 433
    move-result-wide v0

    .line 434
    goto :goto_13

    .line 435
    :cond_18
    move-wide v0, v12

    .line 436
    :goto_13
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSendingEnd()Ljava/util/Date;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    if-eqz v4, :cond_19

    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 443
    .line 444
    .line 445
    move-result-wide v14

    .line 446
    goto :goto_14

    .line 447
    :cond_19
    move-wide v14, v12

    .line 448
    :goto_14
    sub-long v0, v14, v0

    .line 449
    .line 450
    invoke-virtual {v7, v0, v1}, Lmh/e;->f0(J)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getResponseStart()Ljava/util/Date;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    if-eqz v0, :cond_1a

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 460
    .line 461
    .line 462
    move-result-wide v0

    .line 463
    goto :goto_15

    .line 464
    :cond_1a
    move-wide v0, v12

    .line 465
    :goto_15
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestEnd()Ljava/util/Date;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    if-eqz v4, :cond_1b

    .line 470
    .line 471
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 472
    .line 473
    .line 474
    move-result-wide v16

    .line 475
    move-object/from16 v18, v6

    .line 476
    .line 477
    goto :goto_16

    .line 478
    :cond_1b
    move-object/from16 v18, v6

    .line 479
    .line 480
    move-wide/from16 v16, v12

    .line 481
    .line 482
    :goto_16
    sub-long v5, v16, v0

    .line 483
    .line 484
    invoke-virtual {v7, v5, v6}, Lmh/e;->a0(J)V

    .line 485
    .line 486
    .line 487
    sub-long v4, v0, v14

    .line 488
    .line 489
    invoke-virtual {v7, v4, v5}, Lmh/e;->m0(J)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getReceivedByteCount()Ljava/lang/Long;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    if-nez v4, :cond_1c

    .line 497
    .line 498
    move-wide v4, v12

    .line 499
    goto :goto_17

    .line 500
    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 501
    .line 502
    .line 503
    move-result-wide v4

    .line 504
    :goto_17
    invoke-virtual {v7, v4, v5}, Lmh/e;->e0(J)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getSentByteCount()Ljava/lang/Long;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    if-nez v4, :cond_1d

    .line 512
    .line 513
    move-wide v4, v12

    .line 514
    goto :goto_18

    .line 515
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 516
    .line 517
    .line 518
    move-result-wide v4

    .line 519
    :goto_18
    invoke-virtual {v7, v4, v5}, Lmh/e;->b0(J)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getResponseInfo()Lorg/chromium/net/UrlResponseInfo;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    if-eqz v2, :cond_1e

    .line 527
    .line 528
    invoke-virtual {v2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    goto :goto_19

    .line 533
    :cond_1e
    const/4 v2, 0x0

    .line 534
    :goto_19
    if-eqz v2, :cond_1f

    .line 535
    .line 536
    const-string v4, "Content-Encoding"

    .line 537
    .line 538
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    check-cast v4, Ljava/util/List;

    .line 543
    .line 544
    goto :goto_1a

    .line 545
    :cond_1f
    const/4 v4, 0x0

    .line 546
    :goto_1a
    if-eqz v4, :cond_20

    .line 547
    .line 548
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_20

    .line 557
    .line 558
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    check-cast v4, Ljava/lang/String;

    .line 563
    .line 564
    const-string v5, "contentEncoding"

    .line 565
    .line 566
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v7, v4}, Lmh/e;->Q(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_20
    if-eqz v2, :cond_21

    .line 573
    .line 574
    const-string v4, "server-time"

    .line 575
    .line 576
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    check-cast v4, Ljava/util/List;

    .line 581
    .line 582
    if-eqz v4, :cond_21

    .line 583
    .line 584
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    check-cast v4, Ljava/lang/String;

    .line 589
    .line 590
    goto :goto_1b

    .line 591
    :cond_21
    const/4 v4, 0x0

    .line 592
    :goto_1b
    if-nez v4, :cond_22

    .line 593
    .line 594
    const-string v4, "0"

    .line 595
    .line 596
    :cond_22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 597
    .line 598
    .line 599
    move-result-wide v4

    .line 600
    invoke-virtual {v7, v4, v5}, Lmh/e;->h0(J)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getTotalTimeMs()Ljava/lang/Long;

    .line 604
    .line 605
    .line 606
    move-result-object v4

    .line 607
    if-nez v4, :cond_23

    .line 608
    .line 609
    move-wide v4, v12

    .line 610
    goto :goto_1c

    .line 611
    :cond_23
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 612
    .line 613
    .line 614
    move-result-wide v4

    .line 615
    :goto_1c
    invoke-virtual {v7, v4, v5}, Lmh/e;->c0(J)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v7}, Lmh/e;->G()I

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-ne v4, v11, :cond_30

    .line 623
    .line 624
    if-eqz v2, :cond_24

    .line 625
    .line 626
    const-string v4, "x-response-cdn"

    .line 627
    .line 628
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    check-cast v2, Ljava/util/List;

    .line 633
    .line 634
    if-eqz v2, :cond_24

    .line 635
    .line 636
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    move-object v5, v2

    .line 641
    check-cast v5, Ljava/lang/String;

    .line 642
    .line 643
    goto :goto_1d

    .line 644
    :cond_24
    const/4 v5, 0x0

    .line 645
    :goto_1d
    if-nez v5, :cond_25

    .line 646
    .line 647
    move-object/from16 v6, v18

    .line 648
    .line 649
    goto :goto_1e

    .line 650
    :cond_25
    move-object v6, v5

    .line 651
    :goto_1e
    invoke-virtual {v7, v6}, Lmh/e;->K(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v9}, Lorg/chromium/net/RequestFinishedInfo$Metrics;->getRequestStart()Ljava/util/Date;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    if-eqz v2, :cond_26

    .line 659
    .line 660
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 661
    .line 662
    .line 663
    move-result-wide v12

    .line 664
    :cond_26
    sub-long/2addr v0, v12

    .line 665
    invoke-virtual {v7, v0, v1}, Lmh/e;->L(J)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7}, Lmh/e;->u()J

    .line 669
    .line 670
    .line 671
    move-result-wide v0

    .line 672
    invoke-virtual {v7, v0, v1}, Lmh/e;->J(J)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v7}, Lmh/e;->y()J

    .line 676
    .line 677
    .line 678
    move-result-wide v0

    .line 679
    long-to-float v0, v0

    .line 680
    const/high16 v1, 0x44800000    # 1024.0f

    .line 681
    .line 682
    div-float/2addr v0, v1

    .line 683
    invoke-virtual {v7}, Lmh/e;->u()J

    .line 684
    .line 685
    .line 686
    move-result-wide v1

    .line 687
    long-to-float v1, v1

    .line 688
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 689
    .line 690
    div-float/2addr v1, v2

    .line 691
    div-float/2addr v0, v1

    .line 692
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {v7, v0}, Lmh/e;->M(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_24

    .line 700
    .line 701
    :cond_27
    move-object/from16 v18, v6

    .line 702
    .line 703
    invoke-virtual {v7, v1}, Lmh/e;->I(I)V

    .line 704
    .line 705
    .line 706
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getFinishedReason()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-ne v0, v1, :cond_28

    .line 711
    .line 712
    goto :goto_1f

    .line 713
    :cond_28
    move v11, v3

    .line 714
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    if-eqz v0, :cond_29

    .line 719
    .line 720
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v5

    .line 724
    goto :goto_20

    .line 725
    :cond_29
    const/4 v5, 0x0

    .line 726
    :goto_20
    if-nez v5, :cond_2a

    .line 727
    .line 728
    move-object/from16 v6, v18

    .line 729
    .line 730
    goto :goto_21

    .line 731
    :cond_2a
    move-object v6, v5

    .line 732
    :goto_21
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    instance-of v0, v0, Lorg/chromium/net/NetworkException;

    .line 737
    .line 738
    if-eqz v0, :cond_2e

    .line 739
    .line 740
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/RequestFinishedInfo;->getException()Lorg/chromium/net/CronetException;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    const-string v1, "null cannot be cast to non-null type org.chromium.net.NetworkException"

    .line 745
    .line 746
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    check-cast v0, Lorg/chromium/net/NetworkException;

    .line 750
    .line 751
    invoke-direct/range {p0 .. p0}, Lmh/b;->a()Z

    .line 752
    .line 753
    .line 754
    move-result v1

    .line 755
    if-eqz v1, :cond_2d

    .line 756
    .line 757
    sget-object v1, Lmh/k;->a:Lmh/k;

    .line 758
    .line 759
    invoke-virtual {v1}, Lmh/k;->g()Z

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-nez v2, :cond_2b

    .line 764
    .line 765
    const-string v6, "Network disconnect"

    .line 766
    .line 767
    move v8, v10

    .line 768
    goto :goto_23

    .line 769
    :cond_2b
    invoke-virtual {v1}, Lmh/k;->e()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-eqz v1, :cond_2c

    .line 774
    .line 775
    const/16 v0, 0x3fd

    .line 776
    .line 777
    const-string v6, "Fake Network"

    .line 778
    .line 779
    :goto_22
    move v8, v0

    .line 780
    goto :goto_23

    .line 781
    :cond_2c
    sget-object v1, Lmh/a;->a:Lmh/a;

    .line 782
    .line 783
    invoke-virtual {v1, v8, v0, v11}, Lmh/a;->b(ILorg/chromium/net/NetworkException;Z)I

    .line 784
    .line 785
    .line 786
    move-result v0

    .line 787
    goto :goto_22

    .line 788
    :cond_2d
    sget-object v1, Lmh/a;->a:Lmh/a;

    .line 789
    .line 790
    invoke-virtual {v1, v8, v0, v11}, Lmh/a;->b(ILorg/chromium/net/NetworkException;Z)I

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    goto :goto_22

    .line 795
    :cond_2e
    if-eqz v11, :cond_2f

    .line 796
    .line 797
    const/16 v4, 0x41a

    .line 798
    .line 799
    :cond_2f
    move v8, v4

    .line 800
    :goto_23
    invoke-virtual {v7, v6}, Lmh/e;->T(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    :cond_30
    :goto_24
    invoke-virtual {v7, v8}, Lmh/e;->S(I)V

    .line 804
    .line 805
    .line 806
    if-nez p5, :cond_33

    .line 807
    .line 808
    const/16 v0, 0x130

    .line 809
    .line 810
    if-ne v8, v0, :cond_31

    .line 811
    .line 812
    return-void

    .line 813
    :cond_31
    if-eqz p7, :cond_32

    .line 814
    .line 815
    if-ne v8, v10, :cond_32

    .line 816
    .line 817
    return-void

    .line 818
    :cond_32
    invoke-static {v7}, Lmh/c;->g(Lmh/e;)V

    .line 819
    .line 820
    .line 821
    :cond_33
    return-void
.end method
