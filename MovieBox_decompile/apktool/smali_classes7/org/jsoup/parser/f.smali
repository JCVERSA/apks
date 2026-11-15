.class public Lorg/jsoup/parser/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final j:Ljava/util/Map;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 67

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 7
    .line 8
    const-string v62, "svg"

    .line 9
    .line 10
    const-string v63, "math"

    .line 11
    .line 12
    const-string v1, "html"

    .line 13
    .line 14
    const-string v2, "head"

    .line 15
    .line 16
    const-string v3, "body"

    .line 17
    .line 18
    const-string v4, "frameset"

    .line 19
    .line 20
    const-string v5, "script"

    .line 21
    .line 22
    const-string v6, "noscript"

    .line 23
    .line 24
    const-string v7, "style"

    .line 25
    .line 26
    const-string v8, "meta"

    .line 27
    .line 28
    const-string v9, "link"

    .line 29
    .line 30
    const-string v10, "title"

    .line 31
    .line 32
    const-string v11, "frame"

    .line 33
    .line 34
    const-string v12, "noframes"

    .line 35
    .line 36
    const-string v13, "section"

    .line 37
    .line 38
    const-string v14, "nav"

    .line 39
    .line 40
    const-string v15, "aside"

    .line 41
    .line 42
    const-string v16, "hgroup"

    .line 43
    .line 44
    const-string v17, "header"

    .line 45
    .line 46
    const-string v18, "footer"

    .line 47
    .line 48
    const-string v19, "p"

    .line 49
    .line 50
    const-string v20, "h1"

    .line 51
    .line 52
    const-string v21, "h2"

    .line 53
    .line 54
    const-string v22, "h3"

    .line 55
    .line 56
    const-string v23, "h4"

    .line 57
    .line 58
    const-string v24, "h5"

    .line 59
    .line 60
    const-string v25, "h6"

    .line 61
    .line 62
    const-string v26, "ul"

    .line 63
    .line 64
    const-string v27, "ol"

    .line 65
    .line 66
    const-string v28, "pre"

    .line 67
    .line 68
    const-string v29, "div"

    .line 69
    .line 70
    const-string v30, "blockquote"

    .line 71
    .line 72
    const-string v31, "hr"

    .line 73
    .line 74
    const-string v32, "address"

    .line 75
    .line 76
    const-string v33, "figure"

    .line 77
    .line 78
    const-string v34, "figcaption"

    .line 79
    .line 80
    const-string v35, "form"

    .line 81
    .line 82
    const-string v36, "fieldset"

    .line 83
    .line 84
    const-string v37, "ins"

    .line 85
    .line 86
    const-string v38, "del"

    .line 87
    .line 88
    const-string v39, "dl"

    .line 89
    .line 90
    const-string v40, "dt"

    .line 91
    .line 92
    const-string v41, "dd"

    .line 93
    .line 94
    const-string v42, "li"

    .line 95
    .line 96
    const-string v43, "table"

    .line 97
    .line 98
    const-string v44, "caption"

    .line 99
    .line 100
    const-string v45, "thead"

    .line 101
    .line 102
    const-string v46, "tfoot"

    .line 103
    .line 104
    const-string v47, "tbody"

    .line 105
    .line 106
    const-string v48, "colgroup"

    .line 107
    .line 108
    const-string v49, "col"

    .line 109
    .line 110
    const-string v50, "tr"

    .line 111
    .line 112
    const-string v51, "th"

    .line 113
    .line 114
    const-string v52, "td"

    .line 115
    .line 116
    const-string v53, "video"

    .line 117
    .line 118
    const-string v54, "audio"

    .line 119
    .line 120
    const-string v55, "canvas"

    .line 121
    .line 122
    const-string v56, "details"

    .line 123
    .line 124
    const-string v57, "menu"

    .line 125
    .line 126
    const-string v58, "plaintext"

    .line 127
    .line 128
    const-string v59, "template"

    .line 129
    .line 130
    const-string v60, "article"

    .line 131
    .line 132
    const-string v61, "main"

    .line 133
    .line 134
    filled-new-array/range {v1 .. v63}, [Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Lorg/jsoup/parser/f;->k:[Ljava/lang/String;

    .line 139
    .line 140
    const-string v65, "bdi"

    .line 141
    .line 142
    const-string v66, "s"

    .line 143
    .line 144
    const-string v1, "object"

    .line 145
    .line 146
    const-string v2, "base"

    .line 147
    .line 148
    const-string v3, "font"

    .line 149
    .line 150
    const-string v4, "tt"

    .line 151
    .line 152
    const-string v5, "i"

    .line 153
    .line 154
    const-string v6, "b"

    .line 155
    .line 156
    const-string v7, "u"

    .line 157
    .line 158
    const-string v8, "big"

    .line 159
    .line 160
    const-string v9, "small"

    .line 161
    .line 162
    const-string v10, "em"

    .line 163
    .line 164
    const-string v11, "strong"

    .line 165
    .line 166
    const-string v12, "dfn"

    .line 167
    .line 168
    const-string v13, "code"

    .line 169
    .line 170
    const-string v14, "samp"

    .line 171
    .line 172
    const-string v15, "kbd"

    .line 173
    .line 174
    const-string v16, "var"

    .line 175
    .line 176
    const-string v17, "cite"

    .line 177
    .line 178
    const-string v18, "abbr"

    .line 179
    .line 180
    const-string v19, "time"

    .line 181
    .line 182
    const-string v20, "acronym"

    .line 183
    .line 184
    const-string v21, "mark"

    .line 185
    .line 186
    const-string v22, "ruby"

    .line 187
    .line 188
    const-string v23, "rt"

    .line 189
    .line 190
    const-string v24, "rp"

    .line 191
    .line 192
    const-string v25, "a"

    .line 193
    .line 194
    const-string v26, "img"

    .line 195
    .line 196
    const-string v27, "br"

    .line 197
    .line 198
    const-string v28, "wbr"

    .line 199
    .line 200
    const-string v29, "map"

    .line 201
    .line 202
    const-string v30, "q"

    .line 203
    .line 204
    const-string v31, "sub"

    .line 205
    .line 206
    const-string v32, "sup"

    .line 207
    .line 208
    const-string v33, "bdo"

    .line 209
    .line 210
    const-string v34, "iframe"

    .line 211
    .line 212
    const-string v35, "embed"

    .line 213
    .line 214
    const-string v36, "span"

    .line 215
    .line 216
    const-string v37, "input"

    .line 217
    .line 218
    const-string v38, "select"

    .line 219
    .line 220
    const-string v39, "textarea"

    .line 221
    .line 222
    const-string v40, "label"

    .line 223
    .line 224
    const-string v41, "button"

    .line 225
    .line 226
    const-string v42, "optgroup"

    .line 227
    .line 228
    const-string v43, "option"

    .line 229
    .line 230
    const-string v44, "legend"

    .line 231
    .line 232
    const-string v45, "datalist"

    .line 233
    .line 234
    const-string v46, "keygen"

    .line 235
    .line 236
    const-string v47, "output"

    .line 237
    .line 238
    const-string v48, "progress"

    .line 239
    .line 240
    const-string v49, "meter"

    .line 241
    .line 242
    const-string v50, "area"

    .line 243
    .line 244
    const-string v51, "param"

    .line 245
    .line 246
    const-string v52, "source"

    .line 247
    .line 248
    const-string v53, "track"

    .line 249
    .line 250
    const-string v54, "summary"

    .line 251
    .line 252
    const-string v55, "command"

    .line 253
    .line 254
    const-string v56, "device"

    .line 255
    .line 256
    const-string v57, "area"

    .line 257
    .line 258
    const-string v58, "basefont"

    .line 259
    .line 260
    const-string v59, "bgsound"

    .line 261
    .line 262
    const-string v60, "menuitem"

    .line 263
    .line 264
    const-string v61, "param"

    .line 265
    .line 266
    const-string v62, "source"

    .line 267
    .line 268
    const-string v63, "track"

    .line 269
    .line 270
    const-string v64, "data"

    .line 271
    .line 272
    filled-new-array/range {v1 .. v66}, [Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    sput-object v1, Lorg/jsoup/parser/f;->l:[Ljava/lang/String;

    .line 277
    .line 278
    const-string v21, "source"

    .line 279
    .line 280
    const-string v22, "track"

    .line 281
    .line 282
    const-string v2, "meta"

    .line 283
    .line 284
    const-string v3, "link"

    .line 285
    .line 286
    const-string v4, "base"

    .line 287
    .line 288
    const-string v5, "frame"

    .line 289
    .line 290
    const-string v6, "img"

    .line 291
    .line 292
    const-string v7, "br"

    .line 293
    .line 294
    const-string v8, "wbr"

    .line 295
    .line 296
    const-string v9, "embed"

    .line 297
    .line 298
    const-string v10, "hr"

    .line 299
    .line 300
    const-string v11, "input"

    .line 301
    .line 302
    const-string v12, "keygen"

    .line 303
    .line 304
    const-string v13, "col"

    .line 305
    .line 306
    const-string v14, "command"

    .line 307
    .line 308
    const-string v15, "device"

    .line 309
    .line 310
    const-string v16, "area"

    .line 311
    .line 312
    const-string v17, "basefont"

    .line 313
    .line 314
    const-string v18, "bgsound"

    .line 315
    .line 316
    const-string v19, "menuitem"

    .line 317
    .line 318
    const-string v20, "param"

    .line 319
    .line 320
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    sput-object v1, Lorg/jsoup/parser/f;->m:[Ljava/lang/String;

    .line 325
    .line 326
    const-string v19, "del"

    .line 327
    .line 328
    const-string v20, "s"

    .line 329
    .line 330
    const-string v2, "title"

    .line 331
    .line 332
    const-string v3, "a"

    .line 333
    .line 334
    const-string v4, "p"

    .line 335
    .line 336
    const-string v5, "h1"

    .line 337
    .line 338
    const-string v6, "h2"

    .line 339
    .line 340
    const-string v7, "h3"

    .line 341
    .line 342
    const-string v8, "h4"

    .line 343
    .line 344
    const-string v9, "h5"

    .line 345
    .line 346
    const-string v10, "h6"

    .line 347
    .line 348
    const-string v11, "pre"

    .line 349
    .line 350
    const-string v12, "address"

    .line 351
    .line 352
    const-string v13, "li"

    .line 353
    .line 354
    const-string v14, "th"

    .line 355
    .line 356
    const-string v15, "td"

    .line 357
    .line 358
    const-string v16, "script"

    .line 359
    .line 360
    const-string v17, "style"

    .line 361
    .line 362
    const-string v18, "ins"

    .line 363
    .line 364
    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    sput-object v1, Lorg/jsoup/parser/f;->n:[Ljava/lang/String;

    .line 369
    .line 370
    const-string v1, "pre"

    .line 371
    .line 372
    const-string v2, "plaintext"

    .line 373
    .line 374
    const-string v3, "title"

    .line 375
    .line 376
    const-string v4, "textarea"

    .line 377
    .line 378
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    sput-object v1, Lorg/jsoup/parser/f;->o:[Ljava/lang/String;

    .line 383
    .line 384
    const-string v11, "select"

    .line 385
    .line 386
    const-string v12, "textarea"

    .line 387
    .line 388
    const-string v5, "button"

    .line 389
    .line 390
    const-string v6, "fieldset"

    .line 391
    .line 392
    const-string v7, "input"

    .line 393
    .line 394
    const-string v8, "keygen"

    .line 395
    .line 396
    const-string v9, "object"

    .line 397
    .line 398
    const-string v10, "output"

    .line 399
    .line 400
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sput-object v1, Lorg/jsoup/parser/f;->p:[Ljava/lang/String;

    .line 405
    .line 406
    const-string v1, "object"

    .line 407
    .line 408
    const-string v2, "select"

    .line 409
    .line 410
    const-string v3, "input"

    .line 411
    .line 412
    const-string v5, "keygen"

    .line 413
    .line 414
    filled-new-array {v3, v5, v1, v2, v4}, [Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    sput-object v1, Lorg/jsoup/parser/f;->q:[Ljava/lang/String;

    .line 419
    .line 420
    array-length v1, v0

    .line 421
    const/4 v2, 0x0

    .line 422
    move v3, v2

    .line 423
    :goto_0
    if-ge v3, v1, :cond_0

    .line 424
    .line 425
    aget-object v4, v0, v3

    .line 426
    .line 427
    new-instance v5, Lorg/jsoup/parser/f;

    .line 428
    .line 429
    invoke-direct {v5, v4}, Lorg/jsoup/parser/f;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-static {v5}, Lorg/jsoup/parser/f;->i(Lorg/jsoup/parser/f;)V

    .line 433
    .line 434
    .line 435
    add-int/lit8 v3, v3, 0x1

    .line 436
    .line 437
    goto :goto_0

    .line 438
    :cond_0
    sget-object v0, Lorg/jsoup/parser/f;->l:[Ljava/lang/String;

    .line 439
    .line 440
    array-length v1, v0

    .line 441
    move v3, v2

    .line 442
    :goto_1
    if-ge v3, v1, :cond_1

    .line 443
    .line 444
    aget-object v4, v0, v3

    .line 445
    .line 446
    new-instance v5, Lorg/jsoup/parser/f;

    .line 447
    .line 448
    invoke-direct {v5, v4}, Lorg/jsoup/parser/f;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iput-boolean v2, v5, Lorg/jsoup/parser/f;->b:Z

    .line 452
    .line 453
    iput-boolean v2, v5, Lorg/jsoup/parser/f;->c:Z

    .line 454
    .line 455
    invoke-static {v5}, Lorg/jsoup/parser/f;->i(Lorg/jsoup/parser/f;)V

    .line 456
    .line 457
    .line 458
    add-int/lit8 v3, v3, 0x1

    .line 459
    .line 460
    goto :goto_1

    .line 461
    :cond_1
    sget-object v0, Lorg/jsoup/parser/f;->m:[Ljava/lang/String;

    .line 462
    .line 463
    array-length v1, v0

    .line 464
    move v3, v2

    .line 465
    :goto_2
    const/4 v4, 0x1

    .line 466
    if-ge v3, v1, :cond_2

    .line 467
    .line 468
    aget-object v5, v0, v3

    .line 469
    .line 470
    sget-object v6, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 471
    .line 472
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    check-cast v5, Lorg/jsoup/parser/f;

    .line 477
    .line 478
    invoke-static {v5}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    iput-boolean v2, v5, Lorg/jsoup/parser/f;->d:Z

    .line 482
    .line 483
    iput-boolean v4, v5, Lorg/jsoup/parser/f;->e:Z

    .line 484
    .line 485
    add-int/lit8 v3, v3, 0x1

    .line 486
    .line 487
    goto :goto_2

    .line 488
    :cond_2
    sget-object v0, Lorg/jsoup/parser/f;->n:[Ljava/lang/String;

    .line 489
    .line 490
    array-length v1, v0

    .line 491
    move v3, v2

    .line 492
    :goto_3
    if-ge v3, v1, :cond_3

    .line 493
    .line 494
    aget-object v5, v0, v3

    .line 495
    .line 496
    sget-object v6, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 497
    .line 498
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    check-cast v5, Lorg/jsoup/parser/f;

    .line 503
    .line 504
    invoke-static {v5}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    iput-boolean v2, v5, Lorg/jsoup/parser/f;->c:Z

    .line 508
    .line 509
    add-int/lit8 v3, v3, 0x1

    .line 510
    .line 511
    goto :goto_3

    .line 512
    :cond_3
    sget-object v0, Lorg/jsoup/parser/f;->o:[Ljava/lang/String;

    .line 513
    .line 514
    array-length v1, v0

    .line 515
    move v3, v2

    .line 516
    :goto_4
    if-ge v3, v1, :cond_4

    .line 517
    .line 518
    aget-object v5, v0, v3

    .line 519
    .line 520
    sget-object v6, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 521
    .line 522
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    check-cast v5, Lorg/jsoup/parser/f;

    .line 527
    .line 528
    invoke-static {v5}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    iput-boolean v4, v5, Lorg/jsoup/parser/f;->g:Z

    .line 532
    .line 533
    add-int/lit8 v3, v3, 0x1

    .line 534
    .line 535
    goto :goto_4

    .line 536
    :cond_4
    sget-object v0, Lorg/jsoup/parser/f;->p:[Ljava/lang/String;

    .line 537
    .line 538
    array-length v1, v0

    .line 539
    move v3, v2

    .line 540
    :goto_5
    if-ge v3, v1, :cond_5

    .line 541
    .line 542
    aget-object v5, v0, v3

    .line 543
    .line 544
    sget-object v6, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 545
    .line 546
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v5

    .line 550
    check-cast v5, Lorg/jsoup/parser/f;

    .line 551
    .line 552
    invoke-static {v5}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    iput-boolean v4, v5, Lorg/jsoup/parser/f;->h:Z

    .line 556
    .line 557
    add-int/lit8 v3, v3, 0x1

    .line 558
    .line 559
    goto :goto_5

    .line 560
    :cond_5
    sget-object v0, Lorg/jsoup/parser/f;->q:[Ljava/lang/String;

    .line 561
    .line 562
    array-length v1, v0

    .line 563
    :goto_6
    if-ge v2, v1, :cond_6

    .line 564
    .line 565
    aget-object v3, v0, v2

    .line 566
    .line 567
    sget-object v5, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 568
    .line 569
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    check-cast v3, Lorg/jsoup/parser/f;

    .line 574
    .line 575
    invoke-static {v3}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    iput-boolean v4, v3, Lorg/jsoup/parser/f;->i:Z

    .line 579
    .line 580
    add-int/lit8 v2, v2, 0x1

    .line 581
    .line 582
    goto :goto_6

    .line 583
    :cond_6
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->d:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->e:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->f:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->g:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->h:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->i:Z

    .line 21
    .line 22
    iput-object p1, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private static i(Lorg/jsoup/parser/f;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static k(Ljava/lang/String;)Lorg/jsoup/parser/f;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/d;->d:Lorg/jsoup/parser/d;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/jsoup/parser/f;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v1, p1

    .line 26
    check-cast v1, Lorg/jsoup/parser/f;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Lorg/jsoup/parser/f;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lorg/jsoup/parser/f;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    iput-boolean p0, v1, Lorg/jsoup/parser/f;->b:Z

    .line 37
    .line 38
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/jsoup/parser/f;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->d:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->d:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->e:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->e:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->c:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->c:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->b:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->b:Z

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->g:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->g:Z

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->f:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->f:Z

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->h:Z

    .line 67
    .line 68
    iget-boolean v3, p1, Lorg/jsoup/parser/f;->h:Z

    .line 69
    .line 70
    if-eq v1, v3, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->i:Z

    .line 74
    .line 75
    iget-boolean p1, p1, Lorg/jsoup/parser/f;->i:Z

    .line 76
    .line 77
    if-ne v1, p1, :cond_a

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_a
    move v0, v2

    .line 81
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/parser/f;->j:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/f;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->b:Z

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->c:Z

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->d:Z

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->e:Z

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->f:Z

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->g:Z

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->h:Z

    .line 40
    .line 41
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-boolean v1, p0, Lorg/jsoup/parser/f;->i:Z

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method j()Lorg/jsoup/parser/f;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/jsoup/parser/f;->f:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
