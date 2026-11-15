.class public Lcom/mbridge/msdk/foundation/error/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    .line 7
    .line 8
    const v1, 0xd6d96

    .line 9
    .line 10
    .line 11
    const-string v2, "exception when request"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const v1, 0xd6d81

    .line 17
    .line 18
    .line 19
    const-string v2, "v3 params invalid"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const v1, 0xd6d82

    .line 25
    .line 26
    .line 27
    const-string v2, "v3 request error"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const v1, 0xd6d83

    .line 33
    .line 34
    .line 35
    const-string v2, "v3 response error"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const v1, 0xd6d84

    .line 41
    .line 42
    .line 43
    const-string v2, "video download error"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const v1, 0xd6d85

    .line 49
    .line 50
    .line 51
    const-string v2, "big template download error"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const v1, 0xd6d86

    .line 57
    .line 58
    .line 59
    const-string v2, "template download error"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const v1, 0xd6d87

    .line 65
    .line 66
    .line 67
    const-string v2, "endcard template download error"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const v1, 0xd6da7

    .line 73
    .line 74
    .line 75
    const-string v2, "image download error"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const v1, 0xd6d88

    .line 81
    .line 82
    .line 83
    const-string v2, "big template render error"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const v1, 0xd6d89

    .line 89
    .line 90
    .line 91
    const-string v2, "template render error"

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    const v1, 0xd6d8a

    .line 97
    .line 98
    .line 99
    const-string v2, "load time out error"

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const v1, 0xd6d8c

    .line 105
    .line 106
    .line 107
    const-string v2, "render half img fail"

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const v1, 0xd6d8d

    .line 113
    .line 114
    .line 115
    const-string v2, "write marid fail"

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const v1, 0xd6d8e

    .line 121
    .line 122
    .line 123
    const-string v2, "download js file fail"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    const v1, 0xd6d8f

    .line 129
    .line 130
    .line 131
    const-string v2, "isready false error"

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const v1, 0xd6d90

    .line 137
    .line 138
    .line 139
    const-string v2, "current unit is loading"

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const v1, 0xd6d91

    .line 145
    .line 146
    .line 147
    const-string v2, "adn no offer fill"

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const v1, 0xd6d92

    .line 153
    .line 154
    .line 155
    const-string v2, "local return empty"

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    const v1, 0xd6d95

    .line 161
    .line 162
    .line 163
    const-string v2, "app already install"

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    const v1, 0xd6d93

    .line 169
    .line 170
    .line 171
    const-string v2, "ad over cap"

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    const v1, 0xd6d94

    .line 177
    .line 178
    .line 179
    const-string v2, "load exception"

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const v1, 0xd6d97

    .line 185
    .line 186
    .line 187
    const-string v2, "v3 time out"

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    const v1, 0xd6d98

    .line 193
    .line 194
    .line 195
    const-string v2, "unknown error"

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    const v1, 0xd6d99

    .line 201
    .line 202
    .line 203
    const-string v2, "context is null"

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    const v1, 0xd6d9a

    .line 209
    .line 210
    .line 211
    const-string v2, "auto refresh fail because unitId status is pause or stop"

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    const v1, 0xd6d9b

    .line 217
    .line 218
    .line 219
    const-string v2, "download resource fail"

    .line 220
    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    const v1, 0xd6d80

    .line 225
    .line 226
    .line 227
    const-string v2, "has exception happen : "

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    const v1, 0xd6d9c

    .line 233
    .line 234
    .line 235
    const-string v2, "view width or height is 0 or view size is too small"

    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    const v1, 0xd6d9d

    .line 241
    .line 242
    .line 243
    const-string v2, "AD display requires webView but current environment not included"

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    const v1, 0xd6d9e

    .line 249
    .line 250
    .line 251
    const-string v2, "view is null"

    .line 252
    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    const v1, 0xd6d9f

    .line 257
    .line 258
    .line 259
    const-string v2, "webView was destroyed"

    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    const v1, 0xd6da0

    .line 265
    .line 266
    .line 267
    const-string v2, "unitId is null"

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const v1, 0xd6da1

    .line 273
    .line 274
    .line 275
    const-string v2, "campaign is filtered"

    .line 276
    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    const v1, 0xd6da2

    .line 281
    .line 282
    .line 283
    const-string v2, "render dynamic view fail"

    .line 284
    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    const v1, 0xd6da3

    .line 289
    .line 290
    .line 291
    const-string v2, "bid token is null"

    .line 292
    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    const v1, 0xd6da4

    .line 297
    .line 298
    .line 299
    const-string v2, "view container is null"

    .line 300
    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    const v1, 0xd6da5

    .line 305
    .line 306
    .line 307
    const-string v2, "AD parameter setting error"

    .line 308
    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    const v1, 0xd6da6

    .line 313
    .line 314
    .line 315
    const-string v2, "cb is open"

    .line 316
    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    const v1, 0xd6da8

    .line 321
    .line 322
    .line 323
    const-string v2, "db restore failed"

    .line 324
    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    const v1, 0xd6da9

    .line 329
    .line 330
    .line 331
    const-string v2, "network no connection error"

    .line 332
    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    const v1, 0xd6db1

    .line 337
    .line 338
    .line 339
    const-string v2, "load second request error"

    .line 340
    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    const v1, 0xd6daa

    .line 345
    .line 346
    .line 347
    const-string v2, "Check ad init code because ad init error"

    .line 348
    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    const v1, 0xd6dab

    .line 353
    .line 354
    .line 355
    const-string v2, "Ad has error because campaign is null"

    .line 356
    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    const v1, 0xd6dac

    .line 361
    .line 362
    .line 363
    const-string v2, "Ad load or show environment error"

    .line 364
    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    const v1, 0xd6dad

    .line 369
    .line 370
    .line 371
    const-string v2, "Ad render timeout"

    .line 372
    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    const v1, 0xd6dae

    .line 377
    .line 378
    .line 379
    const-string v2, "Ad can not show because view is null"

    .line 380
    .line 381
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    const v1, 0xd6daf

    .line 385
    .line 386
    .line 387
    const-string v2, "Campaign image url is null"

    .line 388
    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    const v1, 0xd6db0

    .line 393
    .line 394
    .line 395
    const-string v2, "Ad web resource render fail"

    .line 396
    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    const v1, 0xd9491

    .line 401
    .line 402
    .line 403
    const-string v2, "context or unitid is null"

    .line 404
    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    const v1, 0xd9492

    .line 409
    .line 410
    .line 411
    const-string v2, "load failed"

    .line 412
    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    const v1, 0xd9493

    .line 417
    .line 418
    .line 419
    const-string v2, "show fail : unexpected destroy"

    .line 420
    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    const v1, 0xd9494

    .line 425
    .line 426
    .line 427
    const-string v2, "play error"

    .line 428
    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    const v1, 0xd9495

    .line 433
    .line 434
    .line 435
    const-string v2, "no adapter_model"

    .line 436
    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    const v1, 0xd9496

    .line 441
    .line 442
    .line 443
    const-string v2, "no isReadyCampaign"

    .line 444
    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    const v1, 0xd9497

    .line 449
    .line 450
    .line 451
    const-string v2, "all campaign is loading"

    .line 452
    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    const v1, 0xd9498

    .line 457
    .line 458
    .line 459
    const-string v2, "dynamicBean parse Exception"

    .line 460
    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const v1, 0xd9499

    .line 465
    .line 466
    .line 467
    const-string v2, "show parse Exception"

    .line 468
    .line 469
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    const v1, 0xd949a

    .line 473
    .line 474
    .line 475
    const-string v2, "activityPresenter create exception"

    .line 476
    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    const v1, 0xd949b

    .line 481
    .line 482
    .line 483
    const-string v2, "network is exception"

    .line 484
    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    const v1, 0xf1b31

    .line 489
    .line 490
    .line 491
    const-string v2, "build Exception"

    .line 492
    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;
    .locals 1

    .line 3
    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static b(I)I
    .locals 1

    .line 1
    const v0, 0xd6d97

    if-eq p0, v0, :cond_3

    const v0, 0xd6da3

    if-eq p0, v0, :cond_2

    const v0, 0xd6da6

    if-eq p0, v0, :cond_1

    const v0, 0xd6db0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const p0, 0xd6d98

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xb

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x14

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x13

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x12

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x11

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_6
    const/16 p0, 0xf

    goto :goto_0

    :pswitch_7
    const/16 p0, 0xe

    goto :goto_0

    :pswitch_8
    const/16 p0, 0xd

    goto :goto_0

    :pswitch_9
    const/16 p0, 0xc

    goto :goto_0

    :pswitch_a
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_c
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_d
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_e
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_f
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_10
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_11
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :pswitch_12
    const/16 p0, 0x9

    goto :goto_0

    :cond_1
    const/16 p0, 0x15

    goto :goto_0

    :cond_2
    :pswitch_13
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0xd6d81
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd6d8c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
