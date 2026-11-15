.class Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dNu/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "extra"

    .line 4
    .line 5
    const-string v2, "is_init"

    .line 6
    .line 7
    const-string v3, "mediation"

    .line 8
    .line 9
    const-string v4, "label"

    .line 10
    .line 11
    const-string v5, "tag"

    .line 12
    .line 13
    const-string v6, "rit"

    .line 14
    .line 15
    const-string v7, "fail_count"

    .line 16
    .line 17
    const-string v8, "success_count"

    .line 18
    .line 19
    const-string v9, "start_count"

    .line 20
    .line 21
    const-string v10, "scene"

    .line 22
    .line 23
    const-string v11, "sdk_version"

    .line 24
    .line 25
    const-string v12, "_id"

    .line 26
    .line 27
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj/Sj;->sP()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v13

    .line 31
    if-eqz v13, :cond_12

    .line 32
    .line 33
    const-string v14, "_id"

    .line 34
    .line 35
    const-string v15, "sdk_version"

    .line 36
    .line 37
    const-string v16, "scene"

    .line 38
    .line 39
    const-string v17, "start_count"

    .line 40
    .line 41
    const-string v18, "success_count"

    .line 42
    .line 43
    const-string v19, "fail_count"

    .line 44
    .line 45
    const-string v20, "rit"

    .line 46
    .line 47
    const-string v21, "tag"

    .line 48
    .line 49
    const-string v22, "label"

    .line 50
    .line 51
    const-string v23, "timestamp"

    .line 52
    .line 53
    const-string v24, "mediation"

    .line 54
    .line 55
    const-string v25, "is_init"

    .line 56
    .line 57
    const-string v26, "extra"

    .line 58
    .line 59
    filled-new-array/range {v14 .. v26}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    const-string v16, "timestamp <= ?"

    .line 64
    .line 65
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP()J

    .line 66
    .line 67
    .line 68
    move-result-wide v17

    .line 69
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    filled-new-array {v14}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v17

    .line 77
    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 78
    .line 79
    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    invoke-interface {v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getOnceLogCount()I

    .line 84
    .line 85
    .line 86
    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    const/16 v1, 0xa

    .line 88
    .line 89
    :try_start_1
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    const/16 v1, 0x64

    .line 94
    .line 95
    if-le v14, v1, :cond_0

    .line 96
    .line 97
    const/16 v1, 0xa

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v1, v14

    .line 101
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v21

    .line 105
    const-string v14, "monitor_table"

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v20, 0x0

    .line 110
    .line 111
    const/16 v18, 0x0

    .line 112
    .line 113
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    if-eqz v13, :cond_11

    .line 118
    .line 119
    new-instance v14, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 122
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
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-eqz v16, :cond_d

    .line 134
    .line 135
    move/from16 v16, v1

    .line 136
    .line 137
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 138
    .line 139
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v17

    .line 146
    if-ltz v17, :cond_1

    .line 147
    .line 148
    move-object/from16 v17, v14

    .line 149
    .line 150
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    move-object/from16 v18, v2

    .line 155
    .line 156
    move-object/from16 v19, v3

    .line 157
    .line 158
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v2

    .line 162
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(J)V

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    move-object/from16 v1, p0

    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :cond_1
    move-object/from16 v18, v2

    .line 179
    .line 180
    move-object/from16 v19, v3

    .line 181
    .line 182
    move-object/from16 v17, v14

    .line 183
    .line 184
    :goto_2
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-ltz v2, :cond_2

    .line 189
    .line 190
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_2
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-ltz v2, :cond_3

    .line 206
    .line 207
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-ltz v2, :cond_4

    .line 223
    .line 224
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(I)V

    .line 233
    .line 234
    .line 235
    :cond_4
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-ltz v2, :cond_5

    .line 240
    .line 241
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(I)V

    .line 250
    .line 251
    .line 252
    :cond_5
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-ltz v2, :cond_6

    .line 257
    .line 258
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(I)V

    .line 267
    .line 268
    .line 269
    :cond_6
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-ltz v2, :cond_7

    .line 274
    .line 275
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_7
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-ltz v2, :cond_8

    .line 291
    .line 292
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :cond_8
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-ltz v2, :cond_9

    .line 308
    .line 309
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    :cond_9
    move-object/from16 v2, v19

    .line 321
    .line 322
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-ltz v3, :cond_a

    .line 327
    .line 328
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_a
    move-object/from16 v3, v18

    .line 340
    .line 341
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    if-ltz v14, :cond_b

    .line 346
    .line 347
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v14

    .line 351
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(I)V

    .line 356
    .line 357
    .line 358
    :cond_b
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-ltz v14, :cond_c

    .line 363
    .line 364
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v14

    .line 372
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_c
    move-object/from16 v14, v17

    .line 376
    .line 377
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move/from16 v1, v16

    .line 381
    .line 382
    move-object/from16 v27, v3

    .line 383
    .line 384
    move-object v3, v2

    .line 385
    move-object/from16 v2, v27

    .line 386
    .line 387
    goto/16 :goto_1

    .line 388
    .line 389
    :cond_d
    move/from16 v16, v1

    .line 390
    .line 391
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 392
    .line 393
    .line 394
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    if-nez v0, :cond_11

    .line 399
    .line 400
    move-object/from16 v1, p0

    .line 401
    .line 402
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-interface {v0, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->onMonitorUpload(Ljava/util/List;)V

    .line 409
    .line 410
    .line 411
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj/Sj;->Sj()Landroid/database/sqlite/SQLiteDatabase;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    const/4 v2, 0x0

    .line 416
    if-eqz v0, :cond_10

    .line 417
    .line 418
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_10

    .line 423
    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v4, "_id IN ("

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    move v4, v2

    .line 435
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    if-ge v4, v5, :cond_f

    .line 440
    .line 441
    const-string v5, "?"

    .line 442
    .line 443
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    add-int/lit8 v5, v5, -0x1

    .line 451
    .line 452
    if-ge v4, v5, :cond_e

    .line 453
    .line 454
    const-string v5, ","

    .line 455
    .line 456
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    goto :goto_4

    .line 460
    :catchall_1
    move-exception v0

    .line 461
    goto :goto_6

    .line 462
    :cond_e
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 463
    .line 464
    goto :goto_3

    .line 465
    :cond_f
    const-string v4, ")"

    .line 466
    .line 467
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    new-array v4, v2, [Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, [Ljava/lang/String;

    .line 477
    .line 478
    const-string v5, "monitor_table"

    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 488
    .line 489
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_10

    .line 494
    .line 495
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 496
    .line 497
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP()J

    .line 502
    .line 503
    .line 504
    move-result-wide v3

    .line 505
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;->Sj(J)V

    .line 506
    .line 507
    .line 508
    :cond_10
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    move/from16 v14, v16

    .line 513
    .line 514
    if-lt v0, v14, :cond_12

    .line 515
    .line 516
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 517
    .line 518
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)I

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    const/16 v3, 0x3e8

    .line 523
    .line 524
    if-gt v0, v3, :cond_12

    .line 525
    .line 526
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    .line 527
    .line 528
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_11
    move-object/from16 v1, p0

    .line 533
    .line 534
    :cond_12
    :goto_5
    return-void

    .line 535
    :goto_6
    const-string v2, "BusMonitorCenter"

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    return-void
.end method
