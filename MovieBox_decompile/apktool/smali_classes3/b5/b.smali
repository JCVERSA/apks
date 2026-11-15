.class public abstract Lb5/b;
.super Lb5/e;
.source "source.java"

# interfaces
.implements Lb5/b2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb5/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lb5/b;->e(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public e(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 9

    .line 1
    const-string p5, "\'T\'"

    .line 2
    .line 3
    const-string v0, "T"

    .line 4
    .line 5
    iget-object v1, p1, La5/a;->f:La5/b;

    .line 6
    .line 7
    invoke-interface {v1}, La5/b;->t0()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x10

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-ne v2, v4, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, La5/b;->l()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-interface {v1, v3}, La5/b;->f0(I)V

    .line 21
    .line 22
    .line 23
    const-string p5, "unixtime"

    .line 24
    .line 25
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    if-eqz p4, :cond_0

    .line 30
    .line 31
    const-wide/16 p4, 0x3e8

    .line 32
    .line 33
    mul-long/2addr v4, p4

    .line 34
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    invoke-interface {v1}, La5/b;->t0()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v5, 0x4

    .line 45
    const/4 v6, 0x0

    .line 46
    if-ne v2, v5, :cond_b

    .line 47
    .line 48
    invoke-interface {v1}, La5/b;->o0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz p4, :cond_8

    .line 53
    .line 54
    const-string v4, "yyyy-MM-dd HH:mm:ss.SSSSSSSSS"

    .line 55
    .line 56
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    instance-of v4, p2, Ljava/lang/Class;

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    move-object v4, p2

    .line 67
    check-cast v4, Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "java.sql.Timestamp"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->B(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_2
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 87
    .line 88
    iget-object v5, p1, La5/a;->f:La5/b;

    .line 89
    .line 90
    invoke-interface {v5}, La5/b;->D0()Ljava/util/Locale;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-direct {v4, p4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v4

    .line 99
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_3

    .line 104
    .line 105
    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :try_start_1
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 110
    .line 111
    iget-object v8, p1, La5/a;->f:La5/b;

    .line 112
    .line 113
    invoke-interface {v8}, La5/b;->D0()Ljava/util/Locale;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-direct {v7, v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    .line 120
    move-object v4, v7

    .line 121
    goto :goto_0

    .line 122
    :catch_1
    throw v4

    .line 123
    :cond_3
    move-object v4, v6

    .line 124
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 125
    .line 126
    if-eqz v5, :cond_4

    .line 127
    .line 128
    iget-object v5, p1, La5/a;->f:La5/b;

    .line 129
    .line 130
    invoke-interface {v5}, La5/b;->p0()Ljava/util/TimeZone;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 138
    .line 139
    .line 140
    move-result-object v5
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    goto :goto_1

    .line 142
    :catch_2
    move-object v5, v6

    .line 143
    :goto_1
    if-nez v5, :cond_6

    .line 144
    .line 145
    sget-object v7, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 146
    .line 147
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 148
    .line 149
    if-ne v7, v8, :cond_6

    .line 150
    .line 151
    :try_start_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 152
    .line 153
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 154
    .line 155
    invoke-direct {v5, p4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 156
    .line 157
    .line 158
    move-object v4, v5

    .line 159
    goto :goto_2

    .line 160
    :catch_3
    move-exception v5

    .line 161
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p5

    .line 171
    :try_start_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 172
    .line 173
    iget-object v0, p1, La5/a;->f:La5/b;

    .line 174
    .line 175
    invoke-interface {v0}, La5/b;->D0()Ljava/util/Locale;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {v4, p5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :catch_4
    throw v5

    .line 184
    :cond_5
    :goto_2
    iget-object p5, p1, La5/a;->f:La5/b;

    .line 185
    .line 186
    invoke-interface {p5}, La5/b;->p0()Ljava/util/TimeZone;

    .line 187
    .line 188
    .line 189
    move-result-object p5

    .line 190
    invoke-virtual {v4, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 191
    .line 192
    .line 193
    :try_start_5
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 194
    .line 195
    .line 196
    move-result-object v5
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    .line 197
    goto :goto_3

    .line 198
    :catch_5
    move-object v5, v6

    .line 199
    :cond_6
    :goto_3
    if-nez v5, :cond_7

    .line 200
    .line 201
    const-string p5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    .line 202
    .line 203
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p4

    .line 207
    if-eqz p4, :cond_8

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result p4

    .line 213
    const/16 p5, 0x13

    .line 214
    .line 215
    if-ne p4, p5, :cond_8

    .line 216
    .line 217
    :try_start_6
    new-instance p4, Ljava/text/SimpleDateFormat;

    .line 218
    .line 219
    const-string p5, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 220
    .line 221
    sget-object v0, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    .line 222
    .line 223
    invoke-direct {p4, p5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 224
    .line 225
    .line 226
    sget-object p5, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    .line 227
    .line 228
    invoke-virtual {p4, p5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 232
    .line 233
    .line 234
    move-result-object v6
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move-object v6, v5

    .line 237
    :catch_6
    :cond_8
    :goto_4
    if-nez v6, :cond_c

    .line 238
    .line 239
    invoke-interface {v1, v3}, La5/b;->f0(I)V

    .line 240
    .line 241
    .line 242
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    .line 243
    .line 244
    invoke-interface {v1, p4}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 245
    .line 246
    .line 247
    move-result p4

    .line 248
    if-eqz p4, :cond_a

    .line 249
    .line 250
    new-instance p4, La5/e;

    .line 251
    .line 252
    invoke-direct {p4, v2}, La5/e;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p4}, La5/e;->w1()Z

    .line 256
    .line 257
    .line 258
    move-result p5

    .line 259
    if-eqz p5, :cond_9

    .line 260
    .line 261
    invoke-virtual {p4}, La5/c;->J0()Ljava/util/Calendar;

    .line 262
    .line 263
    .line 264
    move-result-object p5

    .line 265
    invoke-virtual {p5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    :cond_9
    invoke-virtual {p4}, La5/c;->close()V

    .line 270
    .line 271
    .line 272
    :cond_a
    move-object p4, v2

    .line 273
    goto/16 :goto_5

    .line 274
    .line 275
    :cond_b
    invoke-interface {v1}, La5/b;->t0()I

    .line 276
    .line 277
    .line 278
    move-result p4

    .line 279
    const/16 p5, 0x8

    .line 280
    .line 281
    if-ne p4, p5, :cond_d

    .line 282
    .line 283
    invoke-interface {v1}, La5/b;->d0()V

    .line 284
    .line 285
    .line 286
    :cond_c
    move-object p4, v6

    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :cond_d
    invoke-interface {v1}, La5/b;->t0()I

    .line 290
    .line 291
    .line 292
    move-result p4

    .line 293
    const/16 p5, 0xc

    .line 294
    .line 295
    const/16 v0, 0xd

    .line 296
    .line 297
    const/16 v2, 0x11

    .line 298
    .line 299
    const-string v7, "syntax error"

    .line 300
    .line 301
    if-ne p4, p5, :cond_12

    .line 302
    .line 303
    invoke-interface {v1}, La5/b;->d0()V

    .line 304
    .line 305
    .line 306
    invoke-interface {v1}, La5/b;->t0()I

    .line 307
    .line 308
    .line 309
    move-result p4

    .line 310
    if-ne p4, v5, :cond_11

    .line 311
    .line 312
    invoke-interface {v1}, La5/b;->o0()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p4

    .line 316
    sget-object p5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p4

    .line 322
    if-eqz p4, :cond_f

    .line 323
    .line 324
    invoke-interface {v1}, La5/b;->d0()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v2}, La5/a;->b(I)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v1}, La5/b;->o0()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p4

    .line 334
    invoke-virtual {p1}, La5/a;->l()La5/h;

    .line 335
    .line 336
    .line 337
    move-result-object p5

    .line 338
    invoke-interface {v1}, La5/b;->s()I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-virtual {p5, p4, v6, v2}, La5/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    move-result-object p4

    .line 346
    if-eqz p4, :cond_e

    .line 347
    .line 348
    move-object p2, p4

    .line 349
    :cond_e
    invoke-virtual {p1, v5}, La5/a;->b(I)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1, v3}, La5/a;->b(I)V

    .line 353
    .line 354
    .line 355
    :cond_f
    invoke-interface {v1, v4}, La5/b;->r(I)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v1}, La5/b;->t0()I

    .line 359
    .line 360
    .line 361
    move-result p4

    .line 362
    if-ne p4, v4, :cond_10

    .line 363
    .line 364
    invoke-interface {v1}, La5/b;->l()J

    .line 365
    .line 366
    .line 367
    move-result-wide p4

    .line 368
    invoke-interface {v1}, La5/b;->d0()V

    .line 369
    .line 370
    .line 371
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 372
    .line 373
    .line 374
    move-result-object p4

    .line 375
    invoke-virtual {p1, v0}, La5/a;->b(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 380
    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string p3, "syntax error : "

    .line 387
    .line 388
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-interface {v1}, La5/b;->x()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p3

    .line 395
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p2

    .line 402
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw p1

    .line 406
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 407
    .line 408
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw p1

    .line 412
    :cond_12
    invoke-virtual {p1}, La5/a;->t()I

    .line 413
    .line 414
    .line 415
    move-result p4

    .line 416
    if-ne p4, v4, :cond_15

    .line 417
    .line 418
    const/4 p4, 0x0

    .line 419
    invoke-virtual {p1, p4}, La5/a;->D0(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v3}, La5/a;->b(I)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v1}, La5/b;->t0()I

    .line 426
    .line 427
    .line 428
    move-result p4

    .line 429
    if-ne p4, v5, :cond_14

    .line 430
    .line 431
    const-string p4, "val"

    .line 432
    .line 433
    invoke-interface {v1}, La5/b;->o0()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p5

    .line 437
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p4

    .line 441
    if-eqz p4, :cond_13

    .line 442
    .line 443
    invoke-interface {v1}, La5/b;->d0()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, v2}, La5/a;->b(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p4

    .line 453
    invoke-virtual {p1, v0}, La5/a;->b(I)V

    .line 454
    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_13
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 458
    .line 459
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw p1

    .line 463
    :cond_14
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 464
    .line 465
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw p1

    .line 469
    :cond_15
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object p4

    .line 473
    :goto_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lb5/b;->f(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    return-object p1
.end method

.method protected abstract f(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
