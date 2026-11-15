.class public Lcom/bytedance/sdk/component/Dq/EjP;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Dq/EjP$Sj;
    }
.end annotation


# static fields
.field private static EjP:I

.field private static HiB:I

.field public static final Sj:[Ljava/lang/String;

.field private static TKC:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/component/Dq/EjP;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    const-string v0, "com.bytedance.sdk"

    .line 10
    .line 11
    const-string v2, "com.bykv.vk"

    .line 12
    .line 13
    const-string v3, "com.ss"

    .line 14
    .line 15
    const-string v4, "tt_pangle"

    .line 16
    .line 17
    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/bytedance/sdk/component/Dq/EjP;->Sj:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "bd_tracker"

    .line 24
    .line 25
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/bytedance/sdk/component/Dq/EjP;->sP:[Ljava/lang/String;

    .line 30
    .line 31
    sput v1, Lcom/bytedance/sdk/component/Dq/EjP;->EjP:I

    .line 32
    .line 33
    sput v1, Lcom/bytedance/sdk/component/Dq/EjP;->HiB:I

    .line 34
    .line 35
    return-void
.end method

.method public static Sj()V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/EjP;->sP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static Sj(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static sP()V
    .locals 18

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->uA()Lcom/bytedance/sdk/component/Dq/TKC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/bytedance/sdk/component/Dq/EjP;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget v3, Lcom/bytedance/sdk/component/Dq/vS;->TKC:I

    .line 16
    .line 17
    if-ltz v3, :cond_10

    .line 18
    .line 19
    rem-int/2addr v1, v3

    .line 20
    if-nez v1, :cond_10

    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->Sj()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    sget v6, Lcom/bytedance/sdk/component/Dq/EjP;->HiB:I

    .line 55
    .line 56
    if-le v5, v6, :cond_3

    .line 57
    .line 58
    sput v5, Lcom/bytedance/sdk/component/Dq/EjP;->HiB:I

    .line 59
    .line 60
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x0

    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const-string v10, "PoolTaskStatistics"

    .line 75
    .line 76
    if-eqz v9, :cond_d

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Ljava/util/Map$Entry;

    .line 83
    .line 84
    add-int/2addr v8, v2

    .line 85
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    check-cast v11, Ljava/lang/Thread;

    .line 90
    .line 91
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, [Ljava/lang/StackTraceElement;

    .line 96
    .line 97
    new-instance v12, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v13, "\n"

    .line 100
    .line 101
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    new-instance v14, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v15, "Thread Name is : "

    .line 109
    .line 110
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_4
    array-length v14, v9

    .line 131
    const/4 v15, 0x0

    .line 132
    const/4 v6, 0x0

    .line 133
    :goto_1
    if-ge v6, v14, :cond_8

    .line 134
    .line 135
    aget-object v16, v9, v6

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object/from16 v16, v1

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_7

    .line 168
    .line 169
    sget-object v1, Lcom/bytedance/sdk/component/Dq/EjP;->Sj:[Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/Dq/EjP;->Sj(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    move-object/from16 v17, v2

    .line 182
    .line 183
    sget-object v2, Lcom/bytedance/sdk/component/Dq/EjP;->sP:[Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/Dq/EjP;->Sj(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_7

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move-object/from16 v17, v2

    .line 193
    .line 194
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 195
    .line 196
    move-object/from16 v15, v17

    .line 197
    .line 198
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 199
    .line 200
    move-object/from16 v1, v16

    .line 201
    .line 202
    const/4 v2, 0x1

    .line 203
    goto :goto_1

    .line 204
    :cond_8
    move-object/from16 v16, v1

    .line 205
    .line 206
    if-eqz v4, :cond_b

    .line 207
    .line 208
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_a

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, "&"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Lcom/bytedance/sdk/component/Dq/EjP$Sj;

    .line 243
    .line 244
    if-eqz v2, :cond_9

    .line 245
    .line 246
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/EjP$Sj;->Sj()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    const/4 v9, 0x1

    .line 251
    add-int/2addr v6, v9

    .line 252
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/Dq/EjP$Sj;->Sj(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_9
    const/4 v9, 0x1

    .line 257
    new-instance v2, Lcom/bytedance/sdk/component/Dq/EjP$Sj;

    .line 258
    .line 259
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    invoke-direct {v2, v1, v9, v6, v11}, Lcom/bytedance/sdk/component/Dq/EjP$Sj;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :goto_3
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_a
    const/4 v9, 0x1

    .line 275
    :goto_4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_c

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "Thread index = "

    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v2, "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"

    .line 296
    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_b
    const/4 v9, 0x1

    .line 316
    :cond_c
    :goto_5
    move v2, v9

    .line 317
    move-object/from16 v1, v16

    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :cond_d
    sget v1, Lcom/bytedance/sdk/component/Dq/EjP;->EjP:I

    .line 322
    .line 323
    if-le v7, v1, :cond_e

    .line 324
    .line 325
    sput v7, Lcom/bytedance/sdk/component/Dq/EjP;->EjP:I

    .line 326
    .line 327
    :cond_e
    if-eqz v4, :cond_f

    .line 328
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v2, "SDK current threads="

    .line 332
    .line 333
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v2, ", SDK Max threads="

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    sget v2, Lcom/bytedance/sdk/component/Dq/EjP;->EjP:I

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v2, ", Application threads = "

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v2, ", Application max threads = "

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    sget v2, Lcom/bytedance/sdk/component/Dq/EjP;->HiB:I

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_f

    .line 387
    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    check-cast v2, Ljava/util/Map$Entry;

    .line 393
    .line 394
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    check-cast v2, Lcom/bytedance/sdk/component/Dq/EjP$Sj;

    .line 399
    .line 400
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/EjP$Sj;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_f
    new-instance v1, Lcom/bytedance/sdk/component/Dq/sP/Sj;

    .line 405
    .line 406
    sget v2, Lcom/bytedance/sdk/component/Dq/EjP;->EjP:I

    .line 407
    .line 408
    sget v3, Lcom/bytedance/sdk/component/Dq/EjP;->HiB:I

    .line 409
    .line 410
    invoke-direct {v1, v7, v2, v5, v3}, Lcom/bytedance/sdk/component/Dq/sP/Sj;-><init>(IIII)V

    .line 411
    .line 412
    .line 413
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/sP/Sj;)V

    .line 414
    .line 415
    .line 416
    :cond_10
    :goto_7
    return-void
.end method
