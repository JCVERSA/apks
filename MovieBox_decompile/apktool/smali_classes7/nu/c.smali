.class public abstract Lnu/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String;


# direct methods
.method public static a()Lcom/transsion/upgradesdk/bean/RequestBean;
    .locals 35

    .line 1
    const-string v1, "NoNet"

    .line 2
    .line 3
    sget-object v2, Lqu/f;->o:Lqu/d;

    .line 4
    .line 5
    invoke-virtual {v2}, Lqu/d;->a()Lqu/f;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lqu/f;->e()Lnu/b;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v14

    .line 17
    sget-object v4, Ltu/c;->a:Ljavax/crypto/spec/IvParameterSpec;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ltu/n;->g()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v13, "Transsion"

    .line 32
    .line 33
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Ltu/c;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v23

    .line 47
    new-instance v30, Lcom/transsion/upgradesdk/bean/RequestBean;

    .line 48
    .line 49
    sget-object v4, Ltu/n;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const-string v5, ""

    .line 56
    .line 57
    const-string v7, "application"

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    sget-object v4, Ltu/i;->b:Ltu/h;

    .line 62
    .line 63
    sget-object v8, Lpu/a;->a:Landroid/app/Application;

    .line 64
    .line 65
    if-eqz v8, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v8, 0x0

    .line 72
    :goto_0
    invoke-virtual {v4, v8}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v8, "KV_UPGRADE_GAID_ENCRYPT_VALUE"

    .line 77
    .line 78
    invoke-virtual {v4, v8, v5}, Ltu/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    sput-object v4, Ltu/n;->b:Ljava/lang/String;

    .line 83
    .line 84
    :cond_1
    sget-object v8, Ltu/n;->b:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v9, v3, Lnu/b;->a:Ljava/lang/String;

    .line 87
    .line 88
    iget-wide v10, v3, Lnu/b;->d:J

    .line 89
    .line 90
    iget-object v12, v3, Lnu/b;->e:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v4, v3, Lnu/b;->h:Ljava/lang/String;

    .line 93
    .line 94
    move-object/from16 v16, v1

    .line 95
    .line 96
    iget-object v1, v3, Lnu/b;->i:Ljava/lang/String;

    .line 97
    .line 98
    move-object/from16 v17, v13

    .line 99
    .line 100
    iget-object v13, v3, Lnu/b;->k:Ljava/lang/String;

    .line 101
    .line 102
    move-wide/from16 v18, v14

    .line 103
    .line 104
    iget-object v14, v3, Lnu/b;->l:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v15, v3, Lnu/b;->g:Ljava/lang/String;

    .line 107
    .line 108
    sget-object v20, Lnu/c;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v20

    .line 114
    const-string v6, "toString(...)"

    .line 115
    .line 116
    if-nez v20, :cond_2

    .line 117
    .line 118
    sget-object v2, Lnu/c;->a:Ljava/lang/String;

    .line 119
    .line 120
    move-object/from16 v25, v4

    .line 121
    .line 122
    move-object/from16 v24, v5

    .line 123
    .line 124
    move-object/from16 v31, v14

    .line 125
    .line 126
    move-object/from16 v27, v15

    .line 127
    .line 128
    move-object v15, v2

    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_2
    invoke-virtual {v2}, Lqu/d;->a()Lqu/f;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lqu/f;->e()Lnu/b;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-object v2, v2, Lnu/b;->a:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, "packageName"

    .line 142
    .line 143
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuffer;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .line 150
    .line 151
    :try_start_0
    sget-object v24, Lpu/a;->a:Landroid/app/Application;

    .line 152
    .line 153
    if-eqz v24, :cond_3

    .line 154
    .line 155
    move-object/from16 v25, v4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 159
    .line 160
    .line 161
    move-object/from16 v25, v4

    .line 162
    .line 163
    const/16 v24, 0x0

    .line 164
    .line 165
    :goto_1
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 166
    .line 167
    .line 168
    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    move-object/from16 v24, v5

    .line 170
    .line 171
    const/16 v5, 0x40

    .line 172
    .line 173
    :try_start_2
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v4, "getPackageInfo(...)"

    .line 178
    .line 179
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    aget-object v2, v2, v4

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v4, "MD5"

    .line 192
    .line 193
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    array-length v4, v2

    .line 208
    const/4 v5, 0x0

    .line 209
    :goto_2
    if-ge v5, v4, :cond_6

    .line 210
    .line 211
    move/from16 v26, v4

    .line 212
    .line 213
    aget-byte v4, v2, v5

    .line 214
    .line 215
    and-int/lit16 v4, v4, 0xff

    .line 216
    .line 217
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    move-object/from16 v27, v15

    .line 222
    .line 223
    :try_start_3
    const-string v15, "toHexString(...)"

    .line 224
    .line 225
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 229
    .line 230
    invoke-virtual {v4, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    const-string v15, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    .line 235
    .line 236
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 240
    .line 241
    .line 242
    move-result v15
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    move-object/from16 v31, v14

    .line 244
    .line 245
    const/4 v14, 0x1

    .line 246
    if-ne v15, v14, :cond_4

    .line 247
    .line 248
    :try_start_4
    const-string v14, "0"

    .line 249
    .line 250
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    .line 252
    .line 253
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    .line 255
    .line 256
    array-length v4, v2

    .line 257
    const/4 v14, 0x1

    .line 258
    sub-int/2addr v4, v14

    .line 259
    if-ge v5, v4, :cond_5

    .line 260
    .line 261
    const-string v4, ":"

    .line 262
    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 264
    .line 265
    .line 266
    :cond_5
    const/4 v4, 0x1

    .line 267
    add-int/2addr v5, v4

    .line 268
    move/from16 v4, v26

    .line 269
    .line 270
    move-object/from16 v15, v27

    .line 271
    .line 272
    move-object/from16 v14, v31

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :catch_0
    move-object/from16 v31, v14

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :catch_1
    :cond_6
    :goto_3
    move-object/from16 v31, v14

    .line 279
    .line 280
    move-object/from16 v27, v15

    .line 281
    .line 282
    goto :goto_5

    .line 283
    :catch_2
    :goto_4
    move-object/from16 v24, v5

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :catch_3
    move-object/from16 v25, v4

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :catch_4
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sput-object v0, Lnu/c;->a:Ljava/lang/String;

    .line 297
    .line 298
    move-object v15, v0

    .line 299
    :goto_6
    iget-object v2, v3, Lnu/b;->f:Ljava/lang/String;

    .line 300
    .line 301
    iget-object v14, v3, Lnu/b;->m:Ljava/lang/String;

    .line 302
    .line 303
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 304
    .line 305
    if-eqz v0, :cond_7

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const/4 v0, 0x0

    .line 312
    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :try_start_5
    const-string v4, "connectivity"

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 323
    .line 324
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const/4 v5, 0x1

    .line 334
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 335
    .line 336
    .line 337
    move-result-object v26

    .line 338
    const/4 v5, 0x0

    .line 339
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-eqz v4, :cond_8

    .line 344
    .line 345
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :catch_5
    move-object/from16 v26, v14

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    .line 353
    .line 354
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-nez v5, :cond_a

    .line 359
    .line 360
    :cond_9
    move-object/from16 v26, v14

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_a
    if-eqz v26, :cond_c

    .line 364
    .line 365
    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 366
    .line 367
    .line 368
    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 369
    move-object/from16 v26, v14

    .line 370
    .line 371
    :try_start_6
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 372
    .line 373
    if-eq v5, v14, :cond_b

    .line 374
    .line 375
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 376
    .line 377
    if-ne v5, v14, :cond_d

    .line 378
    .line 379
    :cond_b
    const-string v5, "WIFI"

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_c
    move-object/from16 v26, v14

    .line 383
    .line 384
    :cond_d
    move-object/from16 v5, v16

    .line 385
    .line 386
    :goto_9
    if-eqz v0, :cond_f

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-eqz v0, :cond_f

    .line 393
    .line 394
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 395
    .line 396
    if-eq v0, v14, :cond_e

    .line 397
    .line 398
    sget-object v14, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 399
    .line 400
    if-ne v0, v14, :cond_f

    .line 401
    .line 402
    :cond_e
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    packed-switch v0, :pswitch_data_0

    .line 407
    .line 408
    .line 409
    const-string v0, "GNET"

    .line 410
    .line 411
    goto :goto_b

    .line 412
    :pswitch_0
    const-string v0, "4G"

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :pswitch_1
    const-string v0, "3G"

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :pswitch_2
    const-string v0, "2G"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_f
    move-object/from16 v32, v5

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :goto_a
    move-object/from16 v0, v16

    .line 425
    .line 426
    :goto_b
    move-object/from16 v32, v0

    .line 427
    .line 428
    goto :goto_d

    .line 429
    :catch_6
    :goto_c
    move-object/from16 v32, v16

    .line 430
    .line 431
    :goto_d
    iget-object v3, v3, Lnu/b;->k:Ljava/lang/String;

    .line 432
    .line 433
    sget-object v0, Lnu/c;->b:Ljava/lang/String;

    .line 434
    .line 435
    if-nez v0, :cond_11

    .line 436
    .line 437
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 438
    .line 439
    if-eqz v0, :cond_10

    .line 440
    .line 441
    goto :goto_e

    .line 442
    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const/4 v0, 0x0

    .line 446
    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    const-string v4, "android_id"

    .line 451
    .line 452
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    sput-object v0, Lnu/c;->b:Ljava/lang/String;

    .line 457
    .line 458
    :cond_11
    sget-object v33, Lnu/c;->b:Ljava/lang/String;

    .line 459
    .line 460
    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 461
    .line 462
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 463
    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    array-length v5, v0

    .line 470
    const/4 v7, 0x0

    .line 471
    :goto_f
    if-ge v7, v5, :cond_13

    .line 472
    .line 473
    aget-object v14, v0, v7

    .line 474
    .line 475
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    array-length v14, v0

    .line 479
    const/16 v16, 0x1

    .line 480
    .line 481
    add-int/lit8 v14, v14, -0x1

    .line 482
    .line 483
    if-ge v7, v14, :cond_12

    .line 484
    .line 485
    const-string v14, ","

    .line 486
    .line 487
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 491
    .line 492
    goto :goto_f

    .line 493
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    const-string v4, "com.transsnet.store"

    .line 509
    .line 510
    const/4 v5, 0x0

    .line 511
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 516
    .line 517
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 518
    .line 519
    .line 520
    goto :goto_10

    .line 521
    :catch_7
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 523
    .line 524
    .line 525
    move-object/from16 v0, v24

    .line 526
    .line 527
    :goto_10
    invoke-static {}, Ltu/n;->i()J

    .line 528
    .line 529
    .line 530
    move-result-wide v28

    .line 531
    move-object/from16 v16, v25

    .line 532
    .line 533
    move-object/from16 v4, v30

    .line 534
    .line 535
    move-object v5, v8

    .line 536
    move-object v6, v9

    .line 537
    move-wide v7, v10

    .line 538
    move-object v9, v12

    .line 539
    move-object/from16 v10, v16

    .line 540
    .line 541
    move-object v11, v1

    .line 542
    move-object v12, v13

    .line 543
    move-object/from16 v1, v17

    .line 544
    .line 545
    move-object/from16 v13, v31

    .line 546
    .line 547
    move-wide/from16 v21, v18

    .line 548
    .line 549
    move-object/from16 v17, v26

    .line 550
    .line 551
    move-object/from16 v26, v14

    .line 552
    .line 553
    move-object/from16 v14, v27

    .line 554
    .line 555
    move-object/from16 v16, v2

    .line 556
    .line 557
    move-object/from16 v18, v32

    .line 558
    .line 559
    move-object/from16 v19, v3

    .line 560
    .line 561
    move-object/from16 v20, v1

    .line 562
    .line 563
    move-object/from16 v24, v33

    .line 564
    .line 565
    move/from16 v25, v34

    .line 566
    .line 567
    move-object/from16 v27, v0

    .line 568
    .line 569
    invoke-direct/range {v4 .. v29}, Lcom/transsion/upgradesdk/bean/RequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 570
    .line 571
    .line 572
    return-object v30

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
