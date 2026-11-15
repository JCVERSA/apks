.class public Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity__TheRouter__Autowired;
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
    .locals 15

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    const-string v1, "boolean"

    .line 4
    .line 5
    instance-of v2, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;

    .line 6
    .line 7
    if-eqz v2, :cond_d

    .line 8
    .line 9
    check-cast p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;

    .line 10
    .line 11
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_d

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lmf/a;

    .line 30
    .line 31
    :try_start_0
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "boolean"

    .line 34
    .line 35
    const-string v6, "from_comment"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 40
    .line 41
    const-string v10, "fromComment"

    .line 42
    .line 43
    const-string v12, "No desc."

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    move-object v4, v13

    .line 48
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v3, v1, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v4

    .line 67
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    :try_start_1
    new-instance v4, Lcom/therouter/router/b;

    .line 77
    .line 78
    const-string v7, "boolean"

    .line 79
    .line 80
    const-string v8, "is_build_in"

    .line 81
    .line 82
    const-string v10, ""

    .line 83
    .line 84
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 85
    .line 86
    const-string v12, "isBuiltIn"

    .line 87
    .line 88
    const-string v14, "No desc."

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v13, 0x0

    .line 92
    move-object v6, v4

    .line 93
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/Boolean;

    .line 101
    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->u:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catch_1
    move-exception v4

    .line 112
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_2

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_2
    :try_start_2
    new-instance v4, Lcom/therouter/router/b;

    .line 122
    .line 123
    const-string v7, "boolean"

    .line 124
    .line 125
    const-string v8, "is_from_downloaded"

    .line 126
    .line 127
    const-string v10, ""

    .line 128
    .line 129
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 130
    .line 131
    const-string v12, "isFromDownloaded"

    .line 132
    .line 133
    const-string v14, "No desc."

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    const/4 v13, 0x0

    .line 137
    move-object v6, v4

    .line 138
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Ljava/lang/Boolean;

    .line 146
    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->s:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_2
    move-exception v4

    .line 157
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_3

    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_3
    :try_start_3
    new-instance v4, Lcom/therouter/router/b;

    .line 167
    .line 168
    const-string v7, "boolean"

    .line 169
    .line 170
    const-string v8, "prioritize_downloaded"

    .line 171
    .line 172
    const-string v10, ""

    .line 173
    .line 174
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 175
    .line 176
    const-string v12, "prioritizeDownloaded"

    .line 177
    .line 178
    const-string v14, "No desc."

    .line 179
    .line 180
    const/4 v9, 0x0

    .line 181
    const/4 v13, 0x0

    .line 182
    move-object v6, v4

    .line 183
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Ljava/lang/Boolean;

    .line 191
    .line 192
    if-eqz v4, :cond_4

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->r:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catch_3
    move-exception v4

    .line 202
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_4

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :cond_4
    :goto_4
    :try_start_4
    new-instance v4, Lcom/therouter/router/b;

    .line 212
    .line 213
    const-string v7, "boolean"

    .line 214
    .line 215
    const-string v8, "video_load_more"

    .line 216
    .line 217
    const-string v10, ""

    .line 218
    .line 219
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 220
    .line 221
    const-string v12, "videoLoadMore"

    .line 222
    .line 223
    const-string v14, "No desc."

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    const/4 v13, 0x0

    .line 227
    move-object v6, v4

    .line 228
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Ljava/lang/Boolean;

    .line 236
    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->o:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :catch_4
    move-exception v4

    .line 247
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_5

    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    :cond_5
    :goto_5
    :try_start_5
    const-string v4, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 257
    .line 258
    new-instance v14, Lcom/therouter/router/b;

    .line 259
    .line 260
    const-string v6, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 261
    .line 262
    const-string v7, "item_object"

    .line 263
    .line 264
    const-string v9, ""

    .line 265
    .line 266
    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 267
    .line 268
    const-string v11, "itemObject"

    .line 269
    .line 270
    const-string v13, "No desc."

    .line 271
    .line 272
    const/4 v8, 0x0

    .line 273
    const/4 v12, 0x0

    .line 274
    move-object v5, v14

    .line 275
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v3, v4, p0, v14}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 283
    .line 284
    if-eqz v4, :cond_6

    .line 285
    .line 286
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->t:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :catch_5
    move-exception v4

    .line 290
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-eqz v5, :cond_6

    .line 295
    .line 296
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    .line 298
    .line 299
    :cond_6
    :goto_6
    :try_start_6
    const-string v4, "int"

    .line 300
    .line 301
    new-instance v14, Lcom/therouter/router/b;

    .line 302
    .line 303
    const-string v6, "int"

    .line 304
    .line 305
    const-string v7, "tab_id"

    .line 306
    .line 307
    const-string v9, ""

    .line 308
    .line 309
    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 310
    .line 311
    const-string v11, "tabId"

    .line 312
    .line 313
    const-string v13, "No desc."

    .line 314
    .line 315
    const/4 v8, 0x0

    .line 316
    const/4 v12, 0x0

    .line 317
    move-object v5, v14

    .line 318
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v3, v4, p0, v14}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    check-cast v4, Ljava/lang/Integer;

    .line 326
    .line 327
    if-eqz v4, :cond_7

    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    iput v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->n:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :catch_6
    move-exception v4

    .line 337
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_7

    .line 342
    .line 343
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    .line 345
    .line 346
    :cond_7
    :goto_7
    :try_start_7
    new-instance v4, Lcom/therouter/router/b;

    .line 347
    .line 348
    const-string v7, "java.lang.String"

    .line 349
    .line 350
    const-string v8, "id"

    .line 351
    .line 352
    const-string v10, ""

    .line 353
    .line 354
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 355
    .line 356
    const-string v12, "postId"

    .line 357
    .line 358
    const-string v14, "No desc."

    .line 359
    .line 360
    const/4 v9, 0x0

    .line 361
    const/4 v13, 0x0

    .line 362
    move-object v6, v4

    .line 363
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    check-cast v4, Ljava/lang/String;

    .line 371
    .line 372
    if-eqz v4, :cond_8

    .line 373
    .line 374
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->j:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 375
    .line 376
    goto :goto_8

    .line 377
    :catch_7
    move-exception v4

    .line 378
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_8

    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 385
    .line 386
    .line 387
    :cond_8
    :goto_8
    :try_start_8
    new-instance v4, Lcom/therouter/router/b;

    .line 388
    .line 389
    const-string v7, "java.lang.String"

    .line 390
    .line 391
    const-string v8, "item_type"

    .line 392
    .line 393
    const-string v10, ""

    .line 394
    .line 395
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 396
    .line 397
    const-string v12, "itemType"

    .line 398
    .line 399
    const-string v14, "No desc."

    .line 400
    .line 401
    const/4 v9, 0x0

    .line 402
    const/4 v13, 0x0

    .line 403
    move-object v6, v4

    .line 404
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Ljava/lang/String;

    .line 412
    .line 413
    if-eqz v4, :cond_9

    .line 414
    .line 415
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->k:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 416
    .line 417
    goto :goto_9

    .line 418
    :catch_8
    move-exception v4

    .line 419
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    if-eqz v5, :cond_9

    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    .line 427
    .line 428
    :cond_9
    :goto_9
    :try_start_9
    new-instance v4, Lcom/therouter/router/b;

    .line 429
    .line 430
    const-string v7, "java.lang.String"

    .line 431
    .line 432
    const-string v8, "media_type"

    .line 433
    .line 434
    const-string v10, ""

    .line 435
    .line 436
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 437
    .line 438
    const-string v12, "mediaType"

    .line 439
    .line 440
    const-string v14, "No desc."

    .line 441
    .line 442
    const/4 v9, 0x0

    .line 443
    const/4 v13, 0x0

    .line 444
    move-object v6, v4

    .line 445
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    check-cast v4, Ljava/lang/String;

    .line 453
    .line 454
    if-eqz v4, :cond_a

    .line 455
    .line 456
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->i:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 457
    .line 458
    goto :goto_a

    .line 459
    :catch_9
    move-exception v4

    .line 460
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-eqz v5, :cond_a

    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    .line 468
    .line 469
    :cond_a
    :goto_a
    :try_start_a
    new-instance v4, Lcom/therouter/router/b;

    .line 470
    .line 471
    const-string v7, "java.lang.String"

    .line 472
    .line 473
    const-string v8, "page_from"

    .line 474
    .line 475
    const-string v10, ""

    .line 476
    .line 477
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 478
    .line 479
    const-string v12, "pageFrom"

    .line 480
    .line 481
    const-string v14, "No desc."

    .line 482
    .line 483
    const/4 v9, 0x0

    .line 484
    const/4 v13, 0x0

    .line 485
    move-object v6, v4

    .line 486
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    check-cast v4, Ljava/lang/String;

    .line 494
    .line 495
    if-eqz v4, :cond_b

    .line 496
    .line 497
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->p:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 498
    .line 499
    goto :goto_b

    .line 500
    :catch_a
    move-exception v4

    .line 501
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 502
    .line 503
    .line 504
    move-result v5

    .line 505
    if-eqz v5, :cond_b

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 508
    .line 509
    .line 510
    :cond_b
    :goto_b
    :try_start_b
    new-instance v4, Lcom/therouter/router/b;

    .line 511
    .line 512
    const-string v7, "java.lang.String"

    .line 513
    .line 514
    const-string v8, "rec_ops"

    .line 515
    .line 516
    const-string v10, ""

    .line 517
    .line 518
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 519
    .line 520
    const-string v12, "ops"

    .line 521
    .line 522
    const-string v14, "No desc."

    .line 523
    .line 524
    const/4 v9, 0x0

    .line 525
    const/4 v13, 0x0

    .line 526
    move-object v6, v4

    .line 527
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    check-cast v4, Ljava/lang/String;

    .line 535
    .line 536
    if-eqz v4, :cond_c

    .line 537
    .line 538
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->m:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 539
    .line 540
    goto :goto_c

    .line 541
    :catch_b
    move-exception v4

    .line 542
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 543
    .line 544
    .line 545
    move-result v5

    .line 546
    if-eqz v5, :cond_c

    .line 547
    .line 548
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 549
    .line 550
    .line 551
    :cond_c
    :goto_c
    :try_start_c
    const-string v4, "java.util.ArrayList<com.transsion.moviedetailapi.bean.PostSubjectItem>"

    .line 552
    .line 553
    new-instance v14, Lcom/therouter/router/b;

    .line 554
    .line 555
    const-string v6, "java.util.ArrayList<com.transsion.moviedetailapi.bean.PostSubjectItem>"

    .line 556
    .line 557
    const-string v7, "downloaded_shorts_list"

    .line 558
    .line 559
    const-string v9, ""

    .line 560
    .line 561
    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailVideoActivity"

    .line 562
    .line 563
    const-string v11, "downloadedShortsList"

    .line 564
    .line 565
    const-string v13, "No desc."

    .line 566
    .line 567
    const/4 v8, 0x0

    .line 568
    const/4 v12, 0x0

    .line 569
    move-object v5, v14

    .line 570
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-interface {v3, v4, p0, v14}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    check-cast v3, Ljava/util/ArrayList;

    .line 578
    .line 579
    if-eqz v3, :cond_0

    .line 580
    .line 581
    iput-object v3, p0, Lcom/transsion/postdetail/ui/activity/PostDetailVideoActivity;->q:Ljava/util/ArrayList;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :catch_c
    move-exception v3

    .line 586
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    if-eqz v4, :cond_0

    .line 591
    .line 592
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_0

    .line 596
    .line 597
    :cond_d
    return-void
.end method
