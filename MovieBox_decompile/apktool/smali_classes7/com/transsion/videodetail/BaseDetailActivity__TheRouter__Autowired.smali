.class public Lcom/transsion/videodetail/BaseDetailActivity__TheRouter__Autowired;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Created by kymjs, and APT Version is 1.3.0."

.field public static final THEROUTER_APT_VERSION:Ljava/lang/String; = "1.3.0"


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

.method public static autowiredInject(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "int"

    .line 4
    .line 5
    const-string v2, "java.lang.String"

    .line 6
    .line 7
    const-string v3, "boolean"

    .line 8
    .line 9
    instance-of v4, v0, Lcom/transsion/videodetail/BaseDetailActivity;

    .line 10
    .line 11
    if-eqz v4, :cond_b

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lcom/transsion/videodetail/BaseDetailActivity;

    .line 15
    .line 16
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_b

    .line 29
    .line 30
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v6, v0

    .line 35
    check-cast v6, Lmf/a;

    .line 36
    .line 37
    :try_start_0
    new-instance v0, Lcom/therouter/router/b;

    .line 38
    .line 39
    const-string v8, "boolean"

    .line 40
    .line 41
    const-string v9, "autoDownload"

    .line 42
    .line 43
    const-string v11, ""

    .line 44
    .line 45
    const-string v12, "com.transsion.videodetail.BaseDetailActivity"

    .line 46
    .line 47
    const-string v13, "autoDownload"

    .line 48
    .line 49
    const-string v15, "No desc."

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    move-object v7, v0

    .line 54
    invoke-direct/range {v7 .. v15}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iput-boolean v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Lcom/therouter/router/b;

    .line 83
    .line 84
    const-string v9, "boolean"

    .line 85
    .line 86
    const-string v10, "autoPlay"

    .line 87
    .line 88
    const-string v12, ""

    .line 89
    .line 90
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 91
    .line 92
    const-string v14, "autoPlay"

    .line 93
    .line 94
    const-string v16, "No desc."

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v15, 0x0

    .line 98
    move-object v8, v0

    .line 99
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/Boolean;

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput-boolean v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->l:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_1
    move-exception v0

    .line 118
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_2
    :try_start_2
    new-instance v0, Lcom/therouter/router/b;

    .line 128
    .line 129
    const-string v9, "boolean"

    .line 130
    .line 131
    const-string v10, "isMusicFloatViewClick"

    .line 132
    .line 133
    const-string v12, ""

    .line 134
    .line 135
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 136
    .line 137
    const-string v14, "isMusicFloatViewClick"

    .line 138
    .line 139
    const-string v16, "No desc."

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    const/4 v15, 0x0

    .line 143
    move-object v8, v0

    .line 144
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/lang/Boolean;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput-boolean v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->s:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_2
    move-exception v0

    .line 163
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-eqz v7, :cond_3

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_3
    :try_start_3
    new-instance v0, Lcom/therouter/router/b;

    .line 173
    .line 174
    const-string v9, "boolean"

    .line 175
    .line 176
    const-string v10, "is_music_liked_fragment"

    .line 177
    .line 178
    const-string v12, ""

    .line 179
    .line 180
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 181
    .line 182
    const-string v14, "isMusicLikedFragment"

    .line 183
    .line 184
    const-string v16, "No desc."

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v15, 0x0

    .line 188
    move-object v8, v0

    .line 189
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/lang/Boolean;

    .line 197
    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput-boolean v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->r:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :catch_3
    move-exception v0

    .line 208
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_4

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :cond_4
    :goto_4
    :try_start_4
    new-instance v0, Lcom/therouter/router/b;

    .line 218
    .line 219
    const-string v9, "int"

    .line 220
    .line 221
    const-string v10, "episode"

    .line 222
    .line 223
    const-string v12, ""

    .line 224
    .line 225
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 226
    .line 227
    const-string v14, "targetEp"

    .line 228
    .line 229
    const-string v16, "No desc."

    .line 230
    .line 231
    const/4 v11, 0x0

    .line 232
    const/4 v15, 0x0

    .line 233
    move-object v8, v0

    .line 234
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Ljava/lang/Integer;

    .line 242
    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iput v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->q:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :catch_4
    move-exception v0

    .line 253
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_5

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 260
    .line 261
    .line 262
    :cond_5
    :goto_5
    :try_start_5
    new-instance v0, Lcom/therouter/router/b;

    .line 263
    .line 264
    const-string v9, "int"

    .line 265
    .line 266
    const-string v10, "season"

    .line 267
    .line 268
    const-string v12, ""

    .line 269
    .line 270
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 271
    .line 272
    const-string v14, "curSeason"

    .line 273
    .line 274
    const-string v16, "No desc."

    .line 275
    .line 276
    const/4 v11, 0x0

    .line 277
    const/4 v15, 0x0

    .line 278
    move-object v8, v0

    .line 279
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/Integer;

    .line 287
    .line 288
    if-eqz v0, :cond_6

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    iput v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->p:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :catch_5
    move-exception v0

    .line 298
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_6

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    .line 306
    .line 307
    :cond_6
    :goto_6
    :try_start_6
    new-instance v0, Lcom/therouter/router/b;

    .line 308
    .line 309
    const-string v9, "int"

    .line 310
    .line 311
    const-string v10, "yy_preload_id"

    .line 312
    .line 313
    const-string v12, ""

    .line 314
    .line 315
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 316
    .line 317
    const-string v14, "preloadId"

    .line 318
    .line 319
    const-string v16, "No desc."

    .line 320
    .line 321
    const/4 v11, 0x0

    .line 322
    const/4 v15, 0x0

    .line 323
    move-object v8, v0

    .line 324
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Ljava/lang/Integer;

    .line 332
    .line 333
    if-eqz v0, :cond_7

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iput v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->o:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :catch_6
    move-exception v0

    .line 343
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_7

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    :cond_7
    :goto_7
    :try_start_7
    new-instance v0, Lcom/therouter/router/b;

    .line 353
    .line 354
    const-string v9, "java.lang.String"

    .line 355
    .line 356
    const-string v10, "id"

    .line 357
    .line 358
    const-string v12, ""

    .line 359
    .line 360
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 361
    .line 362
    const-string v14, "id"

    .line 363
    .line 364
    const-string v16, "No desc."

    .line 365
    .line 366
    const/4 v11, 0x0

    .line 367
    const/4 v15, 0x0

    .line 368
    move-object v8, v0

    .line 369
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Ljava/lang/String;

    .line 377
    .line 378
    if-eqz v0, :cond_8

    .line 379
    .line 380
    iput-object v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->i:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 381
    .line 382
    goto :goto_8

    .line 383
    :catch_7
    move-exception v0

    .line 384
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_8

    .line 389
    .line 390
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 391
    .line 392
    .line 393
    :cond_8
    :goto_8
    :try_start_8
    new-instance v0, Lcom/therouter/router/b;

    .line 394
    .line 395
    const-string v9, "java.lang.String"

    .line 396
    .line 397
    const-string v10, "module_name"

    .line 398
    .line 399
    const-string v12, ""

    .line 400
    .line 401
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 402
    .line 403
    const-string v14, "moduleName"

    .line 404
    .line 405
    const-string v16, "No desc."

    .line 406
    .line 407
    const/4 v11, 0x0

    .line 408
    const/4 v15, 0x0

    .line 409
    move-object v8, v0

    .line 410
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Ljava/lang/String;

    .line 418
    .line 419
    if-eqz v0, :cond_9

    .line 420
    .line 421
    iput-object v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->n:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 422
    .line 423
    goto :goto_9

    .line 424
    :catch_8
    move-exception v0

    .line 425
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 426
    .line 427
    .line 428
    move-result v7

    .line 429
    if-eqz v7, :cond_9

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 432
    .line 433
    .line 434
    :cond_9
    :goto_9
    :try_start_9
    new-instance v0, Lcom/therouter/router/b;

    .line 435
    .line 436
    const-string v9, "java.lang.String"

    .line 437
    .line 438
    const-string v10, "ops"

    .line 439
    .line 440
    const-string v12, ""

    .line 441
    .line 442
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 443
    .line 444
    const-string v14, "ops"

    .line 445
    .line 446
    const-string v16, "No desc."

    .line 447
    .line 448
    const/4 v11, 0x0

    .line 449
    const/4 v15, 0x0

    .line 450
    move-object v8, v0

    .line 451
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Ljava/lang/String;

    .line 459
    .line 460
    if-eqz v0, :cond_a

    .line 461
    .line 462
    iput-object v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->j:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 463
    .line 464
    goto :goto_a

    .line 465
    :catch_9
    move-exception v0

    .line 466
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_a

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 473
    .line 474
    .line 475
    :cond_a
    :goto_a
    :try_start_a
    new-instance v0, Lcom/therouter/router/b;

    .line 476
    .line 477
    const-string v9, "java.lang.String"

    .line 478
    .line 479
    const-string v10, "resourceId"

    .line 480
    .line 481
    const-string v12, ""

    .line 482
    .line 483
    const-string v13, "com.transsion.videodetail.BaseDetailActivity"

    .line 484
    .line 485
    const-string v14, "autoPlayResourceId"

    .line 486
    .line 487
    const-string v16, "No desc."

    .line 488
    .line 489
    const/4 v11, 0x0

    .line 490
    const/4 v15, 0x0

    .line 491
    move-object v8, v0

    .line 492
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Ljava/lang/String;

    .line 500
    .line 501
    if-eqz v0, :cond_0

    .line 502
    .line 503
    iput-object v0, v4, Lcom/transsion/videodetail/BaseDetailActivity;->m:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :catch_a
    move-exception v0

    .line 508
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eqz v6, :cond_0

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :cond_b
    return-void
.end method
