.class public Lcom/transsion/api/gateway/GatewaySignManager;
.super Ljava/lang/Object;
.source "source.java"


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

.method public static doSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v3, "time_offset"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getLong(Ljava/lang/String;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    add-long/2addr v5, v3

    .line 24
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->getSecret()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/transsion/api/gateway/sercurity/a;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Lcom/transsion/api/gateway/sercurity/a;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/transsion/api/gateway/sercurity/c;

    .line 34
    .line 35
    invoke-direct {v4, v3}, Lcom/transsion/api/gateway/sercurity/c;-><init>(Lcom/transsion/api/gateway/sercurity/a;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-string v7, ""

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 52
    .line 53
    const-string v10, "request body is not null"

    .line 54
    .line 55
    invoke-virtual {v0, v10}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    int-to-long v10, v0

    .line 63
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v12

    .line 67
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const v14, 0x19000

    .line 72
    .line 73
    .line 74
    if-le v0, v14, :cond_0

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    move-object/from16 v15, p4

    .line 78
    .line 79
    invoke-virtual {v15, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/transsion/api/gateway/utils/EncoderUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    move-object v14, v0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    move-object/from16 v15, p4

    .line 92
    .line 93
    invoke-static/range {p4 .. p4}, Lcom/transsion/api/gateway/utils/EncoderUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    goto :goto_0

    .line 98
    :goto_1
    :try_start_2
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 99
    .line 100
    new-instance v15, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v8, "md5 duration"

    .line 106
    .line 107
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    sub-long/2addr v8, v12

    .line 115
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v0, v8}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :catch_1
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :catch_2
    move-exception v0

    .line 129
    const-wide/16 v10, 0x0

    .line 130
    .line 131
    :goto_2
    move-object v14, v7

    .line 132
    :goto_3
    sget-object v8, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 133
    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v12, "generateContent exception"

    .line 140
    .line 141
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v8, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_1
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 160
    .line 161
    const-string v8, "request body is null"

    .line 162
    .line 163
    invoke-virtual {v0, v8}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    move-object v14, v7

    .line 167
    const-wide/16 v10, 0x0

    .line 168
    .line 169
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "\n"

    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    if-nez p1, :cond_2

    .line 182
    .line 183
    move-object v8, v7

    .line 184
    goto :goto_5

    .line 185
    :cond_2
    move-object/from16 v8, p1

    .line 186
    .line 187
    :goto_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    if-nez p2, :cond_3

    .line 194
    .line 195
    move-object v8, v7

    .line 196
    goto :goto_6

    .line 197
    :cond_3
    move-object/from16 v8, p2

    .line 198
    .line 199
    :goto_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-wide/16 v8, 0x0

    .line 206
    .line 207
    cmp-long v8, v10, v8

    .line 208
    .line 209
    if-nez v8, :cond_4

    .line 210
    .line 211
    move-object v8, v7

    .line 212
    goto :goto_7

    .line 213
    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    :goto_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_5

    .line 234
    .line 235
    move-object v14, v7

    .line 236
    :cond_5
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    :try_start_3
    new-instance v8, Ljava/net/URI;

    .line 248
    .line 249
    move-object/from16 v9, p3

    .line 250
    .line 251
    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-nez v7, :cond_6

    .line 270
    .line 271
    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v4, v7}, Lcom/transsion/api/gateway/sercurity/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-nez v8, :cond_6

    .line 284
    .line 285
    sget-object v8, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 286
    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v10, "formatedUrl"

    .line 293
    .line 294
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v8, v9}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    const-string v8, "?"

    .line 308
    .line 309
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    goto :goto_8

    .line 320
    :catch_3
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 322
    .line 323
    .line 324
    :goto_8
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    invoke-virtual {v0, v7}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v3, v4, Lcom/transsion/api/gateway/sercurity/c;->a:Lcom/transsion/api/gateway/sercurity/a;

    .line 341
    .line 342
    sget-object v4, Lcom/transsion/api/gateway/sercurity/d;->c:Lcom/transsion/api/gateway/sercurity/d;

    .line 343
    .line 344
    invoke-virtual {v3, v4, v0}, Lcom/transsion/api/gateway/sercurity/a;->a(Lcom/transsion/api/gateway/sercurity/d;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    sget-object v3, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 349
    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v7, "x-tr-signature: "

    .line 356
    .line 357
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v7, "|2|"

    .line 364
    .line 365
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v3, v4}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    sget-object v3, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 379
    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    const-string v8, "doSign latency: "

    .line 386
    .line 387
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 391
    .line 392
    .line 393
    move-result-wide v8

    .line 394
    sub-long/2addr v8, v1

    .line 395
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v3, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    return-object v0
.end method

.method public static needRetryForTimeIssue(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    sget-object p0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "response"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-class p0, Lcom/transsion/api/gateway/bean/GatewayResponse;

    .line 36
    .line 37
    invoke-static {p1, p0}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/transsion/api/gateway/bean/GatewayResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    const-string p1, "GW.4410"

    .line 44
    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/transsion/api/gateway/bean/GatewayResponse;->errorCode:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget-object p1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 54
    .line 55
    const-string v0, "verify sign failed, retrying update time"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/transsion/api/gateway/bean/GatewayResponse;->errorMsg:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/transsion/api/gateway/dns/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-class p1, Lcom/transsion/api/gateway/bean/TimeBean;

    .line 67
    .line 68
    invoke-static {p0, p1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/transsion/api/gateway/bean/TimeBean;

    .line 73
    .line 74
    iget-wide v2, p0, Lcom/transsion/api/gateway/bean/TimeBean;->time:J

    .line 75
    .line 76
    const-wide/16 v4, 0x0

    .line 77
    .line 78
    cmp-long p1, v2, v4

    .line 79
    .line 80
    if-lez p1, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/api/gateway/utils/SafeStringUtils;

    .line 87
    .line 88
    .line 89
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    const-string v0, "time_offset"

    .line 91
    .line 92
    :try_start_2
    iget-wide v2, p0, Lcom/transsion/api/gateway/bean/TimeBean;->time:J

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    sub-long/2addr v2, v4

    .line 99
    invoke-virtual {p1, v0, v2, v3}, Lcom/transsion/api/gateway/utils/SafeStringUtils;->saveLong(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x1

    .line 103
    return p0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    sget-object p1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    return v1
.end method
