.class public Lb5/a2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lb5/b2;


# static fields
.field public static final a:Lb5/a2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb5/a2;

    .line 2
    .line 3
    invoke-direct {v0}, Lb5/a2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb5/a2;->a:Lb5/a2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public d(La5/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p1, La5/a;->f:La5/b;

    .line 2
    .line 3
    invoke-interface {v0}, La5/b;->t0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const-class v3, Ljava/lang/Byte;

    .line 9
    .line 10
    const-class v4, Ljava/lang/Short;

    .line 11
    .line 12
    const-class v5, Ljava/lang/Double;

    .line 13
    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    if-ne v1, v2, :cond_9

    .line 17
    .line 18
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 19
    .line 20
    if-eq p2, p1, :cond_8

    .line 21
    .line 22
    if-ne p2, v5, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-interface {v0}, La5/b;->l()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    const-string p3, "short overflow : "

    .line 36
    .line 37
    if-eq p2, p1, :cond_6

    .line 38
    .line 39
    if-ne p2, v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-eq p2, p1, :cond_4

    .line 45
    .line 46
    if-ne p2, v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-wide/32 p1, -0x80000000

    .line 50
    .line 51
    .line 52
    cmp-long p1, v1, p1

    .line 53
    .line 54
    if-ltz p1, :cond_3

    .line 55
    .line 56
    const-wide/32 p1, 0x7fffffff

    .line 57
    .line 58
    .line 59
    cmp-long p1, v1, p1

    .line 60
    .line 61
    if-gtz p1, :cond_3

    .line 62
    .line 63
    long-to-int p1, v1

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_4
    :goto_0
    const-wide/16 p1, 0x7f

    .line 75
    .line 76
    cmp-long p1, v1, p1

    .line 77
    .line 78
    if-gtz p1, :cond_5

    .line 79
    .line 80
    const-wide/16 p1, -0x80

    .line 81
    .line 82
    cmp-long p1, v1, p1

    .line 83
    .line 84
    if-ltz p1, :cond_5

    .line 85
    .line 86
    long-to-int p1, v1

    .line 87
    int-to-byte p1, p1

    .line 88
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 94
    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    :goto_1
    const-wide/16 p1, 0x7fff

    .line 115
    .line 116
    cmp-long p1, v1, p1

    .line 117
    .line 118
    if-gtz p1, :cond_7

    .line 119
    .line 120
    const-wide/16 p1, -0x8000

    .line 121
    .line 122
    cmp-long p1, v1, p1

    .line 123
    .line 124
    if-ltz p1, :cond_7

    .line 125
    .line 126
    long-to-int p1, v1

    .line 127
    int-to-short p1, p1

    .line 128
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 134
    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_8
    :goto_2
    invoke-interface {v0}, La5/b;->E0()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 162
    .line 163
    .line 164
    move-result-wide p1

    .line 165
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    :cond_9
    invoke-interface {v0}, La5/b;->t0()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v2, 0x3

    .line 175
    if-ne v1, v2, :cond_11

    .line 176
    .line 177
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 178
    .line 179
    if-eq p2, p1, :cond_10

    .line 180
    .line 181
    if-ne p2, v5, :cond_a

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_a
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 185
    .line 186
    if-eq p2, p1, :cond_f

    .line 187
    .line 188
    if-ne p2, v4, :cond_b

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_b
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 192
    .line 193
    if-eq p2, p1, :cond_e

    .line 194
    .line 195
    if-ne p2, v3, :cond_c

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_c
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 203
    .line 204
    .line 205
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    .line 206
    .line 207
    invoke-interface {v0, p2}, La5/b;->o(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-eqz p2, :cond_d

    .line 212
    .line 213
    return-object p1

    .line 214
    :cond_d
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 215
    .line 216
    .line 217
    move-result-wide p1

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    return-object p1

    .line 223
    :cond_e
    :goto_3
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 228
    .line 229
    .line 230
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->e(Ljava/math/BigDecimal;)B

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    return-object p1

    .line 239
    :cond_f
    :goto_4
    invoke-interface {v0}, La5/b;->g0()Ljava/math/BigDecimal;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 244
    .line 245
    .line 246
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->N0(Ljava/math/BigDecimal;)S

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    return-object p1

    .line 255
    :cond_10
    :goto_5
    invoke-interface {v0}, La5/b;->E0()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {v0, v6}, La5/b;->f0(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 263
    .line 264
    .line 265
    move-result-wide p1

    .line 266
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    return-object p1

    .line 271
    :cond_11
    invoke-interface {v0}, La5/b;->t0()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    const/16 v2, 0x12

    .line 276
    .line 277
    const/4 v6, 0x0

    .line 278
    if-ne v1, v2, :cond_14

    .line 279
    .line 280
    const-string v1, "NaN"

    .line 281
    .line 282
    invoke-interface {v0}, La5/b;->o0()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_14

    .line 291
    .line 292
    invoke-interface {v0}, La5/b;->d0()V

    .line 293
    .line 294
    .line 295
    if-ne p2, v5, :cond_12

    .line 296
    .line 297
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 298
    .line 299
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    goto :goto_6

    .line 304
    :cond_12
    const-class p1, Ljava/lang/Float;

    .line 305
    .line 306
    if-ne p2, p1, :cond_13

    .line 307
    .line 308
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 309
    .line 310
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    :cond_13
    :goto_6
    return-object v6

    .line 315
    :cond_14
    invoke-virtual {p1}, La5/a;->x()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    if-nez p1, :cond_15

    .line 320
    .line 321
    return-object v6

    .line 322
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 323
    .line 324
    if-eq p2, v0, :cond_1b

    .line 325
    .line 326
    if-ne p2, v5, :cond_16

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_16
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 330
    .line 331
    if-eq p2, v0, :cond_1a

    .line 332
    .line 333
    if-ne p2, v4, :cond_17

    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_17
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 337
    .line 338
    if-eq p2, v0, :cond_19

    .line 339
    .line 340
    if-ne p2, v3, :cond_18

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_18
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    return-object p1

    .line 348
    :cond_19
    :goto_7
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->l(Ljava/lang/Object;)Ljava/lang/Byte;

    .line 349
    .line 350
    .line 351
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object p1

    .line 353
    :catch_0
    move-exception p1

    .line 354
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 355
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    const-string v1, "parseByte error, field : "

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p3

    .line 373
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .line 375
    .line 376
    throw p2

    .line 377
    :cond_1a
    :goto_8
    :try_start_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->x(Ljava/lang/Object;)Ljava/lang/Short;

    .line 378
    .line 379
    .line 380
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    return-object p1

    .line 382
    :catch_1
    move-exception p1

    .line 383
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 384
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v1, "parseShort error, field : "

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p3

    .line 402
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    throw p2

    .line 406
    :cond_1b
    :goto_9
    :try_start_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->q(Ljava/lang/Object;)Ljava/lang/Double;

    .line 407
    .line 408
    .line 409
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 410
    return-object p1

    .line 411
    :catch_2
    move-exception p1

    .line 412
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 413
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    const-string v1, "parseDouble error, field : "

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p3

    .line 431
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    .line 433
    .line 434
    throw p2
.end method
