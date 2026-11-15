.class public abstract Lmh/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lmh/e;)Landroid/os/Bundle;
    .locals 35

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lmh/e;->G()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "usage"

    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "call_id"

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lmh/e;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual/range {p0 .. p0}, Lmh/e;->b()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "call_result_code"

    .line 41
    .line 42
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual/range {p0 .. p0}, Lmh/e;->m()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "error_code"

    .line 55
    .line 56
    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "error_msg"

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lmh/e;->n()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, "server_api"

    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lmh/e;->B()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v7, "complete_api"

    .line 81
    .line 82
    invoke-virtual/range {p0 .. p0}, Lmh/e;->i()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const-string v8, "ip_address"

    .line 91
    .line 92
    invoke-virtual/range {p0 .. p0}, Lmh/e;->q()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual/range {p0 .. p0}, Lmh/e;->w()J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v10, "req_time"

    .line 109
    .line 110
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual/range {p0 .. p0}, Lmh/e;->l()J

    .line 115
    .line 116
    .line 117
    move-result-wide v10

    .line 118
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-string v11, "dns_time"

    .line 123
    .line 124
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual/range {p0 .. p0}, Lmh/e;->E()J

    .line 129
    .line 130
    .line 131
    move-result-wide v11

    .line 132
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    const-string v12, "tcp_time"

    .line 137
    .line 138
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual/range {p0 .. p0}, Lmh/e;->D()J

    .line 143
    .line 144
    .line 145
    move-result-wide v12

    .line 146
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    const-string v13, "ssl_time"

    .line 151
    .line 152
    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    invoke-virtual/range {p0 .. p0}, Lmh/e;->A()J

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    const-string v14, "send_time"

    .line 165
    .line 166
    invoke-static {v14, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    invoke-virtual/range {p0 .. p0}, Lmh/e;->H()J

    .line 171
    .line 172
    .line 173
    move-result-wide v14

    .line 174
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    const-string v15, "wait_time"

    .line 179
    .line 180
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual/range {p0 .. p0}, Lmh/e;->u()J

    .line 185
    .line 186
    .line 187
    move-result-wide v15

    .line 188
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    const-string v1, "rec_time"

    .line 193
    .line 194
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual/range {p0 .. p0}, Lmh/e;->v()J

    .line 199
    .line 200
    .line 201
    move-result-wide v15

    .line 202
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    move-object/from16 v16, v1

    .line 207
    .line 208
    const-string v1, "req_body_size"

    .line 209
    .line 210
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual/range {p0 .. p0}, Lmh/e;->y()J

    .line 215
    .line 216
    .line 217
    move-result-wide v17

    .line 218
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    move-object/from16 v17, v1

    .line 223
    .line 224
    const-string v1, "res_body_size"

    .line 225
    .line 226
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual/range {p0 .. p0}, Lmh/e;->e()J

    .line 231
    .line 232
    .line 233
    move-result-wide v18

    .line 234
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    move-object/from16 v18, v1

    .line 239
    .line 240
    const-string v1, "cdn_req_time"

    .line 241
    .line 242
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual/range {p0 .. p0}, Lmh/e;->c()J

    .line 247
    .line 248
    .line 249
    move-result-wide v19

    .line 250
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    move-object/from16 v19, v1

    .line 255
    .line 256
    const-string v1, "cdn_down_time"

    .line 257
    .line 258
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v15, "cdn_speed"

    .line 263
    .line 264
    move-object/from16 v20, v1

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Lmh/e;->f()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    const-string v15, "cdn_provider"

    .line 275
    .line 276
    move-object/from16 v21, v1

    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lmh/e;->d()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const-string v15, "country"

    .line 287
    .line 288
    move-object/from16 v22, v1

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Lmh/e;->k()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v15, "host"

    .line 299
    .line 300
    move-object/from16 v23, v1

    .line 301
    .line 302
    invoke-virtual/range {p0 .. p0}, Lmh/e;->o()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual/range {p0 .. p0}, Lmh/e;->r()I

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    move-object/from16 v24, v1

    .line 319
    .line 320
    const-string v1, "is_offline"

    .line 321
    .line 322
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v15, "channel"

    .line 327
    .line 328
    move-object/from16 v25, v1

    .line 329
    .line 330
    invoke-virtual/range {p0 .. p0}, Lmh/e;->g()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string v15, "sdk_version"

    .line 339
    .line 340
    move-object/from16 v26, v1

    .line 341
    .line 342
    invoke-virtual/range {p0 .. p0}, Lmh/e;->z()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual/range {p0 .. p0}, Lmh/e;->C()J

    .line 351
    .line 352
    .line 353
    move-result-wide v27

    .line 354
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v15

    .line 358
    move-object/from16 v27, v1

    .line 359
    .line 360
    const-string v1, "server_time"

    .line 361
    .line 362
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const-string v15, "protocol"

    .line 367
    .line 368
    move-object/from16 v28, v1

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lmh/e;->t()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    const-string v15, "compare_tag"

    .line 379
    .line 380
    move-object/from16 v29, v1

    .line 381
    .line 382
    invoke-virtual/range {p0 .. p0}, Lmh/e;->h()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual/range {p0 .. p0}, Lmh/e;->p()I

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v15

    .line 398
    move-object/from16 v30, v1

    .line 399
    .line 400
    const-string v1, "http_type"

    .line 401
    .line 402
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const-string v15, "content_encoding"

    .line 407
    .line 408
    move-object/from16 v31, v1

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lmh/e;->j()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const-string v15, "tls_version"

    .line 419
    .line 420
    move-object/from16 v32, v1

    .line 421
    .line 422
    invoke-virtual/range {p0 .. p0}, Lmh/e;->F()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-static {v15, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual/range {p0 .. p0}, Lmh/e;->x()I

    .line 431
    .line 432
    .line 433
    move-result v15

    .line 434
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v15

    .line 438
    move-object/from16 v33, v1

    .line 439
    .line 440
    const-string v1, "request_downgrade"

    .line 441
    .line 442
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    const/16 v15, 0x21

    .line 447
    .line 448
    new-array v15, v15, [Lkotlin/Pair;

    .line 449
    .line 450
    const/16 v34, 0x0

    .line 451
    .line 452
    aput-object v0, v15, v34

    .line 453
    .line 454
    const/4 v0, 0x1

    .line 455
    aput-object v2, v15, v0

    .line 456
    .line 457
    const/4 v0, 0x2

    .line 458
    aput-object v3, v15, v0

    .line 459
    .line 460
    const/4 v0, 0x3

    .line 461
    aput-object v4, v15, v0

    .line 462
    .line 463
    const/4 v0, 0x4

    .line 464
    aput-object v5, v15, v0

    .line 465
    .line 466
    const/4 v0, 0x5

    .line 467
    aput-object v6, v15, v0

    .line 468
    .line 469
    const/4 v0, 0x6

    .line 470
    aput-object v7, v15, v0

    .line 471
    .line 472
    const/4 v0, 0x7

    .line 473
    aput-object v8, v15, v0

    .line 474
    .line 475
    const/16 v0, 0x8

    .line 476
    .line 477
    aput-object v9, v15, v0

    .line 478
    .line 479
    const/16 v0, 0x9

    .line 480
    .line 481
    aput-object v10, v15, v0

    .line 482
    .line 483
    const/16 v0, 0xa

    .line 484
    .line 485
    aput-object v11, v15, v0

    .line 486
    .line 487
    const/16 v0, 0xb

    .line 488
    .line 489
    aput-object v12, v15, v0

    .line 490
    .line 491
    const/16 v0, 0xc

    .line 492
    .line 493
    aput-object v13, v15, v0

    .line 494
    .line 495
    const/16 v0, 0xd

    .line 496
    .line 497
    aput-object v14, v15, v0

    .line 498
    .line 499
    const/16 v0, 0xe

    .line 500
    .line 501
    aput-object v16, v15, v0

    .line 502
    .line 503
    const/16 v0, 0xf

    .line 504
    .line 505
    aput-object v17, v15, v0

    .line 506
    .line 507
    const/16 v0, 0x10

    .line 508
    .line 509
    aput-object v18, v15, v0

    .line 510
    .line 511
    const/16 v0, 0x11

    .line 512
    .line 513
    aput-object v19, v15, v0

    .line 514
    .line 515
    const/16 v0, 0x12

    .line 516
    .line 517
    aput-object v20, v15, v0

    .line 518
    .line 519
    const/16 v0, 0x13

    .line 520
    .line 521
    aput-object v21, v15, v0

    .line 522
    .line 523
    const/16 v0, 0x14

    .line 524
    .line 525
    aput-object v22, v15, v0

    .line 526
    .line 527
    const/16 v0, 0x15

    .line 528
    .line 529
    aput-object v23, v15, v0

    .line 530
    .line 531
    const/16 v0, 0x16

    .line 532
    .line 533
    aput-object v24, v15, v0

    .line 534
    .line 535
    const/16 v0, 0x17

    .line 536
    .line 537
    aput-object v25, v15, v0

    .line 538
    .line 539
    const/16 v0, 0x18

    .line 540
    .line 541
    aput-object v26, v15, v0

    .line 542
    .line 543
    const/16 v0, 0x19

    .line 544
    .line 545
    aput-object v27, v15, v0

    .line 546
    .line 547
    const/16 v0, 0x1a

    .line 548
    .line 549
    aput-object v28, v15, v0

    .line 550
    .line 551
    const/16 v0, 0x1b

    .line 552
    .line 553
    aput-object v29, v15, v0

    .line 554
    .line 555
    const/16 v0, 0x1c

    .line 556
    .line 557
    aput-object v30, v15, v0

    .line 558
    .line 559
    const/16 v0, 0x1d

    .line 560
    .line 561
    aput-object v31, v15, v0

    .line 562
    .line 563
    const/16 v0, 0x1e

    .line 564
    .line 565
    aput-object v32, v15, v0

    .line 566
    .line 567
    const/16 v0, 0x1f

    .line 568
    .line 569
    aput-object v33, v15, v0

    .line 570
    .line 571
    const/16 v0, 0x20

    .line 572
    .line 573
    aput-object v1, v15, v0

    .line 574
    .line 575
    invoke-static {v15}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "=======/ "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " /======="

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object p0, v1, v2

    .line 35
    .line 36
    const-string p0, "NetworkMonitor"

    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "=======/ "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " /======="

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 v1, 0x1

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object p0, v1, v2

    .line 35
    .line 36
    const-string p0, "NetworkMonitor"

    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final d()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final e(J)J
    .locals 2

    .line 1
    invoke-static {}, Lmh/c;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p0

    .line 6
    return-wide v0
.end method

.method public static final f(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p0, ""

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0xc8

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 45
    .line 46
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public static final g(Lmh/e;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmh/o;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    invoke-virtual {p0}, Lmh/e;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v1, v2, v3

    .line 17
    .line 18
    const-string v1, "NetworkMonitor"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lmh/e;->o()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lmh/d;->b(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lmh/e;->s()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lmh/l;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lmh/e;->B()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lmh/n;->a(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lmh/e;->o()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lmh/d;->c(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lmh/e;->s()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lmh/l;->b(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lmh/e;->B()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lmh/n;->b(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "process"

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_0
    const-string v0, "process_white"

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    const-string v0, "process_black"

    .line 92
    .line 93
    :goto_2
    new-instance v1, Lhi/a;

    .line 94
    .line 95
    const/16 v2, 0x716

    .line 96
    .line 97
    invoke-direct {v1, v0, v2}, Lhi/a;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lmh/c;->a(Lmh/e;)Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {v1, p0, v0}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lhi/a;->b()V

    .line 110
    .line 111
    .line 112
    return-void
.end method
