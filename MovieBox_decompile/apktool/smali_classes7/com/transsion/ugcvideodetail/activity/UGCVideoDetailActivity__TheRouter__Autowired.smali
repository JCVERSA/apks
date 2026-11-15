.class public Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity__TheRouter__Autowired;
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
    .locals 14

    .line 1
    const-string v0, "java.lang.String"

    .line 2
    .line 3
    instance-of v1, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 4
    .line 5
    if-eqz v1, :cond_c

    .line 6
    .line 7
    check-cast p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;

    .line 8
    .line 9
    invoke-static {}, Lcom/therouter/TheRouter;->g()Ljava/util/LinkedList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_c

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lmf/a;

    .line 28
    .line 29
    :try_start_0
    const-string v3, "boolean"

    .line 30
    .line 31
    new-instance v13, Lcom/therouter/router/b;

    .line 32
    .line 33
    const-string v5, "boolean"

    .line 34
    .line 35
    const-string v6, "ugc_without_history"

    .line 36
    .line 37
    const-string v8, ""

    .line 38
    .line 39
    const-string v9, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 40
    .line 41
    const-string v10, "withoutHistory"

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
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput-boolean v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 67
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    :try_start_1
    const-string v3, "int"

    .line 77
    .line 78
    new-instance v13, Lcom/therouter/router/b;

    .line 79
    .line 80
    const-string v5, "int"

    .line 81
    .line 82
    const-string v6, "ugc_bottom_fragment_selected"

    .line 83
    .line 84
    const-string v8, ""

    .line 85
    .line 86
    const-string v9, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 87
    .line 88
    const-string v10, "bottomFragmentSelected"

    .line 89
    .line 90
    const-string v12, "No desc."

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    move-object v4, v13

    .line 95
    invoke-direct/range {v4 .. v12}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v2, v3, p0, v13}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iput v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->r:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_1
    move-exception v3

    .line 114
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Lcom/therouter/router/b;

    .line 124
    .line 125
    const-string v6, "java.lang.String"

    .line 126
    .line 127
    const-string v7, "collection_id"

    .line 128
    .line 129
    const-string v9, ""

    .line 130
    .line 131
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 132
    .line 133
    const-string v11, "collectionId"

    .line 134
    .line 135
    const-string v13, "No desc."

    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    const/4 v12, 0x0

    .line 139
    move-object v5, v3

    .line 140
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ljava/lang/String;

    .line 148
    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catch_2
    move-exception v3

    .line 155
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    :cond_3
    :goto_3
    :try_start_3
    new-instance v3, Lcom/therouter/router/b;

    .line 165
    .line 166
    const-string v6, "java.lang.String"

    .line 167
    .line 168
    const-string v7, "from_opt_id"

    .line 169
    .line 170
    const-string v9, ""

    .line 171
    .line 172
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 173
    .line 174
    const-string v11, "fromOptId"

    .line 175
    .line 176
    const-string v13, "No desc."

    .line 177
    .line 178
    const/4 v8, 0x0

    .line 179
    const/4 v12, 0x0

    .line 180
    move-object v5, v3

    .line 181
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->n:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catch_3
    move-exception v3

    .line 196
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_4

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :cond_4
    :goto_4
    :try_start_4
    new-instance v3, Lcom/therouter/router/b;

    .line 206
    .line 207
    const-string v6, "java.lang.String"

    .line 208
    .line 209
    const-string v7, "id"

    .line 210
    .line 211
    const-string v9, ""

    .line 212
    .line 213
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 214
    .line 215
    const-string v11, "videoId"

    .line 216
    .line 217
    const-string v13, "No desc."

    .line 218
    .line 219
    const/4 v8, 0x0

    .line 220
    const/4 v12, 0x0

    .line 221
    move-object v5, v3

    .line 222
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    check-cast v3, Ljava/lang/String;

    .line 230
    .line 231
    if-eqz v3, :cond_5

    .line 232
    .line 233
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catch_4
    move-exception v3

    .line 237
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_5

    .line 242
    .line 243
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    .line 245
    .line 246
    :cond_5
    :goto_5
    :try_start_5
    new-instance v3, Lcom/therouter/router/b;

    .line 247
    .line 248
    const-string v6, "java.lang.String"

    .line 249
    .line 250
    const-string v7, "ops"

    .line 251
    .line 252
    const-string v9, ""

    .line 253
    .line 254
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 255
    .line 256
    const-string v11, "ops"

    .line 257
    .line 258
    const-string v13, "No desc."

    .line 259
    .line 260
    const/4 v8, 0x0

    .line 261
    const/4 v12, 0x0

    .line 262
    move-object v5, v3

    .line 263
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    check-cast v3, Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v3, :cond_6

    .line 273
    .line 274
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->m:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :catch_5
    move-exception v3

    .line 278
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_6

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    :cond_6
    :goto_6
    :try_start_6
    new-instance v3, Lcom/therouter/router/b;

    .line 288
    .line 289
    const-string v6, "java.lang.String"

    .line 290
    .line 291
    const-string v7, "parent_track_id"

    .line 292
    .line 293
    const-string v9, ""

    .line 294
    .line 295
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 296
    .line 297
    const-string v11, "previousPageTrackId"

    .line 298
    .line 299
    const-string v13, "No desc."

    .line 300
    .line 301
    const/4 v8, 0x0

    .line 302
    const/4 v12, 0x0

    .line 303
    move-object v5, v3

    .line 304
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Ljava/lang/String;

    .line 312
    .line 313
    if-eqz v3, :cond_7

    .line 314
    .line 315
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->q:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :catch_6
    move-exception v3

    .line 319
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-eqz v4, :cond_7

    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 326
    .line 327
    .line 328
    :cond_7
    :goto_7
    :try_start_7
    new-instance v3, Lcom/therouter/router/b;

    .line 329
    .line 330
    const-string v6, "java.lang.String"

    .line 331
    .line 332
    const-string v7, "parent_video_id"

    .line 333
    .line 334
    const-string v9, ""

    .line 335
    .line 336
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 337
    .line 338
    const-string v11, "previousPageVideoId"

    .line 339
    .line 340
    const-string v13, "No desc."

    .line 341
    .line 342
    const/4 v8, 0x0

    .line 343
    const/4 v12, 0x0

    .line 344
    move-object v5, v3

    .line 345
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Ljava/lang/String;

    .line 353
    .line 354
    if-eqz v3, :cond_8

    .line 355
    .line 356
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->p:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 357
    .line 358
    goto :goto_8

    .line 359
    :catch_7
    move-exception v3

    .line 360
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 361
    .line 362
    .line 363
    move-result v4

    .line 364
    if-eqz v4, :cond_8

    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 367
    .line 368
    .line 369
    :cond_8
    :goto_8
    :try_start_8
    new-instance v3, Lcom/therouter/router/b;

    .line 370
    .line 371
    const-string v6, "java.lang.String"

    .line 372
    .line 373
    const-string v7, "subject_id"

    .line 374
    .line 375
    const-string v9, ""

    .line 376
    .line 377
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 378
    .line 379
    const-string v11, "subjectId"

    .line 380
    .line 381
    const-string v13, "No desc."

    .line 382
    .line 383
    const/4 v8, 0x0

    .line 384
    const/4 v12, 0x0

    .line 385
    move-object v5, v3

    .line 386
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    check-cast v3, Ljava/lang/String;

    .line 394
    .line 395
    if-eqz v3, :cond_9

    .line 396
    .line 397
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :catch_8
    move-exception v3

    .line 401
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_9

    .line 406
    .line 407
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 408
    .line 409
    .line 410
    :cond_9
    :goto_9
    :try_start_9
    new-instance v3, Lcom/therouter/router/b;

    .line 411
    .line 412
    const-string v6, "java.lang.String"

    .line 413
    .line 414
    const-string v7, "tab_id"

    .line 415
    .line 416
    const-string v9, ""

    .line 417
    .line 418
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 419
    .line 420
    const-string v11, "homeTabId"

    .line 421
    .line 422
    const-string v13, "No desc."

    .line 423
    .line 424
    const/4 v8, 0x0

    .line 425
    const/4 v12, 0x0

    .line 426
    move-object v5, v3

    .line 427
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    check-cast v3, Ljava/lang/String;

    .line 435
    .line 436
    if-eqz v3, :cond_a

    .line 437
    .line 438
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 439
    .line 440
    goto :goto_a

    .line 441
    :catch_9
    move-exception v3

    .line 442
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-eqz v4, :cond_a

    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    .line 450
    .line 451
    :cond_a
    :goto_a
    :try_start_a
    new-instance v3, Lcom/therouter/router/b;

    .line 452
    .line 453
    const-string v6, "java.lang.String"

    .line 454
    .line 455
    const-string v7, "ugcCategory"

    .line 456
    .line 457
    const-string v9, ""

    .line 458
    .line 459
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 460
    .line 461
    const-string v11, "type"

    .line 462
    .line 463
    const-string v13, "No desc."

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    const/4 v12, 0x0

    .line 467
    move-object v5, v3

    .line 468
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    check-cast v3, Ljava/lang/String;

    .line 476
    .line 477
    if-eqz v3, :cond_b

    .line 478
    .line 479
    iput-object v3, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 480
    .line 481
    goto :goto_b

    .line 482
    :catch_a
    move-exception v3

    .line 483
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_b

    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .line 491
    .line 492
    :cond_b
    :goto_b
    :try_start_b
    new-instance v3, Lcom/therouter/router/b;

    .line 493
    .line 494
    const-string v6, "java.lang.String"

    .line 495
    .line 496
    const-string v7, "videoStyle"

    .line 497
    .line 498
    const-string v9, ""

    .line 499
    .line 500
    const-string v10, "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity"

    .line 501
    .line 502
    const-string v11, "pageStyle"

    .line 503
    .line 504
    const-string v13, "No desc."

    .line 505
    .line 506
    const/4 v8, 0x0

    .line 507
    const/4 v12, 0x0

    .line 508
    move-object v5, v3

    .line 509
    invoke-direct/range {v5 .. v13}, Lcom/therouter/router/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v2, v0, p0, v3}, Lmf/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/therouter/router/b;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    check-cast v2, Ljava/lang/String;

    .line 517
    .line 518
    if-eqz v2, :cond_0

    .line 519
    .line 520
    iput-object v2, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :catch_b
    move-exception v2

    .line 525
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eqz v3, :cond_0

    .line 530
    .line 531
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :cond_c
    return-void
.end method
