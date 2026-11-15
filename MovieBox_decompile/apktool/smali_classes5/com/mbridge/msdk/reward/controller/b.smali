.class public Lcom/mbridge/msdk/reward/controller/b;
.super Landroid/os/Handler;
.source "source.java"


# instance fields
.field private final a:Lcom/mbridge/msdk/reward/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/reward/controller/a;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 10
    .line 11
    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Landroid/os/Message;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v4, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/mbridge/msdk/reward/controller/a;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/mbridge/msdk/reward/controller/a;->h()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/controller/a;->n()Lcom/mbridge/msdk/reward/adapter/c;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v7, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 34
    .line 35
    invoke-virtual {v7}, Lcom/mbridge/msdk/reward/controller/a;->s()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    iget-object v8, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 40
    .line 41
    invoke-virtual {v8}, Lcom/mbridge/msdk/reward/controller/a;->l()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    iget-object v9, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 46
    .line 47
    invoke-virtual {v9}, Lcom/mbridge/msdk/reward/controller/a;->p()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    iget-object v9, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 52
    .line 53
    invoke-virtual {v9}, Lcom/mbridge/msdk/reward/controller/a;->k()Lcom/mbridge/msdk/reward/controller/a$h;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    iget-object v10, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 58
    .line 59
    invoke-virtual {v10}, Lcom/mbridge/msdk/reward/controller/a;->o()Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget-object v11, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 64
    .line 65
    invoke-virtual {v11}, Lcom/mbridge/msdk/reward/controller/a;->r()Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    iget-object v12, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 70
    .line 71
    invoke-virtual {v12}, Lcom/mbridge/msdk/reward/controller/a;->g()Lcom/mbridge/msdk/out/MBridgeIds;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    iget-object v14, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 76
    .line 77
    invoke-virtual {v14}, Lcom/mbridge/msdk/reward/controller/a;->t()Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    const/4 v15, 0x1

    .line 82
    move/from16 p1, v11

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    sparse-switch v2, :sswitch_data_0

    .line 86
    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :sswitch_0
    if-eqz v6, :cond_16

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    if-eqz v9, :cond_16

    .line 99
    .line 100
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_0

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-nez v3, :cond_0

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_0
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 117
    .line 118
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 122
    .line 123
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_4

    .line 136
    .line 137
    :cond_2
    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_9

    .line 142
    .line 143
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    if-eqz v9, :cond_16

    .line 150
    .line 151
    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_3

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_3

    .line 165
    .line 166
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    :cond_3
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 171
    .line 172
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 176
    .line 177
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-eqz v1, :cond_4

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :cond_5
    invoke-virtual {v6, v11}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_16

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    if-eqz v9, :cond_16

    .line 207
    .line 208
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-eqz v2, :cond_6

    .line 216
    .line 217
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_6

    .line 222
    .line 223
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_6
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 228
    .line 229
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 233
    .line 234
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_7

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 241
    .line 242
    .line 243
    :cond_7
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :cond_8
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :cond_9
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->g(Z)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_16

    .line 258
    .line 259
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->l()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_c

    .line 264
    .line 265
    if-eqz v9, :cond_16

    .line 266
    .line 267
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->f(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->h()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    if-eqz v2, :cond_a

    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-nez v3, :cond_a

    .line 281
    .line 282
    invoke-virtual {v6}, Lcom/mbridge/msdk/reward/adapter/c;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :cond_a
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 287
    .line 288
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 292
    .line 293
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-eqz v1, :cond_b

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    :cond_b
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->d(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_c
    invoke-virtual {v6, v15}, Lcom/mbridge/msdk/reward/adapter/c;->h(Z)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_4

    .line 311
    .line 312
    :sswitch_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 313
    .line 314
    .line 315
    move-result-object v10

    .line 316
    if-eqz v14, :cond_d

    .line 317
    .line 318
    const/16 v1, 0x11f

    .line 319
    .line 320
    :goto_0
    move v12, v1

    .line 321
    goto :goto_1

    .line 322
    :cond_d
    const/16 v1, 0x5e

    .line 323
    .line 324
    goto :goto_0

    .line 325
    :goto_1
    const/4 v14, 0x1

    .line 326
    const/4 v15, 0x1

    .line 327
    const/4 v1, 0x0

    .line 328
    move v2, v11

    .line 329
    move v11, v1

    .line 330
    invoke-virtual/range {v10 .. v15}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 335
    .line 336
    invoke-virtual {v3, v2, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(ZLcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_4

    .line 340
    .line 341
    :sswitch_2
    if-eqz v10, :cond_16

    .line 342
    .line 343
    if-eqz v7, :cond_16

    .line 344
    .line 345
    if-eqz p1, :cond_e

    .line 346
    .line 347
    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    .line 350
    .line 351
    .line 352
    :cond_e
    invoke-interface {v10, v12}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_4

    .line 356
    .line 357
    :sswitch_3
    if-eqz v10, :cond_16

    .line 358
    .line 359
    if-eqz v7, :cond_16

    .line 360
    .line 361
    instance-of v2, v3, Ljava/lang/String;

    .line 362
    .line 363
    if-eqz v2, :cond_f

    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    goto :goto_2

    .line 370
    :cond_f
    const-string v2, ""

    .line 371
    .line 372
    :goto_2
    if-eqz v1, :cond_10

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    if-eqz v3, :cond_10

    .line 379
    .line 380
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->p()Lcom/mbridge/msdk/foundation/error/b;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    :cond_10
    invoke-static {v13}, Lcom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a;->a()V

    .line 392
    .line 393
    .line 394
    if-eqz p1, :cond_11

    .line 395
    .line 396
    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    .line 399
    .line 400
    .line 401
    :cond_11
    invoke-interface {v10, v12, v2}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :sswitch_4
    if-eqz v10, :cond_16

    .line 407
    .line 408
    if-eqz v7, :cond_16

    .line 409
    .line 410
    if-eqz p1, :cond_12

    .line 411
    .line 412
    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/b;->a:Lcom/mbridge/msdk/reward/controller/a;

    .line 413
    .line 414
    invoke-virtual {v1}, Lcom/mbridge/msdk/reward/controller/a;->a()V

    .line 415
    .line 416
    .line 417
    :cond_12
    invoke-interface {v10, v12}, Lcom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadSuccess(Lcom/mbridge/msdk/out/MBridgeIds;)V

    .line 418
    .line 419
    .line 420
    goto :goto_4

    .line 421
    :sswitch_5
    move v2, v11

    .line 422
    if-eqz v4, :cond_16

    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-lez v3, :cond_16

    .line 429
    .line 430
    if-eqz v5, :cond_13

    .line 431
    .line 432
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    if-lez v3, :cond_13

    .line 437
    .line 438
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 443
    .line 444
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    xor-int/lit8 v11, v3, 0x1

    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_13
    move v11, v2

    .line 456
    :goto_3
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 461
    .line 462
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v6, :cond_14

    .line 467
    .line 468
    invoke-virtual {v6, v4, v11, v2}, Lcom/mbridge/msdk/reward/adapter/c;->a(Ljava/util/List;ZI)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_14

    .line 473
    .line 474
    if-eqz v9, :cond_16

    .line 475
    .line 476
    if-eqz v7, :cond_16

    .line 477
    .line 478
    invoke-virtual {v9, v8, v13, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 479
    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_14
    if-eqz v9, :cond_16

    .line 483
    .line 484
    if-eqz v7, :cond_16

    .line 485
    .line 486
    invoke-static {v13}, Lcom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-static {}, Lcom/mbridge/msdk/videocommon/a;->a()V

    .line 490
    .line 491
    .line 492
    const v2, 0xd6d8a

    .line 493
    .line 494
    .line 495
    const-string v3, "load timeout"

    .line 496
    .line 497
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/error/a;->a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    if-eqz v1, :cond_15

    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/error/b;)V

    .line 504
    .line 505
    .line 506
    :cond_15
    invoke-virtual {v9, v2, v1}, Lcom/mbridge/msdk/reward/controller/a$h;->a(Lcom/mbridge/msdk/foundation/error/b;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 507
    .line 508
    .line 509
    :cond_16
    :goto_4
    return-void

    .line 510
    nop

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0x10 -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0xf4629 -> :sswitch_1
        0xf462a -> :sswitch_0
    .end sparse-switch
.end method
