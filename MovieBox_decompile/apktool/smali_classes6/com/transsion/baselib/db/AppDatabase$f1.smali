.class public final Lcom/transsion/baselib/db/AppDatabase$f1;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f1"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baselib/db/AppDatabase$f1;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;
    .locals 59

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getApplicationContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/transsion/baselib/db/AppDatabase;

    .line 11
    .line 12
    const-string v2, "oneroom-db"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/room/s;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->r0()Lcom/transsion/baselib/db/AppDatabase$k;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->C0()Lcom/transsion/baselib/db/AppDatabase$v;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->N0()Lcom/transsion/baselib/db/AppDatabase$g0;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Y0()Lcom/transsion/baselib/db/AppDatabase$r0;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->h1()Lcom/transsion/baselib/db/AppDatabase$a1;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->i1()Lcom/transsion/baselib/db/AppDatabase$b1;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->j1()Lcom/transsion/baselib/db/AppDatabase$c1;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->k1()Lcom/transsion/baselib/db/AppDatabase$d1;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->l1()Lcom/transsion/baselib/db/AppDatabase$e1;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->h0()Lcom/transsion/baselib/db/AppDatabase$a;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->i0()Lcom/transsion/baselib/db/AppDatabase$b;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->j0()Lcom/transsion/baselib/db/AppDatabase$c;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->k0()Lcom/transsion/baselib/db/AppDatabase$d;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->l0()Lcom/transsion/baselib/db/AppDatabase$e;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->m0()Lcom/transsion/baselib/db/AppDatabase$f;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->n0()Lcom/transsion/baselib/db/AppDatabase$g;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->o0()Lcom/transsion/baselib/db/AppDatabase$h;

    .line 87
    .line 88
    .line 89
    move-result-object v17

    .line 90
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->p0()Lcom/transsion/baselib/db/AppDatabase$i;

    .line 91
    .line 92
    .line 93
    move-result-object v18

    .line 94
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->q0()Lcom/transsion/baselib/db/AppDatabase$j;

    .line 95
    .line 96
    .line 97
    move-result-object v19

    .line 98
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->s0()Lcom/transsion/baselib/db/AppDatabase$l;

    .line 99
    .line 100
    .line 101
    move-result-object v20

    .line 102
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->t0()Lcom/transsion/baselib/db/AppDatabase$m;

    .line 103
    .line 104
    .line 105
    move-result-object v21

    .line 106
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->u0()Lcom/transsion/baselib/db/AppDatabase$n;

    .line 107
    .line 108
    .line 109
    move-result-object v22

    .line 110
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->v0()Lcom/transsion/baselib/db/AppDatabase$o;

    .line 111
    .line 112
    .line 113
    move-result-object v23

    .line 114
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->w0()Lcom/transsion/baselib/db/AppDatabase$p;

    .line 115
    .line 116
    .line 117
    move-result-object v24

    .line 118
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->x0()Lcom/transsion/baselib/db/AppDatabase$q;

    .line 119
    .line 120
    .line 121
    move-result-object v25

    .line 122
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->y0()Lcom/transsion/baselib/db/AppDatabase$r;

    .line 123
    .line 124
    .line 125
    move-result-object v26

    .line 126
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->z0()Lcom/transsion/baselib/db/AppDatabase$s;

    .line 127
    .line 128
    .line 129
    move-result-object v27

    .line 130
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->A0()Lcom/transsion/baselib/db/AppDatabase$t;

    .line 131
    .line 132
    .line 133
    move-result-object v28

    .line 134
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->B0()Lcom/transsion/baselib/db/AppDatabase$u;

    .line 135
    .line 136
    .line 137
    move-result-object v29

    .line 138
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->D0()Lcom/transsion/baselib/db/AppDatabase$w;

    .line 139
    .line 140
    .line 141
    move-result-object v30

    .line 142
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->E0()Lcom/transsion/baselib/db/AppDatabase$x;

    .line 143
    .line 144
    .line 145
    move-result-object v31

    .line 146
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->F0()Lcom/transsion/baselib/db/AppDatabase$y;

    .line 147
    .line 148
    .line 149
    move-result-object v32

    .line 150
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->G0()Lcom/transsion/baselib/db/AppDatabase$z;

    .line 151
    .line 152
    .line 153
    move-result-object v33

    .line 154
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->H0()Lcom/transsion/baselib/db/AppDatabase$a0;

    .line 155
    .line 156
    .line 157
    move-result-object v34

    .line 158
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->I0()Lcom/transsion/baselib/db/AppDatabase$b0;

    .line 159
    .line 160
    .line 161
    move-result-object v35

    .line 162
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->J0()Lcom/transsion/baselib/db/AppDatabase$c0;

    .line 163
    .line 164
    .line 165
    move-result-object v36

    .line 166
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->K0()Lcom/transsion/baselib/db/AppDatabase$d0;

    .line 167
    .line 168
    .line 169
    move-result-object v37

    .line 170
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->L0()Lcom/transsion/baselib/db/AppDatabase$e0;

    .line 171
    .line 172
    .line 173
    move-result-object v38

    .line 174
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->M0()Lcom/transsion/baselib/db/AppDatabase$f0;

    .line 175
    .line 176
    .line 177
    move-result-object v39

    .line 178
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->O0()Lcom/transsion/baselib/db/AppDatabase$h0;

    .line 179
    .line 180
    .line 181
    move-result-object v40

    .line 182
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->P0()Lcom/transsion/baselib/db/AppDatabase$i0;

    .line 183
    .line 184
    .line 185
    move-result-object v41

    .line 186
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Q0()Lcom/transsion/baselib/db/AppDatabase$j0;

    .line 187
    .line 188
    .line 189
    move-result-object v42

    .line 190
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->R0()Lcom/transsion/baselib/db/AppDatabase$k0;

    .line 191
    .line 192
    .line 193
    move-result-object v43

    .line 194
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->S0()Lcom/transsion/baselib/db/AppDatabase$l0;

    .line 195
    .line 196
    .line 197
    move-result-object v44

    .line 198
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->T0()Lcom/transsion/baselib/db/AppDatabase$m0;

    .line 199
    .line 200
    .line 201
    move-result-object v45

    .line 202
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->U0()Lcom/transsion/baselib/db/AppDatabase$n0;

    .line 203
    .line 204
    .line 205
    move-result-object v46

    .line 206
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->V0()Lcom/transsion/baselib/db/AppDatabase$o0;

    .line 207
    .line 208
    .line 209
    move-result-object v47

    .line 210
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->W0()Lcom/transsion/baselib/db/AppDatabase$p0;

    .line 211
    .line 212
    .line 213
    move-result-object v48

    .line 214
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->X0()Lcom/transsion/baselib/db/AppDatabase$q0;

    .line 215
    .line 216
    .line 217
    move-result-object v49

    .line 218
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Z0()Lcom/transsion/baselib/db/AppDatabase$s0;

    .line 219
    .line 220
    .line 221
    move-result-object v50

    .line 222
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->a1()Lcom/transsion/baselib/db/AppDatabase$t0;

    .line 223
    .line 224
    .line 225
    move-result-object v51

    .line 226
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->b1()Lcom/transsion/baselib/db/AppDatabase$u0;

    .line 227
    .line 228
    .line 229
    move-result-object v52

    .line 230
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->c1()Lcom/transsion/baselib/db/AppDatabase$v0;

    .line 231
    .line 232
    .line 233
    move-result-object v53

    .line 234
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->d1()Lcom/transsion/baselib/db/AppDatabase$w0;

    .line 235
    .line 236
    .line 237
    move-result-object v54

    .line 238
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->e1()Lcom/transsion/baselib/db/AppDatabase$x0;

    .line 239
    .line 240
    .line 241
    move-result-object v55

    .line 242
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->f1()Lcom/transsion/baselib/db/AppDatabase$y0;

    .line 243
    .line 244
    .line 245
    move-result-object v56

    .line 246
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g1()Lcom/transsion/baselib/db/AppDatabase$z0;

    .line 247
    .line 248
    .line 249
    move-result-object v57

    .line 250
    move-object/from16 p1, v0

    .line 251
    .line 252
    const/16 v0, 0x39

    .line 253
    .line 254
    new-array v0, v0, [Lx3/b;

    .line 255
    .line 256
    const/16 v58, 0x0

    .line 257
    .line 258
    aput-object v1, v0, v58

    .line 259
    .line 260
    const/4 v1, 0x1

    .line 261
    aput-object v2, v0, v1

    .line 262
    .line 263
    const/4 v1, 0x2

    .line 264
    aput-object v3, v0, v1

    .line 265
    .line 266
    const/4 v1, 0x3

    .line 267
    aput-object v4, v0, v1

    .line 268
    .line 269
    const/4 v1, 0x4

    .line 270
    aput-object v5, v0, v1

    .line 271
    .line 272
    const/4 v1, 0x5

    .line 273
    aput-object v6, v0, v1

    .line 274
    .line 275
    const/4 v1, 0x6

    .line 276
    aput-object v7, v0, v1

    .line 277
    .line 278
    const/4 v1, 0x7

    .line 279
    aput-object v8, v0, v1

    .line 280
    .line 281
    const/16 v1, 0x8

    .line 282
    .line 283
    aput-object v9, v0, v1

    .line 284
    .line 285
    const/16 v1, 0x9

    .line 286
    .line 287
    aput-object v10, v0, v1

    .line 288
    .line 289
    const/16 v1, 0xa

    .line 290
    .line 291
    aput-object v11, v0, v1

    .line 292
    .line 293
    const/16 v1, 0xb

    .line 294
    .line 295
    aput-object v12, v0, v1

    .line 296
    .line 297
    const/16 v1, 0xc

    .line 298
    .line 299
    aput-object v13, v0, v1

    .line 300
    .line 301
    const/16 v1, 0xd

    .line 302
    .line 303
    aput-object v14, v0, v1

    .line 304
    .line 305
    const/16 v1, 0xe

    .line 306
    .line 307
    aput-object v15, v0, v1

    .line 308
    .line 309
    const/16 v1, 0xf

    .line 310
    .line 311
    aput-object v16, v0, v1

    .line 312
    .line 313
    const/16 v1, 0x10

    .line 314
    .line 315
    aput-object v17, v0, v1

    .line 316
    .line 317
    const/16 v1, 0x11

    .line 318
    .line 319
    aput-object v18, v0, v1

    .line 320
    .line 321
    const/16 v1, 0x12

    .line 322
    .line 323
    aput-object v19, v0, v1

    .line 324
    .line 325
    const/16 v1, 0x13

    .line 326
    .line 327
    aput-object v20, v0, v1

    .line 328
    .line 329
    const/16 v1, 0x14

    .line 330
    .line 331
    aput-object v21, v0, v1

    .line 332
    .line 333
    const/16 v1, 0x15

    .line 334
    .line 335
    aput-object v22, v0, v1

    .line 336
    .line 337
    const/16 v1, 0x16

    .line 338
    .line 339
    aput-object v23, v0, v1

    .line 340
    .line 341
    const/16 v1, 0x17

    .line 342
    .line 343
    aput-object v24, v0, v1

    .line 344
    .line 345
    const/16 v1, 0x18

    .line 346
    .line 347
    aput-object v25, v0, v1

    .line 348
    .line 349
    const/16 v1, 0x19

    .line 350
    .line 351
    aput-object v26, v0, v1

    .line 352
    .line 353
    const/16 v1, 0x1a

    .line 354
    .line 355
    aput-object v27, v0, v1

    .line 356
    .line 357
    const/16 v1, 0x1b

    .line 358
    .line 359
    aput-object v28, v0, v1

    .line 360
    .line 361
    const/16 v1, 0x1c

    .line 362
    .line 363
    aput-object v29, v0, v1

    .line 364
    .line 365
    const/16 v1, 0x1d

    .line 366
    .line 367
    aput-object v30, v0, v1

    .line 368
    .line 369
    const/16 v1, 0x1e

    .line 370
    .line 371
    aput-object v31, v0, v1

    .line 372
    .line 373
    const/16 v1, 0x1f

    .line 374
    .line 375
    aput-object v32, v0, v1

    .line 376
    .line 377
    const/16 v1, 0x20

    .line 378
    .line 379
    aput-object v33, v0, v1

    .line 380
    .line 381
    const/16 v1, 0x21

    .line 382
    .line 383
    aput-object v34, v0, v1

    .line 384
    .line 385
    const/16 v1, 0x22

    .line 386
    .line 387
    aput-object v35, v0, v1

    .line 388
    .line 389
    const/16 v1, 0x23

    .line 390
    .line 391
    aput-object v36, v0, v1

    .line 392
    .line 393
    const/16 v1, 0x24

    .line 394
    .line 395
    aput-object v37, v0, v1

    .line 396
    .line 397
    const/16 v1, 0x25

    .line 398
    .line 399
    aput-object v38, v0, v1

    .line 400
    .line 401
    const/16 v1, 0x26

    .line 402
    .line 403
    aput-object v39, v0, v1

    .line 404
    .line 405
    const/16 v1, 0x27

    .line 406
    .line 407
    aput-object v40, v0, v1

    .line 408
    .line 409
    const/16 v1, 0x28

    .line 410
    .line 411
    aput-object v41, v0, v1

    .line 412
    .line 413
    const/16 v1, 0x29

    .line 414
    .line 415
    aput-object v42, v0, v1

    .line 416
    .line 417
    const/16 v1, 0x2a

    .line 418
    .line 419
    aput-object v43, v0, v1

    .line 420
    .line 421
    const/16 v1, 0x2b

    .line 422
    .line 423
    aput-object v44, v0, v1

    .line 424
    .line 425
    const/16 v1, 0x2c

    .line 426
    .line 427
    aput-object v45, v0, v1

    .line 428
    .line 429
    const/16 v1, 0x2d

    .line 430
    .line 431
    aput-object v46, v0, v1

    .line 432
    .line 433
    const/16 v1, 0x2e

    .line 434
    .line 435
    aput-object v47, v0, v1

    .line 436
    .line 437
    const/16 v1, 0x2f

    .line 438
    .line 439
    aput-object v48, v0, v1

    .line 440
    .line 441
    const/16 v1, 0x30

    .line 442
    .line 443
    aput-object v49, v0, v1

    .line 444
    .line 445
    const/16 v1, 0x31

    .line 446
    .line 447
    aput-object v50, v0, v1

    .line 448
    .line 449
    const/16 v1, 0x32

    .line 450
    .line 451
    aput-object v51, v0, v1

    .line 452
    .line 453
    const/16 v1, 0x33

    .line 454
    .line 455
    aput-object v52, v0, v1

    .line 456
    .line 457
    const/16 v1, 0x34

    .line 458
    .line 459
    aput-object v53, v0, v1

    .line 460
    .line 461
    const/16 v1, 0x35

    .line 462
    .line 463
    aput-object v54, v0, v1

    .line 464
    .line 465
    const/16 v1, 0x36

    .line 466
    .line 467
    aput-object v55, v0, v1

    .line 468
    .line 469
    const/16 v1, 0x37

    .line 470
    .line 471
    aput-object v56, v0, v1

    .line 472
    .line 473
    const/16 v1, 0x38

    .line 474
    .line 475
    aput-object v57, v0, v1

    .line 476
    .line 477
    move-object/from16 v1, p1

    .line 478
    .line 479
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    new-instance v1, Lcom/transsion/baselib/db/AppDatabase$f1$a;

    .line 484
    .line 485
    invoke-direct {v1}, Lcom/transsion/baselib/db/AppDatabase$f1$a;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    .line 497
    .line 498
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g0()Lcom/transsion/baselib/db/AppDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g0()Lcom/transsion/baselib/db/AppDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/transsion/baselib/db/AppDatabase$f1;->a(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/transsion/baselib/db/AppDatabase;->m1(Lcom/transsion/baselib/db/AppDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    move-object v0, p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_2
    return-object v0
.end method
