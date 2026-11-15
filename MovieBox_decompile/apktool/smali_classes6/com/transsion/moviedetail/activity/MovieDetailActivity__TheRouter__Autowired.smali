.class public Lcom/transsion/moviedetail/activity/MovieDetailActivity__TheRouter__Autowired;
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
    const-string v1, "boolean"

    .line 4
    .line 5
    const-string v2, "int"

    .line 6
    .line 7
    const-string v3, "java.lang.String"

    .line 8
    .line 9
    instance-of v4, v0, Lcom/transsion/moviedetail/activity/MovieDetailActivity;

    .line 10
    .line 11
    if-eqz v4, :cond_9

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;

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
    if-eqz v0, :cond_9

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
    const-string v12, "com.transsion.moviedetail.activity.MovieDetailActivity"

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
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput-boolean v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->k:Z
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
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

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
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput-boolean v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->l:Z
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
    const-string v9, "int"

    .line 130
    .line 131
    const-string v10, "season"

    .line 132
    .line 133
    const-string v12, ""

    .line 134
    .line 135
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 136
    .line 137
    const-string v14, "curSeason"

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
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/lang/Integer;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->p:I
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
    const-string v9, "int"

    .line 175
    .line 176
    const-string v10, "subject_type"

    .line 177
    .line 178
    const-string v12, ""

    .line 179
    .line 180
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 181
    .line 182
    const-string v14, "subjectYpe"

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
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Ljava/lang/Integer;

    .line 197
    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->q:I
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
    const-string v10, "yy_preload_id"

    .line 222
    .line 223
    const-string v12, ""

    .line 224
    .line 225
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 226
    .line 227
    const-string v14, "preloadId"

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
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->o:I
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
    const-string v9, "java.lang.String"

    .line 265
    .line 266
    const-string v10, "id"

    .line 267
    .line 268
    const-string v12, ""

    .line 269
    .line 270
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 271
    .line 272
    const-string v14, "id"

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
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v0, :cond_6

    .line 289
    .line 290
    iput-object v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->i:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :catch_5
    move-exception v0

    .line 294
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_6

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    :cond_6
    :goto_6
    :try_start_6
    new-instance v0, Lcom/therouter/router/b;

    .line 304
    .line 305
    const-string v9, "java.lang.String"

    .line 306
    .line 307
    const-string v10, "module_name"

    .line 308
    .line 309
    const-string v12, ""

    .line 310
    .line 311
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 312
    .line 313
    const-string v14, "moduleName"

    .line 314
    .line 315
    const-string v16, "No desc."

    .line 316
    .line 317
    const/4 v11, 0x0

    .line 318
    const/4 v15, 0x0

    .line 319
    move-object v8, v0

    .line 320
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Ljava/lang/String;

    .line 328
    .line 329
    if-eqz v0, :cond_7

    .line 330
    .line 331
    iput-object v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->n:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :catch_6
    move-exception v0

    .line 335
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-eqz v7, :cond_7

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    :cond_7
    :goto_7
    :try_start_7
    new-instance v0, Lcom/therouter/router/b;

    .line 345
    .line 346
    const-string v9, "java.lang.String"

    .line 347
    .line 348
    const-string v10, "ops"

    .line 349
    .line 350
    const-string v12, ""

    .line 351
    .line 352
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 353
    .line 354
    const-string v14, "ops"

    .line 355
    .line 356
    const-string v16, "No desc."

    .line 357
    .line 358
    const/4 v11, 0x0

    .line 359
    const/4 v15, 0x0

    .line 360
    move-object v8, v0

    .line 361
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    check-cast v0, Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v0, :cond_8

    .line 371
    .line 372
    iput-object v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->j:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 373
    .line 374
    goto :goto_8

    .line 375
    :catch_7
    move-exception v0

    .line 376
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    if-eqz v7, :cond_8

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    .line 384
    .line 385
    :cond_8
    :goto_8
    :try_start_8
    new-instance v0, Lcom/therouter/router/b;

    .line 386
    .line 387
    const-string v9, "java.lang.String"

    .line 388
    .line 389
    const-string v10, "resourceId"

    .line 390
    .line 391
    const-string v12, ""

    .line 392
    .line 393
    const-string v13, "com.transsion.moviedetail.activity.MovieDetailActivity"

    .line 394
    .line 395
    const-string v14, "autoPlayResourceId"

    .line 396
    .line 397
    const-string v16, "No desc."

    .line 398
    .line 399
    const/4 v11, 0x0

    .line 400
    const/4 v15, 0x0

    .line 401
    move-object v8, v0

    .line 402
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    check-cast v0, Ljava/lang/String;

    .line 410
    .line 411
    if-eqz v0, :cond_0

    .line 412
    .line 413
    iput-object v0, v4, Lcom/transsion/moviedetail/activity/MovieDetailActivity;->m:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :catch_8
    move-exception v0

    .line 418
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 419
    .line 420
    .line 421
    move-result v6

    .line 422
    if-eqz v6, :cond_0

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :cond_9
    return-void
.end method
