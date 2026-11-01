.class public final Lru/zdevs/zarchiver/ZImageViewer$c;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final e:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer$c;->e:Landroid/content/Intent;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lru/zdevs/zarchiver/ZImageViewer$c;->e:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, v1, Lru/zdevs/zarchiver/ZImageViewer$c;->e:Landroid/content/Intent;

    .line 10
    .line 11
    const-string v3, "zaSortType"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_20

    .line 20
    .line 21
    const-string v5, "ru.zdevs.zarchiver.archive"

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, -0x1

    .line 32
    const/16 v7, 0x9

    .line 33
    .line 34
    if-eqz v5, :cond_f

    .line 35
    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v8, 0x1a

    .line 39
    .line 40
    if-lt v5, v8, :cond_f

    .line 41
    .line 42
    sget-object v5, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 43
    .line 44
    invoke-static {v5, v0}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->b(Landroid/content/Context;Landroid/net/Uri;)Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    new-instance v5, Lh0/h;

    .line 49
    .line 50
    iget-object v8, v13, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 51
    .line 52
    invoke-direct {v5, v8}, Lh0/h;-><init>(Lh0/h;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Lh0/h;->c()Z

    .line 56
    .line 57
    .line 58
    iget-object v8, v13, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->b:Ljava/lang/String;

    .line 59
    .line 60
    const-string v9, "\\-p"

    .line 61
    .line 62
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    iget-object v11, v5, Lh0/h;->c:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v10, v11}, Lf0/a;->n(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-nez v11, :cond_4

    .line 73
    .line 74
    sget-boolean v11, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 75
    .line 76
    if-nez v11, :cond_0

    .line 77
    .line 78
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    if-nez v11, :cond_0

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_0
    const-class v11, Le0/b;

    .line 86
    .line 87
    monitor-enter v11

    .line 88
    if-eqz v8, :cond_1

    .line 89
    .line 90
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v9, "\\"

    .line 96
    .line 97
    const-string v14, "\\\\"

    .line 98
    .line 99
    invoke-virtual {v8, v9, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const-string v8, ""

    .line 112
    .line 113
    :goto_0
    const/4 v9, 0x1

    .line 114
    invoke-static {v9}, Lf0/a;->j(Z)Lf0/d;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    sput-object v9, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 119
    .line 120
    iget-object v12, v5, Lh0/h;->c:Ljava/lang/String;

    .line 121
    .line 122
    const-wide/16 v14, 0x0

    .line 123
    .line 124
    invoke-interface {v9, v14, v15, v12}, Lf0/d;->a(JLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v12, v5, Lh0/h;->c:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v4, v12, v8}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cList(ILjava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_2

    .line 134
    .line 135
    invoke-interface {v9}, Lf0/d;->e()I

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-gtz v8, :cond_2

    .line 140
    .line 141
    invoke-interface {v9}, Lf0/d;->g()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-nez v8, :cond_2

    .line 146
    .line 147
    const/4 v8, 0x3

    .line 148
    invoke-interface {v9, v8}, Lf0/d;->n(I)V

    .line 149
    .line 150
    .line 151
    :cond_2
    sget-object v8, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 152
    .line 153
    if-eqz v8, :cond_3

    .line 154
    .line 155
    invoke-interface {v8}, Lf0/d;->i()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    invoke-interface {v9}, Lf0/d;->clear()V

    .line 160
    .line 161
    .line 162
    :goto_1
    sput-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 163
    .line 164
    monitor-exit v11

    .line 165
    goto :goto_2

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    throw v0

    .line 169
    :cond_4
    :goto_2
    invoke-virtual {v10}, Lf0/a;->k()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_5

    .line 174
    .line 175
    :goto_3
    move-object v10, v3

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v9, v5, Lh0/h;->e:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v10, v9, v8}, Lf0/a;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    move-object v10, v8

    .line 188
    :goto_4
    if-nez v10, :cond_6

    .line 189
    .line 190
    goto/16 :goto_8

    .line 191
    .line 192
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_8

    .line 201
    .line 202
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    check-cast v9, Ld0/d;

    .line 207
    .line 208
    invoke-virtual {v9}, Ld0/d;->d()B

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-eq v9, v7, :cond_7

    .line 213
    .line 214
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-eqz v8, :cond_9

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_9
    iget-object v8, v13, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 226
    .line 227
    invoke-virtual {v8}, Lh0/h;->e()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_a

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_a
    invoke-static {v10, v2}, Lh0/e;->j(Ljava/util/List;I)Lh1/d;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    const/4 v11, 0x0

    .line 250
    :goto_6
    if-ge v11, v9, :cond_c

    .line 251
    .line 252
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Ld0/d;

    .line 257
    .line 258
    iget-object v12, v12, Ld0/d;->a:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_b

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_c
    const/4 v11, -0x1

    .line 271
    :goto_7
    if-ne v11, v6, :cond_d

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_d
    :try_start_1
    iget-object v8, v13, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lh0/h;

    .line 275
    .line 276
    iget-object v9, v8, Lh0/h;->c:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v8, v8, Lh0/h;->b:Ljava/lang/String;

    .line 279
    .line 280
    iget-object v12, v13, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v9, v8, v12}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    if-nez v9, :cond_e

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_e
    new-instance v14, Li0/b;

    .line 290
    .line 291
    iget-object v12, v5, Lh0/h;->e:Ljava/lang/String;

    .line 292
    .line 293
    move-object v8, v14

    .line 294
    invoke-direct/range {v8 .. v13}, Li0/b;-><init>(Lru/zdevs/zarchiver/archiver/NArc;Ljava/util/ArrayList;ILjava/lang/String;Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :catch_0
    nop

    .line 299
    :cond_f
    :goto_8
    move-object v14, v3

    .line 300
    :goto_9
    if-nez v14, :cond_1d

    .line 301
    .line 302
    invoke-static {v3, v0}, Lv0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    if-nez v5, :cond_10

    .line 307
    .line 308
    goto/16 :goto_10

    .line 309
    .line 310
    :cond_10
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 311
    .line 312
    const/16 v9, 0x1e

    .line 313
    .line 314
    if-lt v8, v9, :cond_12

    .line 315
    .line 316
    invoke-static {v5}, Lx0/g;->e(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-eqz v8, :cond_12

    .line 321
    .line 322
    invoke-static {v5}, Lx0/g;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    if-eqz v8, :cond_11

    .line 327
    .line 328
    invoke-static {v8}, Ln0/i;->b([Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v9

    .line 332
    if-eqz v9, :cond_11

    .line 333
    .line 334
    const/4 v9, 0x2

    .line 335
    aget-object v8, v8, v9

    .line 336
    .line 337
    invoke-static {v5, v8}, Ln0/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    goto :goto_a

    .line 342
    :cond_11
    invoke-static {v5}, Lm0/d;->f(Ljava/lang/String;)Lm0/d;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    goto/16 :goto_10

    .line 347
    .line 348
    :cond_12
    :goto_a
    new-instance v8, Ljava/io/File;

    .line 349
    .line 350
    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-nez v9, :cond_13

    .line 358
    .line 359
    invoke-static {v5}, Lm0/d;->f(Ljava/lang/String;)Lm0/d;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    goto/16 :goto_10

    .line 364
    .line 365
    :cond_13
    const-string v9, "/mnt/appfuse"

    .line 366
    .line 367
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_14

    .line 372
    .line 373
    goto/16 :goto_10

    .line 374
    .line 375
    :cond_14
    invoke-static {v5}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_15

    .line 380
    .line 381
    goto/16 :goto_10

    .line 382
    .line 383
    :cond_15
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 388
    .line 389
    .line 390
    move-result-object v8

    .line 391
    if-eqz v8, :cond_1c

    .line 392
    .line 393
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    if-eqz v9, :cond_1c

    .line 398
    .line 399
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    invoke-static {v10}, La0/c;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    new-instance v11, Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .line 411
    .line 412
    array-length v12, v9

    .line 413
    const/4 v13, 0x0

    .line 414
    :goto_b
    if-ge v13, v12, :cond_18

    .line 415
    .line 416
    aget-object v14, v9, v13

    .line 417
    .line 418
    invoke-static {v14}, La0/c;->E(Ljava/lang/String;)B

    .line 419
    .line 420
    .line 421
    move-result v15

    .line 422
    if-ne v15, v7, :cond_17

    .line 423
    .line 424
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 425
    .line 426
    const/16 v3, 0x15

    .line 427
    .line 428
    if-ge v15, v3, :cond_16

    .line 429
    .line 430
    new-instance v3, Ld0/d;

    .line 431
    .line 432
    invoke-direct {v3, v14, v7}, Ld0/d;-><init>(Ljava/lang/String;B)V

    .line 433
    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_16
    invoke-static {v10, v14}, Lj0/b;->q(Ljava/lang/String;Ljava/lang/String;)Ld0/d;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    :goto_c
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :cond_17
    add-int/lit8 v13, v13, 0x1

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    goto :goto_b

    .line 447
    :cond_18
    invoke-static {v11, v2}, Lh0/e;->j(Ljava/util/List;I)Lh1/d;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    :goto_d
    if-ge v4, v2, :cond_1a

    .line 459
    .line 460
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Ld0/d;

    .line 465
    .line 466
    iget-object v3, v3, Ld0/d;->a:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-eqz v3, :cond_19

    .line 473
    .line 474
    move v6, v4

    .line 475
    goto :goto_e

    .line 476
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 477
    .line 478
    goto :goto_d

    .line 479
    :cond_1a
    :goto_e
    if-ltz v6, :cond_1c

    .line 480
    .line 481
    new-instance v2, Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-eqz v4, :cond_1b

    .line 499
    .line 500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    check-cast v4, Ld0/d;

    .line 505
    .line 506
    iget-object v4, v4, Ld0/d;->a:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    goto :goto_f

    .line 512
    :cond_1b
    new-instance v3, Lj0/e;

    .line 513
    .line 514
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-direct {v3, v2, v4, v6}, Lj0/e;-><init>(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 519
    .line 520
    .line 521
    goto :goto_10

    .line 522
    :cond_1c
    const/4 v3, 0x0

    .line 523
    goto :goto_10

    .line 524
    :cond_1d
    move-object v3, v14

    .line 525
    :goto_10
    if-nez v3, :cond_21

    .line 526
    .line 527
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    const-string v3, "file"

    .line 532
    .line 533
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_1e

    .line 538
    .line 539
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-static {v2}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    goto :goto_11

    .line 548
    :cond_1e
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->f(Landroid/net/Uri;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    if-eqz v2, :cond_1f

    .line 553
    .line 554
    iget-object v2, v2, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 555
    .line 556
    goto :goto_11

    .line 557
    :cond_1f
    const-string v2, ""

    .line 558
    .line 559
    :goto_11
    new-instance v3, Lm0/d;

    .line 560
    .line 561
    invoke-direct {v3, v0, v2}, Lm0/d;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    goto :goto_12

    .line 565
    :cond_20
    const/4 v3, 0x0

    .line 566
    :cond_21
    :goto_12
    new-instance v0, Lru/zdevs/zarchiver/ZImageViewer$d;

    .line 567
    .line 568
    invoke-direct {v0, v3}, Lru/zdevs/zarchiver/ZImageViewer$d;-><init>(Lh0/c;)V

    .line 569
    .line 570
    .line 571
    return-object v0
.end method
