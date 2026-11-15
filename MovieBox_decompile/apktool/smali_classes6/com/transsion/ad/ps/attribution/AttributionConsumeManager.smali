.class public final Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;
.super Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;
.source "source.java"


# static fields
.field public static final c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:Lcom/transsion/ad/db/pslink/AttributionPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

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
    iput v2, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;-><init>(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x1

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    if-eq v4, v7, :cond_3

    .line 45
    .line 46
    if-eq v4, v6, :cond_2

    .line 47
    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_2
    :goto_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_12

    .line 63
    .line 64
    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_b

    .line 68
    .line 69
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lrh/f;->a:Lrh/f;

    .line 73
    .line 74
    invoke-virtual {v0}, Lrh/f;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const-string v9, " --> url = "

    .line 79
    .line 80
    const-string v10, " --> psId = "

    .line 81
    .line 82
    const-string v11, " --> id = "

    .line 83
    .line 84
    if-eqz v4, :cond_a

    .line 85
    .line 86
    sget-object v12, Lxh/a;->a:Lxh/a;

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 93
    .line 94
    if-eqz v13, :cond_5

    .line 95
    .line 96
    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v13, 0x0

    .line 102
    :goto_2
    sget-object v14, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 103
    .line 104
    if-eqz v14, :cond_6

    .line 105
    .line 106
    invoke-virtual {v14}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    const/4 v14, 0x0

    .line 116
    :goto_3
    sget-object v15, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 117
    .line 118
    if-eqz v15, :cond_7

    .line 119
    .line 120
    invoke-virtual {v15}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    const/4 v15, 0x0

    .line 130
    :goto_4
    sget-object v16, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 131
    .line 132
    if-eqz v16, :cond_8

    .line 133
    .line 134
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v16

    .line 138
    move-object/from16 v8, v16

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    const/4 v8, 0x0

    .line 142
    :goto_5
    sget-object v16, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 143
    .line 144
    if-eqz v16, :cond_9

    .line 145
    .line 146
    invoke-virtual/range {v16 .. v16}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    move-object/from16 v5, v16

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    const/4 v5, 0x0

    .line 154
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v4, " --> consume() --> \u5f00\u59cb\u5f52\u56e0 --> type = "

    .line 163
    .line 164
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v4, " --> failCount = "

    .line 177
    .line 178
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    const/16 v16, 0x6

    .line 201
    .line 202
    const/16 v17, 0x0

    .line 203
    .line 204
    const/4 v14, 0x0

    .line 205
    const/4 v15, 0x0

    .line 206
    invoke-static/range {v12 .. v17}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_a
    new-instance v4, Lokhttp3/Request$Builder;

    .line 210
    .line 211
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 212
    .line 213
    .line 214
    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 215
    .line 216
    if-eqz v5, :cond_b

    .line 217
    .line 218
    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    if-nez v5, :cond_c

    .line 223
    .line 224
    :cond_b
    const-string v5, ""

    .line 225
    .line 226
    :cond_c
    invoke-virtual {v4, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    sget-object v5, Lwh/b;->a:Lwh/b;

    .line 235
    .line 236
    invoke-virtual {v5}, Lwh/b;->d()Lokhttp3/OkHttpClient;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    const-string v6, " --> response = "

    .line 253
    .line 254
    if-eqz v5, :cond_15

    .line 255
    .line 256
    invoke-virtual {v0}, Lrh/f;->a()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    sget-object v12, Lxh/a;->a:Lxh/a;

    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 269
    .line 270
    if-eqz v5, :cond_d

    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    goto :goto_7

    .line 277
    :cond_d
    const/4 v5, 0x0

    .line 278
    :goto_7
    sget-object v8, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 279
    .line 280
    if-eqz v8, :cond_e

    .line 281
    .line 282
    invoke-virtual {v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    .line 283
    .line 284
    .line 285
    move-result v8

    .line 286
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    goto :goto_8

    .line 291
    :cond_e
    const/4 v8, 0x0

    .line 292
    :goto_8
    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 293
    .line 294
    if-eqz v13, :cond_f

    .line 295
    .line 296
    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    goto :goto_9

    .line 301
    :cond_f
    const/4 v13, 0x0

    .line 302
    :goto_9
    sget-object v14, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 303
    .line 304
    if-eqz v14, :cond_10

    .line 305
    .line 306
    invoke-virtual {v14}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    goto :goto_a

    .line 311
    :cond_10
    const/4 v14, 0x0

    .line 312
    :goto_a
    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    new-instance v15, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, " --> consume() --> \u5f52\u56e0\u6210\u529f --> type = "

    .line 325
    .line 326
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    const/16 v16, 0x6

    .line 361
    .line 362
    const/16 v17, 0x0

    .line 363
    .line 364
    const/4 v14, 0x0

    .line 365
    const/4 v15, 0x0

    .line 366
    invoke-static/range {v12 .. v17}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :cond_11
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 370
    .line 371
    if-eqz v0, :cond_12

    .line 372
    .line 373
    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 374
    .line 375
    iput v7, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    .line 376
    .line 377
    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-ne v0, v3, :cond_12

    .line 382
    .line 383
    return-object v3

    .line 384
    :cond_12
    :goto_b
    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil;->a:Lcom/transsion/ad/ps/PSReportUtil;

    .line 385
    .line 386
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 387
    .line 388
    if-eqz v1, :cond_13

    .line 389
    .line 390
    invoke-virtual {v1}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    goto :goto_c

    .line 395
    :cond_13
    const/4 v1, 0x0

    .line 396
    :goto_c
    sget-object v3, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 397
    .line 398
    if-eqz v3, :cond_14

    .line 399
    .line 400
    invoke-virtual {v3}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    goto :goto_d

    .line 405
    :cond_14
    const/4 v8, 0x0

    .line 406
    :goto_d
    invoke-virtual {v0, v1, v8}, Lcom/transsion/ad/ps/PSReportUtil;->a(Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_12

    .line 410
    .line 411
    :cond_15
    sget-object v9, Lxh/a;->a:Lxh/a;

    .line 412
    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->e()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    sget-object v5, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 418
    .line 419
    if-eqz v5, :cond_16

    .line 420
    .line 421
    invoke-virtual {v5}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getType()Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    goto :goto_e

    .line 426
    :cond_16
    const/4 v5, 0x0

    .line 427
    :goto_e
    sget-object v8, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 428
    .line 429
    if-eqz v8, :cond_17

    .line 430
    .line 431
    invoke-virtual {v8}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getId()I

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    goto :goto_f

    .line 440
    :cond_17
    const/4 v8, 0x0

    .line 441
    :goto_f
    sget-object v12, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 442
    .line 443
    if-eqz v12, :cond_18

    .line 444
    .line 445
    invoke-virtual {v12}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getPsId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    goto :goto_10

    .line 450
    :cond_18
    const/4 v12, 0x0

    .line 451
    :goto_10
    sget-object v13, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 452
    .line 453
    if-eqz v13, :cond_19

    .line 454
    .line 455
    invoke-virtual {v13}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v13

    .line 459
    goto :goto_11

    .line 460
    :cond_19
    const/4 v13, 0x0

    .line 461
    :goto_11
    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    new-instance v14, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v0, " --> consume() --> \u5f52\u56e0\u5931\u8d25 --> type = "

    .line 474
    .line 475
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v0, "--> url = "

    .line 494
    .line 495
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    const/4 v13, 0x6

    .line 512
    const/4 v14, 0x0

    .line 513
    const/4 v11, 0x0

    .line 514
    const/4 v12, 0x0

    .line 515
    invoke-static/range {v9 .. v14}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 519
    .line 520
    if-eqz v0, :cond_1b

    .line 521
    .line 522
    invoke-virtual {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    .line 523
    .line 524
    .line 525
    move-result v4

    .line 526
    add-int/2addr v4, v7

    .line 527
    invoke-virtual {v0, v4}, Lcom/transsion/ad/db/pslink/AttributionPoint;->setFailCount(I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getFailCount()I

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    const/4 v5, 0x5

    .line 535
    if-lt v4, v5, :cond_1a

    .line 536
    .line 537
    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 538
    .line 539
    const/4 v5, 0x2

    .line 540
    iput v5, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    .line 541
    .line 542
    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    if-ne v0, v3, :cond_1b

    .line 547
    .line 548
    return-object v3

    .line 549
    :cond_1a
    sget-object v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 550
    .line 551
    const/4 v5, 0x3

    .line 552
    iput v5, v1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$doNetWork$1;->label:I

    .line 553
    .line 554
    invoke-virtual {v4, v0, v1}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->j(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    if-ne v0, v3, :cond_1b

    .line 559
    .line 560
    return-object v3

    .line 561
    :cond_1b
    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    .line 562
    .line 563
    .line 564
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 565
    .line 566
    return-object v0
.end method

.method private final p()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final q(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;-><init>(Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 69
    .line 70
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_5
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_6
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    .line 94
    .line 95
    iput v5, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v1, :cond_7

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_7
    :goto_1
    check-cast p1, Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 105
    .line 106
    sput-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 107
    .line 108
    if-nez p1, :cond_8

    .line 109
    .line 110
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_8
    if-eqz p1, :cond_9

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/transsion/ad/db/pslink/AttributionPoint;->getReportUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    const/4 p1, 0x0

    .line 127
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_b

    .line 132
    .line 133
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->e:Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 134
    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    sget-object v2, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 138
    .line 139
    iput v4, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 140
    .line 141
    invoke-virtual {v2, p1, v0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->c(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-ne p1, v1, :cond_a

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->p()V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_b
    iput v3, v0, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$safeCall$1;->label:I

    .line 155
    .line 156
    invoke-direct {p0, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v1, :cond_c

    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    return-object p1
.end method


# virtual methods
.method public final n()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$consume$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, v0}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager$consume$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method
