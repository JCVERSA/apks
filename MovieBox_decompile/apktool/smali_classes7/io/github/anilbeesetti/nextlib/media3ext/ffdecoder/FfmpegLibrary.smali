.class public abstract Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/media3/common/util/q;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "media3.decoder.ffmpeg"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary$a;

    .line 7
    .line 8
    const-string v1, "media3ext"

    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary$a;-><init>([Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a:Landroidx/media3/common/util/q;

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    .line 21
    .line 22
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v1, "audio/g711-mlaw"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const/16 v0, 0x17

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_1
    const-string v1, "audio/g711-alaw"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v0, 0x16

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_2
    const-string v1, "video/x-vnd.on2.vp9"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_2
    const/16 v0, 0x15

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string v1, "video/x-vnd.on2.vp8"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_3

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    const/16 v0, 0x14

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :sswitch_4
    const-string v1, "audio/true-hd"

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_4

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_4
    const/16 v0, 0x13

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :sswitch_5
    const-string v1, "audio/vnd.dts.hd"

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-nez p0, :cond_5

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_5
    const/16 v0, 0x12

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :sswitch_6
    const-string v1, "audio/opus"

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_6

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_6
    const/16 v0, 0x11

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :sswitch_7
    const-string v1, "audio/mpeg"

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_7

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_7
    const/16 v0, 0x10

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :sswitch_8
    const-string v1, "audio/flac"

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_8

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_8
    const/16 v0, 0xf

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :sswitch_9
    const-string v1, "audio/eac3"

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-nez p0, :cond_9

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_9
    const/16 v0, 0xe

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :sswitch_a
    const-string v1, "audio/alac"

    .line 155
    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_a

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_a
    const/16 v0, 0xd

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :sswitch_b
    const-string v1, "audio/3gpp"

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_b

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_b
    const/16 v0, 0xc

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :sswitch_c
    const-string v1, "video/avc"

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_c

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_c
    const/16 v0, 0xb

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :sswitch_d
    const-string v1, "audio/ac3"

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_d

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_d
    const/16 v0, 0xa

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :sswitch_e
    const-string v1, "video/mpeg2"

    .line 211
    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-nez p0, :cond_e

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_e
    const/16 v0, 0x9

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :sswitch_f
    const-string v1, "audio/mp4a-latm"

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-nez p0, :cond_f

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_f
    const/16 v0, 0x8

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :sswitch_10
    const-string v1, "audio/mpeg-L2"

    .line 239
    .line 240
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    if-nez p0, :cond_10

    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_10
    const/4 v0, 0x7

    .line 248
    goto :goto_0

    .line 249
    :sswitch_11
    const-string v1, "audio/mpeg-L1"

    .line 250
    .line 251
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-nez p0, :cond_11

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_11
    const/4 v0, 0x6

    .line 259
    goto :goto_0

    .line 260
    :sswitch_12
    const-string v1, "audio/vorbis"

    .line 261
    .line 262
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    if-nez p0, :cond_12

    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_12
    const/4 v0, 0x5

    .line 270
    goto :goto_0

    .line 271
    :sswitch_13
    const-string v1, "audio/vnd.dts"

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-nez p0, :cond_13

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :cond_13
    const/4 v0, 0x4

    .line 281
    goto :goto_0

    .line 282
    :sswitch_14
    const-string v1, "audio/amr-wb"

    .line 283
    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    if-nez p0, :cond_14

    .line 289
    .line 290
    goto :goto_0

    .line 291
    :cond_14
    const/4 v0, 0x3

    .line 292
    goto :goto_0

    .line 293
    :sswitch_15
    const-string v1, "video/mpeg"

    .line 294
    .line 295
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    if-nez p0, :cond_15

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_15
    const/4 v0, 0x2

    .line 303
    goto :goto_0

    .line 304
    :sswitch_16
    const-string v1, "video/hevc"

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    if-nez p0, :cond_16

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_16
    const/4 v0, 0x1

    .line 314
    goto :goto_0

    .line 315
    :sswitch_17
    const-string v1, "audio/eac3-joc"

    .line 316
    .line 317
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-nez p0, :cond_17

    .line 322
    .line 323
    goto :goto_0

    .line 324
    :cond_17
    const/4 v0, 0x0

    .line 325
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 326
    .line 327
    .line 328
    const/4 p0, 0x0

    .line 329
    goto :goto_1

    .line 330
    :pswitch_0
    const-string p0, "pcm_mulaw"

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_1
    const-string p0, "pcm_alaw"

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :pswitch_2
    const-string p0, "libvpx-vp9"

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :pswitch_3
    const-string p0, "libvpx"

    .line 340
    .line 341
    goto :goto_1

    .line 342
    :pswitch_4
    const-string p0, "truehd"

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :pswitch_5
    const-string p0, "opus"

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :pswitch_6
    const-string p0, "flac"

    .line 349
    .line 350
    goto :goto_1

    .line 351
    :pswitch_7
    const-string p0, "alac"

    .line 352
    .line 353
    goto :goto_1

    .line 354
    :pswitch_8
    const-string p0, "amrnb"

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :pswitch_9
    const-string p0, "h264"

    .line 358
    .line 359
    goto :goto_1

    .line 360
    :pswitch_a
    const-string p0, "ac3"

    .line 361
    .line 362
    goto :goto_1

    .line 363
    :pswitch_b
    const-string p0, "mpeg2video"

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :pswitch_c
    const-string p0, "aac"

    .line 367
    .line 368
    goto :goto_1

    .line 369
    :pswitch_d
    const-string p0, "mp3"

    .line 370
    .line 371
    goto :goto_1

    .line 372
    :pswitch_e
    const-string p0, "vorbis"

    .line 373
    .line 374
    goto :goto_1

    .line 375
    :pswitch_f
    const-string p0, "dca"

    .line 376
    .line 377
    goto :goto_1

    .line 378
    :pswitch_10
    const-string p0, "amrwb"

    .line 379
    .line 380
    goto :goto_1

    .line 381
    :pswitch_11
    const-string p0, "mpegvideo"

    .line 382
    .line 383
    goto :goto_1

    .line 384
    :pswitch_12
    const-string p0, "hevc"

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :pswitch_13
    const-string p0, "eac3"

    .line 388
    .line 389
    :goto_1
    return-object p0

    .line 390
    nop

    .line 391
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_17
        -0x63185e82 -> :sswitch_16
        -0x6315f167 -> :sswitch_15
        -0x5fc6f775 -> :sswitch_14
        -0x41455b98 -> :sswitch_13
        -0x3bd43e14 -> :sswitch_12
        -0x19cc928c -> :sswitch_11
        -0x19cc928b -> :sswitch_10
        -0x3313c2e -> :sswitch_f
        0x57c4b9 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0x4f62373a -> :sswitch_c
        0x59976a2d -> :sswitch_b
        0x59ac6426 -> :sswitch_a
        0x59ae0c65 -> :sswitch_9
        0x59aeaa01 -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59c2dc42 -> :sswitch_5
        0x5cc95062 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()I
    .locals 2

    .line 1
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegGetInputBufferPaddingSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    .line 18
    .line 19
    :cond_1
    sget v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    .line 20
    .line 21
    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegGetVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    .line 18
    .line 19
    :cond_1
    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a:Landroidx/media3/common/util/q;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/q;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegHasDecoder(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "No "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " decoder available. Check the FFmpeg build configuration."

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "FfmpegLibrary"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    const/4 p0, 0x1

    .line 51
    return p0
.end method

.method private static native ffmpegGetInputBufferPaddingSize()I
.end method

.method private static native ffmpegGetVersion()Ljava/lang/String;
.end method

.method private static native ffmpegHasDecoder(Ljava/lang/String;)Z
.end method
