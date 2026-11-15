.class public final Lcom/transsion/base/image/blurhash/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/base/image/blurhash/a;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 106

    .line 1
    new-instance v0, Lcom/transsion/base/image/blurhash/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/base/image/blurhash/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/base/image/blurhash/a;->a:Lcom/transsion/base/image/blurhash/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/transsion/base/image/blurhash/a;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/base/image/blurhash/a;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    const/16 v0, 0x30

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v2, 0x31

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v4, 0x32

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/16 v6, 0x33

    .line 41
    .line 42
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/16 v8, 0x34

    .line 47
    .line 48
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    const/16 v10, 0x35

    .line 53
    .line 54
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const/16 v12, 0x36

    .line 59
    .line 60
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    const/16 v14, 0x37

    .line 65
    .line 66
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    const/16 v16, 0x38

    .line 71
    .line 72
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 73
    .line 74
    .line 75
    move-result-object v17

    .line 76
    const/16 v18, 0x39

    .line 77
    .line 78
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 79
    .line 80
    .line 81
    move-result-object v19

    .line 82
    const/16 v20, 0x41

    .line 83
    .line 84
    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 85
    .line 86
    .line 87
    move-result-object v21

    .line 88
    const/16 v22, 0x42

    .line 89
    .line 90
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 91
    .line 92
    .line 93
    move-result-object v23

    .line 94
    const/16 v24, 0x43

    .line 95
    .line 96
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v25

    .line 100
    const/16 v26, 0x44

    .line 101
    .line 102
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 103
    .line 104
    .line 105
    move-result-object v27

    .line 106
    const/16 v28, 0x45

    .line 107
    .line 108
    invoke-static/range {v28 .. v28}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 109
    .line 110
    .line 111
    move-result-object v29

    .line 112
    const/16 v30, 0x46

    .line 113
    .line 114
    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 115
    .line 116
    .line 117
    move-result-object v31

    .line 118
    const/16 v32, 0x47

    .line 119
    .line 120
    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 121
    .line 122
    .line 123
    move-result-object v33

    .line 124
    const/16 v34, 0x48

    .line 125
    .line 126
    invoke-static/range {v34 .. v34}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 127
    .line 128
    .line 129
    move-result-object v35

    .line 130
    const/16 v36, 0x49

    .line 131
    .line 132
    invoke-static/range {v36 .. v36}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 133
    .line 134
    .line 135
    move-result-object v37

    .line 136
    const/16 v38, 0x4a

    .line 137
    .line 138
    invoke-static/range {v38 .. v38}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 139
    .line 140
    .line 141
    move-result-object v39

    .line 142
    const/16 v40, 0x4b

    .line 143
    .line 144
    invoke-static/range {v40 .. v40}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 145
    .line 146
    .line 147
    move-result-object v41

    .line 148
    const/16 v42, 0x4c

    .line 149
    .line 150
    invoke-static/range {v42 .. v42}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 151
    .line 152
    .line 153
    move-result-object v43

    .line 154
    const/16 v44, 0x4d

    .line 155
    .line 156
    invoke-static/range {v44 .. v44}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 157
    .line 158
    .line 159
    move-result-object v44

    .line 160
    const/16 v45, 0x4e

    .line 161
    .line 162
    invoke-static/range {v45 .. v45}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 163
    .line 164
    .line 165
    move-result-object v45

    .line 166
    const/16 v46, 0x4f

    .line 167
    .line 168
    invoke-static/range {v46 .. v46}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 169
    .line 170
    .line 171
    move-result-object v46

    .line 172
    const/16 v47, 0x50

    .line 173
    .line 174
    invoke-static/range {v47 .. v47}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 175
    .line 176
    .line 177
    move-result-object v47

    .line 178
    const/16 v48, 0x51

    .line 179
    .line 180
    invoke-static/range {v48 .. v48}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 181
    .line 182
    .line 183
    move-result-object v48

    .line 184
    const/16 v49, 0x52

    .line 185
    .line 186
    invoke-static/range {v49 .. v49}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 187
    .line 188
    .line 189
    move-result-object v49

    .line 190
    const/16 v50, 0x53

    .line 191
    .line 192
    invoke-static/range {v50 .. v50}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 193
    .line 194
    .line 195
    move-result-object v50

    .line 196
    const/16 v51, 0x54

    .line 197
    .line 198
    invoke-static/range {v51 .. v51}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 199
    .line 200
    .line 201
    move-result-object v51

    .line 202
    const/16 v52, 0x55

    .line 203
    .line 204
    invoke-static/range {v52 .. v52}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 205
    .line 206
    .line 207
    move-result-object v52

    .line 208
    const/16 v53, 0x56

    .line 209
    .line 210
    invoke-static/range {v53 .. v53}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 211
    .line 212
    .line 213
    move-result-object v53

    .line 214
    const/16 v54, 0x57

    .line 215
    .line 216
    invoke-static/range {v54 .. v54}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 217
    .line 218
    .line 219
    move-result-object v54

    .line 220
    const/16 v55, 0x58

    .line 221
    .line 222
    invoke-static/range {v55 .. v55}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 223
    .line 224
    .line 225
    move-result-object v55

    .line 226
    const/16 v56, 0x59

    .line 227
    .line 228
    invoke-static/range {v56 .. v56}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 229
    .line 230
    .line 231
    move-result-object v56

    .line 232
    const/16 v57, 0x5a

    .line 233
    .line 234
    invoke-static/range {v57 .. v57}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 235
    .line 236
    .line 237
    move-result-object v57

    .line 238
    const/16 v58, 0x61

    .line 239
    .line 240
    invoke-static/range {v58 .. v58}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 241
    .line 242
    .line 243
    move-result-object v58

    .line 244
    const/16 v59, 0x62

    .line 245
    .line 246
    invoke-static/range {v59 .. v59}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 247
    .line 248
    .line 249
    move-result-object v59

    .line 250
    const/16 v60, 0x63

    .line 251
    .line 252
    invoke-static/range {v60 .. v60}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 253
    .line 254
    .line 255
    move-result-object v60

    .line 256
    const/16 v61, 0x64

    .line 257
    .line 258
    invoke-static/range {v61 .. v61}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 259
    .line 260
    .line 261
    move-result-object v61

    .line 262
    const/16 v62, 0x65

    .line 263
    .line 264
    invoke-static/range {v62 .. v62}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 265
    .line 266
    .line 267
    move-result-object v62

    .line 268
    const/16 v63, 0x66

    .line 269
    .line 270
    invoke-static/range {v63 .. v63}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 271
    .line 272
    .line 273
    move-result-object v63

    .line 274
    const/16 v64, 0x67

    .line 275
    .line 276
    invoke-static/range {v64 .. v64}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 277
    .line 278
    .line 279
    move-result-object v64

    .line 280
    const/16 v65, 0x68

    .line 281
    .line 282
    invoke-static/range {v65 .. v65}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 283
    .line 284
    .line 285
    move-result-object v65

    .line 286
    const/16 v66, 0x69

    .line 287
    .line 288
    invoke-static/range {v66 .. v66}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 289
    .line 290
    .line 291
    move-result-object v66

    .line 292
    const/16 v67, 0x6a

    .line 293
    .line 294
    invoke-static/range {v67 .. v67}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 295
    .line 296
    .line 297
    move-result-object v67

    .line 298
    const/16 v68, 0x6b

    .line 299
    .line 300
    invoke-static/range {v68 .. v68}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 301
    .line 302
    .line 303
    move-result-object v68

    .line 304
    const/16 v69, 0x6c

    .line 305
    .line 306
    invoke-static/range {v69 .. v69}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 307
    .line 308
    .line 309
    move-result-object v69

    .line 310
    const/16 v70, 0x6d

    .line 311
    .line 312
    invoke-static/range {v70 .. v70}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 313
    .line 314
    .line 315
    move-result-object v70

    .line 316
    const/16 v71, 0x6e

    .line 317
    .line 318
    invoke-static/range {v71 .. v71}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 319
    .line 320
    .line 321
    move-result-object v71

    .line 322
    const/16 v72, 0x6f

    .line 323
    .line 324
    invoke-static/range {v72 .. v72}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 325
    .line 326
    .line 327
    move-result-object v72

    .line 328
    const/16 v73, 0x70

    .line 329
    .line 330
    invoke-static/range {v73 .. v73}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 331
    .line 332
    .line 333
    move-result-object v73

    .line 334
    const/16 v74, 0x71

    .line 335
    .line 336
    invoke-static/range {v74 .. v74}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 337
    .line 338
    .line 339
    move-result-object v74

    .line 340
    const/16 v75, 0x72

    .line 341
    .line 342
    invoke-static/range {v75 .. v75}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 343
    .line 344
    .line 345
    move-result-object v75

    .line 346
    const/16 v76, 0x73

    .line 347
    .line 348
    invoke-static/range {v76 .. v76}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 349
    .line 350
    .line 351
    move-result-object v76

    .line 352
    const/16 v77, 0x74

    .line 353
    .line 354
    invoke-static/range {v77 .. v77}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 355
    .line 356
    .line 357
    move-result-object v77

    .line 358
    const/16 v78, 0x75

    .line 359
    .line 360
    invoke-static/range {v78 .. v78}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 361
    .line 362
    .line 363
    move-result-object v78

    .line 364
    const/16 v79, 0x76

    .line 365
    .line 366
    invoke-static/range {v79 .. v79}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 367
    .line 368
    .line 369
    move-result-object v79

    .line 370
    const/16 v80, 0x77

    .line 371
    .line 372
    invoke-static/range {v80 .. v80}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 373
    .line 374
    .line 375
    move-result-object v80

    .line 376
    const/16 v81, 0x78

    .line 377
    .line 378
    invoke-static/range {v81 .. v81}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 379
    .line 380
    .line 381
    move-result-object v81

    .line 382
    const/16 v82, 0x79

    .line 383
    .line 384
    invoke-static/range {v82 .. v82}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 385
    .line 386
    .line 387
    move-result-object v82

    .line 388
    const/16 v83, 0x7a

    .line 389
    .line 390
    invoke-static/range {v83 .. v83}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 391
    .line 392
    .line 393
    move-result-object v83

    .line 394
    const/16 v84, 0x23

    .line 395
    .line 396
    invoke-static/range {v84 .. v84}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 397
    .line 398
    .line 399
    move-result-object v84

    .line 400
    const/16 v85, 0x24

    .line 401
    .line 402
    invoke-static/range {v85 .. v85}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 403
    .line 404
    .line 405
    move-result-object v85

    .line 406
    const/16 v86, 0x25

    .line 407
    .line 408
    invoke-static/range {v86 .. v86}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 409
    .line 410
    .line 411
    move-result-object v86

    .line 412
    const/16 v87, 0x2a

    .line 413
    .line 414
    invoke-static/range {v87 .. v87}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 415
    .line 416
    .line 417
    move-result-object v87

    .line 418
    const/16 v88, 0x2b

    .line 419
    .line 420
    invoke-static/range {v88 .. v88}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 421
    .line 422
    .line 423
    move-result-object v88

    .line 424
    const/16 v89, 0x2c

    .line 425
    .line 426
    invoke-static/range {v89 .. v89}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 427
    .line 428
    .line 429
    move-result-object v89

    .line 430
    const/16 v90, 0x2d

    .line 431
    .line 432
    invoke-static/range {v90 .. v90}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 433
    .line 434
    .line 435
    move-result-object v90

    .line 436
    const/16 v91, 0x2e

    .line 437
    .line 438
    invoke-static/range {v91 .. v91}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 439
    .line 440
    .line 441
    move-result-object v91

    .line 442
    const/16 v92, 0x3a

    .line 443
    .line 444
    invoke-static/range {v92 .. v92}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 445
    .line 446
    .line 447
    move-result-object v92

    .line 448
    const/16 v93, 0x3b

    .line 449
    .line 450
    invoke-static/range {v93 .. v93}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 451
    .line 452
    .line 453
    move-result-object v93

    .line 454
    const/16 v94, 0x3d

    .line 455
    .line 456
    invoke-static/range {v94 .. v94}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 457
    .line 458
    .line 459
    move-result-object v94

    .line 460
    const/16 v95, 0x3f

    .line 461
    .line 462
    invoke-static/range {v95 .. v95}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 463
    .line 464
    .line 465
    move-result-object v95

    .line 466
    const/16 v96, 0x40

    .line 467
    .line 468
    invoke-static/range {v96 .. v96}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 469
    .line 470
    .line 471
    move-result-object v96

    .line 472
    const/16 v97, 0x5b

    .line 473
    .line 474
    invoke-static/range {v97 .. v97}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 475
    .line 476
    .line 477
    move-result-object v97

    .line 478
    const/16 v98, 0x5d

    .line 479
    .line 480
    invoke-static/range {v98 .. v98}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 481
    .line 482
    .line 483
    move-result-object v98

    .line 484
    const/16 v99, 0x5e

    .line 485
    .line 486
    invoke-static/range {v99 .. v99}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 487
    .line 488
    .line 489
    move-result-object v99

    .line 490
    const/16 v100, 0x5f

    .line 491
    .line 492
    invoke-static/range {v100 .. v100}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 493
    .line 494
    .line 495
    move-result-object v100

    .line 496
    const/16 v101, 0x7b

    .line 497
    .line 498
    invoke-static/range {v101 .. v101}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 499
    .line 500
    .line 501
    move-result-object v101

    .line 502
    const/16 v102, 0x7c

    .line 503
    .line 504
    invoke-static/range {v102 .. v102}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 505
    .line 506
    .line 507
    move-result-object v102

    .line 508
    const/16 v103, 0x7d

    .line 509
    .line 510
    invoke-static/range {v103 .. v103}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 511
    .line 512
    .line 513
    move-result-object v103

    .line 514
    const/16 v104, 0x7e

    .line 515
    .line 516
    invoke-static/range {v104 .. v104}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 517
    .line 518
    .line 519
    move-result-object v104

    .line 520
    const/16 v14, 0x53

    .line 521
    .line 522
    new-array v14, v14, [Ljava/lang/Character;

    .line 523
    .line 524
    const/16 v105, 0x0

    .line 525
    .line 526
    aput-object v1, v14, v105

    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    aput-object v3, v14, v1

    .line 530
    .line 531
    const/4 v1, 0x2

    .line 532
    aput-object v5, v14, v1

    .line 533
    .line 534
    const/4 v1, 0x3

    .line 535
    aput-object v7, v14, v1

    .line 536
    .line 537
    const/4 v1, 0x4

    .line 538
    aput-object v9, v14, v1

    .line 539
    .line 540
    const/4 v1, 0x5

    .line 541
    aput-object v11, v14, v1

    .line 542
    .line 543
    const/4 v1, 0x6

    .line 544
    aput-object v13, v14, v1

    .line 545
    .line 546
    const/4 v1, 0x7

    .line 547
    aput-object v15, v14, v1

    .line 548
    .line 549
    const/16 v1, 0x8

    .line 550
    .line 551
    aput-object v17, v14, v1

    .line 552
    .line 553
    const/16 v1, 0x9

    .line 554
    .line 555
    aput-object v19, v14, v1

    .line 556
    .line 557
    const/16 v1, 0xa

    .line 558
    .line 559
    aput-object v21, v14, v1

    .line 560
    .line 561
    const/16 v1, 0xb

    .line 562
    .line 563
    aput-object v23, v14, v1

    .line 564
    .line 565
    const/16 v1, 0xc

    .line 566
    .line 567
    aput-object v25, v14, v1

    .line 568
    .line 569
    const/16 v1, 0xd

    .line 570
    .line 571
    aput-object v27, v14, v1

    .line 572
    .line 573
    const/16 v1, 0xe

    .line 574
    .line 575
    aput-object v29, v14, v1

    .line 576
    .line 577
    const/16 v1, 0xf

    .line 578
    .line 579
    aput-object v31, v14, v1

    .line 580
    .line 581
    const/16 v1, 0x10

    .line 582
    .line 583
    aput-object v33, v14, v1

    .line 584
    .line 585
    const/16 v1, 0x11

    .line 586
    .line 587
    aput-object v35, v14, v1

    .line 588
    .line 589
    const/16 v1, 0x12

    .line 590
    .line 591
    aput-object v37, v14, v1

    .line 592
    .line 593
    const/16 v1, 0x13

    .line 594
    .line 595
    aput-object v39, v14, v1

    .line 596
    .line 597
    const/16 v1, 0x14

    .line 598
    .line 599
    aput-object v41, v14, v1

    .line 600
    .line 601
    const/16 v1, 0x15

    .line 602
    .line 603
    aput-object v43, v14, v1

    .line 604
    .line 605
    const/16 v1, 0x16

    .line 606
    .line 607
    aput-object v44, v14, v1

    .line 608
    .line 609
    const/16 v1, 0x17

    .line 610
    .line 611
    aput-object v45, v14, v1

    .line 612
    .line 613
    const/16 v1, 0x18

    .line 614
    .line 615
    aput-object v46, v14, v1

    .line 616
    .line 617
    const/16 v1, 0x19

    .line 618
    .line 619
    aput-object v47, v14, v1

    .line 620
    .line 621
    const/16 v1, 0x1a

    .line 622
    .line 623
    aput-object v48, v14, v1

    .line 624
    .line 625
    const/16 v1, 0x1b

    .line 626
    .line 627
    aput-object v49, v14, v1

    .line 628
    .line 629
    const/16 v1, 0x1c

    .line 630
    .line 631
    aput-object v50, v14, v1

    .line 632
    .line 633
    const/16 v1, 0x1d

    .line 634
    .line 635
    aput-object v51, v14, v1

    .line 636
    .line 637
    const/16 v1, 0x1e

    .line 638
    .line 639
    aput-object v52, v14, v1

    .line 640
    .line 641
    const/16 v1, 0x1f

    .line 642
    .line 643
    aput-object v53, v14, v1

    .line 644
    .line 645
    const/16 v1, 0x20

    .line 646
    .line 647
    aput-object v54, v14, v1

    .line 648
    .line 649
    const/16 v1, 0x21

    .line 650
    .line 651
    aput-object v55, v14, v1

    .line 652
    .line 653
    const/16 v1, 0x22

    .line 654
    .line 655
    aput-object v56, v14, v1

    .line 656
    .line 657
    const/16 v1, 0x23

    .line 658
    .line 659
    aput-object v57, v14, v1

    .line 660
    .line 661
    const/16 v1, 0x24

    .line 662
    .line 663
    aput-object v58, v14, v1

    .line 664
    .line 665
    const/16 v1, 0x25

    .line 666
    .line 667
    aput-object v59, v14, v1

    .line 668
    .line 669
    const/16 v1, 0x26

    .line 670
    .line 671
    aput-object v60, v14, v1

    .line 672
    .line 673
    const/16 v1, 0x27

    .line 674
    .line 675
    aput-object v61, v14, v1

    .line 676
    .line 677
    const/16 v1, 0x28

    .line 678
    .line 679
    aput-object v62, v14, v1

    .line 680
    .line 681
    const/16 v1, 0x29

    .line 682
    .line 683
    aput-object v63, v14, v1

    .line 684
    .line 685
    const/16 v1, 0x2a

    .line 686
    .line 687
    aput-object v64, v14, v1

    .line 688
    .line 689
    const/16 v1, 0x2b

    .line 690
    .line 691
    aput-object v65, v14, v1

    .line 692
    .line 693
    const/16 v1, 0x2c

    .line 694
    .line 695
    aput-object v66, v14, v1

    .line 696
    .line 697
    const/16 v1, 0x2d

    .line 698
    .line 699
    aput-object v67, v14, v1

    .line 700
    .line 701
    const/16 v1, 0x2e

    .line 702
    .line 703
    aput-object v68, v14, v1

    .line 704
    .line 705
    const/16 v1, 0x2f

    .line 706
    .line 707
    aput-object v69, v14, v1

    .line 708
    .line 709
    aput-object v70, v14, v0

    .line 710
    .line 711
    aput-object v71, v14, v2

    .line 712
    .line 713
    aput-object v72, v14, v4

    .line 714
    .line 715
    aput-object v73, v14, v6

    .line 716
    .line 717
    aput-object v74, v14, v8

    .line 718
    .line 719
    aput-object v75, v14, v10

    .line 720
    .line 721
    aput-object v76, v14, v12

    .line 722
    .line 723
    const/16 v0, 0x37

    .line 724
    .line 725
    aput-object v77, v14, v0

    .line 726
    .line 727
    aput-object v78, v14, v16

    .line 728
    .line 729
    aput-object v79, v14, v18

    .line 730
    .line 731
    const/16 v0, 0x3a

    .line 732
    .line 733
    aput-object v80, v14, v0

    .line 734
    .line 735
    const/16 v0, 0x3b

    .line 736
    .line 737
    aput-object v81, v14, v0

    .line 738
    .line 739
    const/16 v0, 0x3c

    .line 740
    .line 741
    aput-object v82, v14, v0

    .line 742
    .line 743
    const/16 v0, 0x3d

    .line 744
    .line 745
    aput-object v83, v14, v0

    .line 746
    .line 747
    const/16 v0, 0x3e

    .line 748
    .line 749
    aput-object v84, v14, v0

    .line 750
    .line 751
    const/16 v0, 0x3f

    .line 752
    .line 753
    aput-object v85, v14, v0

    .line 754
    .line 755
    const/16 v0, 0x40

    .line 756
    .line 757
    aput-object v86, v14, v0

    .line 758
    .line 759
    aput-object v87, v14, v20

    .line 760
    .line 761
    aput-object v88, v14, v22

    .line 762
    .line 763
    aput-object v89, v14, v24

    .line 764
    .line 765
    aput-object v90, v14, v26

    .line 766
    .line 767
    aput-object v91, v14, v28

    .line 768
    .line 769
    aput-object v92, v14, v30

    .line 770
    .line 771
    aput-object v93, v14, v32

    .line 772
    .line 773
    aput-object v94, v14, v34

    .line 774
    .line 775
    aput-object v95, v14, v36

    .line 776
    .line 777
    aput-object v96, v14, v38

    .line 778
    .line 779
    aput-object v97, v14, v40

    .line 780
    .line 781
    aput-object v98, v14, v42

    .line 782
    .line 783
    const/16 v0, 0x4d

    .line 784
    .line 785
    aput-object v99, v14, v0

    .line 786
    .line 787
    const/16 v0, 0x4e

    .line 788
    .line 789
    aput-object v100, v14, v0

    .line 790
    .line 791
    const/16 v0, 0x4f

    .line 792
    .line 793
    aput-object v101, v14, v0

    .line 794
    .line 795
    const/16 v0, 0x50

    .line 796
    .line 797
    aput-object v102, v14, v0

    .line 798
    .line 799
    const/16 v0, 0x51

    .line 800
    .line 801
    aput-object v103, v14, v0

    .line 802
    .line 803
    const/16 v0, 0x52

    .line 804
    .line 805
    aput-object v104, v14, v0

    .line 806
    .line 807
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Ljava/lang/Iterable;

    .line 812
    .line 813
    new-instance v1, Ljava/util/ArrayList;

    .line 814
    .line 815
    const/16 v2, 0xa

    .line 816
    .line 817
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 818
    .line 819
    .line 820
    move-result v2

    .line 821
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 822
    .line 823
    .line 824
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    const/4 v2, 0x0

    .line 829
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_1

    .line 834
    .line 835
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    add-int/lit8 v4, v2, 0x1

    .line 840
    .line 841
    if-gez v2, :cond_0

    .line 842
    .line 843
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 844
    .line 845
    .line 846
    :cond_0
    check-cast v3, Ljava/lang/Character;

    .line 847
    .line 848
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 849
    .line 850
    .line 851
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 852
    .line 853
    .line 854
    move-result-object v2

    .line 855
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move v2, v4

    .line 863
    goto :goto_0

    .line 864
    :cond_1
    invoke-static {v1}, Lkotlin/collections/MapsKt;->s(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    sput-object v0, Lcom/transsion/base/image/blurhash/a;->d:Ljava/util/Map;

    .line 869
    .line 870
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(IIII[[FZ)Landroid/graphics/Bitmap;
    .locals 28

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p3

    .line 8
    .line 9
    move/from16 v11, p4

    .line 10
    .line 11
    mul-int v0, v8, v9

    .line 12
    .line 13
    new-array v12, v0, [I

    .line 14
    .line 15
    const/4 v13, 0x1

    .line 16
    const/4 v14, 0x0

    .line 17
    if-eqz p6, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/transsion/base/image/blurhash/a;->b:Ljava/util/HashMap;

    .line 20
    .line 21
    mul-int v1, v8, v10

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v15, v14

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v15, v13

    .line 37
    :goto_1
    invoke-direct {v7, v15, v8, v10}, Lcom/transsion/base/image/blurhash/a;->f(ZII)[D

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    if-eqz p6, :cond_3

    .line 42
    .line 43
    sget-object v0, Lcom/transsion/base/image/blurhash/a;->c:Ljava/util/HashMap;

    .line 44
    .line 45
    mul-int v1, v9, v11

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v6, v14

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_2
    move v6, v13

    .line 61
    :goto_3
    invoke-direct {v7, v6, v9, v11}, Lcom/transsion/base/image/blurhash/a;->g(ZII)[D

    .line 62
    .line 63
    .line 64
    move-result-object v17

    .line 65
    move v5, v14

    .line 66
    :goto_4
    if-ge v5, v9, :cond_7

    .line 67
    .line 68
    move v4, v14

    .line 69
    :goto_5
    if-ge v4, v8, :cond_6

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    move v1, v0

    .line 73
    move v2, v1

    .line 74
    move v3, v14

    .line 75
    :goto_6
    if-ge v3, v11, :cond_5

    .line 76
    .line 77
    move/from16 v18, v0

    .line 78
    .line 79
    move/from16 v19, v1

    .line 80
    .line 81
    move/from16 v20, v2

    .line 82
    .line 83
    move v2, v14

    .line 84
    :goto_7
    if-ge v2, v10, :cond_4

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-object/from16 v1, v16

    .line 89
    .line 90
    move/from16 v21, v2

    .line 91
    .line 92
    move v2, v15

    .line 93
    move/from16 v22, v3

    .line 94
    .line 95
    move/from16 v3, v21

    .line 96
    .line 97
    move/from16 v23, v4

    .line 98
    .line 99
    move/from16 v4, p3

    .line 100
    .line 101
    move/from16 v24, v5

    .line 102
    .line 103
    move/from16 v5, v23

    .line 104
    .line 105
    move/from16 v25, v6

    .line 106
    .line 107
    move/from16 v6, p1

    .line 108
    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/image/blurhash/a;->h([DZIIII)D

    .line 110
    .line 111
    .line 112
    move-result-wide v26

    .line 113
    move-object/from16 v1, v17

    .line 114
    .line 115
    move/from16 v2, v25

    .line 116
    .line 117
    move/from16 v3, v22

    .line 118
    .line 119
    move/from16 v4, p4

    .line 120
    .line 121
    move/from16 v5, v24

    .line 122
    .line 123
    move/from16 v6, p2

    .line 124
    .line 125
    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/image/blurhash/a;->h([DZIIII)D

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    mul-double v0, v0, v26

    .line 130
    .line 131
    double-to-float v0, v0

    .line 132
    mul-int v3, v22, v10

    .line 133
    .line 134
    add-int v3, v3, v21

    .line 135
    .line 136
    aget-object v1, p5, v3

    .line 137
    .line 138
    aget v2, v1, v14

    .line 139
    .line 140
    mul-float/2addr v2, v0

    .line 141
    add-float v18, v18, v2

    .line 142
    .line 143
    aget v2, v1, v13

    .line 144
    .line 145
    mul-float/2addr v2, v0

    .line 146
    add-float v19, v19, v2

    .line 147
    .line 148
    const/4 v2, 0x2

    .line 149
    aget v1, v1, v2

    .line 150
    .line 151
    mul-float/2addr v1, v0

    .line 152
    add-float v20, v20, v1

    .line 153
    .line 154
    add-int/lit8 v2, v21, 0x1

    .line 155
    .line 156
    move/from16 v3, v22

    .line 157
    .line 158
    move/from16 v4, v23

    .line 159
    .line 160
    move/from16 v6, v25

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_4
    move/from16 v22, v3

    .line 164
    .line 165
    move/from16 v23, v4

    .line 166
    .line 167
    move/from16 v24, v5

    .line 168
    .line 169
    move/from16 v25, v6

    .line 170
    .line 171
    add-int/lit8 v3, v22, 0x1

    .line 172
    .line 173
    move/from16 v0, v18

    .line 174
    .line 175
    move/from16 v1, v19

    .line 176
    .line 177
    move/from16 v2, v20

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_5
    move/from16 v23, v4

    .line 181
    .line 182
    move/from16 v24, v5

    .line 183
    .line 184
    move/from16 v25, v6

    .line 185
    .line 186
    mul-int v3, v8, v24

    .line 187
    .line 188
    add-int v4, v23, v3

    .line 189
    .line 190
    invoke-direct {v7, v0}, Lcom/transsion/base/image/blurhash/a;->i(F)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-direct {v7, v1}, Lcom/transsion/base/image/blurhash/a;->i(F)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-direct {v7, v2}, Lcom/transsion/base/image/blurhash/a;->i(F)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    aput v0, v12, v4

    .line 207
    .line 208
    add-int/lit8 v4, v23, 0x1

    .line 209
    .line 210
    goto/16 :goto_5

    .line 211
    .line 212
    :cond_6
    move/from16 v24, v5

    .line 213
    .line 214
    move/from16 v25, v6

    .line 215
    .line 216
    add-int/lit8 v5, v24, 0x1

    .line 217
    .line 218
    goto/16 :goto_4

    .line 219
    .line 220
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 221
    .line 222
    invoke-static {v12, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "createBitmap(...)"

    .line 227
    .line 228
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-object v0
.end method

.method private final c(Ljava/lang/String;II)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge p2, p3, :cond_2

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/base/image/blurhash/a;->d:Ljava/util/Map;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_1
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x53

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v0
.end method

.method private final d(IF)[F
    .locals 3

    .line 1
    div-int/lit16 v0, p1, 0x169

    .line 2
    .line 3
    div-int/lit8 v1, p1, 0x13

    .line 4
    .line 5
    rem-int/lit8 v1, v1, 0x13

    .line 6
    .line 7
    rem-int/lit8 p1, p1, 0x13

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x9

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v2, 0x41100000    # 9.0f

    .line 13
    .line 14
    div-float/2addr v0, v2

    .line 15
    invoke-direct {p0, v0}, Lcom/transsion/base/image/blurhash/a;->j(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-float/2addr v0, p2

    .line 20
    add-int/lit8 v1, v1, -0x9

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    div-float/2addr v1, v2

    .line 24
    invoke-direct {p0, v1}, Lcom/transsion/base/image/blurhash/a;->j(F)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    mul-float/2addr v1, p2

    .line 29
    add-int/lit8 p1, p1, -0x9

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    div-float/2addr p1, v2

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/base/image/blurhash/a;->j(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    mul-float/2addr p1, p2

    .line 38
    const/4 p2, 0x3

    .line 39
    new-array p2, p2, [F

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    aput v0, p2, v2

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    aput v1, p2, v0

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    aput p1, p2, v0

    .line 49
    .line 50
    return-object p2
.end method

.method private final e(I)[F
    .locals 4

    .line 1
    shr-int/lit8 v0, p1, 0x10

    .line 2
    .line 3
    shr-int/lit8 v1, p1, 0x8

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    and-int/lit16 p1, p1, 0xff

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/transsion/base/image/blurhash/a;->k(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v1}, Lcom/transsion/base/image/blurhash/a;->k(I)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {p0, p1}, Lcom/transsion/base/image/blurhash/a;->k(I)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [F

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput v0, v2, v3

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput v1, v2, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput p1, v2, v0

    .line 32
    .line 33
    return-object v2
.end method

.method private final f(ZII)[D
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    mul-int/2addr p2, p3

    .line 4
    new-array p1, p2, [D

    .line 5
    .line 6
    sget-object p3, Lcom/transsion/base/image/blurhash/a;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/transsion/base/image/blurhash/a;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    mul-int/2addr p2, p3

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, [D

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method private final g(ZII)[D
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    mul-int/2addr p2, p3

    .line 4
    new-array p1, p2, [D

    .line 5
    .line 6
    sget-object p3, Lcom/transsion/base/image/blurhash/a;->c:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lcom/transsion/base/image/blurhash/a;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    mul-int/2addr p2, p3

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, [D

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method private final h([DZIIII)D
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    mul-int p2, p4, p5

    .line 4
    .line 5
    add-int/2addr p2, p3

    .line 6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    int-to-double v2, p5

    .line 12
    mul-double/2addr v2, v0

    .line 13
    int-to-double v0, p3

    .line 14
    mul-double/2addr v2, v0

    .line 15
    int-to-double v0, p6

    .line 16
    div-double/2addr v2, v0

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    aput-wide v0, p1, p2

    .line 22
    .line 23
    :cond_0
    mul-int/2addr p4, p5

    .line 24
    add-int/2addr p3, p4

    .line 25
    aget-wide p2, p1, p3

    .line 26
    .line 27
    return-wide p2
.end method

.method private final i(F)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->k(FFF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x3b4d2e1c    # 0.0031308f

    .line 9
    .line 10
    .line 11
    cmpg-float v0, p1, v0

    .line 12
    .line 13
    const/high16 v1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    const v0, 0x414eb852    # 12.92f

    .line 18
    .line 19
    .line 20
    mul-float/2addr p1, v0

    .line 21
    const/high16 v0, 0x437f0000    # 255.0f

    .line 22
    .line 23
    :goto_0
    mul-float/2addr p1, v0

    .line 24
    add-float/2addr p1, v1

    .line 25
    float-to-int p1, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    float-to-double v2, p1

    .line 28
    const p1, 0x3ed55555

    .line 29
    .line 30
    .line 31
    float-to-double v4, p1

    .line 32
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    double-to-float p1, v2

    .line 37
    const v0, 0x3f870a3d    # 1.055f

    .line 38
    .line 39
    .line 40
    mul-float/2addr p1, v0

    .line 41
    const v0, 0x3d6147ae    # 0.055f

    .line 42
    .line 43
    .line 44
    sub-float/2addr p1, v0

    .line 45
    const/16 v0, 0xff

    .line 46
    .line 47
    int-to-float v0, v0

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    return p1
.end method

.method private final j(F)F
    .locals 4

    .line 1
    float-to-double v0, p1

    .line 2
    const/high16 v2, 0x40000000    # 2.0f

    .line 3
    .line 4
    float-to-double v2, v2

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->copySign(FF)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private final k(I)F
    .locals 4

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    const v0, 0x3d25aee6    # 0.04045f

    .line 6
    .line 7
    .line 8
    cmpg-float v0, p1, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const v0, 0x414eb852    # 12.92f

    .line 13
    .line 14
    .line 15
    div-float/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    .line 18
    .line 19
    .line 20
    add-float/2addr p1, v0

    .line 21
    const v0, 0x3f870a3d    # 1.055f

    .line 22
    .line 23
    .line 24
    div-float/2addr p1, v0

    .line 25
    float-to-double v0, p1

    .line 26
    const p1, 0x4019999a    # 2.4f

    .line 27
    .line 28
    .line 29
    float-to-double v2, p1

    .line 30
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    double-to-float p1, v0

    .line 35
    :goto_0
    return p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;IIFZ)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x6

    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {p0, p1, v2, v4}, Lcom/transsion/base/image/blurhash/a;->c(Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    rem-int/lit8 v6, v5, 0x9

    .line 21
    .line 22
    add-int/2addr v6, v4

    .line 23
    div-int/lit8 v5, v5, 0x9

    .line 24
    .line 25
    add-int/2addr v5, v4

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    mul-int/lit8 v9, v6, 0x2

    .line 31
    .line 32
    mul-int/2addr v9, v5

    .line 33
    add-int/lit8 v9, v9, 0x4

    .line 34
    .line 35
    if-eq v8, v9, :cond_1

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const/4 v1, 0x2

    .line 39
    invoke-direct {p0, p1, v4, v1}, Lcom/transsion/base/image/blurhash/a;->c(Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    add-int/2addr v8, v4

    .line 44
    int-to-float v4, v8

    .line 45
    const/high16 v8, 0x43260000    # 166.0f

    .line 46
    .line 47
    div-float/2addr v4, v8

    .line 48
    mul-int v8, v6, v5

    .line 49
    .line 50
    new-array v9, v8, [[F

    .line 51
    .line 52
    :goto_0
    if-ge v2, v8, :cond_3

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    sget-object v10, Lcom/transsion/base/image/blurhash/a;->a:Lcom/transsion/base/image/blurhash/a;

    .line 57
    .line 58
    invoke-direct {v10, p1, v1, v3}, Lcom/transsion/base/image/blurhash/a;->c(Ljava/lang/String;II)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    invoke-direct {v10, v11}, Lcom/transsion/base/image/blurhash/a;->e(I)[F

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    mul-int/lit8 v10, v2, 0x2

    .line 68
    .line 69
    add-int/lit8 v11, v10, 0x4

    .line 70
    .line 71
    sget-object v12, Lcom/transsion/base/image/blurhash/a;->a:Lcom/transsion/base/image/blurhash/a;

    .line 72
    .line 73
    add-int/2addr v10, v3

    .line 74
    invoke-direct {v12, p1, v11, v10}, Lcom/transsion/base/image/blurhash/a;->c(Ljava/lang/String;II)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    mul-float v11, v4, p4

    .line 79
    .line 80
    invoke-direct {v12, v10, v11}, Lcom/transsion/base/image/blurhash/a;->d(IF)[F

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    :goto_1
    aput-object v10, v9, v2

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move-object v0, p0

    .line 90
    move v1, p2

    .line 91
    move/from16 v2, p3

    .line 92
    .line 93
    move v3, v6

    .line 94
    move v4, v5

    .line 95
    move-object v5, v9

    .line 96
    move/from16 v6, p5

    .line 97
    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/image/blurhash/a;->a(IIII[[FZ)Landroid/graphics/Bitmap;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_4
    :goto_2
    return-object v1
.end method
