.class public Lcom/transsion/postdetail/ui/activity/PostDetailActivity__TheRouter__Autowired;
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
    const-string v0, "boolean"

    .line 2
    .line 3
    const-string v1, "java.lang.String"

    .line 4
    .line 5
    instance-of v2, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

    .line 6
    .line 7
    if-eqz v2, :cond_b

    .line 8
    .line 9
    check-cast p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

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
    if-eqz v3, :cond_b

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
    const-string v9, "com.transsion.postdetail.ui.activity.PostDetailActivity"

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
    invoke-interface {v3, v0, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->l:Z
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
    const-string v8, "need_back_to_room"

    .line 81
    .line 82
    const-string v10, ""

    .line 83
    .line 84
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 85
    .line 86
    const-string v12, "needBackToRoom"

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
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->s:Z
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
    const-string v8, "video_load_more"

    .line 126
    .line 127
    const-string v10, ""

    .line 128
    .line 129
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 130
    .line 131
    const-string v12, "videoLoadMore"

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
    invoke-interface {v3, v0, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

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
    iput-boolean v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->o:Z
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
    const-string v4, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 167
    .line 168
    new-instance v14, Lcom/therouter/router/b;

    .line 169
    .line 170
    const-string v6, "com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 171
    .line 172
    const-string v7, "item_object"

    .line 173
    .line 174
    const-string v9, ""

    .line 175
    .line 176
    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 177
    .line 178
    const-string v11, "itemObject"

    .line 179
    .line 180
    const-string v13, "No desc."

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v12, 0x0

    .line 184
    move-object v5, v14

    .line 185
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v4, p0, v14}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 193
    .line 194
    if-eqz v4, :cond_4

    .line 195
    .line 196
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->q:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_3
    move-exception v4

    .line 200
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_4

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :cond_4
    :goto_4
    :try_start_4
    const-string v4, "int"

    .line 210
    .line 211
    new-instance v14, Lcom/therouter/router/b;

    .line 212
    .line 213
    const-string v6, "int"

    .line 214
    .line 215
    const-string v7, "tab_id"

    .line 216
    .line 217
    const-string v9, ""

    .line 218
    .line 219
    const-string v10, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 220
    .line 221
    const-string v11, "tabId"

    .line 222
    .line 223
    const-string v13, "No desc."

    .line 224
    .line 225
    const/4 v8, 0x0

    .line 226
    const/4 v12, 0x0

    .line 227
    move-object v5, v14

    .line 228
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v4, p0, v14}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Ljava/lang/Integer;

    .line 236
    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    iput v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->n:I
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
    new-instance v4, Lcom/therouter/router/b;

    .line 257
    .line 258
    const-string v7, "java.lang.String"

    .line 259
    .line 260
    const-string v8, "comment_id"

    .line 261
    .line 262
    const-string v10, ""

    .line 263
    .line 264
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 265
    .line 266
    const-string v12, "commentId"

    .line 267
    .line 268
    const-string v14, "No desc."

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    const/4 v13, 0x0

    .line 272
    move-object v6, v4

    .line 273
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v4, :cond_6

    .line 283
    .line 284
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->r:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :catch_5
    move-exception v4

    .line 288
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_6

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    :cond_6
    :goto_6
    :try_start_6
    new-instance v4, Lcom/therouter/router/b;

    .line 298
    .line 299
    const-string v7, "java.lang.String"

    .line 300
    .line 301
    const-string v8, "id"

    .line 302
    .line 303
    const-string v10, ""

    .line 304
    .line 305
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 306
    .line 307
    const-string v12, "postId"

    .line 308
    .line 309
    const-string v14, "No desc."

    .line 310
    .line 311
    const/4 v9, 0x0

    .line 312
    const/4 v13, 0x0

    .line 313
    move-object v6, v4

    .line 314
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Ljava/lang/String;

    .line 322
    .line 323
    if-eqz v4, :cond_7

    .line 324
    .line 325
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->j:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :catch_6
    move-exception v4

    .line 329
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_7

    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 336
    .line 337
    .line 338
    :cond_7
    :goto_7
    :try_start_7
    new-instance v4, Lcom/therouter/router/b;

    .line 339
    .line 340
    const-string v7, "java.lang.String"

    .line 341
    .line 342
    const-string v8, "item_type"

    .line 343
    .line 344
    const-string v10, ""

    .line 345
    .line 346
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 347
    .line 348
    const-string v12, "itemType"

    .line 349
    .line 350
    const-string v14, "No desc."

    .line 351
    .line 352
    const/4 v9, 0x0

    .line 353
    const/4 v13, 0x0

    .line 354
    move-object v6, v4

    .line 355
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    check-cast v4, Ljava/lang/String;

    .line 363
    .line 364
    if-eqz v4, :cond_8

    .line 365
    .line 366
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->k:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :catch_7
    move-exception v4

    .line 370
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_8

    .line 375
    .line 376
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    .line 378
    .line 379
    :cond_8
    :goto_8
    :try_start_8
    new-instance v4, Lcom/therouter/router/b;

    .line 380
    .line 381
    const-string v7, "java.lang.String"

    .line 382
    .line 383
    const-string v8, "media_type"

    .line 384
    .line 385
    const-string v10, ""

    .line 386
    .line 387
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 388
    .line 389
    const-string v12, "mediaType"

    .line 390
    .line 391
    const-string v14, "No desc."

    .line 392
    .line 393
    const/4 v9, 0x0

    .line 394
    const/4 v13, 0x0

    .line 395
    move-object v6, v4

    .line 396
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    check-cast v4, Ljava/lang/String;

    .line 404
    .line 405
    if-eqz v4, :cond_9

    .line 406
    .line 407
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->i:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 408
    .line 409
    goto :goto_9

    .line 410
    :catch_8
    move-exception v4

    .line 411
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    if-eqz v5, :cond_9

    .line 416
    .line 417
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    .line 419
    .line 420
    :cond_9
    :goto_9
    :try_start_9
    new-instance v4, Lcom/therouter/router/b;

    .line 421
    .line 422
    const-string v7, "java.lang.String"

    .line 423
    .line 424
    const-string v8, "page_from"

    .line 425
    .line 426
    const-string v10, ""

    .line 427
    .line 428
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 429
    .line 430
    const-string v12, "pageFrom"

    .line 431
    .line 432
    const-string v14, "No desc."

    .line 433
    .line 434
    const/4 v9, 0x0

    .line 435
    const/4 v13, 0x0

    .line 436
    move-object v6, v4

    .line 437
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    check-cast v4, Ljava/lang/String;

    .line 445
    .line 446
    if-eqz v4, :cond_a

    .line 447
    .line 448
    iput-object v4, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->p:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 449
    .line 450
    goto :goto_a

    .line 451
    :catch_9
    move-exception v4

    .line 452
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_a

    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 459
    .line 460
    .line 461
    :cond_a
    :goto_a
    :try_start_a
    new-instance v4, Lcom/therouter/router/b;

    .line 462
    .line 463
    const-string v7, "java.lang.String"

    .line 464
    .line 465
    const-string v8, "rec_ops"

    .line 466
    .line 467
    const-string v10, ""

    .line 468
    .line 469
    const-string v11, "com.transsion.postdetail.ui.activity.PostDetailActivity"

    .line 470
    .line 471
    const-string v12, "ops"

    .line 472
    .line 473
    const-string v14, "No desc."

    .line 474
    .line 475
    const/4 v9, 0x0

    .line 476
    const/4 v13, 0x0

    .line 477
    move-object v6, v4

    .line 478
    invoke-direct/range {v6 .. v14}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {v3, v1, p0, v4}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    check-cast v3, Ljava/lang/String;

    .line 486
    .line 487
    if-eqz v3, :cond_0

    .line 488
    .line 489
    iput-object v3, p0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;->m:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :catch_a
    move-exception v3

    .line 494
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-eqz v4, :cond_0

    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 501
    .line 502
    .line 503
    goto/16 :goto_0

    .line 504
    .line 505
    :cond_b
    return-void
.end method
