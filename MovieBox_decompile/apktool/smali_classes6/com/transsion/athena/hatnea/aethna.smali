.class public Lcom/transsion/athena/hatnea/aethna;
.super Lcom/transsion/athena/hatnea/anateh;
.source "source.java"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/transsion/athena/hatnea/aethna;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v4, "opid"

    .line 6
    .line 7
    const-string v0, "ins"

    .line 8
    .line 9
    const-string v5, "vc"

    .line 10
    .line 11
    const-string v6, "vn"

    .line 12
    .line 13
    const-string v7, "pkg"

    .line 14
    .line 15
    const-string v8, ""

    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    invoke-static {v9}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    iget-object v11, v1, Lcom/transsion/athena/hatnea/aethna;->c:Ljava/lang/String;

    .line 26
    .line 27
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-static {v11}, Lcom/transsion/athena/config/data/model/anehat;->a([B)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v16

    .line 37
    new-instance v11, Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .line 41
    .line 42
    const/16 v12, 0x270f

    .line 43
    .line 44
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v14, "appid"

    .line 50
    .line 51
    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    const-string v14, "hostid"

    .line 56
    .line 57
    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v13

    .line 61
    invoke-virtual {v13, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    invoke-virtual {v13, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-virtual {v13, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    invoke-virtual {v13, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    const-string v14, "sdkv"

    .line 78
    .line 79
    const-string v15, "3.1.1.4"

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    const-string v14, "isfl"

    .line 86
    .line 87
    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    const-string v14, "cnt"

    .line 92
    .line 93
    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    const-string v14, "events"

    .line 98
    .line 99
    :try_start_2
    new-instance v15, Lorg/json/JSONArray;

    .line 100
    .line 101
    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v12, Lorg/json/JSONObject;

    .line 105
    .line 106
    iget-object v3, v1, Lcom/transsion/athena/hatnea/aethna;->c:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {v12, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    :try_start_3
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-nez v13, :cond_0

    .line 128
    .line 129
    move-object v14, v8

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    move-object v14, v13

    .line 132
    :goto_0
    invoke-virtual {v3, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    if-nez v14, :cond_1

    .line 141
    .line 142
    move-object v14, v8

    .line 143
    :cond_1
    invoke-virtual {v7, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v13, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 153
    .line 154
    if-nez v7, :cond_2

    .line 155
    .line 156
    move-object v7, v8

    .line 157
    :cond_2
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-nez v0, :cond_3

    .line 168
    .line 169
    move-object v0, v8

    .line 170
    :cond_3
    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_4
    :goto_1
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :catch_1
    move-exception v0

    .line 183
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    invoke-static {v9, v2}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const/4 v5, 0x0

    .line 195
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 196
    .line 197
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 198
    .line 199
    .line 200
    const-string v6, "channel"

    .line 201
    .line 202
    :try_start_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    if-nez v7, :cond_5

    .line 207
    .line 208
    move-object v7, v8

    .line 209
    :cond_5
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v9, v4}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    if-nez v6, :cond_6

    .line 218
    .line 219
    move-object v6, v8

    .line 220
    :cond_6
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 224
    const-string v4, "tsid"

    .line 225
    .line 226
    :try_start_7
    const-string v6, "oneid"

    .line 227
    .line 228
    invoke-static {v9, v6}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    if-nez v6, :cond_7

    .line 233
    .line 234
    move-object v6, v8

    .line 235
    :cond_7
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    .line 237
    .line 238
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 239
    const-string v4, "vaid"

    .line 240
    .line 241
    :try_start_8
    invoke-static {}, Lcom/transsion/athena/taaneh/ehatna;->a()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    if-nez v6, :cond_8

    .line 246
    .line 247
    move-object v6, v8

    .line 248
    :cond_8
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    new-instance v4, Lorg/json/JSONObject;

    .line 253
    .line 254
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 255
    .line 256
    .line 257
    const-string v6, "tz"

    .line 258
    .line 259
    :try_start_9
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->b()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    if-nez v7, :cond_9

    .line 264
    .line 265
    move-object v7, v8

    .line 266
    :cond_9
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    .line 268
    .line 269
    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 270
    const-string v6, "gaid"

    .line 271
    .line 272
    :try_start_a
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    if-nez v7, :cond_a

    .line 277
    .line 278
    move-object v7, v8

    .line 279
    :cond_a
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    .line 281
    .line 282
    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 283
    const-string v6, "tuid"

    .line 284
    .line 285
    :try_start_b
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    if-nez v7, :cond_b

    .line 290
    .line 291
    move-object v7, v8

    .line 292
    :cond_b
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 296
    const-string v6, "actype"

    .line 297
    .line 298
    :try_start_c
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 306
    const-string v6, "osver"

    .line 307
    .line 308
    :try_start_d
    invoke-static {}, Lcom/transsion/athena/taaneh/hatnea;->a()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    if-nez v7, :cond_c

    .line 313
    .line 314
    move-object v7, v8

    .line 315
    :cond_c
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    .line 317
    .line 318
    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 319
    const-string v6, "aver"

    .line 320
    .line 321
    :try_start_e
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 322
    .line 323
    if-nez v7, :cond_d

    .line 324
    .line 325
    move-object v7, v8

    .line 326
    :cond_d
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    .line 328
    .line 329
    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 330
    const-string v6, "build"

    .line 331
    .line 332
    :try_start_f
    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 333
    .line 334
    if-nez v7, :cond_e

    .line 335
    .line 336
    move-object v7, v8

    .line 337
    :cond_e
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    .line 339
    .line 340
    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 341
    const-string v6, "lang"

    .line 342
    .line 343
    :try_start_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    if-nez v7, :cond_f

    .line 352
    .line 353
    move-object v7, v8

    .line 354
    :cond_f
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    .line 356
    .line 357
    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 358
    const-string v6, "brand"

    .line 359
    .line 360
    :try_start_11
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 361
    .line 362
    if-nez v7, :cond_10

    .line 363
    .line 364
    move-object v7, v8

    .line 365
    :cond_10
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    .line 367
    .line 368
    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 369
    const-string v6, "model"

    .line 370
    .line 371
    :try_start_12
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 372
    .line 373
    if-nez v7, :cond_11

    .line 374
    .line 375
    move-object v7, v8

    .line 376
    :cond_11
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    .line 378
    .line 379
    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 380
    const-string v6, "net"

    .line 381
    .line 382
    :try_start_13
    invoke-static {v9}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/content/Context;)I

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    .line 388
    .line 389
    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 390
    const-string v6, "uts"

    .line 391
    .line 392
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 393
    .line 394
    .line 395
    move-result-wide v12

    .line 396
    invoke-virtual {v4, v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    const-string v6, "try"

    .line 401
    .line 402
    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    .line 404
    .line 405
    move-result-object v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 406
    const-string v6, "mcc"

    .line 407
    .line 408
    :try_start_15
    invoke-static {v9}, Lcom/transsion/athena/taaneh/athena;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-nez v7, :cond_12

    .line 413
    .line 414
    move-object v7, v8

    .line 415
    :cond_12
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    .line 417
    .line 418
    move-result-object v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    .line 419
    const-string v6, "mnc"

    .line 420
    .line 421
    :try_start_16
    invoke-static {v9}, Lcom/transsion/athena/taaneh/athena;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    if-nez v7, :cond_13

    .line 426
    .line 427
    move-object v7, v8

    .line 428
    :cond_13
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    .line 430
    .line 431
    move-result-object v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    .line 432
    const-string v6, "ekey"

    .line 433
    .line 434
    :try_start_17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    const-string v6, "appids"

    .line 443
    .line 444
    invoke-virtual {v4, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->h()Lorg/json/JSONObject;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    if-eqz v6, :cond_15

    .line 453
    .line 454
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-lez v7, :cond_15

    .line 459
    .line 460
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 465
    .line 466
    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    array-length v7, v7
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    .line 471
    const/16 v11, 0x7d0

    .line 472
    .line 473
    const-string v12, "cparam"

    .line 474
    .line 475
    if-le v7, v11, :cond_14

    .line 476
    .line 477
    :try_start_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 478
    .line 479
    .line 480
    move-result-object v6
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    .line 481
    const-string v11, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    .line 482
    .line 483
    :try_start_19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v7

    .line 487
    const/4 v13, 0x1

    .line 488
    new-array v14, v13, [Ljava/lang/Object;

    .line 489
    .line 490
    aput-object v7, v14, v2

    .line 491
    .line 492
    invoke-static {v6, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    invoke-static {v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    new-instance v7, Lorg/json/JSONObject;

    .line 500
    .line 501
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 502
    .line 503
    .line 504
    const-string v11, "errorMsg"

    .line 505
    .line 506
    invoke-virtual {v7, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    .line 515
    .line 516
    goto :goto_3

    .line 517
    :catch_2
    move-exception v0

    .line 518
    goto :goto_5

    .line 519
    :cond_14
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    invoke-virtual {v0, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    .line 525
    .line 526
    :cond_15
    :goto_3
    sget-boolean v0, Lcom/transsion/athena/config/data/model/ehanat;->C:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    .line 527
    .line 528
    if-eqz v0, :cond_17

    .line 529
    .line 530
    const-string v0, "iid"

    .line 531
    .line 532
    if-nez v3, :cond_16

    .line 533
    .line 534
    move-object v6, v8

    .line 535
    goto :goto_4

    .line 536
    :cond_16
    move-object v6, v3

    .line 537
    :goto_4
    :try_start_1a
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    .line 539
    .line 540
    :cond_17
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 545
    .line 546
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 547
    .line 548
    .line 549
    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    .line 550
    move-object v13, v0

    .line 551
    goto :goto_6

    .line 552
    :goto_5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    move-object v13, v5

    .line 560
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_18

    .line 565
    .line 566
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    :cond_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-eqz v0, :cond_19

    .line 575
    .line 576
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v3, "_"

    .line 593
    .line 594
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    if-eqz v3, :cond_1a

    .line 613
    .line 614
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    const/4 v4, 0x1

    .line 619
    invoke-static {v3, v4}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    :goto_7
    move-object v12, v3

    .line 624
    const/16 v3, 0x270f

    .line 625
    .line 626
    goto :goto_8

    .line 627
    :cond_1a
    const/4 v4, 0x1

    .line 628
    invoke-static {v5}, Lcom/transsion/athena/config/data/model/ehanat;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-static {v3, v4}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    goto :goto_7

    .line 637
    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 642
    .line 643
    .line 644
    move-result-object v15

    .line 645
    const/4 v14, 0x1

    .line 646
    move-object/from16 v17, v0

    .line 647
    .line 648
    invoke-static/range {v12 .. v17}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehanat;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    iget v3, v0, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 653
    .line 654
    if-nez v3, :cond_1b

    .line 655
    .line 656
    invoke-static {v9}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    const-string v2, "gdpr_close"

    .line 661
    .line 662
    invoke-virtual {v0, v2, v8}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    goto :goto_9

    .line 666
    :cond_1b
    iget-object v0, v0, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    .line 669
    .line 670
    iget-object v0, v0, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;

    .line 671
    .line 672
    const/4 v3, 0x1

    .line 673
    new-array v3, v3, [Ljava/lang/Object;

    .line 674
    .line 675
    aput-object v0, v3, v2

    .line 676
    .line 677
    const-string v0, "PostGdprEventTask requestByPost error : %s"

    .line 678
    .line 679
    invoke-static {v0, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    :goto_9
    if-eqz v10, :cond_1c

    .line 683
    .line 684
    invoke-static {v9}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    const-string v2, "first_launch"

    .line 689
    .line 690
    const-string v3, "false"

    .line 691
    .line 692
    invoke-virtual {v0, v2, v3}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    :cond_1c
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "GDPR"

    .line 2
    .line 3
    return-object v0
.end method
