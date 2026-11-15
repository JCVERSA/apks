.class public Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity__TheRouter__Autowired;
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
    const-string v1, "java.lang.Boolean"

    .line 4
    .line 5
    const-string v2, "java.lang.Integer"

    .line 6
    .line 7
    const-string v3, "java.lang.String"

    .line 8
    .line 9
    instance-of v4, v0, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;

    .line 10
    .line 11
    if-eqz v4, :cond_e

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    check-cast v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;

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
    if-eqz v0, :cond_e

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
    const-string v8, "java.lang.Boolean"

    .line 40
    .line 41
    const-string v9, "extra_completed"

    .line 42
    .line 43
    const-string v11, ""

    .line 44
    .line 45
    const-string v12, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 46
    .line 47
    const-string v13, "completed"

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
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->h:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_1
    :try_start_1
    new-instance v0, Lcom/therouter/router/b;

    .line 79
    .line 80
    const-string v9, "java.lang.Boolean"

    .line 81
    .line 82
    const-string v10, "extra_is_series"

    .line 83
    .line 84
    const-string v12, ""

    .line 85
    .line 86
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 87
    .line 88
    const-string v14, "isSeries"

    .line 89
    .line 90
    const-string v16, "No desc."

    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v15, 0x0

    .line 94
    move-object v8, v0

    .line 95
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v6, v1, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->i:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    .line 110
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_2

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_2
    :try_start_2
    new-instance v0, Lcom/therouter/router/b;

    .line 120
    .line 121
    const-string v9, "java.lang.Integer"

    .line 122
    .line 123
    const-string v10, "extra_height"

    .line 124
    .line 125
    const-string v12, ""

    .line 126
    .line 127
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 128
    .line 129
    const-string v14, "videoHeight"

    .line 130
    .line 131
    const-string v16, "No desc."

    .line 132
    .line 133
    const/4 v11, 0x0

    .line 134
    const/4 v15, 0x0

    .line 135
    move-object v8, v0

    .line 136
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz v0, :cond_3

    .line 146
    .line 147
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->k:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :catch_2
    move-exception v0

    .line 151
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_3
    :try_start_3
    new-instance v0, Lcom/therouter/router/b;

    .line 161
    .line 162
    const-string v9, "java.lang.Integer"

    .line 163
    .line 164
    const-string v10, "extra_parent_position"

    .line 165
    .line 166
    const-string v12, ""

    .line 167
    .line 168
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 169
    .line 170
    const-string v14, "parentPosition"

    .line 171
    .line 172
    const-string v16, "No desc."

    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    const/4 v15, 0x0

    .line 176
    move-object v8, v0

    .line 177
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/Integer;

    .line 185
    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->m:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :catch_3
    move-exception v0

    .line 192
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_4

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :cond_4
    :goto_4
    :try_start_4
    new-instance v0, Lcom/therouter/router/b;

    .line 202
    .line 203
    const-string v9, "java.lang.Integer"

    .line 204
    .line 205
    const-string v10, "extra_position"

    .line 206
    .line 207
    const-string v12, ""

    .line 208
    .line 209
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 210
    .line 211
    const-string v14, "position"

    .line 212
    .line 213
    const-string v16, "No desc."

    .line 214
    .line 215
    const/4 v11, 0x0

    .line 216
    const/4 v15, 0x0

    .line 217
    move-object v8, v0

    .line 218
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/lang/Integer;

    .line 226
    .line 227
    if-eqz v0, :cond_5

    .line 228
    .line 229
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->n:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :catch_4
    move-exception v0

    .line 233
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_5

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    .line 241
    .line 242
    :cond_5
    :goto_5
    :try_start_5
    new-instance v0, Lcom/therouter/router/b;

    .line 243
    .line 244
    const-string v9, "java.lang.Integer"

    .line 245
    .line 246
    const-string v10, "extra_width"

    .line 247
    .line 248
    const-string v12, ""

    .line 249
    .line 250
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 251
    .line 252
    const-string v14, "videoWidth"

    .line 253
    .line 254
    const-string v16, "No desc."

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    const/4 v15, 0x0

    .line 258
    move-object v8, v0

    .line 259
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v6, v2, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/lang/Integer;

    .line 267
    .line 268
    if-eqz v0, :cond_6

    .line 269
    .line 270
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->l:Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_5
    move-exception v0

    .line 274
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-eqz v7, :cond_6

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    .line 282
    .line 283
    :cond_6
    :goto_6
    :try_start_6
    new-instance v0, Lcom/therouter/router/b;

    .line 284
    .line 285
    const-string v9, "java.lang.String"

    .line 286
    .line 287
    const-string v10, "extra_local_path"

    .line 288
    .line 289
    const-string v12, ""

    .line 290
    .line 291
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 292
    .line 293
    const-string v14, "path"

    .line 294
    .line 295
    const-string v16, "No desc."

    .line 296
    .line 297
    const/4 v11, 0x0

    .line 298
    const/4 v15, 0x0

    .line 299
    move-object v8, v0

    .line 300
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Ljava/lang/String;

    .line 308
    .line 309
    if-eqz v0, :cond_7

    .line 310
    .line 311
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->a:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :catch_6
    move-exception v0

    .line 315
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_7

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    .line 323
    .line 324
    :cond_7
    :goto_7
    :try_start_7
    new-instance v0, Lcom/therouter/router/b;

    .line 325
    .line 326
    const-string v9, "java.lang.String"

    .line 327
    .line 328
    const-string v10, "extra_name"

    .line 329
    .line 330
    const-string v12, ""

    .line 331
    .line 332
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 333
    .line 334
    const-string v14, "name"

    .line 335
    .line 336
    const-string v16, "No desc."

    .line 337
    .line 338
    const/4 v11, 0x0

    .line 339
    const/4 v15, 0x0

    .line 340
    move-object v8, v0

    .line 341
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Ljava/lang/String;

    .line 349
    .line 350
    if-eqz v0, :cond_8

    .line 351
    .line 352
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->d:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :catch_7
    move-exception v0

    .line 356
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-eqz v7, :cond_8

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    .line 364
    .line 365
    :cond_8
    :goto_8
    :try_start_8
    new-instance v0, Lcom/therouter/router/b;

    .line 366
    .line 367
    const-string v9, "java.lang.String"

    .line 368
    .line 369
    const-string v10, "extra_page_from"

    .line 370
    .line 371
    const-string v12, ""

    .line 372
    .line 373
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 374
    .line 375
    const-string v14, "pageFrom"

    .line 376
    .line 377
    const-string v16, "No desc."

    .line 378
    .line 379
    const/4 v11, 0x0

    .line 380
    const/4 v15, 0x0

    .line 381
    move-object v8, v0

    .line 382
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Ljava/lang/String;

    .line 390
    .line 391
    if-eqz v0, :cond_9

    .line 392
    .line 393
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :catch_8
    move-exception v0

    .line 397
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_9

    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 404
    .line 405
    .line 406
    :cond_9
    :goto_9
    :try_start_9
    new-instance v0, Lcom/therouter/router/b;

    .line 407
    .line 408
    const-string v9, "java.lang.String"

    .line 409
    .line 410
    const-string v10, "extra_post_id"

    .line 411
    .line 412
    const-string v12, ""

    .line 413
    .line 414
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 415
    .line 416
    const-string v14, "postId"

    .line 417
    .line 418
    const-string v16, "No desc."

    .line 419
    .line 420
    const/4 v11, 0x0

    .line 421
    const/4 v15, 0x0

    .line 422
    move-object v8, v0

    .line 423
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Ljava/lang/String;

    .line 431
    .line 432
    if-eqz v0, :cond_a

    .line 433
    .line 434
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->f:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 435
    .line 436
    goto :goto_a

    .line 437
    :catch_9
    move-exception v0

    .line 438
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    if-eqz v7, :cond_a

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 445
    .line 446
    .line 447
    :cond_a
    :goto_a
    :try_start_a
    new-instance v0, Lcom/therouter/router/b;

    .line 448
    .line 449
    const-string v9, "java.lang.String"

    .line 450
    .line 451
    const-string v10, "extra_proxy_url"

    .line 452
    .line 453
    const-string v12, ""

    .line 454
    .line 455
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 456
    .line 457
    const-string v14, "proxyUrl"

    .line 458
    .line 459
    const-string v16, "No desc."

    .line 460
    .line 461
    const/4 v11, 0x0

    .line 462
    const/4 v15, 0x0

    .line 463
    move-object v8, v0

    .line 464
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Ljava/lang/String;

    .line 472
    .line 473
    if-eqz v0, :cond_b

    .line 474
    .line 475
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->c:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 476
    .line 477
    goto :goto_b

    .line 478
    :catch_a
    move-exception v0

    .line 479
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 480
    .line 481
    .line 482
    move-result v7

    .line 483
    if-eqz v7, :cond_b

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    .line 487
    .line 488
    :cond_b
    :goto_b
    :try_start_b
    new-instance v0, Lcom/therouter/router/b;

    .line 489
    .line 490
    const-string v9, "java.lang.String"

    .line 491
    .line 492
    const-string v10, "extra_resource_id"

    .line 493
    .line 494
    const-string v12, ""

    .line 495
    .line 496
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 497
    .line 498
    const-string v14, "resourceId"

    .line 499
    .line 500
    const-string v16, "No desc."

    .line 501
    .line 502
    const/4 v11, 0x0

    .line 503
    const/4 v15, 0x0

    .line 504
    move-object v8, v0

    .line 505
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Ljava/lang/String;

    .line 513
    .line 514
    if-eqz v0, :cond_c

    .line 515
    .line 516
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->e:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 517
    .line 518
    goto :goto_c

    .line 519
    :catch_b
    move-exception v0

    .line 520
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-eqz v7, :cond_c

    .line 525
    .line 526
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 527
    .line 528
    .line 529
    :cond_c
    :goto_c
    :try_start_c
    new-instance v0, Lcom/therouter/router/b;

    .line 530
    .line 531
    const-string v9, "java.lang.String"

    .line 532
    .line 533
    const-string v10, "extra_subject_id"

    .line 534
    .line 535
    const-string v12, ""

    .line 536
    .line 537
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 538
    .line 539
    const-string v14, "subjectId"

    .line 540
    .line 541
    const-string v16, "No desc."

    .line 542
    .line 543
    const/4 v11, 0x0

    .line 544
    const/4 v15, 0x0

    .line 545
    move-object v8, v0

    .line 546
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    check-cast v0, Ljava/lang/String;

    .line 554
    .line 555
    if-eqz v0, :cond_d

    .line 556
    .line 557
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->g:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 558
    .line 559
    goto :goto_d

    .line 560
    :catch_c
    move-exception v0

    .line 561
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 562
    .line 563
    .line 564
    move-result v7

    .line 565
    if-eqz v7, :cond_d

    .line 566
    .line 567
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 568
    .line 569
    .line 570
    :cond_d
    :goto_d
    :try_start_d
    new-instance v0, Lcom/therouter/router/b;

    .line 571
    .line 572
    const-string v9, "java.lang.String"

    .line 573
    .line 574
    const-string v10, "extra_url"

    .line 575
    .line 576
    const-string v12, ""

    .line 577
    .line 578
    const-string v13, "com.transsion.postdetail.ui.activity.LocalVideoDetailActivity"

    .line 579
    .line 580
    const-string v14, "url"

    .line 581
    .line 582
    const-string v16, "No desc."

    .line 583
    .line 584
    const/4 v11, 0x0

    .line 585
    const/4 v15, 0x0

    .line 586
    move-object v8, v0

    .line 587
    invoke-direct/range {v8 .. v16}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-interface {v6, v3, v4, v0}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Ljava/lang/String;

    .line 595
    .line 596
    if-eqz v0, :cond_0

    .line 597
    .line 598
    iput-object v0, v4, Lcom/transsion/postdetail/ui/activity/LocalVideoDetailActivity;->b:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 599
    .line 600
    goto/16 :goto_0

    .line 601
    .line 602
    :catch_d
    move-exception v0

    .line 603
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-eqz v6, :cond_0

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_0

    .line 613
    .line 614
    :cond_e
    return-void
.end method
