.class public Lcom/transsion/sdk/oneid/data/UniqueIdInfo;
.super Lcom/transsion/sdk/oneid/data/OneBaseInfo;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public oaid:Ljava/lang/String;

.field public opid:Ljava/lang/String;

.field public tsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    const-string v0, "oneid_time"

    .line 2
    .line 3
    const-string v1, "oneid"

    .line 4
    .line 5
    const-string v2, "oaid"

    .line 6
    .line 7
    const-string v3, "opid"

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->r(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    :try_start_0
    invoke-virtual {v5, v1}, Lbz/b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iput-object v7, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v5, v0}, Lbz/b;->a(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v7

    .line 43
    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    const-wide/16 v10, 0x3e8

    .line 56
    .line 57
    div-long/2addr v8, v10

    .line 58
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    iget-object v9, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_0

    .line 73
    .line 74
    sub-int v7, v8, v7

    .line 75
    .line 76
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    int-to-long v9, v7

    .line 81
    const-wide/32 v11, 0x15180

    .line 82
    .line 83
    .line 84
    cmp-long v7, v9, v11

    .line 85
    .line 86
    if-ltz v7, :cond_2

    .line 87
    .line 88
    :cond_0
    :try_start_1
    invoke-static {p1, v6}, Lcom/transsion/sdk/oneid/b;->d(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-nez v9, :cond_2

    .line 97
    .line 98
    const-string v9, "UNKNOWN"

    .line 99
    .line 100
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_2

    .line 105
    .line 106
    iget-object v9, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_1

    .line 113
    .line 114
    iput-object v7, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    .line 116
    :try_start_2
    invoke-virtual {v5, v1, v7}, Lbz/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v0, v8}, Lbz/b;->c(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_1
    move-exception v0

    .line 124
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :catch_2
    move-exception v0

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    .line 142
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Lcom/transsion/sdk/oneid/data/IdChangeInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    .line 148
    const-string v5, "tsid"

    .line 149
    .line 150
    :try_start_4
    iget-object v8, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;

    .line 151
    .line 152
    invoke-direct {v1, v5, v8, v7}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/transsion/sdk/oneid/e;->e(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 156
    .line 157
    .line 158
    iput-object v7, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->tsid:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    instance-of v1, v0, Ljava/lang/SecurityException;

    .line 169
    .line 170
    if-eqz v1, :cond_2

    .line 171
    .line 172
    :try_start_5
    invoke-static {p1, p2}, Lcom/transsion/sdk/oneid/b;->d(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_2
    :goto_2
    :try_start_6
    invoke-static {p1}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-virtual {p2, v3}, Lbz/b;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 197
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 198
    .line 199
    if-eqz p2, :cond_7

    .line 200
    .line 201
    :try_start_7
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result p2

    .line 205
    if-nez p2, :cond_3

    .line 206
    .line 207
    new-instance p2, Ljava/io/File;

    .line 208
    .line 209
    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_3

    .line 221
    .line 222
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->f(Ljava/io/File;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_3

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-lez v1, :cond_3

    .line 233
    .line 234
    new-instance v1, Lorg/json/JSONObject;

    .line 235
    .line 236
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 244
    .line 245
    :catch_4
    :cond_3
    :try_start_8
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-eqz p2, :cond_6

    .line 252
    .line 253
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 254
    .line 255
    const/16 v1, 0x1a

    .line 256
    .line 257
    if-ge p2, v1, :cond_4

    .line 258
    .line 259
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    const-string v1, "android_id"

    .line 264
    .line 265
    invoke-static {p2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 270
    .line 271
    :catch_5
    :try_start_a
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 272
    .line 273
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    if-nez p2, :cond_4

    .line 278
    .line 279
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :catch_6
    move-exception p2

    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 297
    if-eqz p2, :cond_6

    .line 298
    .line 299
    :try_start_b
    new-instance p2, Ljava/io/File;

    .line 300
    .line 301
    const-string v1, "/proc/sys/kernel/random/boot_id"

    .line 302
    .line 303
    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->f(Ljava/io/File;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 311
    .line 312
    :catch_7
    :try_start_c
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_5

    .line 319
    .line 320
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 329
    .line 330
    :cond_5
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    iput-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 337
    .line 338
    :cond_6
    invoke-static {p1}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    iget-object v1, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {p2, v3, v1}, Lbz/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 345
    .line 346
    .line 347
    :cond_7
    :try_start_d
    new-instance p2, Ljava/io/File;

    .line 348
    .line 349
    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_9

    .line 361
    .line 362
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 363
    .line 364
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_9

    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_8

    .line 375
    .line 376
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->f(Ljava/io/File;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p2

    .line 380
    if-eqz p2, :cond_8

    .line 381
    .line 382
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-lez v0, :cond_8

    .line 387
    .line 388
    const-string v0, "read opid success"

    .line 389
    .line 390
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lorg/json/JSONObject;

    .line 394
    .line 395
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    goto :goto_4

    .line 403
    :catch_8
    move-exception p2

    .line 404
    goto :goto_5

    .line 405
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result p2

    .line 411
    if-nez p2, :cond_9

    .line 412
    .line 413
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    .line 414
    .line 415
    .line 416
    move-result-object p2

    .line 417
    new-instance v0, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 418
    .line 419
    iget-object v1, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;

    .line 420
    .line 421
    invoke-direct {v0, v3, v4, v1}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p2, v0}, Lcom/transsion/sdk/oneid/e;->e(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result p2

    .line 431
    if-nez p2, :cond_9

    .line 432
    .line 433
    iput-object v4, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->opid:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 434
    .line 435
    goto :goto_7

    .line 436
    :goto_5
    :try_start_e
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2

    .line 440
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :goto_6
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p2

    .line 448
    invoke-static {p2}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_9
    :goto_7
    :try_start_f
    invoke-static {p1}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-virtual {p2, v2}, Lbz/b;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iput-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 460
    .line 461
    :try_start_10
    invoke-static {p1}, Lbz/e;->a(Landroid/content/Context;)Lbz/e$b;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lbz/e$b;->a()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 469
    goto :goto_8

    .line 470
    :catch_9
    move-exception v0

    .line 471
    :try_start_11
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :goto_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-nez v0, :cond_b

    .line 483
    .line 484
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 485
    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_a

    .line 491
    .line 492
    iput-object v6, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 493
    .line 494
    invoke-virtual {p2, v2, v6}, Lbz/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :catch_a
    move-exception p1

    .line 499
    goto :goto_9

    .line 500
    :cond_a
    iget-object p2, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 501
    .line 502
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 503
    .line 504
    .line 505
    move-result p2

    .line 506
    if-nez p2, :cond_b

    .line 507
    .line 508
    invoke-static {p1}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    new-instance p2, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 513
    .line 514
    iget-object v0, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;

    .line 515
    .line 516
    invoke-direct {p2, v2, v0, v6}, Lcom/transsion/sdk/oneid/data/IdChangeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p1, p2}, Lcom/transsion/sdk/oneid/e;->e(Lcom/transsion/sdk/oneid/data/IdChangeInfo;)V

    .line 520
    .line 521
    .line 522
    iput-object v6, p0, Lcom/transsion/sdk/oneid/data/UniqueIdInfo;->oaid:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    .line 523
    .line 524
    goto :goto_a

    .line 525
    :goto_9
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    :cond_b
    :goto_a
    return-void
.end method
