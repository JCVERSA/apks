.class public abstract Landroidx/compose/ui/text/platform/extensions/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/x;Lkotlin/jvm/functions/Function4;Lo0/e;Z)Landroidx/compose/ui/text/x;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lo0/w;->g(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lo0/y;->b:Lo0/y$a;

    .line 10
    .line 11
    invoke-virtual {v2}, Lo0/y$a;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-interface {p3, v0, v1}, Lo0/e;->h0(J)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2}, Lo0/y$a;->a()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->k()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v3, v4}, Lo0/w;->h(J)F

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    mul-float/2addr v0, v1

    .line 56
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/f;->d(Landroidx/compose/ui/text/x;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    sget-object v1, Landroidx/compose/ui/text/font/p;->b:Landroidx/compose/ui/text/font/p$a;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/p$a;->a()Landroidx/compose/ui/text/font/p;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v3}, Landroidx/compose/ui/text/font/n;->i()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    sget-object v3, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroidx/compose/ui/text/font/n$a;->b()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    :goto_1
    invoke-static {v3}, Landroidx/compose/ui/text/font/n;->c(I)Landroidx/compose/ui/text/font/n;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->m()Landroidx/compose/ui/text/font/o;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/o;->k()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    sget-object v4, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/o$a;->a()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    :goto_2
    invoke-static {v4}, Landroidx/compose/ui/text/font/o;->e(I)Landroidx/compose/ui/text/font/o;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {p2, v0, v1, v3, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Landroid/graphics/Typeface;

    .line 128
    .line 129
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_8

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v0, Ln0/i;->c:Ln0/i$a;

    .line 143
    .line 144
    invoke-virtual {v0}, Ln0/i$a;->a()Ln0/i;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_8

    .line 153
    .line 154
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    const/16 v0, 0x18

    .line 157
    .line 158
    if-lt p2, v0, :cond_6

    .line 159
    .line 160
    sget-object p2, Landroidx/compose/ui/text/platform/extensions/d;->a:Landroidx/compose/ui/text/platform/extensions/d;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, p0, v0}, Landroidx/compose/ui/text/platform/extensions/d;->b(Landroidx/compose/ui/text/platform/AndroidTextPaint;Ln0/i;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Ln0/i;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-eqz p2, :cond_7

    .line 179
    .line 180
    sget-object p2, Ln0/h;->b:Ln0/h$a;

    .line 181
    .line 182
    invoke-virtual {p2}, Ln0/h$a;->a()Ln0/h;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    goto :goto_3

    .line 187
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->p()Ln0/i;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p2, v0}, Ln0/i;->e(I)Ln0/h;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    :goto_3
    invoke-virtual {p2}, Ln0/h;->a()Ljava/util/Locale;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 201
    .line 202
    .line 203
    :cond_8
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    if-eqz p2, :cond_9

    .line 208
    .line 209
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const-string v0, ""

    .line 214
    .line 215
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    if-nez p2, :cond_9

    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->j()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    if-eqz p2, :cond_a

    .line 233
    .line 234
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    sget-object v0, Landroidx/compose/ui/text/style/m;->c:Landroidx/compose/ui/text/style/m$a;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m$a;->a()Landroidx/compose/ui/text/style/m;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-nez p2, :cond_a

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m;->b()F

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    mul-float/2addr p2, v0

    .line 263
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->u()Landroidx/compose/ui/text/style/m;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/m;->c()F

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    add-float/2addr p2, v0

    .line 279
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 280
    .line 281
    .line 282
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->g()J

    .line 283
    .line 284
    .line 285
    move-result-wide v0

    .line 286
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(J)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->f()Landroidx/compose/ui/graphics/j1;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    sget-object v0, Ly/m;->b:Ly/m$a;

    .line 294
    .line 295
    invoke-virtual {v0}, Ly/m$a;->a()J

    .line 296
    .line 297
    .line 298
    move-result-wide v0

    .line 299
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->c()F

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    invoke-virtual {p0, p2, v0, v1, v3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/j1;JF)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->r()Landroidx/compose/ui/graphics/z4;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h(Landroidx/compose/ui/graphics/z4;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->s()Landroidx/compose/ui/text/style/i;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i(Landroidx/compose/ui/text/style/i;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->h()Lz/h;

    .line 321
    .line 322
    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Lz/h;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 328
    .line 329
    .line 330
    move-result-wide v0

    .line 331
    invoke-static {v0, v1}, Lo0/w;->g(J)J

    .line 332
    .line 333
    .line 334
    move-result-wide v0

    .line 335
    invoke-virtual {v2}, Lo0/y$a;->b()J

    .line 336
    .line 337
    .line 338
    move-result-wide v3

    .line 339
    invoke-static {v0, v1, v3, v4}, Lo0/y;->g(JJ)Z

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    if-eqz p2, :cond_d

    .line 344
    .line 345
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    invoke-static {v0, v1}, Lo0/w;->h(J)F

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    const/4 v0, 0x0

    .line 354
    cmpg-float p2, p2, v0

    .line 355
    .line 356
    if-nez p2, :cond_b

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    mul-float/2addr p2, v1

    .line 368
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 369
    .line 370
    .line 371
    move-result-wide v1

    .line 372
    invoke-interface {p3, v1, v2}, Lo0/e;->h0(J)F

    .line 373
    .line 374
    .line 375
    move-result p3

    .line 376
    cmpg-float v0, p2, v0

    .line 377
    .line 378
    if-nez v0, :cond_c

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_c
    div-float/2addr p3, p2

    .line 382
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_d
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 387
    .line 388
    .line 389
    move-result-wide p2

    .line 390
    invoke-static {p2, p3}, Lo0/w;->g(J)J

    .line 391
    .line 392
    .line 393
    move-result-wide p2

    .line 394
    invoke-virtual {v2}, Lo0/y$a;->a()J

    .line 395
    .line 396
    .line 397
    move-result-wide v0

    .line 398
    invoke-static {p2, p3, v0, v1}, Lo0/y;->g(JJ)Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-eqz p2, :cond_e

    .line 403
    .line 404
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 405
    .line 406
    .line 407
    move-result-wide p2

    .line 408
    invoke-static {p2, p3}, Lo0/w;->h(J)F

    .line 409
    .line 410
    .line 411
    move-result p2

    .line 412
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 413
    .line 414
    .line 415
    :cond_e
    :goto_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->o()J

    .line 416
    .line 417
    .line 418
    move-result-wide v0

    .line 419
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->d()J

    .line 420
    .line 421
    .line 422
    move-result-wide v3

    .line 423
    invoke-virtual {p1}, Landroidx/compose/ui/text/x;->e()Landroidx/compose/ui/text/style/a;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    move v2, p4

    .line 428
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/f;->c(JZJLandroidx/compose/ui/text/style/a;)Landroidx/compose/ui/text/x;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    return-object p0
.end method

.method public static final b(F)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    :cond_0
    return p0
.end method

.method private static final c(JZJLandroidx/compose/ui/text/style/a;)Landroidx/compose/ui/text/x;
    .locals 32

    .line 1
    move-wide/from16 v0, p3

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-static/range {p0 .. p1}, Lo0/w;->g(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    sget-object v6, Lo0/y;->b:Lo0/y$a;

    .line 12
    .line 13
    invoke-virtual {v6}, Lo0/y$a;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-static {v4, v5, v6, v7}, Lo0/y;->g(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-static/range {p0 .. p1}, Lo0/w;->h(J)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    cmpg-float v4, v4, v5

    .line 29
    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v4, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move v4, v2

    .line 36
    :goto_1
    sget-object v5, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->d()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_2

    .line 57
    .line 58
    move v6, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v6, v2

    .line 61
    :goto_2
    if-eqz p5, :cond_3

    .line 62
    .line 63
    sget-object v7, Landroidx/compose/ui/text/style/a;->b:Landroidx/compose/ui/text/style/a$a;

    .line 64
    .line 65
    invoke-virtual {v7}, Landroidx/compose/ui/text/style/a$a;->a()F

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/text/style/a;->h()F

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-static {v8, v7}, Landroidx/compose/ui/text/style/a;->e(FF)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_3

    .line 78
    .line 79
    move v2, v3

    .line 80
    :cond_3
    const/4 v3, 0x0

    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_4
    if-eqz v4, :cond_5

    .line 89
    .line 90
    move-wide/from16 v19, p0

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    sget-object v4, Lo0/w;->b:Lo0/w$a;

    .line 94
    .line 95
    invoke-virtual {v4}, Lo0/w$a;->a()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    move-wide/from16 v19, v7

    .line 100
    .line 101
    :goto_3
    if-eqz v6, :cond_6

    .line 102
    .line 103
    :goto_4
    move-wide/from16 v24, v0

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/u1$a;->e()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    goto :goto_4

    .line 111
    :goto_5
    if-eqz v2, :cond_7

    .line 112
    .line 113
    move-object/from16 v21, p5

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_7
    move-object/from16 v21, v3

    .line 117
    .line 118
    :goto_6
    new-instance v3, Landroidx/compose/ui/text/x;

    .line 119
    .line 120
    move-object v9, v3

    .line 121
    const v30, 0xf67f

    .line 122
    .line 123
    .line 124
    const/16 v31, 0x0

    .line 125
    .line 126
    const-wide/16 v10, 0x0

    .line 127
    .line 128
    const-wide/16 v12, 0x0

    .line 129
    .line 130
    const/4 v14, 0x0

    .line 131
    const/4 v15, 0x0

    .line 132
    const/16 v16, 0x0

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/16 v18, 0x0

    .line 137
    .line 138
    const/16 v22, 0x0

    .line 139
    .line 140
    const/16 v23, 0x0

    .line 141
    .line 142
    const/16 v26, 0x0

    .line 143
    .line 144
    const/16 v27, 0x0

    .line 145
    .line 146
    const/16 v28, 0x0

    .line 147
    .line 148
    const/16 v29, 0x0

    .line 149
    .line 150
    invoke-direct/range {v9 .. v31}, Landroidx/compose/ui/text/x;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/v;Lz/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    .line 152
    .line 153
    :goto_7
    return-object v3
.end method

.method public static final d(Landroidx/compose/ui/text/x;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->i()Landroidx/compose/ui/text/font/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->l()Landroidx/compose/ui/text/font/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/x;->n()Landroidx/compose/ui/text/font/p;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public static final e(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/style/o;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Landroidx/compose/ui/text/style/o;->c:Landroidx/compose/ui/text/style/o$a;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o$a;->a()Landroidx/compose/ui/text/style/o;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    or-int/lit16 v0, v0, 0x80

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/lit16 v0, v0, -0x81

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/o;->b()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sget-object v0, Landroidx/compose/ui/text/style/o$b;->a:Landroidx/compose/ui/text/style/o$b$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->b()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    or-int/lit8 p1, p1, 0x40

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->a()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {p1, v1}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setHinting(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/o$b$a;->c()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {p1, v0}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method
