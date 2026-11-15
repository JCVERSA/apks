.class public abstract Lcom/transsion/baseui/util/l;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?i:http|https|rtsp|ftp)://"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baseui/util/l;->d(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/text/SpannableString;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    sget v7, Lcom/tn/lib/widget/R$color;->color_0ba7ff:I

    .line 43
    .line 44
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    move-object v13, v1

    .line 49
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_a

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v7, ")"

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v11, 0x2

    .line 66
    invoke-static {v14, v7, v12, v11, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/16 v18, 0x4

    .line 76
    .line 77
    const/16 v19, 0x0

    .line 78
    .line 79
    const-string v15, ")"

    .line 80
    .line 81
    const-string v16, ""

    .line 82
    .line 83
    const/16 v17, 0x0

    .line 84
    .line 85
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    :cond_2
    if-eqz v13, :cond_3

    .line 90
    .line 91
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/4 v15, 0x6

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    move-object v7, v13

    .line 100
    move-object v8, v14

    .line 101
    move v11, v15

    .line 102
    move v15, v12

    .line 103
    move-object/from16 v12, v16

    .line 104
    .line 105
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v15, v12

    .line 111
    :goto_1
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/16 v19, 0x4

    .line 115
    .line 116
    const/16 v20, 0x0

    .line 117
    .line 118
    const-string v16, "%20"

    .line 119
    .line 120
    const-string v17, " "

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    move v7, v15

    .line 125
    move-object v15, v14

    .line 126
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    sget-object v9, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    .line 131
    .line 132
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-eqz v10, :cond_9

    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const-string v10, "group(...)"

    .line 147
    .line 148
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/16 v25, 0x4

    .line 152
    .line 153
    const/16 v26, 0x0

    .line 154
    .line 155
    const-string v23, ""

    .line 156
    .line 157
    const/16 v24, 0x0

    .line 158
    .line 159
    move-object/from16 v21, v8

    .line 160
    .line 161
    move-object/from16 v22, v9

    .line 162
    .line 163
    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    sget-object v9, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    invoke-virtual {v9, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_4

    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    const-string v10, "."

    .line 187
    .line 188
    const/4 v11, 0x2

    .line 189
    invoke-static {v9, v10, v7, v11, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v16

    .line 193
    if-eqz v16, :cond_5

    .line 194
    .line 195
    filled-new-array {v10}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v22

    .line 199
    const/16 v25, 0x6

    .line 200
    .line 201
    const/16 v26, 0x0

    .line 202
    .line 203
    const/16 v23, 0x0

    .line 204
    .line 205
    const/16 v24, 0x0

    .line 206
    .line 207
    move-object/from16 v21, v9

    .line 208
    .line 209
    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-le v3, v11, :cond_5

    .line 218
    .line 219
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v16

    .line 238
    const/16 v19, 0x4

    .line 239
    .line 240
    const/16 v20, 0x0

    .line 241
    .line 242
    const-string v17, ""

    .line 243
    .line 244
    const/16 v18, 0x0

    .line 245
    .line 246
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    goto :goto_2

    .line 251
    :cond_4
    const/4 v11, 0x2

    .line 252
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    const/16 v9, 0x18

    .line 257
    .line 258
    if-le v3, v9, :cond_6

    .line 259
    .line 260
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    const-string v10, "..."

    .line 265
    .line 266
    invoke-static {v15, v9, v3, v10}, Lkotlin/text/StringsKt;->M0(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v15

    .line 274
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v9, "-"

    .line 280
    .line 281
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    const/16 v19, 0x4

    .line 299
    .line 300
    const/16 v20, 0x0

    .line 301
    .line 302
    const/16 v18, 0x0

    .line 303
    .line 304
    move-object/from16 v16, v14

    .line 305
    .line 306
    move-object/from16 v17, v3

    .line 307
    .line 308
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    sget v10, Lcom/transsion/baseui/R$mipmap;->base_ic_url_link:I

    .line 317
    .line 318
    invoke-static {v9, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    if-eqz v9, :cond_7

    .line 323
    .line 324
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    invoke-virtual {v9, v7, v7, v10, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    .line 334
    .line 335
    :cond_7
    if-eqz v9, :cond_8

    .line 336
    .line 337
    new-instance v7, Lcom/transsion/baseui/widget/d;

    .line 338
    .line 339
    invoke-direct {v7, v9, v11}, Lcom/transsion/baseui/widget/d;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 340
    .line 341
    .line 342
    move-object/from16 v17, v7

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_8
    const/16 v17, 0x0

    .line 346
    .line 347
    :goto_3
    new-instance v7, Lcom/transsion/baseui/util/l$a;

    .line 348
    .line 349
    move/from16 v9, p2

    .line 350
    .line 351
    move-object/from16 v10, p4

    .line 352
    .line 353
    invoke-direct {v7, v10, v8, v9, v6}, Lcom/transsion/baseui/util/l$a;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZI)V

    .line 354
    .line 355
    .line 356
    new-instance v8, Lcom/transsion/baseui/util/UrlContent;

    .line 357
    .line 358
    move-object v15, v8

    .line 359
    move-object/from16 v16, v7

    .line 360
    .line 361
    move-object/from16 v18, v14

    .line 362
    .line 363
    move-object/from16 v19, v3

    .line 364
    .line 365
    move/from16 v20, v12

    .line 366
    .line 367
    invoke-direct/range {v15 .. v20}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    const/4 v3, 0x0

    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_9
    move/from16 v9, p2

    .line 377
    .line 378
    move-object/from16 v10, p4

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_b

    .line 387
    .line 388
    new-instance v0, Landroid/text/SpannableString;

    .line 389
    .line 390
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    return-object v0

    .line 394
    :cond_b
    new-instance v1, Landroid/text/SpannableString;

    .line 395
    .line 396
    invoke-direct {v1, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_c

    .line 408
    .line 409
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    .line 414
    .line 415
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    add-int/lit8 v8, v8, 0x1

    .line 428
    .line 429
    const/16 v9, 0x21

    .line 430
    .line 431
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 439
    .line 440
    .line 441
    move-result v7

    .line 442
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    add-int/2addr v8, v5

    .line 455
    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_c
    if-eqz v2, :cond_d

    .line 460
    .line 461
    invoke-interface {v2, v4}, Lcom/transsion/baseui/util/g;->a(Ljava/util/List;)V

    .line 462
    .line 463
    .line 464
    :cond_d
    if-eqz v0, :cond_e

    .line 465
    .line 466
    new-instance v2, Lpj/a;

    .line 467
    .line 468
    invoke-direct {v2, v1}, Lpj/a;-><init>(Landroid/text/Spannable;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    .line 473
    .line 474
    :cond_e
    if-eqz v0, :cond_f

    .line 475
    .line 476
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    sget v3, Lcom/tn/lib/widget/R$color;->cl17:I

    .line 481
    .line 482
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 487
    .line 488
    .line 489
    :cond_f
    return-object v1
.end method

.method public static final c(Landroid/widget/TextView;Ljava/lang/CharSequence;ZILcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableStringBuilder;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    sget v8, Lcom/tn/lib/widget/R$color;->color_0ba7ff:I

    invoke-static {v6, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    move-object v14, v7

    .line 7
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    const-string v15, "..."

    const/4 v13, 0x0

    if-eqz v8, :cond_a

    .line 8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v9, ")"

    const/4 v12, 0x2

    invoke-static {v8, v9, v13, v12, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, ")"

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object/from16 v22, v8

    if-eqz v14, :cond_3

    .line 11
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v14

    move-object/from16 v9, v22

    move/from16 v12, v16

    move-object/from16 v23, v5

    move v5, v13

    move-object/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v13

    goto :goto_1

    :cond_3
    move-object/from16 v23, v5

    move v5, v13

    .line 12
    :goto_1
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "%20"

    const-string v18, " "

    const/16 v19, 0x0

    move-object/from16 v16, v22

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 13
    sget-object v9, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 15
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    const-string v10, "group(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x4

    const/16 v29, 0x0

    const-string v26, ""

    const/16 v27, 0x0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 16
    sget-object v10, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 17
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 18
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 19
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v11, "."

    const/4 v12, 0x2

    invoke-static {v10, v11, v5, v12, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 20
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v10

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 21
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_5

    .line 22
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v12, 0x2

    .line 23
    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v10, 0x18

    if-le v3, v10, :cond_6

    .line 24
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v9, v10, v3, v15}, Lkotlin/text/StringsKt;->M0(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v22

    move-object/from16 v18, v3

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    sget v10, Lcom/transsion/baseui/R$mipmap;->base_ic_url_link:I

    invoke-static {v9, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 28
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-virtual {v9, v5, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7
    if-eqz v9, :cond_8

    .line 29
    new-instance v5, Lcom/transsion/baseui/widget/d;

    invoke-direct {v5, v9, v12}, Lcom/transsion/baseui/widget/d;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v18, v5

    goto :goto_3

    :cond_8
    const/16 v18, 0x0

    .line 30
    :goto_3
    new-instance v5, Lcom/transsion/baseui/util/l$b;

    move/from16 v9, p2

    move-object/from16 v10, p5

    invoke-direct {v5, v10, v8, v9, v6}, Lcom/transsion/baseui/util/l$b;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZI)V

    .line 31
    new-instance v8, Lcom/transsion/baseui/util/UrlContent;

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v19, v22

    move-object/from16 v20, v3

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v23

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v5, v23

    goto/16 :goto_0

    :cond_a
    move v5, v13

    .line 33
    new-instance v3, Landroid/text/StaticLayout;

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object v8, v6

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    move v9, v6

    goto :goto_5

    :cond_c
    move v9, v5

    .line 35
    :goto_5
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v3

    move-object/from16 v7, p1

    .line 36
    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 37
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    const/16 v7, 0x21

    if-ge v1, v6, :cond_13

    add-int/lit8 v1, v1, -0x1

    .line 38
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    .line 39
    new-instance v3, Landroid/text/SpannableStringBuilder;

    if-eqz v14, :cond_d

    .line 40
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    goto :goto_6

    :cond_d
    move v13, v5

    :goto_6
    const/16 v6, 0x1e

    if-le v13, v6, :cond_10

    if-lez v1, :cond_10

    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    goto :goto_7

    :cond_e
    move v13, v5

    :goto_7
    if-ge v1, v13, :cond_10

    if-eqz v14, :cond_f

    .line 41
    invoke-interface {v14, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    move-object v14, v1

    .line 42
    :cond_10
    invoke-direct {v3, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    .line 44
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-ge v6, v8, :cond_11

    .line 45
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 46
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v9, v5

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    .line 47
    :cond_12
    invoke-virtual {v3, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    const-string v1, " More"

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    .line 50
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 51
    new-instance v6, Lah/a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    const-string v9, "getApp(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-direct {v6, v8}, Lah/a;-><init>(Landroid/graphics/Typeface;)V

    .line 52
    invoke-virtual {v3, v6, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 53
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$color;->brand_new_50:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 54
    invoke-virtual {v3, v6, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    .line 55
    :cond_13
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    .line 57
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 58
    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v9, v5

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    .line 59
    invoke-interface {v2, v4}, Lcom/transsion/baseui/util/g;->a(Ljava/util/List;)V

    :cond_15
    if-eqz v0, :cond_16

    .line 60
    new-instance v1, Lpj/a;

    invoke-direct {v1, v3}, Lpj/a;-><init>(Landroid/text/Spannable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    if-eqz v0, :cond_17

    .line 61
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->cl17:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_17
    return-object v3
.end method

.method private static final d(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "/web/web"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "url"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-static {p0, v0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final e(Landroid/widget/TextView;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, p1, v0, v1, p2}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final f(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final g(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v4, p2

    .line 11
    move-object v6, p3

    .line 12
    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/util/l;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;ZILcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic h(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/16 p2, 0xa

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baseui/util/l;->g(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
