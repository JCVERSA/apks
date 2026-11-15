.class public final Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

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

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

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
    iput v2, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;-><init>(Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x5

    .line 40
    const/4 v6, 0x4

    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    const-string v10, "key_ps_link_request_gap"

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    if-eqz v4, :cond_6

    .line 48
    .line 49
    if-eq v4, v9, :cond_5

    .line 50
    .line 51
    if-eq v4, v8, :cond_4

    .line 52
    .line 53
    if-eq v4, v7, :cond_3

    .line 54
    .line 55
    if-eq v4, v6, :cond_2

    .line 56
    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 75
    .line 76
    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v9, Ljava/util/Iterator;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v8, v9

    .line 84
    move-object v9, v4

    .line 85
    move v4, v6

    .line 86
    goto/16 :goto_8

    .line 87
    .line 88
    :cond_3
    iget-wide v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->J$0:J

    .line 89
    .line 90
    iget-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 93
    .line 94
    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v9, Ljava/util/Iterator;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_6

    .line 102
    .line 103
    :cond_4
    iget v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->I$0:I

    .line 104
    .line 105
    iget-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v9, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 108
    .line 109
    iget-object v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v12, Ljava/util/Iterator;

    .line 112
    .line 113
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object v15, v12

    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    .line 127
    .line 128
    sget-object v4, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    .line 129
    .line 130
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iput v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 135
    .line 136
    invoke-virtual {v0, v4, v1}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-ne v0, v3, :cond_7

    .line 141
    .line 142
    return-object v3

    .line 143
    :cond_7
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 144
    .line 145
    sget-object v4, Lrh/f;->a:Lrh/f;

    .line 146
    .line 147
    invoke-virtual {v4}, Lrh/f;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_a

    .line 152
    .line 153
    new-instance v4, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    if-eqz v0, :cond_8

    .line 159
    .line 160
    move-object v9, v0

    .line 161
    check-cast v9, Ljava/lang/Iterable;

    .line 162
    .line 163
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-eqz v12, :cond_8

    .line 172
    .line 173
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 178
    .line 179
    invoke-virtual {v12}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    sget-object v13, Lxh/a;->a:Lxh/a;

    .line 188
    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    goto :goto_3

    .line 204
    :cond_9
    move-object v12, v11

    .line 205
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v9, " --> updatePsLink(\u5305\u65ad\u5e7f\u544a\u8ba1\u5212\u66f4\u65b0\u5b8c\u6210) --> \u5f00\u59cb\u66f4\u65b0PS\u5546\u5355\u6570\u636e --> plansBySource = "

    .line 214
    .line 215
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v9, " --> sceneIdList = "

    .line 222
    .line 223
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    const/16 v17, 0x6

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    const/4 v15, 0x0

    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    invoke-static/range {v13 .. v18}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_a
    if-eqz v0, :cond_12

    .line 244
    .line 245
    check-cast v0, Ljava/lang/Iterable;

    .line 246
    .line 247
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    if-eqz v4, :cond_12

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    const/4 v12, -0x1

    .line 272
    if-nez v9, :cond_b

    .line 273
    .line 274
    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    if-eqz v9, :cond_b

    .line 279
    .line 280
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    :cond_b
    if-lez v12, :cond_11

    .line 285
    .line 286
    sget-object v9, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;

    .line 287
    .line 288
    iput-object v0, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 291
    .line 292
    iput v12, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->I$0:I

    .line 293
    .line 294
    iput v8, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 295
    .line 296
    invoke-virtual {v9, v4, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanMaterialManager;->d(Lcom/transsion/ad/db/plan/MbAdDbPlans;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    if-ne v9, v3, :cond_c

    .line 301
    .line 302
    return-object v3

    .line 303
    :cond_c
    move-object v15, v0

    .line 304
    move-object v0, v9

    .line 305
    move-object v9, v4

    .line 306
    move v4, v12

    .line 307
    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_f

    .line 314
    .line 315
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    new-instance v13, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    const-wide/16 v13, 0x0

    .line 341
    .line 342
    invoke-virtual {v0, v12, v13, v14}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 343
    .line 344
    .line 345
    move-result-wide v12

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v5

    .line 350
    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    .line 351
    .line 352
    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->e()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    int-to-long v7, v0

    .line 357
    const-wide/16 v16, 0x3e8

    .line 358
    .line 359
    mul-long v7, v7, v16

    .line 360
    .line 361
    sub-long v12, v5, v12

    .line 362
    .line 363
    cmp-long v0, v12, v7

    .line 364
    .line 365
    if-lez v0, :cond_e

    .line 366
    .line 367
    sget-object v12, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    .line 368
    .line 369
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v16

    .line 377
    iput-object v15, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 378
    .line 379
    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 380
    .line 381
    iput-wide v5, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->J$0:J

    .line 382
    .line 383
    const/4 v7, 0x3

    .line 384
    iput v7, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 385
    .line 386
    const/4 v13, 0x0

    .line 387
    const/16 v14, 0xa

    .line 388
    .line 389
    move-object v8, v15

    .line 390
    move-object v15, v0

    .line 391
    move-object/from16 v17, v1

    .line 392
    .line 393
    invoke-virtual/range {v12 .. v17}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    if-ne v0, v3, :cond_d

    .line 398
    .line 399
    return-object v3

    .line 400
    :cond_d
    move-wide v12, v5

    .line 401
    move-object v4, v9

    .line 402
    move-object v9, v8

    .line 403
    :goto_6
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v4}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v0, v4, v12, v13}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 429
    .line 430
    .line 431
    move-object v15, v9

    .line 432
    :goto_7
    const/4 v4, 0x4

    .line 433
    goto/16 :goto_9

    .line 434
    .line 435
    :cond_e
    move-object v8, v15

    .line 436
    const/4 v7, 0x3

    .line 437
    sget-object v19, Lxh/a;->a:Lxh/a;

    .line 438
    .line 439
    sget-object v0, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a:Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;

    .line 440
    .line 441
    invoke-direct {v0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v0, " --> updatePsLink() --> ID = "

    .line 462
    .line 463
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v0, " --> name = "

    .line 470
    .line 471
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v0, " --> psScene = "

    .line 478
    .line 479
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v0, " --> \u5f53\u524d\u6709\u8d44\u6e90\uff0c\u4e14\u5728\u8bf7\u6c42\u95f4\u9694\u5185 --> \u4e0d\u505a\u5904\u7406"

    .line 486
    .line 487
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v20

    .line 494
    const/16 v23, 0x4

    .line 495
    .line 496
    const/16 v24, 0x0

    .line 497
    .line 498
    const/16 v21, 0x5

    .line 499
    .line 500
    const/16 v22, 0x0

    .line 501
    .line 502
    invoke-static/range {v19 .. v24}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_f
    move-object v8, v15

    .line 509
    sget-object v12, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->a:Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;

    .line 510
    .line 511
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v15

    .line 515
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v16

    .line 519
    iput-object v8, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 520
    .line 521
    iput-object v9, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 522
    .line 523
    const/4 v4, 0x4

    .line 524
    iput v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 525
    .line 526
    const/4 v13, 0x0

    .line 527
    const/16 v14, 0xa

    .line 528
    .line 529
    move-object/from16 v17, v1

    .line 530
    .line 531
    invoke-virtual/range {v12 .. v17}, Lcom/transsion/ad/ps/distribute/PsDistributeRequestManager;->n(IILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    if-ne v0, v3, :cond_10

    .line 536
    .line 537
    return-object v3

    .line 538
    :cond_10
    :goto_8
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 539
    .line 540
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->b()Lcom/tencent/mmkv/MMKV;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v9}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    new-instance v6, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 564
    .line 565
    .line 566
    move-result-wide v12

    .line 567
    invoke-virtual {v0, v5, v12, v13}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 568
    .line 569
    .line 570
    move-object v15, v8

    .line 571
    :goto_9
    move-object v0, v15

    .line 572
    goto :goto_a

    .line 573
    :cond_11
    move v4, v6

    .line 574
    :goto_a
    move v6, v4

    .line 575
    const/4 v5, 0x5

    .line 576
    const/4 v8, 0x2

    .line 577
    goto/16 :goto_4

    .line 578
    .line 579
    :cond_12
    sget-object v0, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a:Lcom/transsion/ad/ps/distribute/PsStorageManager;

    .line 580
    .line 581
    iput-object v11, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$0:Ljava/lang/Object;

    .line 582
    .line 583
    iput-object v11, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->L$1:Ljava/lang/Object;

    .line 584
    .line 585
    const/4 v4, 0x5

    .line 586
    iput v4, v1, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager$updatePsLink$1;->label:I

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Lcom/transsion/ad/ps/distribute/PsStorageManager;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-ne v0, v3, :cond_13

    .line 593
    .line 594
    return-object v3

    .line 595
    :cond_13
    :goto_b
    sget-object v0, Lrh/f;->a:Lrh/f;

    .line 596
    .line 597
    invoke-virtual {v0}, Lrh/f;->a()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-eqz v0, :cond_14

    .line 602
    .line 603
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 604
    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ad/ps/distribute/PSAdPlanRequestManager;->a()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    const-string v0, " --> analyzeData() --> \u5220\u9664\u65e0\u6548\u7d20\u6750\u6587\u4ef6"

    .line 618
    .line 619
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    const/4 v7, 0x6

    .line 627
    const/4 v8, 0x0

    .line 628
    const/4 v5, 0x0

    .line 629
    const/4 v6, 0x0

    .line 630
    invoke-static/range {v3 .. v8}, Lxh/a;->i(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 634
    .line 635
    return-object v0
.end method
