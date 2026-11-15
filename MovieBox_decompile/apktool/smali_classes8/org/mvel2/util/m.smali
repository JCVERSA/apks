.class public Lorg/mvel2/util/m;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:[Ljava/lang/Object;

.field public static final b:[Ljava/lang/Class;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;

.field private static final f:Ljava/util/HashMap;

.field private static final g:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v1, Lorg/mvel2/util/m;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/Class;

    .line 7
    .line 8
    sput-object v0, Lorg/mvel2/util/m;->b:[Ljava/lang/Class;

    .line 9
    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lorg/mvel2/util/m;->c:Ljava/util/Map;

    .line 22
    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v0, v3, v2}, Ljava/util/WeakHashMap;-><init>(IF)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/mvel2/util/m;->d:Ljava/util/Map;

    .line 40
    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/mvel2/util/m;->e:Ljava/util/Map;

    .line 51
    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lorg/mvel2/util/m;->f:Ljava/util/HashMap;

    .line 58
    .line 59
    const/16 v1, 0x6e

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-class v2, Ljava/math/BigDecimal;

    .line 66
    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x6f

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-class v5, Ljava/math/BigInteger;

    .line 77
    .line 78
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-class v6, Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    const/16 v8, 0x65

    .line 89
    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    const/16 v9, 0x6a

    .line 98
    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    const-class v10, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 109
    .line 110
    const/16 v12, 0x64

    .line 111
    .line 112
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const/16 v13, 0x69

    .line 120
    .line 121
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    const-class v14, Ljava/lang/Short;

    .line 126
    .line 127
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    const/16 v16, 0x68

    .line 133
    .line 134
    move-object/from16 v17, v11

    .line 135
    .line 136
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const/16 v16, 0x6c

    .line 144
    .line 145
    move-object/from16 v18, v11

    .line 146
    .line 147
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    move-object/from16 v16, v15

    .line 152
    .line 153
    const-class v15, Ljava/lang/Float;

    .line 154
    .line 155
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-object/from16 v19, v12

    .line 159
    .line 160
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 161
    .line 162
    const/16 v20, 0x67

    .line 163
    .line 164
    move-object/from16 v21, v7

    .line 165
    .line 166
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    const/16 v20, 0x6d

    .line 174
    .line 175
    move-object/from16 v22, v7

    .line 176
    .line 177
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    move-object/from16 v20, v12

    .line 182
    .line 183
    const-class v12, Ljava/lang/Double;

    .line 184
    .line 185
    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-object/from16 v23, v8

    .line 189
    .line 190
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 191
    .line 192
    const/16 v24, 0x66

    .line 193
    .line 194
    move-object/from16 v25, v3

    .line 195
    .line 196
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const/16 v24, 0x6b

    .line 204
    .line 205
    move-object/from16 v26, v3

    .line 206
    .line 207
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    move-object/from16 v24, v8

    .line 212
    .line 213
    const-class v8, Ljava/lang/Long;

    .line 214
    .line 215
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 219
    .line 220
    const/16 v27, 0x7

    .line 221
    .line 222
    move-object/from16 v28, v5

    .line 223
    .line 224
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const/16 v5, 0xf

    .line 232
    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    move-object/from16 v27, v3

    .line 238
    .line 239
    const-class v3, Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 245
    .line 246
    const/16 v5, 0x9

    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const/16 v5, 0x71

    .line 256
    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    move-object/from16 v29, v3

    .line 262
    .line 263
    const-class v3, Ljava/lang/Byte;

    .line 264
    .line 265
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 269
    .line 270
    const/16 v5, 0x8

    .line 271
    .line 272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const/16 v5, 0x70

    .line 280
    .line 281
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    move-object/from16 v30, v3

    .line 286
    .line 287
    const-class v3, Ljava/lang/Character;

    .line 288
    .line 289
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const/16 v3, 0xc8

    .line 293
    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    const-class v5, Lorg/mvel2/compiler/BlankLiteral;

    .line 299
    .line 300
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    new-instance v0, Ljava/util/HashMap;

    .line 304
    .line 305
    const/16 v3, 0x1e

    .line 306
    .line 307
    const/high16 v5, 0x3f000000    # 0.5f

    .line 308
    .line 309
    invoke-direct {v0, v3, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 310
    .line 311
    .line 312
    sput-object v0, Lorg/mvel2/util/m;->g:Ljava/util/Map;

    .line 313
    .line 314
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    const/16 v3, 0xf

    .line 321
    .line 322
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    const-class v5, Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const/16 v3, 0x6b

    .line 335
    .line 336
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-interface {v0, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    const/16 v3, 0x71

    .line 350
    .line 351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    const-class v4, Ljava/lang/Byte;

    .line 356
    .line 357
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    const/16 v3, 0x70

    .line 361
    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    const-class v4, Ljava/lang/Character;

    .line 367
    .line 368
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-object/from16 v2, v25

    .line 375
    .line 376
    move-object/from16 v3, v28

    .line 377
    .line 378
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    const-class v2, Lorg/mvel2/util/InternalNumber;

    .line 382
    .line 383
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-object/from16 v1, v21

    .line 387
    .line 388
    move-object/from16 v2, v23

    .line 389
    .line 390
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-object/from16 v1, v20

    .line 394
    .line 395
    move-object/from16 v2, v22

    .line 396
    .line 397
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    const/4 v1, 0x7

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    move-object/from16 v2, v27

    .line 406
    .line 407
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-object/from16 v1, v24

    .line 411
    .line 412
    move-object/from16 v2, v26

    .line 413
    .line 414
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-object/from16 v1, v17

    .line 418
    .line 419
    move-object/from16 v2, v19

    .line 420
    .line 421
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-object/from16 v1, v16

    .line 425
    .line 426
    move-object/from16 v2, v18

    .line 427
    .line 428
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    const/16 v1, 0x9

    .line 432
    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    move-object/from16 v2, v29

    .line 438
    .line 439
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    const/16 v1, 0x8

    .line 443
    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    move-object/from16 v2, v30

    .line 449
    .line 450
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    const/16 v1, 0xc8

    .line 454
    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    const-class v2, Lorg/mvel2/compiler/BlankLiteral;

    .line 460
    .line 461
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
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

.method public static A([CII[C)Z
    .locals 4

    .line 1
    array-length v0, p3

    .line 2
    array-length v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    return v2

    .line 7
    :cond_0
    array-length v0, p3

    .line 8
    const/4 v1, 0x1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/2addr p1, p2

    .line 11
    sub-int/2addr p1, v1

    .line 12
    :goto_0
    if-ltz v0, :cond_2

    .line 13
    .line 14
    add-int/lit8 p2, p1, -0x1

    .line 15
    .line 16
    aget-char p1, p0, p1

    .line 17
    .line 18
    add-int/lit8 v3, v0, -0x1

    .line 19
    .line 20
    aget-char v0, p3, v0

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    move p1, p2

    .line 26
    move v0, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v1
.end method

.method public static A0(CI)Ljava/lang/String;
    .locals 2

    .line 1
    new-array v0, p1, [C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    aput-char p0, v0, v1

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static B([CIIC)I
    .locals 1

    .line 1
    add-int/2addr p2, p1

    .line 2
    :goto_0
    if-ge p1, p2, :cond_1

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    if-ne v0, p3, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static B0(Ljava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/mvel2/util/m;->a(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static C([C)I
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ltz v0, :cond_5

    .line 6
    .line 7
    aget-char v2, p0, v0

    .line 8
    .line 9
    const/16 v3, 0x5d

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    :cond_0
    const/16 v3, 0x5b

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    :cond_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/16 v4, 0x2e

    .line 24
    .line 25
    if-eq v2, v4, :cond_3

    .line 26
    .line 27
    :cond_2
    if-ne v2, v3, :cond_4

    .line 28
    .line 29
    :cond_3
    return v0

    .line 30
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_5
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method public static C0(Ljava/lang/Class;Ljava/lang/Class;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    move v3, v1

    .line 16
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    if-ne v4, p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->C0(Ljava/lang/Class;Ljava/lang/Class;)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v1
.end method

.method public static D(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Class;

    .line 16
    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Class;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lorg/mvel2/ParserContext;->hasImport(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lorg/mvel2/ParserContext;->getImport(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    invoke-static {p1, p2}, Lorg/mvel2/util/m;->v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object p0

    .line 59
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "class not found: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :goto_1
    throw p0
.end method

.method public static D0(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v2, p0

    .line 18
    array-length v3, p1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    array-length v2, p0

    .line 23
    int-to-float v2, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    array-length v2, p1

    .line 26
    int-to-float v2, v2

    .line 27
    move-object v6, p1

    .line 28
    move-object p1, p0

    .line 29
    move-object p0, v6

    .line 30
    :goto_0
    array-length v3, p0

    .line 31
    if-ge v4, v3, :cond_3

    .line 32
    .line 33
    array-length v3, p1

    .line 34
    if-ge v4, v3, :cond_3

    .line 35
    .line 36
    aget-char v3, p0, v4

    .line 37
    .line 38
    aget-char v5, p1, v4

    .line 39
    .line 40
    if-ne v3, v5, :cond_2

    .line 41
    .line 42
    add-float/2addr v1, v0

    .line 43
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    div-float/2addr v1, v2

    .line 47
    return v1

    .line 48
    :cond_4
    :goto_1
    if-nez p0, :cond_5

    .line 49
    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    move v0, v1

    .line 54
    :goto_2
    return v0
.end method

.method public static E(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Lorg/mvel2/integration/impl/ClassImportResolverFactory;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    :goto_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolverFactory;->getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {p1, v1, v1, v0}, Lorg/mvel2/integration/impl/ClassImportResolverFactory;-><init>(Lorg/mvel2/ParserConfiguration;Lorg/mvel2/integration/VariableResolverFactory;Z)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lyz/e;->a(Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lorg/mvel2/integration/impl/ClassImportResolverFactory;

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    new-instance p0, Lorg/mvel2/OptimizationFailure;

    .line 33
    .line 34
    const-string p1, "unable to import classes.  no variable resolver factory available."

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public static E0([CI)I
    .locals 6

    .line 1
    :cond_0
    :goto_0
    array-length v0, p0

    .line 2
    if-eq p1, v0, :cond_9

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-eq v0, v1, :cond_8

    .line 9
    .line 10
    const/16 v2, 0xd

    .line 11
    .line 12
    if-eq v0, v2, :cond_8

    .line 13
    .line 14
    const/16 v2, 0x2f

    .line 15
    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 20
    .line 21
    array-length v4, p0

    .line 22
    if-eq v3, v4, :cond_7

    .line 23
    .line 24
    aget-char v0, p0, v3

    .line 25
    .line 26
    const/16 v4, 0x2a

    .line 27
    .line 28
    const/16 v5, 0x20

    .line 29
    .line 30
    if-eq v0, v4, :cond_4

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_2
    aput-char v5, p0, p1

    .line 36
    .line 37
    move p1, v3

    .line 38
    :goto_1
    array-length v0, p0

    .line 39
    if-eq p1, v0, :cond_3

    .line 40
    .line 41
    aget-char v0, p0, p1

    .line 42
    .line 43
    if-eq v0, v1, :cond_3

    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x1

    .line 46
    .line 47
    aput-char v5, p0, p1

    .line 48
    .line 49
    move p1, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    array-length v0, p0

    .line 52
    if-eq p1, v0, :cond_0

    .line 53
    .line 54
    add-int/lit8 v0, p1, 0x1

    .line 55
    .line 56
    aput-char v5, p0, p1

    .line 57
    .line 58
    move p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    array-length v0, p0

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    aput-char v5, p0, p1

    .line 64
    .line 65
    move p1, v3

    .line 66
    :goto_2
    if-eq p1, v0, :cond_6

    .line 67
    .line 68
    aget-char v1, p0, p1

    .line 69
    .line 70
    if-ne v1, v4, :cond_5

    .line 71
    .line 72
    add-int/lit8 v1, p1, 0x1

    .line 73
    .line 74
    aget-char v1, p0, v1

    .line 75
    .line 76
    if-eq v1, v2, :cond_6

    .line 77
    .line 78
    :cond_5
    add-int/lit8 v1, p1, 0x1

    .line 79
    .line 80
    aput-char v5, p0, p1

    .line 81
    .line 82
    move p1, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    if-eq p1, v0, :cond_0

    .line 85
    .line 86
    add-int/lit8 v0, p1, 0x1

    .line 87
    .line 88
    add-int/lit8 v1, p1, 0x2

    .line 89
    .line 90
    aput-char v5, p0, v0

    .line 91
    .line 92
    aput-char v5, p0, p1

    .line 93
    .line 94
    move p1, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_7
    :goto_3
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_8

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_9
    :goto_4
    return p1
.end method

.method public static F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;
    .locals 4

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    :catch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, "$"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object p0

    .line 45
    :cond_0
    throw p2
.end method

.method public static F0([CII)[C
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lt p1, p2, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [C

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    sub-int/2addr p2, p1

    .line 8
    new-array v1, p2, [C

    .line 9
    .line 10
    :goto_0
    if-eq v0, p2, :cond_1

    .line 11
    .line 12
    add-int v2, v0, p1

    .line 13
    .line 14
    aget-char v2, p0, v2

    .line 15
    .line 16
    aput-char v2, v1, v0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object v1
.end method

.method public static G([CIIC)I
    .locals 1

    .line 1
    add-int/2addr p2, p1

    .line 2
    :goto_0
    if-lt p2, p1, :cond_1

    .line 3
    .line 4
    aget-char v0, p0, p2

    .line 5
    .line 6
    if-ne v0, p3, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public static G0(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>(Ljava/lang/String;Lorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static H(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-static {p0, p1, v0}, Lorg/mvel2/util/m;->F(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassNotFoundException;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static H0([C)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([C)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static I(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-object p0
.end method

.method public static I0([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CIILorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lorg/mvel2/util/m;->K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static J0([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;
    .locals 1

    .line 1
    new-instance v0, Lorg/mvel2/compiler/ExpressionCompiler;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/mvel2/compiler/ExpressionCompiler;-><init>([CLorg/mvel2/ParserContext;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/mvel2/compiler/ExpressionCompiler;->_compile()Lorg/mvel2/compiler/CompiledExpression;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static K([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;
    .locals 10

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object v1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v2, -0x1

    .line 8
    move v3, v0

    .line 9
    :goto_0
    array-length v4, p3

    .line 10
    move v5, v0

    .line 11
    :goto_1
    if-ge v5, v4, :cond_7

    .line 12
    .line 13
    aget-object v6, p3, v5

    .line 14
    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-nez v7, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_6

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    array-length v8, v7

    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    array-length v8, p0

    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-static {v6, v1}, Lorg/mvel2/util/m;->e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_6

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isVarArgs()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-static {p0, v7, v8}, Lorg/mvel2/util/m;->Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-static {p0, p4, v7, v8}, Lorg/mvel2/util/m;->S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_6

    .line 73
    .line 74
    if-le v7, v2, :cond_4

    .line 75
    .line 76
    move-object v1, v6

    .line 77
    move v2, v7

    .line 78
    goto :goto_3

    .line 79
    :cond_4
    if-ne v7, v2, :cond_6

    .line 80
    .line 81
    invoke-static {v6, v1}, Lorg/mvel2/util/m;->e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_6

    .line 86
    .line 87
    if-nez v8, :cond_6

    .line 88
    .line 89
    :cond_5
    :goto_2
    move-object v1, v6

    .line 90
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_7
    if-eqz v1, :cond_8

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_8
    if-nez v3, :cond_b

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_b

    .line 103
    .line 104
    const-class v3, Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    array-length v4, p3

    .line 111
    array-length v5, v3

    .line 112
    add-int/2addr v4, v5

    .line 113
    new-array v4, v4, [Ljava/lang/reflect/Method;

    .line 114
    .line 115
    move v5, v0

    .line 116
    :goto_4
    array-length v6, p3

    .line 117
    if-ge v5, v6, :cond_9

    .line 118
    .line 119
    aget-object v6, p3, v5

    .line 120
    .line 121
    aput-object v6, v4, v5

    .line 122
    .line 123
    add-int/lit8 v5, v5, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_9
    move v5, v0

    .line 127
    :goto_5
    array-length v6, v3

    .line 128
    if-ge v5, v6, :cond_a

    .line 129
    .line 130
    array-length v6, p3

    .line 131
    add-int/2addr v6, v5

    .line 132
    aget-object v7, v3, v5

    .line 133
    .line 134
    aput-object v7, v4, v6

    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_a
    const/4 v3, 0x1

    .line 140
    move-object p3, v4

    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_b
    :goto_6
    return-object v1
.end method

.method public static K0([CII)[C
    .locals 3

    .line 1
    new-array v0, p2, [C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_0

    .line 5
    .line 6
    add-int v2, v1, p1

    .line 7
    .line 8
    aget-char v2, p0, v2

    .line 9
    .line 10
    aput-char v2, v0, v1

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v0
.end method

.method public static L([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_1
    aput-object v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lorg/mvel2/util/m;->J([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static L0([CII)[C
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    new-array p0, v0, [C

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    add-int/2addr p2, p1

    .line 8
    :goto_0
    if-lez p2, :cond_1

    .line 9
    .line 10
    add-int/lit8 v1, p2, -0x1

    .line 11
    .line 12
    aget-char v1, p0, v1

    .line 13
    .line 14
    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    aget-char v1, p0, p1

    .line 24
    .line 25
    invoke-static {v1}, Lorg/mvel2/util/m;->q0(C)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-ge p1, p2, :cond_2

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sub-int/2addr p2, p1

    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    new-array p0, v0, [C

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->K0([CII)[C

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/mvel2/util/m;->P(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    aget-object v4, p1, v2

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-static {v4}, Lorg/mvel2/util/m;->O(Ljava/lang/reflect/Constructor;)[Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static {p0, v6, v5}, Lorg/mvel2/util/m;->Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    array-length v7, p0

    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    array-length v7, v6

    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    return-object v4

    .line 35
    :cond_1
    invoke-static {p0, p2, v6, v5}, Lorg/mvel2/util/m;->S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    if-le v5, v3, :cond_2

    .line 42
    .line 43
    move-object v1, v4

    .line 44
    move v3, v5

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v1
.end method

.method public static M0([CII)I
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-le p2, v0, :cond_0

    .line 3
    .line 4
    array-length p2, p0

    .line 5
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-lt p2, p1, :cond_1

    .line 8
    .line 9
    add-int/lit8 v0, p2, -0x1

    .line 10
    .line 11
    aget-char v0, p0, v0

    .line 12
    .line 13
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return p2
.end method

.method public static N([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {v0, p1, p2}, Lorg/mvel2/util/m;->M([Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static N0([CI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return p1
.end method

.method private static O(Ljava/lang/reflect/Constructor;)[Ljava/lang/Class;
    .locals 3

    .line 1
    sget-object v0, Lorg/mvel2/util/m;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public static O0(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1f

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_f

    .line 10
    .line 11
    :cond_0
    const-class v0, [Ljava/lang/Integer;

    .line 12
    .line 13
    const-class v1, [I

    .line 14
    .line 15
    if-eq p0, v0, :cond_1e

    .line 16
    .line 17
    if-ne p0, v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_e

    .line 20
    .line 21
    :cond_1
    const-class v0, Ljava/lang/Long;

    .line 22
    .line 23
    if-eq p0, v0, :cond_1d

    .line 24
    .line 25
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    if-ne p0, v0, :cond_2

    .line 28
    .line 29
    goto/16 :goto_d

    .line 30
    .line 31
    :cond_2
    const-class v0, [Ljava/lang/Long;

    .line 32
    .line 33
    const-class v1, [J

    .line 34
    .line 35
    if-eq p0, v0, :cond_1c

    .line 36
    .line 37
    if-ne p0, v1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_3
    const-class v0, Ljava/lang/Character;

    .line 42
    .line 43
    if-eq p0, v0, :cond_1b

    .line 44
    .line 45
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    if-ne p0, v0, :cond_4

    .line 48
    .line 49
    goto/16 :goto_b

    .line 50
    .line 51
    :cond_4
    const-class v0, [Ljava/lang/Character;

    .line 52
    .line 53
    const-class v1, [C

    .line 54
    .line 55
    if-eq p0, v0, :cond_1a

    .line 56
    .line 57
    if-ne p0, v1, :cond_5

    .line 58
    .line 59
    goto/16 :goto_a

    .line 60
    .line 61
    :cond_5
    const-class v0, Ljava/lang/Short;

    .line 62
    .line 63
    if-eq p0, v0, :cond_19

    .line 64
    .line 65
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne p0, v0, :cond_6

    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_6
    const-class v0, [Ljava/lang/Short;

    .line 72
    .line 73
    const-class v1, [S

    .line 74
    .line 75
    if-eq p0, v0, :cond_18

    .line 76
    .line 77
    if-ne p0, v1, :cond_7

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_7
    const-class v0, Ljava/lang/Double;

    .line 81
    .line 82
    if-eq p0, v0, :cond_17

    .line 83
    .line 84
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    if-ne p0, v0, :cond_8

    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_8
    const-class v0, [Ljava/lang/Double;

    .line 90
    .line 91
    const-class v1, [D

    .line 92
    .line 93
    if-eq p0, v0, :cond_16

    .line 94
    .line 95
    if-ne p0, v1, :cond_9

    .line 96
    .line 97
    goto :goto_6

    .line 98
    :cond_9
    const-class v0, Ljava/lang/Float;

    .line 99
    .line 100
    if-eq p0, v0, :cond_15

    .line 101
    .line 102
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    if-ne p0, v0, :cond_a

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_a
    const-class v0, [Ljava/lang/Float;

    .line 108
    .line 109
    const-class v1, [F

    .line 110
    .line 111
    if-eq p0, v0, :cond_14

    .line 112
    .line 113
    if-ne p0, v1, :cond_b

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_b
    const-class v0, Ljava/lang/Boolean;

    .line 117
    .line 118
    if-eq p0, v0, :cond_13

    .line 119
    .line 120
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    if-ne p0, v0, :cond_c

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_c
    const-class v0, [Ljava/lang/Boolean;

    .line 126
    .line 127
    const-class v1, [Z

    .line 128
    .line 129
    if-eq p0, v0, :cond_12

    .line 130
    .line 131
    if-ne p0, v1, :cond_d

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_d
    const-class v0, Ljava/lang/Byte;

    .line 135
    .line 136
    if-eq p0, v0, :cond_11

    .line 137
    .line 138
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 139
    .line 140
    if-ne p0, v0, :cond_e

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_e
    const-class v0, [Ljava/lang/Byte;

    .line 144
    .line 145
    const-class v1, [B

    .line 146
    .line 147
    if-eq p0, v0, :cond_10

    .line 148
    .line 149
    if-ne p0, v1, :cond_f

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_f
    return-object p0

    .line 153
    :cond_10
    :goto_0
    return-object v1

    .line 154
    :cond_11
    :goto_1
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_12
    :goto_2
    return-object v1

    .line 158
    :cond_13
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_14
    :goto_4
    return-object v1

    .line 162
    :cond_15
    :goto_5
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 163
    .line 164
    return-object p0

    .line 165
    :cond_16
    :goto_6
    return-object v1

    .line 166
    :cond_17
    :goto_7
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 167
    .line 168
    return-object p0

    .line 169
    :cond_18
    :goto_8
    return-object v1

    .line 170
    :cond_19
    :goto_9
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_1a
    :goto_a
    return-object v1

    .line 174
    :cond_1b
    :goto_b
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 175
    .line 176
    return-object p0

    .line 177
    :cond_1c
    :goto_c
    return-object v1

    .line 178
    :cond_1d
    :goto_d
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_1e
    :goto_e
    return-object v1

    .line 182
    :cond_1f
    :goto_f
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 183
    .line 184
    return-object p0
.end method

.method public static P(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 3

    .line 1
    sget-object v0, Lorg/mvel2/util/m;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public static Q()Ljava/io/FileWriter;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {}, Lorg/mvel2/d;->u()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    array-length v0, p3

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_4

    .line 9
    .line 10
    aget-object v3, p3, v2

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_3

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-ne p2, v4, :cond_3

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    array-length v5, v4

    .line 33
    array-length v6, p1

    .line 34
    if-eq v5, v6, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    move v5, v1

    .line 38
    :goto_1
    array-length v6, v4

    .line 39
    if-ge v5, v6, :cond_2

    .line 40
    .line 41
    aget-object v6, v4, v5

    .line 42
    .line 43
    aget-object v7, p1, v5

    .line 44
    .line 45
    if-eq v6, v7, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    return-object v3

    .line 52
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method private static S([Ljava/lang/Class;Z[Ljava/lang/Class;Z)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-eq v1, v3, :cond_d

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    array-length v3, p2

    .line 10
    add-int/lit8 v3, v3, -0x1

    .line 11
    .line 12
    if-lt v1, v3, :cond_0

    .line 13
    .line 14
    array-length v3, p2

    .line 15
    add-int/lit8 v3, v3, -0x1

    .line 16
    .line 17
    aget-object v3, p2, v3

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    aget-object v3, p2, v1

    .line 25
    .line 26
    :goto_1
    aget-object v4, p0, v1

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_e

    .line 35
    .line 36
    :goto_2
    add-int/lit8 v2, v2, 0x7

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x8

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-static {v3}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    aget-object v5, p0, v1

    .line 57
    .line 58
    if-ne v4, v5, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    aget-object v4, p0, v1

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    aget-object v4, p0, v1

    .line 70
    .line 71
    invoke-static {v4}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-ne v4, v3, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    aget-object v4, p0, v1

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x6

    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_5
    aget-object v4, p0, v1

    .line 91
    .line 92
    invoke-static {v4, v3}, Lorg/mvel2/util/m;->l0(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x5

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    aget-object v4, p0, v1

    .line 102
    .line 103
    invoke-static {v4, v3}, Lorg/mvel2/util/m;->k0(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_7

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x4

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_7
    invoke-static {v3}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    aget-object v5, p0, v1

    .line 117
    .line 118
    invoke-static {v5}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    const-class v5, Ljava/lang/Object;

    .line 127
    .line 128
    if-eqz v4, :cond_8

    .line 129
    .line 130
    aget-object v4, p0, v1

    .line 131
    .line 132
    if-eq v5, v4, :cond_8

    .line 133
    .line 134
    invoke-static {v3, v4}, Lorg/mvel2/util/m;->C0(Ljava/lang/Class;Ljava/lang/Class;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    add-int/lit8 v3, v3, 0x3

    .line 139
    .line 140
    add-int/2addr v2, v3

    .line 141
    goto :goto_5

    .line 142
    :cond_8
    if-nez p1, :cond_b

    .line 143
    .line 144
    aget-object v4, p0, v1

    .line 145
    .line 146
    invoke-static {v3, v4}, Lorg/mvel2/b;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_b

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_9

    .line 157
    .line 158
    aget-object v4, p0, v1

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_9
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 170
    .line 171
    if-ne v3, v4, :cond_a

    .line 172
    .line 173
    aget-object v3, p0, v1

    .line 174
    .line 175
    const-class v4, Ljava/lang/String;

    .line 176
    .line 177
    if-ne v3, v4, :cond_a

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_b
    if-eq v3, v5, :cond_c

    .line 184
    .line 185
    aget-object v3, p0, v1

    .line 186
    .line 187
    const-class v4, Lorg/mvel2/util/l;

    .line 188
    .line 189
    if-ne v3, v4, :cond_e

    .line 190
    .line 191
    :cond_c
    goto :goto_4

    .line 192
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_d
    move v0, v2

    .line 197
    :cond_e
    if-nez v0, :cond_f

    .line 198
    .line 199
    if-eqz p3, :cond_f

    .line 200
    .line 201
    array-length p1, p2

    .line 202
    add-int/lit8 p1, p1, -0x1

    .line 203
    .line 204
    array-length p0, p0

    .line 205
    if-ne p1, p0, :cond_f

    .line 206
    .line 207
    add-int/lit8 v0, v0, 0x3

    .line 208
    .line 209
    :cond_f
    return v0
.end method

.method public static T(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public static U(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    move-object v3, p0

    .line 25
    move-object v4, p1

    .line 26
    :goto_0
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    array-length v6, v5

    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_1
    if-ge v7, v6, :cond_2

    .line 35
    .line 36
    aget-object v8, v5, v7

    .line 37
    .line 38
    invoke-static {v1, v0, v2, v8}, Lorg/mvel2/util/m;->R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    move-object v4, v8

    .line 45
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eq v4, p1, :cond_4

    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_4
    :goto_2
    if-eqz p0, :cond_6

    .line 57
    .line 58
    invoke-static {v1, v0, v2, p0}, Lorg/mvel2/util/m;->R(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    move-object v4, p1

    .line 65
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    goto :goto_2

    .line 70
    :cond_6
    return-object v4
.end method

.method public static V(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lorg/mvel2/util/m;->U(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static W([CI)I
    .locals 11

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput-char v1, p0, v0

    .line 5
    .line 6
    aget-char v2, p0, p1

    .line 7
    .line 8
    const/16 v3, 0x22

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v3, :cond_12

    .line 12
    .line 13
    const/16 v3, 0x27

    .line 14
    .line 15
    if-eq v2, v3, :cond_11

    .line 16
    .line 17
    const/16 v3, 0x5c

    .line 18
    .line 19
    if-eq v2, v3, :cond_10

    .line 20
    .line 21
    const/16 v3, 0x62

    .line 22
    .line 23
    if-eq v2, v3, :cond_f

    .line 24
    .line 25
    const/16 v3, 0x66

    .line 26
    .line 27
    if-eq v2, v3, :cond_e

    .line 28
    .line 29
    const/16 v3, 0x6e

    .line 30
    .line 31
    if-eq v2, v3, :cond_d

    .line 32
    .line 33
    const/16 v3, 0x72

    .line 34
    .line 35
    if-eq v2, v3, :cond_c

    .line 36
    .line 37
    const/16 v3, 0x74

    .line 38
    .line 39
    if-eq v2, v3, :cond_b

    .line 40
    .line 41
    const/16 v3, 0x75

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    if-eq v2, v3, :cond_5

    .line 45
    .line 46
    move v2, p1

    .line 47
    :cond_0
    aget-char v3, p0, v2

    .line 48
    .line 49
    const/16 v6, 0x30

    .line 50
    .line 51
    if-lt v3, v6, :cond_4

    .line 52
    .line 53
    const/16 v7, 0x38

    .line 54
    .line 55
    if-ge v3, v7, :cond_4

    .line 56
    .line 57
    const-string v7, "0"

    .line 58
    .line 59
    const/4 v8, 0x2

    .line 60
    if-eq v2, p1, :cond_1

    .line 61
    .line 62
    aget-char v9, p0, p1

    .line 63
    .line 64
    const/16 v10, 0x33

    .line 65
    .line 66
    if-le v9, v10, :cond_1

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v5, Ljava/lang/String;

    .line 77
    .line 78
    sub-int/2addr v2, p1

    .line 79
    add-int/2addr v2, v4

    .line 80
    invoke-direct {v5, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    int-to-char v2, v2

    .line 99
    aput-char v2, p0, v0

    .line 100
    .line 101
    aput-char v1, p0, p1

    .line 102
    .line 103
    add-int/2addr p1, v4

    .line 104
    aput-char v1, p0, p1

    .line 105
    .line 106
    return v8

    .line 107
    :cond_1
    sub-int v9, v2, p1

    .line 108
    .line 109
    if-ne v9, v8, :cond_2

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    new-instance v3, Ljava/lang/String;

    .line 120
    .line 121
    add-int/2addr v9, v4

    .line 122
    invoke-direct {v3, p0, p1, v9}, Ljava/lang/String;-><init>([CII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    int-to-char v2, v2

    .line 141
    aput-char v2, p0, v0

    .line 142
    .line 143
    aput-char v1, p0, p1

    .line 144
    .line 145
    add-int/lit8 v0, p1, 0x1

    .line 146
    .line 147
    aput-char v1, p0, v0

    .line 148
    .line 149
    add-int/2addr p1, v8

    .line 150
    aput-char v1, p0, p1

    .line 151
    .line 152
    return v5

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    array-length v8, p0

    .line 156
    if-eq v2, v8, :cond_3

    .line 157
    .line 158
    if-lt v3, v6, :cond_3

    .line 159
    .line 160
    const/16 v6, 0x37

    .line 161
    .line 162
    if-le v3, v6, :cond_0

    .line 163
    .line 164
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    new-instance v3, Ljava/lang/String;

    .line 173
    .line 174
    add-int/2addr v9, v4

    .line 175
    invoke-direct {v3, p0, p1, v9}, Ljava/lang/String;-><init>([CII)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    int-to-char v2, v2

    .line 194
    aput-char v2, p0, v0

    .line 195
    .line 196
    aput-char v1, p0, p1

    .line 197
    .line 198
    return v4

    .line 199
    :cond_4
    new-instance p1, Lorg/mvel2/CompileException;

    .line 200
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v1, "illegal escape sequence: "

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    aget-char v1, p0, v2

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-direct {p1, v0, p0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_5
    add-int/lit8 v2, p1, 0x4

    .line 225
    .line 226
    array-length v3, p0

    .line 227
    const-string v6, "illegal unicode escape sequence"

    .line 228
    .line 229
    if-gt v2, v3, :cond_a

    .line 230
    .line 231
    move v3, p1

    .line 232
    :cond_6
    :goto_0
    add-int/2addr v3, v4

    .line 233
    sub-int v7, v3, p1

    .line 234
    .line 235
    const/4 v8, 0x5

    .line 236
    if-eq v7, v8, :cond_9

    .line 237
    .line 238
    aget-char v7, p0, v3

    .line 239
    .line 240
    const/16 v8, 0x2f

    .line 241
    .line 242
    if-le v7, v8, :cond_7

    .line 243
    .line 244
    const/16 v8, 0x3a

    .line 245
    .line 246
    if-lt v7, v8, :cond_6

    .line 247
    .line 248
    :cond_7
    const/16 v8, 0x40

    .line 249
    .line 250
    if-le v7, v8, :cond_8

    .line 251
    .line 252
    const/16 v8, 0x47

    .line 253
    .line 254
    if-ge v7, v8, :cond_8

    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_8
    new-instance p1, Lorg/mvel2/CompileException;

    .line 258
    .line 259
    invoke-direct {p1, v6, p0, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 260
    .line 261
    .line 262
    throw p1

    .line 263
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v4, "0x"

    .line 269
    .line 270
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    new-instance v4, Ljava/lang/String;

    .line 274
    .line 275
    add-int/lit8 v6, p1, 0x1

    .line 276
    .line 277
    const/4 v7, 0x4

    .line 278
    invoke-direct {v4, p0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    int-to-char v3, v3

    .line 297
    aput-char v3, p0, v0

    .line 298
    .line 299
    aput-char v1, p0, p1

    .line 300
    .line 301
    aput-char v1, p0, v6

    .line 302
    .line 303
    add-int/lit8 v0, p1, 0x2

    .line 304
    .line 305
    aput-char v1, p0, v0

    .line 306
    .line 307
    add-int/2addr p1, v5

    .line 308
    aput-char v1, p0, p1

    .line 309
    .line 310
    aput-char v1, p0, v2

    .line 311
    .line 312
    return v8

    .line 313
    :cond_a
    new-instance v0, Lorg/mvel2/CompileException;

    .line 314
    .line 315
    invoke-direct {v0, v6, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_b
    const/16 v0, 0x9

    .line 320
    .line 321
    aput-char v0, p0, p1

    .line 322
    .line 323
    return v4

    .line 324
    :cond_c
    const/16 v0, 0xd

    .line 325
    .line 326
    aput-char v0, p0, p1

    .line 327
    .line 328
    return v4

    .line 329
    :cond_d
    const/16 v0, 0xa

    .line 330
    .line 331
    aput-char v0, p0, p1

    .line 332
    .line 333
    return v4

    .line 334
    :cond_e
    const/16 v0, 0xc

    .line 335
    .line 336
    aput-char v0, p0, p1

    .line 337
    .line 338
    return v4

    .line 339
    :cond_f
    const/16 v0, 0x8

    .line 340
    .line 341
    aput-char v0, p0, p1

    .line 342
    .line 343
    return v4

    .line 344
    :cond_10
    aput-char v3, p0, p1

    .line 345
    .line 346
    return v4

    .line 347
    :cond_11
    aput-char v3, p0, p1

    .line 348
    .line 349
    return v4

    .line 350
    :cond_12
    aput-char v3, p0, p1

    .line 351
    .line 352
    return v4
.end method

.method public static X([CII)Ljava/lang/Object;
    .locals 8

    .line 1
    const/16 v0, 0x6c

    .line 2
    .line 3
    const/16 v1, 0x4c

    .line 4
    .line 5
    const/16 v2, 0x49

    .line 6
    .line 7
    const/16 v3, 0x42

    .line 8
    .line 9
    const/16 v4, 0x2e

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq p2, v5, :cond_4

    .line 13
    .line 14
    aget-char v6, p0, p1

    .line 15
    .line 16
    const/16 v7, 0x30

    .line 17
    .line 18
    if-ne v6, v7, :cond_4

    .line 19
    .line 20
    add-int/lit8 v6, p1, 0x1

    .line 21
    .line 22
    aget-char v6, p0, v6

    .line 23
    .line 24
    if-eq v6, v4, :cond_4

    .line 25
    .line 26
    add-int v4, p1, p2

    .line 27
    .line 28
    sub-int/2addr v4, v5

    .line 29
    aget-char v6, p0, v4

    .line 30
    .line 31
    invoke-static {v6}, Lorg/mvel2/util/m;->b0(I)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_3

    .line 36
    .line 37
    aget-char v4, p0, v4

    .line 38
    .line 39
    if-eq v4, v3, :cond_2

    .line 40
    .line 41
    if-eq v4, v2, :cond_1

    .line 42
    .line 43
    if-eq v4, v1, :cond_0

    .line 44
    .line 45
    if-eq v4, v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 49
    .line 50
    sub-int/2addr p2, v5

    .line 51
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/String;

    .line 62
    .line 63
    sub-int/2addr p2, v5

    .line 64
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/String;

    .line 74
    .line 75
    sub-int/2addr p2, v5

    .line 76
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    .line 84
    .line 85
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_4
    add-int v6, p1, p2

    .line 94
    .line 95
    sub-int/2addr v6, v5

    .line 96
    aget-char v7, p0, v6

    .line 97
    .line 98
    invoke-static {v7}, Lorg/mvel2/util/m;->b0(I)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_b

    .line 103
    .line 104
    aget-char v6, p0, v6

    .line 105
    .line 106
    if-eq v6, v4, :cond_a

    .line 107
    .line 108
    if-eq v6, v3, :cond_9

    .line 109
    .line 110
    const/16 v3, 0x44

    .line 111
    .line 112
    if-eq v6, v3, :cond_a

    .line 113
    .line 114
    const/16 v3, 0x46

    .line 115
    .line 116
    if-eq v6, v3, :cond_8

    .line 117
    .line 118
    if-eq v6, v2, :cond_7

    .line 119
    .line 120
    if-eq v6, v1, :cond_6

    .line 121
    .line 122
    const/16 v1, 0x64

    .line 123
    .line 124
    if-eq v6, v1, :cond_a

    .line 125
    .line 126
    const/16 v1, 0x66

    .line 127
    .line 128
    if-eq v6, v1, :cond_8

    .line 129
    .line 130
    if-ne v6, v0, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    new-instance p2, Lorg/mvel2/CompileException;

    .line 134
    .line 135
    const-string v0, "unrecognized numeric literal"

    .line 136
    .line 137
    invoke-direct {p2, v0, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/String;

    .line 142
    .line 143
    sub-int/2addr p2, v5

    .line 144
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 148
    .line 149
    .line 150
    move-result-wide p0

    .line 151
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    .line 157
    .line 158
    new-instance v1, Ljava/lang/String;

    .line 159
    .line 160
    sub-int/2addr p2, v5

    .line 161
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_8
    new-instance v0, Ljava/lang/String;

    .line 169
    .line 170
    sub-int/2addr p2, v5

    .line 171
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    .line 184
    .line 185
    new-instance v1, Ljava/lang/String;

    .line 186
    .line 187
    sub-int/2addr p2, v5

    .line 188
    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object v0

    .line 195
    :cond_a
    new-instance v0, Ljava/lang/String;

    .line 196
    .line 197
    sub-int/2addr p2, v5

    .line 198
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 202
    .line 203
    .line 204
    move-result-wide p0

    .line 205
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_b
    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->t0([CII)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    const/16 v1, 0x6e

    .line 215
    .line 216
    if-eq v0, v1, :cond_c

    .line 217
    .line 218
    packed-switch v0, :pswitch_data_0

    .line 219
    .line 220
    .line 221
    new-instance v0, Ljava/lang/String;

    .line 222
    .line 223
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 224
    .line 225
    .line 226
    return-object v0

    .line 227
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 228
    .line 229
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 247
    .line 248
    .line 249
    move-result-wide p0

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .line 256
    .line 257
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 261
    .line 262
    .line 263
    move-result-wide p0

    .line 264
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0

    .line 269
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    .line 270
    .line 271
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :cond_c
    new-instance p1, Ljava/math/BigDecimal;

    .line 284
    .line 285
    sget-object p2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 286
    .line 287
    invoke-direct {p1, p0, p2}, Ljava/math/BigDecimal;-><init>([CLjava/math/MathContext;)V

    .line 288
    .line 289
    .line 290
    return-object p1

    .line 291
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Y([C)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    array-length v3, p0

    .line 5
    if-ge v1, v3, :cond_1

    .line 6
    .line 7
    aget-char v3, p0, v1

    .line 8
    .line 9
    const/16 v4, 0x5c

    .line 10
    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-static {p0, v1}, Lorg/mvel2/util/m;->W([CI)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/2addr v2, v3

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-nez v2, :cond_2

    .line 24
    .line 25
    new-instance v0, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    array-length v1, p0

    .line 32
    sub-int/2addr v1, v2

    .line 33
    new-array v1, v1, [C

    .line 34
    .line 35
    array-length v2, p0

    .line 36
    move v3, v0

    .line 37
    :goto_1
    if-ge v0, v2, :cond_4

    .line 38
    .line 39
    aget-char v4, p0, v0

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    add-int/lit8 v5, v3, 0x1

    .line 44
    .line 45
    aput-char v4, v1, v3

    .line 46
    .line 47
    move v3, v5

    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    new-instance p0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method private static Z([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    sub-int/2addr v1, v0

    .line 6
    array-length v2, p0

    .line 7
    if-gt v1, v2, :cond_2

    .line 8
    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    array-length p1, p1

    .line 12
    array-length p0, p0

    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/util/m;->g:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-class v0, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x32

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public static a0([CII)Z
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, p2, -0x2

    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Lorg/mvel2/util/m;->n0([CII)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    aget-char p1, p0, v0

    .line 14
    .line 15
    const/16 v0, 0x5b

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    sub-int/2addr p2, p1

    .line 21
    aget-char p0, p0, p2

    .line 22
    .line 23
    const/16 p2, 0x5d

    .line 24
    .line 25
    if-ne p0, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method private static b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isSingleNode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getFirstNode()Lorg/mvel2/ast/ASTNode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isLiteral()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->isThisVal()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Lorg/mvel2/compiler/ExecutableLiteral;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getLiteralValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lorg/mvel2/compiler/ExecutableLiteral;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->canSerializeAccessor()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Lorg/mvel2/compiler/ExecutableAccessorSafe;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getKnownEgressType()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v1, v0, p0}, Lorg/mvel2/compiler/ExecutableAccessorSafe;-><init>(Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lorg/mvel2/compiler/ExecutableAccessor;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getKnownEgressType()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v1, v0, p0}, Lorg/mvel2/compiler/ExecutableAccessor;-><init>(Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-object v1

    .line 59
    :cond_2
    return-object p0
.end method

.method public static b0(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x3a

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static c([CIC)I
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/mvel2/util/m;->d([CIIC)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static c0(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7b

    .line 6
    .line 7
    if-lt p0, v0, :cond_4

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x40

    .line 10
    .line 11
    if-le p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x5b

    .line 14
    .line 15
    if-lt p0, v0, :cond_4

    .line 16
    .line 17
    :cond_1
    const/16 v0, 0x2f

    .line 18
    .line 19
    if-le p0, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x3a

    .line 22
    .line 23
    if-lt p0, v0, :cond_4

    .line 24
    .line 25
    :cond_2
    const/16 v0, 0x5f

    .line 26
    .line 27
    if-eq p0, v0, :cond_4

    .line 28
    .line 29
    const/16 v0, 0x24

    .line 30
    .line 31
    if-eq p0, v0, :cond_4

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p0, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 43
    :goto_1
    return p0
.end method

.method public static d([CIIC)I
    .locals 9

    .line 1
    const/16 v0, 0x7b

    .line 2
    .line 3
    const/16 v1, 0x5b

    .line 4
    .line 5
    const/16 v2, 0x28

    .line 6
    .line 7
    if-eq p3, v2, :cond_2

    .line 8
    .line 9
    if-eq p3, v1, :cond_1

    .line 10
    .line 11
    if-eq p3, v0, :cond_0

    .line 12
    .line 13
    move v3, p3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v3, 0x7d

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v3, 0x5d

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/16 v3, 0x29

    .line 22
    .line 23
    :goto_0
    const/4 v4, 0x1

    .line 24
    if-ne p3, v3, :cond_4

    .line 25
    .line 26
    add-int/2addr p1, v4

    .line 27
    :goto_1
    if-ge p1, p2, :cond_f

    .line 28
    .line 29
    aget-char v3, p0, p1

    .line 30
    .line 31
    if-ne v3, p3, :cond_3

    .line 32
    .line 33
    return p1

    .line 34
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_4
    add-int/2addr p1, v4

    .line 38
    move v5, v4

    .line 39
    :goto_2
    if-ge p1, p2, :cond_f

    .line 40
    .line 41
    if-ge p1, p2, :cond_9

    .line 42
    .line 43
    aget-char v6, p0, p1

    .line 44
    .line 45
    const/16 v7, 0x2f

    .line 46
    .line 47
    if-ne v6, v7, :cond_9

    .line 48
    .line 49
    add-int/lit8 v6, p1, 0x1

    .line 50
    .line 51
    if-ne v6, p2, :cond_5

    .line 52
    .line 53
    return p1

    .line 54
    :cond_5
    aget-char v8, p0, v6

    .line 55
    .line 56
    if-ne v8, v7, :cond_6

    .line 57
    .line 58
    move p1, v6

    .line 59
    :goto_3
    if-ge p1, p2, :cond_9

    .line 60
    .line 61
    aget-char v6, p0, p1

    .line 62
    .line 63
    const/16 v7, 0xa

    .line 64
    .line 65
    if-eq v6, v7, :cond_9

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    const/16 v6, 0x2a

    .line 71
    .line 72
    if-ne v8, v6, :cond_9

    .line 73
    .line 74
    add-int/lit8 p1, p1, 0x2

    .line 75
    .line 76
    :goto_4
    if-ge p1, p2, :cond_9

    .line 77
    .line 78
    aget-char v8, p0, p1

    .line 79
    .line 80
    if-eq v8, v6, :cond_7

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    add-int/lit8 v8, p1, 0x1

    .line 84
    .line 85
    if-ge v8, p2, :cond_8

    .line 86
    .line 87
    aget-char v8, p0, v8

    .line 88
    .line 89
    if-ne v8, v7, :cond_8

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_8
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_9
    :goto_6
    if-ne p1, p2, :cond_a

    .line 96
    .line 97
    return p1

    .line 98
    :cond_a
    aget-char v6, p0, p1

    .line 99
    .line 100
    const/16 v7, 0x27

    .line 101
    .line 102
    if-eq v6, v7, :cond_d

    .line 103
    .line 104
    const/16 v7, 0x22

    .line 105
    .line 106
    if-ne v6, v7, :cond_b

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_b
    if-ne v6, p3, :cond_c

    .line 110
    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 112
    .line 113
    goto :goto_8

    .line 114
    :cond_c
    if-ne v6, v3, :cond_e

    .line 115
    .line 116
    add-int/lit8 v5, v5, -0x1

    .line 117
    .line 118
    if-nez v5, :cond_e

    .line 119
    .line 120
    return p1

    .line 121
    :cond_d
    :goto_7
    invoke-static {v6, p0, p1, p2}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    :cond_e
    :goto_8
    add-int/2addr p1, v4

    .line 126
    goto :goto_2

    .line 127
    :cond_f
    if-eq p3, v2, :cond_12

    .line 128
    .line 129
    if-eq p3, v1, :cond_11

    .line 130
    .line 131
    if-eq p3, v0, :cond_10

    .line 132
    .line 133
    new-instance p2, Lorg/mvel2/CompileException;

    .line 134
    .line 135
    const-string p3, "unterminated string literal"

    .line 136
    .line 137
    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 138
    .line 139
    .line 140
    throw p2

    .line 141
    :cond_10
    new-instance p2, Lorg/mvel2/CompileException;

    .line 142
    .line 143
    const-string p3, "unbalanced braces { ... }"

    .line 144
    .line 145
    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 146
    .line 147
    .line 148
    throw p2

    .line 149
    :cond_11
    new-instance p2, Lorg/mvel2/CompileException;

    .line 150
    .line 151
    const-string p3, "unbalanced braces [ ... ]"

    .line 152
    .line 153
    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 154
    .line 155
    .line 156
    throw p2

    .line 157
    :cond_12
    new-instance p2, Lorg/mvel2/CompileException;

    .line 158
    .line 159
    const-string p3, "unbalanced braces ( ... )"

    .line 160
    .line 161
    invoke-direct {p2, p3, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 162
    .line 163
    .line 164
    throw p2
.end method

.method public static d0(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5b

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static e([CIICLorg/mvel2/ParserContext;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const/16 v5, 0x7b

    .line 12
    .line 13
    const/16 v6, 0x5b

    .line 14
    .line 15
    const/16 v7, 0x28

    .line 16
    .line 17
    if-eq v3, v7, :cond_2

    .line 18
    .line 19
    if-eq v3, v6, :cond_1

    .line 20
    .line 21
    if-eq v3, v5, :cond_0

    .line 22
    .line 23
    move v8, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v8, 0x7d

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v8, 0x5d

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 v8, 0x29

    .line 32
    .line 33
    :goto_0
    if-ne v3, v8, :cond_4

    .line 34
    .line 35
    add-int/lit8 v4, v1, 0x1

    .line 36
    .line 37
    :goto_1
    if-eq v4, v2, :cond_14

    .line 38
    .line 39
    aget-char v8, v0, v4

    .line 40
    .line 41
    if-ne v8, v3, :cond_3

    .line 42
    .line 43
    return v4

    .line 44
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    add-int/lit8 v9, v1, 0x1

    .line 48
    .line 49
    const/4 v10, 0x1

    .line 50
    const/4 v11, 0x0

    .line 51
    move v12, v10

    .line 52
    :goto_2
    if-ge v9, v2, :cond_14

    .line 53
    .line 54
    aget-char v13, v0, v9

    .line 55
    .line 56
    invoke-static {v13}, Lorg/mvel2/util/m;->q0(C)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const/16 v14, 0xd

    .line 61
    .line 62
    const/16 v15, 0xa

    .line 63
    .line 64
    if-eqz v13, :cond_7

    .line 65
    .line 66
    aget-char v13, v0, v9

    .line 67
    .line 68
    if-eq v13, v15, :cond_5

    .line 69
    .line 70
    if-eq v13, v14, :cond_13

    .line 71
    .line 72
    goto :goto_6

    .line 73
    :cond_5
    if-eqz v4, :cond_6

    .line 74
    .line 75
    int-to-short v13, v9

    .line 76
    invoke-virtual {v4, v13}, Lorg/mvel2/ParserContext;->setLineOffset(I)V

    .line 77
    .line 78
    .line 79
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_7
    if-ge v9, v2, :cond_d

    .line 83
    .line 84
    aget-char v13, v0, v9

    .line 85
    .line 86
    const/16 v5, 0x2f

    .line 87
    .line 88
    if-ne v13, v5, :cond_d

    .line 89
    .line 90
    add-int/lit8 v13, v9, 0x1

    .line 91
    .line 92
    if-ne v13, v2, :cond_8

    .line 93
    .line 94
    return v9

    .line 95
    :cond_8
    aget-char v6, v0, v13

    .line 96
    .line 97
    if-ne v6, v5, :cond_9

    .line 98
    .line 99
    move v9, v13

    .line 100
    :goto_3
    if-ge v9, v2, :cond_d

    .line 101
    .line 102
    aget-char v5, v0, v9

    .line 103
    .line 104
    if-eq v5, v15, :cond_d

    .line 105
    .line 106
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_9
    const/16 v13, 0x2a

    .line 110
    .line 111
    if-ne v6, v13, :cond_d

    .line 112
    .line 113
    add-int/lit8 v9, v9, 0x2

    .line 114
    .line 115
    :goto_4
    if-eq v9, v2, :cond_d

    .line 116
    .line 117
    aget-char v6, v0, v9

    .line 118
    .line 119
    if-eq v6, v15, :cond_b

    .line 120
    .line 121
    if-eq v6, v14, :cond_b

    .line 122
    .line 123
    if-eq v6, v13, :cond_a

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_a
    add-int/lit8 v6, v9, 0x1

    .line 127
    .line 128
    if-ge v6, v2, :cond_b

    .line 129
    .line 130
    aget-char v6, v0, v6

    .line 131
    .line 132
    if-ne v6, v5, :cond_b

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_b
    if-eqz v4, :cond_c

    .line 136
    .line 137
    int-to-short v6, v9

    .line 138
    invoke-virtual {v4, v6}, Lorg/mvel2/ParserContext;->setLineOffset(I)V

    .line 139
    .line 140
    .line 141
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 142
    .line 143
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_d
    :goto_6
    if-ne v9, v2, :cond_e

    .line 147
    .line 148
    return v9

    .line 149
    :cond_e
    aget-char v5, v0, v9

    .line 150
    .line 151
    const/16 v6, 0x27

    .line 152
    .line 153
    if-eq v5, v6, :cond_12

    .line 154
    .line 155
    const/16 v6, 0x22

    .line 156
    .line 157
    if-ne v5, v6, :cond_f

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_f
    if-ne v5, v3, :cond_10

    .line 161
    .line 162
    add-int/lit8 v12, v12, 0x1

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_10
    if-ne v5, v8, :cond_13

    .line 166
    .line 167
    add-int/lit8 v12, v12, -0x1

    .line 168
    .line 169
    if-nez v12, :cond_13

    .line 170
    .line 171
    if-eqz v4, :cond_11

    .line 172
    .line 173
    invoke-virtual {v4, v11}, Lorg/mvel2/ParserContext;->incrementLineCount(I)I

    .line 174
    .line 175
    .line 176
    :cond_11
    return v9

    .line 177
    :cond_12
    :goto_7
    invoke-static {v5, v0, v9, v2}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    :cond_13
    :goto_8
    add-int/2addr v9, v10

    .line 182
    const/16 v5, 0x7b

    .line 183
    .line 184
    const/16 v6, 0x5b

    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_14
    if-eq v3, v7, :cond_17

    .line 189
    .line 190
    const/16 v2, 0x5b

    .line 191
    .line 192
    if-eq v3, v2, :cond_16

    .line 193
    .line 194
    const/16 v2, 0x7b

    .line 195
    .line 196
    if-eq v3, v2, :cond_15

    .line 197
    .line 198
    new-instance v2, Lorg/mvel2/CompileException;

    .line 199
    .line 200
    const-string v3, "unterminated string literal"

    .line 201
    .line 202
    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 203
    .line 204
    .line 205
    throw v2

    .line 206
    :cond_15
    new-instance v2, Lorg/mvel2/CompileException;

    .line 207
    .line 208
    const-string v3, "unbalanced braces { ... }"

    .line 209
    .line 210
    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 211
    .line 212
    .line 213
    throw v2

    .line 214
    :cond_16
    new-instance v2, Lorg/mvel2/CompileException;

    .line 215
    .line 216
    const-string v3, "unbalanced braces [ ... ]"

    .line 217
    .line 218
    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 219
    .line 220
    .line 221
    throw v2

    .line 222
    :cond_17
    new-instance v2, Lorg/mvel2/CompileException;

    .line 223
    .line 224
    const-string v3, "unbalanced braces ( ... )"

    .line 225
    .line 226
    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 227
    .line 228
    .line 229
    throw v2
.end method

.method private static e0(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Integer;

    .line 4
    .line 5
    if-eq p0, v0, :cond_10

    .line 6
    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    const-class v0, [I

    .line 12
    .line 13
    const-class v1, [Ljava/lang/Integer;

    .line 14
    .line 15
    if-eq p0, v0, :cond_10

    .line 16
    .line 17
    if-ne p0, v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    const-class v1, Ljava/lang/Character;

    .line 24
    .line 25
    if-eq p0, v0, :cond_10

    .line 26
    .line 27
    if-ne p0, v1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    const-class v0, [C

    .line 32
    .line 33
    const-class v1, [Ljava/lang/Character;

    .line 34
    .line 35
    if-eq p0, v0, :cond_10

    .line 36
    .line 37
    if-ne p0, v1, :cond_3

    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-class v1, Ljava/lang/Long;

    .line 44
    .line 45
    if-eq p0, v0, :cond_10

    .line 46
    .line 47
    if-ne p0, v1, :cond_4

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_4
    const-class v0, [J

    .line 52
    .line 53
    const-class v1, [Ljava/lang/Long;

    .line 54
    .line 55
    if-eq p0, v0, :cond_10

    .line 56
    .line 57
    if-ne p0, v1, :cond_5

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    const-class v1, Ljava/lang/Short;

    .line 64
    .line 65
    if-eq p0, v0, :cond_10

    .line 66
    .line 67
    if-ne p0, v1, :cond_6

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    const-class v0, [S

    .line 71
    .line 72
    const-class v1, [Ljava/lang/Short;

    .line 73
    .line 74
    if-eq p0, v0, :cond_10

    .line 75
    .line 76
    if-ne p0, v1, :cond_7

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    const-class v1, Ljava/lang/Double;

    .line 82
    .line 83
    if-eq p0, v0, :cond_10

    .line 84
    .line 85
    if-ne p0, v1, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    const-class v0, [D

    .line 89
    .line 90
    const-class v1, [Ljava/lang/Double;

    .line 91
    .line 92
    if-eq p0, v0, :cond_10

    .line 93
    .line 94
    if-ne p0, v1, :cond_9

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    const-class v1, Ljava/lang/Float;

    .line 100
    .line 101
    if-eq p0, v0, :cond_10

    .line 102
    .line 103
    if-ne p0, v1, :cond_a

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_a
    const-class v0, [F

    .line 107
    .line 108
    const-class v1, [Ljava/lang/Float;

    .line 109
    .line 110
    if-eq p0, v0, :cond_10

    .line 111
    .line 112
    if-ne p0, v1, :cond_b

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 116
    .line 117
    const-class v1, Ljava/lang/Boolean;

    .line 118
    .line 119
    if-eq p0, v0, :cond_10

    .line 120
    .line 121
    if-ne p0, v1, :cond_c

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_c
    const-class v0, [Z

    .line 125
    .line 126
    const-class v1, [Ljava/lang/Boolean;

    .line 127
    .line 128
    if-eq p0, v0, :cond_10

    .line 129
    .line 130
    if-ne p0, v1, :cond_d

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 134
    .line 135
    const-class v1, Ljava/lang/Byte;

    .line 136
    .line 137
    if-eq p0, v0, :cond_10

    .line 138
    .line 139
    if-ne p0, v1, :cond_e

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_e
    const-class v0, [B

    .line 143
    .line 144
    const-class v1, [Ljava/lang/Byte;

    .line 145
    .line 146
    if-eq p0, v0, :cond_10

    .line 147
    .line 148
    if-ne p0, v1, :cond_f

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_f
    return-object p0

    .line 152
    :cond_10
    :goto_0
    return-object v1
.end method

.method public static f0(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    .line 10
    aget-char v3, p0, v2

    .line 11
    .line 12
    const/16 v4, 0x2e

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    return v5

    .line 18
    :cond_0
    invoke-static {v3}, Lorg/mvel2/util/m;->c0(I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    return v5

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return v1
.end method

.method public static g([CII)[Ljava/lang/String;
    .locals 6

    .line 1
    add-int v0, p1, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v3, p1

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v3, v0, :cond_5

    .line 7
    .line 8
    aget-char v4, p0, v3

    .line 9
    .line 10
    const/16 v5, 0x22

    .line 11
    .line 12
    if-eq v4, v5, :cond_3

    .line 13
    .line 14
    const/16 v5, 0x28

    .line 15
    .line 16
    if-eq v4, v5, :cond_2

    .line 17
    .line 18
    const/16 v5, 0x29

    .line 19
    .line 20
    if-eq v4, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    if-nez v1, :cond_4

    .line 24
    .line 25
    add-int/lit8 v4, v2, -0x1

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v5, v2, :cond_1

    .line 29
    .line 30
    add-int/2addr v3, v5

    .line 31
    sub-int p2, v3, p1

    .line 32
    .line 33
    invoke-static {p0, p1, p2}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sub-int/2addr v0, v3

    .line 38
    invoke-static {p0, v3, v0}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    filled-new-array {p1, p0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    move v2, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    xor-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 60
    .line 61
    .line 62
    filled-new-array {v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static g0(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0}, Lorg/mvel2/util/m;->h0(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    instance-of v1, p0, [C

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    new-instance v0, Ljava/lang/String;

    .line 21
    .line 22
    check-cast p0, [C

    .line 23
    .line 24
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/mvel2/util/m;->h0(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    instance-of v1, p0, Ljava/math/BigDecimal;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    instance-of v1, p0, Ljava/math/BigInteger;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    instance-of v1, p0, Ljava/lang/Float;

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    instance-of v1, p0, Ljava/lang/Double;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    instance-of v1, p0, Ljava/lang/Long;

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    instance-of v1, p0, Ljava/lang/Short;

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    instance-of p0, p0, Ljava/lang/Character;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    :cond_3
    const/4 v0, 0x1

    .line 65
    :cond_4
    return v0
.end method

.method public static h(C[CII)I
    .locals 3

    .line 1
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    if-ge v0, p3, :cond_1

    .line 4
    .line 5
    aget-char v1, p1, v0

    .line 6
    .line 7
    if-eq v1, p0, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x5c

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    add-int/lit8 p2, p2, 0x2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-ge v0, p3, :cond_2

    .line 19
    .line 20
    aget-char p2, p1, v0

    .line 21
    .line 22
    if-ne p2, p0, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    new-instance p0, Lorg/mvel2/CompileException;

    .line 26
    .line 27
    const-string p2, "unterminated string literal"

    .line 28
    .line 29
    invoke-direct {p0, p2, p1, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public static h0(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-le v0, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x2d

    .line 14
    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    :cond_0
    move v3, v1

    .line 18
    move v4, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/16 v5, 0x7e

    .line 25
    .line 26
    if-ne v3, v5, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, v4, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    move v4, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v4, v1

    .line 38
    move v3, v2

    .line 39
    :goto_0
    if-ge v3, v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-static {v5}, Lorg/mvel2/util/m;->b0(I)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_4

    .line 50
    .line 51
    const/16 v6, 0x2e

    .line 52
    .line 53
    if-ne v5, v6, :cond_3

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    move v4, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    return v2

    .line 60
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    if-lez v0, :cond_6

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_6
    move v1, v2

    .line 67
    :goto_2
    return v1
.end method

.method public static i([CIILorg/mvel2/ParserContext;)I
    .locals 2

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    const/16 v1, 0x22

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v1, 0x2c

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x3b

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x5b

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x7b

    .line 23
    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/16 v1, 0x27

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x28

    .line 35
    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {p0, p1, p2, v0, p3}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    array-length v0, p0

    .line 44
    if-lt p1, v0, :cond_3

    .line 45
    .line 46
    :cond_1
    return p1

    .line 47
    :cond_2
    array-length v1, p0

    .line 48
    invoke-static {v0, p0, p1, v1}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    return p1
.end method

.method public static i0([CII)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    add-int v3, v1, v2

    .line 8
    .line 9
    const/16 v4, 0x2d

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-le v2, v5, :cond_2

    .line 13
    .line 14
    aget-char v6, v0, v1

    .line 15
    .line 16
    if-eq v6, v4, :cond_0

    .line 17
    .line 18
    const/16 v7, 0x7e

    .line 19
    .line 20
    if-eq v6, v7, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    add-int/lit8 v6, v1, 0x1

    .line 24
    .line 25
    aget-char v7, v0, v6

    .line 26
    .line 27
    if-ne v7, v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v6, v1

    .line 31
    :goto_0
    add-int/2addr v6, v5

    .line 32
    :goto_1
    move v7, v5

    .line 33
    goto :goto_3

    .line 34
    :cond_2
    :goto_2
    move v6, v1

    .line 35
    goto :goto_1

    .line 36
    :goto_3
    if-ge v6, v3, :cond_15

    .line 37
    .line 38
    aget-char v9, v0, v6

    .line 39
    .line 40
    invoke-static {v9}, Lorg/mvel2/util/m;->b0(I)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-nez v10, :cond_14

    .line 45
    .line 46
    const/16 v10, 0x2e

    .line 47
    .line 48
    if-eqz v7, :cond_3

    .line 49
    .line 50
    if-ne v9, v10, :cond_3

    .line 51
    .line 52
    move v8, v4

    .line 53
    const/4 v7, 0x0

    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_3
    const-string v11, "invalid number literal: "

    .line 57
    .line 58
    const/16 v12, 0x6c

    .line 59
    .line 60
    const/16 v13, 0x66

    .line 61
    .line 62
    const/16 v14, 0x4c

    .line 63
    .line 64
    const/16 v15, 0x49

    .line 65
    .line 66
    const/16 v4, 0x46

    .line 67
    .line 68
    const/16 v8, 0x42

    .line 69
    .line 70
    if-eq v2, v5, :cond_6

    .line 71
    .line 72
    add-int/lit8 v5, v3, -0x1

    .line 73
    .line 74
    if-ne v6, v5, :cond_6

    .line 75
    .line 76
    if-eq v9, v10, :cond_5

    .line 77
    .line 78
    if-eq v9, v8, :cond_4

    .line 79
    .line 80
    const/16 v0, 0x44

    .line 81
    .line 82
    if-eq v9, v0, :cond_4

    .line 83
    .line 84
    if-eq v9, v4, :cond_4

    .line 85
    .line 86
    if-eq v9, v15, :cond_4

    .line 87
    .line 88
    if-eq v9, v14, :cond_4

    .line 89
    .line 90
    const/16 v0, 0x64

    .line 91
    .line 92
    if-eq v9, v0, :cond_4

    .line 93
    .line 94
    if-eq v9, v13, :cond_4

    .line 95
    .line 96
    if-eq v9, v12, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    return v0

    .line 100
    :cond_4
    const/4 v0, 0x1

    .line 101
    return v0

    .line 102
    :cond_5
    new-instance v2, Lorg/mvel2/CompileException;

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    new-instance v4, Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-direct {v2, v3, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 125
    .line 126
    .line 127
    throw v2

    .line 128
    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 129
    .line 130
    if-ne v6, v5, :cond_e

    .line 131
    .line 132
    const/16 v5, 0x78

    .line 133
    .line 134
    if-ne v9, v5, :cond_e

    .line 135
    .line 136
    aget-char v5, v0, v1

    .line 137
    .line 138
    const/16 v10, 0x30

    .line 139
    .line 140
    if-ne v5, v10, :cond_e

    .line 141
    .line 142
    const/4 v5, 0x1

    .line 143
    add-int/2addr v6, v5

    .line 144
    :goto_4
    if-ge v6, v3, :cond_c

    .line 145
    .line 146
    aget-char v1, v0, v6

    .line 147
    .line 148
    invoke-static {v1}, Lorg/mvel2/util/m;->b0(I)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_b

    .line 153
    .line 154
    const/16 v5, 0x41

    .line 155
    .line 156
    if-lt v1, v5, :cond_7

    .line 157
    .line 158
    if-le v1, v4, :cond_b

    .line 159
    .line 160
    :cond_7
    const/16 v5, 0x61

    .line 161
    .line 162
    if-lt v1, v5, :cond_8

    .line 163
    .line 164
    if-le v1, v13, :cond_b

    .line 165
    .line 166
    :cond_8
    const/4 v0, 0x1

    .line 167
    sub-int/2addr v2, v0

    .line 168
    if-ne v6, v2, :cond_9

    .line 169
    .line 170
    if-eq v1, v8, :cond_a

    .line 171
    .line 172
    if-eq v1, v15, :cond_a

    .line 173
    .line 174
    if-eq v1, v14, :cond_a

    .line 175
    .line 176
    if-eq v1, v12, :cond_a

    .line 177
    .line 178
    :cond_9
    const/4 v0, 0x0

    .line 179
    nop

    .line 180
    :cond_a
    return v0

    .line 181
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    add-int/lit8 v0, v2, -0x2

    .line 185
    .line 186
    if-lez v0, :cond_d

    .line 187
    .line 188
    const/4 v5, 0x1

    .line 189
    goto :goto_5

    .line 190
    :cond_d
    const/4 v5, 0x0

    .line 191
    :goto_5
    return v5

    .line 192
    :cond_e
    if-eq v6, v1, :cond_12

    .line 193
    .line 194
    add-int/lit8 v4, v6, 0x1

    .line 195
    .line 196
    if-ge v4, v3, :cond_12

    .line 197
    .line 198
    const/16 v5, 0x45

    .line 199
    .line 200
    if-eq v9, v5, :cond_f

    .line 201
    .line 202
    const/16 v5, 0x65

    .line 203
    .line 204
    if-ne v9, v5, :cond_12

    .line 205
    .line 206
    :cond_f
    aget-char v5, v0, v4

    .line 207
    .line 208
    const/16 v8, 0x2d

    .line 209
    .line 210
    if-eq v5, v8, :cond_11

    .line 211
    .line 212
    const/16 v9, 0x2b

    .line 213
    .line 214
    if-ne v5, v9, :cond_10

    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_10
    move v6, v4

    .line 218
    :goto_6
    const/4 v5, 0x1

    .line 219
    goto :goto_8

    .line 220
    :cond_11
    :goto_7
    add-int/lit8 v6, v6, 0x2

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_12
    if-ne v6, v1, :cond_13

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    return v4

    .line 227
    :cond_13
    new-instance v3, Lorg/mvel2/CompileException;

    .line 228
    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    new-instance v5, Ljava/lang/String;

    .line 238
    .line 239
    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-direct {v3, v2, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 250
    .line 251
    .line 252
    throw v3

    .line 253
    :cond_14
    move v8, v4

    .line 254
    :goto_8
    add-int/2addr v6, v5

    .line 255
    move v4, v8

    .line 256
    goto/16 :goto_3

    .line 257
    .line 258
    :cond_15
    const/4 v4, 0x0

    .line 259
    if-le v3, v1, :cond_16

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_16
    move v5, v4

    .line 263
    :goto_9
    return v5
.end method

.method public static j([CIILorg/mvel2/ParserContext;)I
    .locals 2

    .line 1
    :goto_0
    array-length v0, p0

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    aget-char v0, p0, p1

    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/16 v1, 0x5b

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x7b

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0, p1, p2, v1, p3}, Lorg/mvel2/util/m;->e([CIICLorg/mvel2/ParserContext;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    return p1
.end method

.method public static j0(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/Class;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-eq p0, v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    if-eq p0, v1, :cond_2

    .line 23
    .line 24
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    if-eq p0, v1, :cond_2

    .line 27
    .line 28
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq p0, v1, :cond_2

    .line 31
    .line 32
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-eq p0, v1, :cond_2

    .line 35
    .line 36
    const-class v1, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/mvel2/util/m;->o0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Lorg/mvel2/util/m;->b0(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "not an identifier: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "illegal use of reserved word: "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public static k0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const-class v0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Lorg/mvel2/util/m;->f(Ljava/lang/Class;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    check-cast p0, Ljava/util/Collection;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    check-cast p0, Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_4
    check-cast p0, [Ljava/lang/Object;

    .line 72
    .line 73
    array-length v1, p0

    .line 74
    move v2, v0

    .line 75
    :goto_0
    if-ge v2, v1, :cond_7

    .line 76
    .line 77
    aget-object v3, p0, v2

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    if-nez v3, :cond_5

    .line 83
    .line 84
    return v4

    .line 85
    :cond_5
    const/16 v5, 0x12

    .line 86
    .line 87
    invoke-static {v3, v5, p1}, La00/a;->g(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_6

    .line 98
    .line 99
    return v4

    .line 100
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_7
    return v0
.end method

.method private static l0(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

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
    invoke-static {p0}, Lorg/mvel2/util/m;->O0(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    if-eq p0, v0, :cond_7

    .line 27
    .line 28
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-eq p0, v0, :cond_7

    .line 35
    .line 36
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    if-ne p1, v0, :cond_4

    .line 39
    .line 40
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-eq p0, v0, :cond_7

    .line 43
    .line 44
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    if-ne p1, v0, :cond_5

    .line 47
    .line 48
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    if-eq p0, v2, :cond_7

    .line 51
    .line 52
    :cond_5
    if-ne p1, v0, :cond_6

    .line 53
    .line 54
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    if-eq p0, v0, :cond_7

    .line 57
    .line 58
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne p1, v0, :cond_8

    .line 61
    .line 62
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 63
    .line 64
    if-ne p0, p1, :cond_8

    .line 65
    .line 66
    :cond_7
    const/4 v1, 0x1

    .line 67
    :cond_8
    return v1
.end method

.method private static m([ZLjava/lang/Boolean;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-boolean v3, p0, v2

    .line 11
    .line 12
    if-ne v3, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static m0(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const-class v0, Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const-class v0, Ljava/lang/Long;

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const-class v0, Ljava/lang/Double;

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const-class v0, Ljava/lang/Float;

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const-class v0, Ljava/lang/Character;

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const-class v0, Ljava/lang/Short;

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const-class v0, Ljava/lang/Byte;

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method

.method private static n([BLjava/lang/Byte;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    if-ne v3, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static n0([CII)Z
    .locals 1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_1

    .line 2
    .line 3
    aget-char v0, p0, p1

    .line 4
    .line 5
    invoke-static {v0}, Lorg/mvel2/util/m;->c0(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private static o([CLjava/lang/Character;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-char v3, p0, v2

    .line 11
    .line 12
    if-ne v3, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static o0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->OPERATORS:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private static p([DLjava/lang/Double;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    array-length p1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, p1, :cond_1

    .line 9
    .line 10
    aget-wide v4, p0, v3

    .line 11
    .line 12
    cmpl-double v4, v4, v0

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

.method public static p0([CI)Z
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    :goto_0
    array-length v0, p0

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    aget-char v0, p0, p1

    .line 10
    .line 11
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    array-length v0, p0

    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    aget-char p0, p0, p1

    .line 24
    .line 25
    const/16 p1, 0x3b

    .line 26
    .line 27
    if-eq p0, p1, :cond_3

    .line 28
    .line 29
    :cond_2
    const/4 v1, 0x1

    .line 30
    :cond_3
    return v1
.end method

.method private static q([FLjava/lang/Float;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    cmpl-float v3, v3, p1

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method public static q0(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static r([ILjava/lang/Integer;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    if-ne v3, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static r0(Ljava/math/BigDecimal;I)Ljava/lang/Object;
    .locals 4

    .line 1
    const/16 v0, 0x6d

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 v0, 0x6b

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x7fffffff

    .line 21
    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static s([JLjava/lang/Long;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    array-length p1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, p1, :cond_1

    .line 9
    .line 10
    aget-wide v4, p0, v3

    .line 11
    .line 12
    cmp-long v4, v4, v0

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v2
.end method

.method public static s0([CI)I
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    :goto_0
    array-length v0, p0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    aget-char v0, p0, p1

    .line 10
    .line 11
    invoke-static {v0}, Lorg/mvel2/util/m;->q0(C)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return p1

    .line 21
    :cond_1
    new-instance v0, Lorg/mvel2/CompileException;

    .line 22
    .line 23
    const-string v1, "unexpected end of statement"

    .line 24
    .line 25
    invoke-direct {v0, v1, p0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method private static t(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, [Z

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->m([ZLjava/lang/Boolean;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    return v2

    .line 32
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    instance-of v0, p1, Ljava/lang/Integer;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    check-cast p0, [I

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->r([ILjava/lang/Integer;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v3

    .line 52
    :goto_1
    return v2

    .line 53
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    if-ne v0, v1, :cond_5

    .line 56
    .line 57
    instance-of v0, p1, Ljava/lang/Long;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    check-cast p0, [J

    .line 62
    .line 63
    check-cast p1, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->s([JLjava/lang/Long;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v2, v3

    .line 73
    :goto_2
    return v2

    .line 74
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    if-ne v0, v1, :cond_7

    .line 77
    .line 78
    instance-of v0, p1, Ljava/lang/Double;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    check-cast p0, [D

    .line 83
    .line 84
    check-cast p1, Ljava/lang/Double;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->p([DLjava/lang/Double;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_6

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_6
    move v2, v3

    .line 94
    :goto_3
    return v2

    .line 95
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 96
    .line 97
    if-ne v0, v1, :cond_9

    .line 98
    .line 99
    instance-of v0, p1, Ljava/lang/Float;

    .line 100
    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    check-cast p0, [F

    .line 104
    .line 105
    check-cast p1, Ljava/lang/Float;

    .line 106
    .line 107
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->q([FLjava/lang/Float;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    if-eqz p0, :cond_8

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    move v2, v3

    .line 115
    :goto_4
    return v2

    .line 116
    :cond_9
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    if-ne v0, v1, :cond_b

    .line 119
    .line 120
    instance-of v0, p1, Ljava/lang/Character;

    .line 121
    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    check-cast p0, [C

    .line 125
    .line 126
    check-cast p1, Ljava/lang/Character;

    .line 127
    .line 128
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->o([CLjava/lang/Character;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_a

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_a
    move v2, v3

    .line 136
    :goto_5
    return v2

    .line 137
    :cond_b
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 138
    .line 139
    if-ne v0, v1, :cond_d

    .line 140
    .line 141
    instance-of v0, p1, Ljava/lang/Short;

    .line 142
    .line 143
    if-eqz v0, :cond_c

    .line 144
    .line 145
    check-cast p0, [S

    .line 146
    .line 147
    check-cast p1, Ljava/lang/Short;

    .line 148
    .line 149
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->u([SLjava/lang/Short;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_c

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_c
    move v2, v3

    .line 157
    :goto_6
    return v2

    .line 158
    :cond_d
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 159
    .line 160
    if-ne v0, v1, :cond_f

    .line 161
    .line 162
    instance-of v0, p1, Ljava/lang/Byte;

    .line 163
    .line 164
    if-eqz v0, :cond_e

    .line 165
    .line 166
    check-cast p0, [B

    .line 167
    .line 168
    check-cast p1, Ljava/lang/Byte;

    .line 169
    .line 170
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->n([BLjava/lang/Byte;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-eqz p0, :cond_e

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_e
    move v2, v3

    .line 178
    :goto_7
    return v2

    .line 179
    :cond_f
    return v3
.end method

.method public static t0([CII)I
    .locals 8

    .line 1
    const/16 v0, 0x2d

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le p2, v1, :cond_1

    .line 5
    .line 6
    aget-char v2, p0, p1

    .line 7
    .line 8
    if-ne v2, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v2, p1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v3, 0x7e

    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x1

    .line 18
    .line 19
    aget-char v3, p0, v2

    .line 20
    .line 21
    if-ne v3, v0, :cond_2

    .line 22
    .line 23
    add-int/lit8 v2, p1, 0x2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v2, p1

    .line 27
    :cond_2
    :goto_0
    add-int/2addr p1, p2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_1
    const/4 v4, -0x1

    .line 30
    const/16 v5, 0x65

    .line 31
    .line 32
    if-ge v2, p1, :cond_7

    .line 33
    .line 34
    aget-char v6, p0, v2

    .line 35
    .line 36
    invoke-static {v6}, Lorg/mvel2/util/m;->b0(I)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_6

    .line 41
    .line 42
    const/16 v3, 0x2e

    .line 43
    .line 44
    if-eq v6, v3, :cond_4

    .line 45
    .line 46
    const/16 v3, 0x45

    .line 47
    .line 48
    if-eq v6, v3, :cond_3

    .line 49
    .line 50
    if-eq v6, v5, :cond_3

    .line 51
    .line 52
    return v4

    .line 53
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 54
    .line 55
    if-ge v2, p1, :cond_5

    .line 56
    .line 57
    aget-char v4, p0, v3

    .line 58
    .line 59
    if-ne v4, v0, :cond_5

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    :cond_4
    :goto_2
    move v3, v1

    .line 64
    goto :goto_3

    .line 65
    :cond_5
    move v2, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    :goto_3
    add-int/2addr v2, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_7
    if-eqz p2, :cond_a

    .line 70
    .line 71
    if-eqz v3, :cond_8

    .line 72
    .line 73
    const/16 p0, 0x67

    .line 74
    .line 75
    return p0

    .line 76
    :cond_8
    const/16 p0, 0x9

    .line 77
    .line 78
    if-le p2, p0, :cond_9

    .line 79
    .line 80
    const/16 p0, 0x66

    .line 81
    .line 82
    return p0

    .line 83
    :cond_9
    return v5

    .line 84
    :cond_a
    return v4
.end method

.method private static u([SLjava/lang/Short;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    aget-short v3, p0, v2

    .line 11
    .line 12
    if-ne v3, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v1
.end method

.method public static u0(C)I
    .locals 1

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    if-eq p0, v0, :cond_9

    .line 4
    .line 5
    const/16 v0, 0x26

    .line 6
    .line 7
    if-eq p0, v0, :cond_8

    .line 8
    .line 9
    const/16 v0, 0x2a

    .line 10
    .line 11
    if-eq p0, v0, :cond_7

    .line 12
    .line 13
    const/16 v0, 0x2b

    .line 14
    .line 15
    if-eq p0, v0, :cond_6

    .line 16
    .line 17
    const/16 v0, 0x2f

    .line 18
    .line 19
    if-eq p0, v0, :cond_5

    .line 20
    .line 21
    const/16 v0, 0x5e

    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const/16 v0, 0x7c

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    const/16 v0, 0xbb

    .line 30
    .line 31
    if-eq p0, v0, :cond_2

    .line 32
    .line 33
    const/16 v0, 0xab

    .line 34
    .line 35
    if-eq p0, v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0xac

    .line 38
    .line 39
    if-eq p0, v0, :cond_0

    .line 40
    .line 41
    const/4 p0, -0x1

    .line 42
    return p0

    .line 43
    :cond_0
    const/16 p0, 0xb

    .line 44
    .line 45
    return p0

    .line 46
    :cond_1
    const/16 p0, 0xa

    .line 47
    .line 48
    return p0

    .line 49
    :cond_2
    const/16 p0, 0x9

    .line 50
    .line 51
    return p0

    .line 52
    :cond_3
    const/4 p0, 0x7

    .line 53
    return p0

    .line 54
    :cond_4
    const/16 p0, 0x8

    .line 55
    .line 56
    return p0

    .line 57
    :cond_5
    const/4 p0, 0x3

    .line 58
    return p0

    .line 59
    :cond_6
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_7
    const/4 p0, 0x2

    .line 62
    return p0

    .line 63
    :cond_8
    const/4 p0, 0x6

    .line 64
    return p0

    .line 65
    :cond_9
    const/4 p0, 0x4

    .line 66
    return p0
.end method

.method public static v(Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    sget-object v0, Lorg/mvel2/util/m;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Ljava/util/WeakHashMap;

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Class;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    const/4 v0, 0x1

    .line 58
    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eq p1, v3, :cond_3

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_3
    throw v2
.end method

.method public static v0(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isImportInjectionRequired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowBootstrapBypass()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/mvel2/compiler/CompiledExpression;->isSingleNode()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Lorg/mvel2/util/m;->b(Lorg/mvel2/compiler/CompiledExpression;)Ljava/io/Serializable;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_0
    return-object p0
.end method

.method public static w(Ljava/lang/String;[CIII)[C
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    return-object p1

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p4, :cond_8

    .line 8
    .line 9
    if-eq p4, v0, :cond_7

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq p4, v2, :cond_6

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq p4, v2, :cond_5

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    if-eq p4, v2, :cond_4

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    if-eq p4, v2, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x7

    .line 24
    if-eq p4, v2, :cond_2

    .line 25
    .line 26
    const/16 v2, 0x14

    .line 27
    .line 28
    if-eq p4, v2, :cond_1

    .line 29
    .line 30
    packed-switch p4, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    move p4, v1

    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    const/16 p4, 0xac

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const/16 p4, 0xab

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const/16 p4, 0xbb

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 p4, 0x23

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/16 p4, 0x7c

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/16 p4, 0x26

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const/16 p4, 0x25

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    const/16 p4, 0x2f

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    const/16 p4, 0x2a

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_7
    const/16 p4, 0x2d

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_8
    const/16 p4, 0x2b

    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, p3

    .line 76
    add-int/2addr v3, v0

    .line 77
    new-array v3, v3, [C

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    aput-char p4, v3, v1

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    add-int/2addr p0, v0

    .line 97
    invoke-static {p1, p2, v3, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    return-object v3

    .line 101
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w0([C)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    const/16 v2, 0x28

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    aget-char v1, p0, v0

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v3

    .line 19
    :goto_1
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    add-int/lit8 v1, v0, -0x1

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Lorg/mvel2/util/m;->c([CIC)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    invoke-static {p0, v0, v2}, Lorg/mvel2/util/m;->y0([CII)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static x([CII)Ljava/lang/String;
    .locals 2

    .line 1
    add-int/2addr p2, p1

    .line 2
    array-length v0, p0

    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    :goto_0
    const/16 v0, 0x21

    .line 12
    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    aget-char v1, p0, p1

    .line 16
    .line 17
    if-ge v1, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    if-eq p2, p1, :cond_2

    .line 23
    .line 24
    add-int/lit8 v1, p2, -0x1

    .line 25
    .line 26
    aget-char v1, p0, v1

    .line 27
    .line 28
    if-ge v1, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 34
    .line 35
    sub-int/2addr p2, p1

    .line 36
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static x0([CII)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    array-length p2, p0

    .line 10
    :cond_0
    add-int v1, p1, p2

    .line 11
    .line 12
    move v2, p1

    .line 13
    :goto_0
    if-ge p1, v1, :cond_a

    .line 14
    .line 15
    aget-char v3, p0, p1

    .line 16
    .line 17
    const/16 v4, 0x22

    .line 18
    .line 19
    if-eq v3, v4, :cond_8

    .line 20
    .line 21
    const/16 v4, 0x2c

    .line 22
    .line 23
    if-eq v3, v4, :cond_4

    .line 24
    .line 25
    const/16 v4, 0x5b

    .line 26
    .line 27
    if-eq v3, v4, :cond_3

    .line 28
    .line 29
    const/16 v4, 0x7b

    .line 30
    .line 31
    if-eq v3, v4, :cond_3

    .line 32
    .line 33
    const/16 v4, 0x27

    .line 34
    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    const/16 v4, 0x28

    .line 38
    .line 39
    if-eq v3, v4, :cond_3

    .line 40
    .line 41
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_9

    .line 46
    .line 47
    aget-char v3, p0, p1

    .line 48
    .line 49
    invoke-static {v3}, Lorg/mvel2/util/m;->c0(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_1
    new-instance p1, Lorg/mvel2/CompileException;

    .line 57
    .line 58
    const-string p2, "expected parameter"

    .line 59
    .line 60
    invoke-direct {p1, p2, p0, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    array-length v3, p0

    .line 65
    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-static {p0, p1, v3}, Lorg/mvel2/util/m;->c([CIC)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    if-le p1, v2, :cond_6

    .line 76
    .line 77
    :goto_1
    aget-char v3, p0, v2

    .line 78
    .line 79
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_5

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 89
    .line 90
    sub-int v4, p1, v2

    .line 91
    .line 92
    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_2
    aget-char v2, p0, p1

    .line 102
    .line 103
    invoke-static {v2}, Lorg/mvel2/util/m;->q0(C)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_7

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    add-int/lit8 v2, p1, 0x1

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_8
    array-length v3, p0

    .line 116
    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    :cond_9
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_a
    if-ge v2, v1, :cond_b

    .line 124
    .line 125
    if-le p1, v2, :cond_b

    .line 126
    .line 127
    sub-int/2addr p1, v2

    .line 128
    invoke-static {p0, v2, p1}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-lez p1, :cond_c

    .line 137
    .line 138
    invoke-static {p0}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_c

    .line 150
    .line 151
    invoke-static {p0, v2, p2}, Lorg/mvel2/util/m;->x([CII)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-lez p1, :cond_c

    .line 160
    .line 161
    invoke-static {p0}, Lorg/mvel2/util/m;->k(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    new-array p0, p0, [Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    check-cast p0, [Ljava/lang/String;

    .line 178
    .line 179
    return-object p0
.end method

.method private static y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v2, :cond_2

    .line 13
    .line 14
    aget-object v5, v1, v4

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    array-length v6, v5

    .line 21
    move v7, v3

    .line 22
    :goto_1
    if-ge v7, v6, :cond_1

    .line 23
    .line 24
    aget-object v8, v5, v7

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    array-length v9, v9

    .line 31
    if-nez v9, :cond_0

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-eqz v9, :cond_0

    .line 42
    .line 43
    return-object v8

    .line 44
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, p1}, Lorg/mvel2/util/m;->y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/4 p0, 0x0

    .line 66
    :goto_2
    return-object p0
.end method

.method public static y0([CII)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    array-length p2, p0

    .line 10
    :cond_0
    add-int v1, p1, p2

    .line 11
    .line 12
    move v2, p1

    .line 13
    :goto_0
    if-ge p1, v1, :cond_8

    .line 14
    .line 15
    aget-char v3, p0, p1

    .line 16
    .line 17
    const/16 v4, 0x22

    .line 18
    .line 19
    if-eq v3, v4, :cond_7

    .line 20
    .line 21
    const/16 v4, 0x2c

    .line 22
    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    const/16 v4, 0x5b

    .line 26
    .line 27
    if-eq v3, v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x7b

    .line 30
    .line 31
    if-eq v3, v4, :cond_2

    .line 32
    .line 33
    const/16 v4, 0x27

    .line 34
    .line 35
    if-eq v3, v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x28

    .line 38
    .line 39
    if-eq v3, v4, :cond_2

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    array-length v3, p0

    .line 43
    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    invoke-static {p0, p1, v3}, Lorg/mvel2/util/m;->c([CIC)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-le p1, v2, :cond_5

    .line 54
    .line 55
    :goto_1
    aget-char v3, p0, v2

    .line 56
    .line 57
    invoke-static {v3}, Lorg/mvel2/util/m;->q0(C)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    sub-int v3, p1, v2

    .line 67
    .line 68
    invoke-static {p0, v2, v3}, Lorg/mvel2/util/m;->L0([CII)[C

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    aget-char v2, p0, p1

    .line 76
    .line 77
    invoke-static {v2}, Lorg/mvel2/util/m;->q0(C)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    add-int/lit8 p1, p1, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    add-int/lit8 v2, p1, 0x1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_7
    array-length v3, p0

    .line 90
    invoke-static {v4, p0, p1, v3}, Lorg/mvel2/util/m;->h(C[CII)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_8
    if-ge v2, v1, :cond_9

    .line 98
    .line 99
    if-le p1, v2, :cond_9

    .line 100
    .line 101
    sub-int/2addr p1, v2

    .line 102
    invoke-static {p0, v2, p1}, Lorg/mvel2/util/m;->L0([CII)[C

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    array-length p1, p0

    .line 107
    if-lez p1, :cond_a

    .line 108
    .line 109
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_a

    .line 118
    .line 119
    invoke-static {p0, v2, p2}, Lorg/mvel2/util/m;->L0([CII)[C

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    array-length p1, p0

    .line 124
    if-lez p1, :cond_a

    .line 125
    .line 126
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_a
    :goto_4
    return-object v0
.end method

.method public static z(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lorg/mvel2/util/m;->y(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static z0(Ljava/lang/String;[CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    add-int v5, v2, p3

    .line 12
    .line 13
    const-string v7, ""

    .line 14
    .line 15
    move v8, v2

    .line 16
    move v9, v8

    .line 17
    move-object v10, v7

    .line 18
    const/4 v11, -0x1

    .line 19
    :goto_0
    const-string v12, "."

    .line 20
    .line 21
    const-string v13, "operative assignment not possible here"

    .line 22
    .line 23
    if-ge v8, v5, :cond_f

    .line 24
    .line 25
    aget-char v15, v1, v8

    .line 26
    .line 27
    const/16 v6, 0x22

    .line 28
    .line 29
    const/16 v16, 0x1

    .line 30
    .line 31
    if-eq v15, v6, :cond_d

    .line 32
    .line 33
    const/16 v6, 0x25

    .line 34
    .line 35
    const/16 v14, 0x3d

    .line 36
    .line 37
    if-eq v15, v6, :cond_c

    .line 38
    .line 39
    const/16 v6, 0x2f

    .line 40
    .line 41
    if-eq v15, v6, :cond_6

    .line 42
    .line 43
    if-eq v15, v14, :cond_4

    .line 44
    .line 45
    const/16 v6, 0x5b

    .line 46
    .line 47
    if-eq v15, v6, :cond_d

    .line 48
    .line 49
    const/16 v6, 0x7b

    .line 50
    .line 51
    if-eq v15, v6, :cond_d

    .line 52
    .line 53
    const/16 v6, 0x27

    .line 54
    .line 55
    if-eq v15, v6, :cond_d

    .line 56
    .line 57
    const/16 v6, 0x28

    .line 58
    .line 59
    if-eq v15, v6, :cond_d

    .line 60
    .line 61
    packed-switch v15, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :pswitch_0
    if-nez v10, :cond_1

    .line 67
    .line 68
    if-nez v0, :cond_0

    .line 69
    .line 70
    :try_start_0
    new-instance v6, Ljava/lang/String;

    .line 71
    .line 72
    sub-int v11, v8, v9

    .line 73
    .line 74
    invoke-direct {v6, v1, v9, v11}, Ljava/lang/String;-><init>([CII)V

    .line 75
    .line 76
    .line 77
    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_2

    .line 83
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/16 v11, 0x2e

    .line 89
    .line 90
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    sub-int v11, v8, v9

    .line 94
    .line 95
    invoke-virtual {v6, v1, v9, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_2
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    array-length v3, v3

    .line 117
    sub-int v3, v3, p3

    .line 118
    .line 119
    sub-int/2addr v2, v3

    .line 120
    add-int/2addr v9, v2

    .line 121
    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_1
    const/4 v6, -0x1

    .line 129
    if-eq v11, v6, :cond_3

    .line 130
    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    :try_start_1
    new-instance v6, Ljava/lang/String;

    .line 134
    .line 135
    new-instance v13, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    sub-int v13, v8, v9

    .line 154
    .line 155
    invoke-static {v12, v1, v9, v13, v11}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([C)V

    .line 160
    .line 161
    .line 162
    invoke-static {v6, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v3, v10, v6}, Lorg/mvel2/d;->y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto :goto_5

    .line 172
    :cond_2
    new-instance v0, Lorg/mvel2/CompileException;

    .line 173
    .line 174
    invoke-direct {v0, v13, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_3
    sub-int v6, v8, v9

    .line 179
    .line 180
    invoke-static {v1, v9, v6, v3, v4}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v3, v10, v6}, Lorg/mvel2/d;->y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/mvel2/CompileException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 188
    .line 189
    const/4 v10, 0x0

    .line 190
    :goto_4
    move v9, v8

    .line 191
    const/4 v11, -0x1

    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :goto_5
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    array-length v3, v3

    .line 203
    sub-int v3, v3, p3

    .line 204
    .line 205
    sub-int/2addr v2, v3

    .line 206
    add-int/2addr v9, v2

    .line 207
    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :cond_4
    new-instance v6, Ljava/lang/String;

    .line 215
    .line 216
    sub-int v10, v8, v9

    .line 217
    .line 218
    const/4 v12, -0x1

    .line 219
    if-eq v11, v12, :cond_5

    .line 220
    .line 221
    move/from16 v12, v16

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_5
    const/4 v12, 0x0

    .line 225
    :goto_6
    sub-int/2addr v10, v12

    .line 226
    invoke-direct {v6, v1, v9, v10}, Ljava/lang/String;-><init>([CII)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    add-int/lit8 v9, v8, 0x1

    .line 234
    .line 235
    goto/16 :goto_a

    .line 236
    .line 237
    :cond_6
    const/16 v12, 0x20

    .line 238
    .line 239
    if-ge v8, v5, :cond_8

    .line 240
    .line 241
    add-int/lit8 v13, v8, 0x1

    .line 242
    .line 243
    aget-char v13, v1, v13

    .line 244
    .line 245
    if-ne v13, v6, :cond_8

    .line 246
    .line 247
    :goto_7
    if-ge v8, v5, :cond_7

    .line 248
    .line 249
    aget-char v6, v1, v8

    .line 250
    .line 251
    const/16 v13, 0xa

    .line 252
    .line 253
    if-eq v6, v13, :cond_7

    .line 254
    .line 255
    add-int/lit8 v6, v8, 0x1

    .line 256
    .line 257
    aput-char v12, v1, v8

    .line 258
    .line 259
    move v8, v6

    .line 260
    goto :goto_7

    .line 261
    :cond_7
    if-nez v10, :cond_e

    .line 262
    .line 263
    :goto_8
    move v9, v8

    .line 264
    goto :goto_a

    .line 265
    :cond_8
    if-ge v8, v5, :cond_b

    .line 266
    .line 267
    add-int/lit8 v13, v8, 0x1

    .line 268
    .line 269
    aget-char v13, v1, v13

    .line 270
    .line 271
    const/16 v15, 0x2a

    .line 272
    .line 273
    if-ne v13, v15, :cond_b

    .line 274
    .line 275
    add-int/lit8 v13, v5, -0x1

    .line 276
    .line 277
    :goto_9
    if-ge v8, v13, :cond_a

    .line 278
    .line 279
    aget-char v14, v1, v8

    .line 280
    .line 281
    if-ne v14, v15, :cond_9

    .line 282
    .line 283
    add-int/lit8 v14, v8, 0x1

    .line 284
    .line 285
    aget-char v14, v1, v14

    .line 286
    .line 287
    if-eq v14, v6, :cond_a

    .line 288
    .line 289
    :cond_9
    add-int/lit8 v14, v8, 0x1

    .line 290
    .line 291
    aput-char v12, v1, v8

    .line 292
    .line 293
    move v8, v14

    .line 294
    goto :goto_9

    .line 295
    :cond_a
    add-int/lit8 v6, v8, 0x1

    .line 296
    .line 297
    aput-char v12, v1, v8

    .line 298
    .line 299
    add-int/lit8 v8, v8, 0x2

    .line 300
    .line 301
    aput-char v12, v1, v6

    .line 302
    .line 303
    if-nez v10, :cond_e

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_b
    if-ge v8, v5, :cond_e

    .line 307
    .line 308
    add-int/lit8 v6, v8, 0x1

    .line 309
    .line 310
    aget-char v6, v1, v6

    .line 311
    .line 312
    if-ne v6, v14, :cond_e

    .line 313
    .line 314
    const/4 v11, 0x3

    .line 315
    goto :goto_a

    .line 316
    :cond_c
    :pswitch_1
    add-int/lit8 v6, v8, 0x1

    .line 317
    .line 318
    if-ge v6, v5, :cond_e

    .line 319
    .line 320
    aget-char v6, v1, v6

    .line 321
    .line 322
    if-ne v6, v14, :cond_e

    .line 323
    .line 324
    invoke-static {v15}, Lorg/mvel2/util/m;->u0(C)I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    goto :goto_a

    .line 329
    :cond_d
    invoke-static {v1, v8, v5, v15}, Lorg/mvel2/util/m;->d([CIIC)I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    :cond_e
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_f
    if-eq v9, v5, :cond_15

    .line 338
    .line 339
    if-eqz v10, :cond_13

    .line 340
    .line 341
    :try_start_2
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_10

    .line 346
    .line 347
    goto :goto_b

    .line 348
    :cond_10
    const/4 v6, -0x1

    .line 349
    if-eq v11, v6, :cond_12

    .line 350
    .line 351
    if-eqz v0, :cond_11

    .line 352
    .line 353
    new-instance v2, Ljava/lang/String;

    .line 354
    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    sub-int/2addr v5, v9

    .line 374
    invoke-static {v0, v1, v9, v5, v11}, Lorg/mvel2/util/m;->w(Ljava/lang/String;[CIII)[C

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v3, v10, v0}, Lorg/mvel2/d;->y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :catch_2
    move-exception v0

    .line 390
    goto :goto_c

    .line 391
    :cond_11
    new-instance v0, Lorg/mvel2/CompileException;

    .line 392
    .line 393
    invoke-direct {v0, v13, v1, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    .line 394
    .line 395
    .line 396
    throw v0

    .line 397
    :cond_12
    sub-int/2addr v5, v9

    .line 398
    invoke-static {v1, v9, v5, v3, v4}, Lorg/mvel2/d;->o([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-static {v3, v10, v0}, Lorg/mvel2/d;->y(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_13
    :goto_b
    if-nez v0, :cond_14

    .line 407
    .line 408
    new-instance v0, Ljava/lang/String;

    .line 409
    .line 410
    sub-int/2addr v5, v9

    .line 411
    invoke-direct {v0, v1, v9, v5}, Ljava/lang/String;-><init>([CII)V

    .line 412
    .line 413
    .line 414
    invoke-static {v0, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_14
    new-instance v2, Lorg/mvel2/util/s;

    .line 419
    .line 420
    invoke-direct {v2, v0}, Lorg/mvel2/util/s;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    const/16 v0, 0x2e

    .line 424
    .line 425
    invoke-virtual {v2, v0}, Lorg/mvel2/util/s;->a(C)Lorg/mvel2/util/s;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    sub-int/2addr v5, v9

    .line 430
    invoke-virtual {v0, v1, v9, v5}, Lorg/mvel2/util/s;->e([CII)Lorg/mvel2/util/s;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lorg/mvel2/util/s;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v0, v3, v4}, Lorg/mvel2/d;->l(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/mvel2/CompileException; {:try_start_2 .. :try_end_2} :catch_2

    .line 439
    .line 440
    .line 441
    goto :goto_d

    .line 442
    :goto_c
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getCursor()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    invoke-virtual {v0}, Lorg/mvel2/CompileException;->getExpr()[C

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    array-length v3, v3

    .line 451
    sub-int v3, v3, p3

    .line 452
    .line 453
    sub-int/2addr v2, v3

    .line 454
    add-int/2addr v9, v2

    .line 455
    invoke-virtual {v0, v9}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v1}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 459
    .line 460
    .line 461
    throw v0

    .line 462
    :cond_15
    :goto_d
    return-void

    .line 463
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
