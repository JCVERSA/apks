.class public abstract Lkotlinx/serialization/internal/t1;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 8
    .line 9
    invoke-static {v1}, Lry/a;->G(Lkotlin/jvm/internal/StringCompanionObject;)Lkotlinx/serialization/b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lkotlin/jvm/internal/CharCompanionObject;->a:Lkotlin/jvm/internal/CharCompanionObject;

    .line 24
    .line 25
    invoke-static {v2}, Lry/a;->A(Lkotlin/jvm/internal/CharCompanionObject;)Lkotlinx/serialization/b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, [C

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {}, Lry/a;->d()Lkotlinx/serialization/b;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    sget-object v4, Lkotlin/jvm/internal/DoubleCompanionObject;->a:Lkotlin/jvm/internal/DoubleCompanionObject;

    .line 54
    .line 55
    invoke-static {v4}, Lry/a;->B(Lkotlin/jvm/internal/DoubleCompanionObject;)Lkotlinx/serialization/b;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-class v4, [D

    .line 64
    .line 65
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {}, Lry/a;->e()Lkotlinx/serialization/b;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    sget-object v6, Lkotlin/jvm/internal/FloatCompanionObject;->a:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 84
    .line 85
    invoke-static {v6}, Lry/a;->C(Lkotlin/jvm/internal/FloatCompanionObject;)Lkotlinx/serialization/b;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-class v6, [F

    .line 94
    .line 95
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {}, Lry/a;->f()Lkotlinx/serialization/b;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    sget-object v8, Lkotlin/jvm/internal/LongCompanionObject;->a:Lkotlin/jvm/internal/LongCompanionObject;

    .line 114
    .line 115
    invoke-static {v8}, Lry/a;->E(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/b;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    const-class v8, [J

    .line 124
    .line 125
    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-static {}, Lry/a;->i()Lkotlinx/serialization/b;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-class v9, Lkotlin/ULong;

    .line 138
    .line 139
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    sget-object v10, Lkotlin/ULong;->b:Lkotlin/ULong$Companion;

    .line 144
    .line 145
    invoke-static {v10}, Lry/a;->v(Lkotlin/ULong$Companion;)Lkotlinx/serialization/b;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    const-class v10, Lkotlin/ULongArray;

    .line 154
    .line 155
    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-static {}, Lry/a;->q()Lkotlinx/serialization/b;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 168
    .line 169
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    sget-object v12, Lkotlin/jvm/internal/IntCompanionObject;->a:Lkotlin/jvm/internal/IntCompanionObject;

    .line 174
    .line 175
    invoke-static {v12}, Lry/a;->D(Lkotlin/jvm/internal/IntCompanionObject;)Lkotlinx/serialization/b;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    const-class v12, [I

    .line 184
    .line 185
    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-static {}, Lry/a;->g()Lkotlinx/serialization/b;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    const-class v13, Lkotlin/UInt;

    .line 198
    .line 199
    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    sget-object v14, Lkotlin/UInt;->b:Lkotlin/UInt$Companion;

    .line 204
    .line 205
    invoke-static {v14}, Lry/a;->u(Lkotlin/UInt$Companion;)Lkotlinx/serialization/b;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    const-class v14, Lkotlin/UIntArray;

    .line 214
    .line 215
    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    invoke-static {}, Lry/a;->p()Lkotlinx/serialization/b;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    sget-object v15, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 228
    .line 229
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 230
    .line 231
    .line 232
    move-result-object v15

    .line 233
    sget-object v16, Lkotlin/jvm/internal/ShortCompanionObject;->a:Lkotlin/jvm/internal/ShortCompanionObject;

    .line 234
    .line 235
    move-object/from16 v17, v14

    .line 236
    .line 237
    invoke-static/range {v16 .. v16}, Lry/a;->F(Lkotlin/jvm/internal/ShortCompanionObject;)Lkotlinx/serialization/b;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    const-class v15, [S

    .line 246
    .line 247
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 248
    .line 249
    .line 250
    move-result-object v15

    .line 251
    move-object/from16 v16, v14

    .line 252
    .line 253
    invoke-static {}, Lry/a;->m()Lkotlinx/serialization/b;

    .line 254
    .line 255
    .line 256
    move-result-object v14

    .line 257
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    const-class v15, Lkotlin/UShort;

    .line 262
    .line 263
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 264
    .line 265
    .line 266
    move-result-object v15

    .line 267
    sget-object v18, Lkotlin/UShort;->b:Lkotlin/UShort$Companion;

    .line 268
    .line 269
    move-object/from16 v19, v14

    .line 270
    .line 271
    invoke-static/range {v18 .. v18}, Lry/a;->w(Lkotlin/UShort$Companion;)Lkotlinx/serialization/b;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    const-class v15, Lkotlin/UShortArray;

    .line 280
    .line 281
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 282
    .line 283
    .line 284
    move-result-object v15

    .line 285
    move-object/from16 v18, v14

    .line 286
    .line 287
    invoke-static {}, Lry/a;->r()Lkotlinx/serialization/b;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 296
    .line 297
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 298
    .line 299
    .line 300
    move-result-object v15

    .line 301
    sget-object v20, Lkotlin/jvm/internal/ByteCompanionObject;->a:Lkotlin/jvm/internal/ByteCompanionObject;

    .line 302
    .line 303
    move-object/from16 v21, v14

    .line 304
    .line 305
    invoke-static/range {v20 .. v20}, Lry/a;->z(Lkotlin/jvm/internal/ByteCompanionObject;)Lkotlinx/serialization/b;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 310
    .line 311
    .line 312
    move-result-object v14

    .line 313
    const-class v15, [B

    .line 314
    .line 315
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    move-object/from16 v20, v14

    .line 320
    .line 321
    invoke-static {}, Lry/a;->c()Lkotlinx/serialization/b;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    const-class v15, Lkotlin/UByte;

    .line 330
    .line 331
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 332
    .line 333
    .line 334
    move-result-object v15

    .line 335
    sget-object v22, Lkotlin/UByte;->b:Lkotlin/UByte$Companion;

    .line 336
    .line 337
    move-object/from16 v23, v14

    .line 338
    .line 339
    invoke-static/range {v22 .. v22}, Lry/a;->t(Lkotlin/UByte$Companion;)Lkotlinx/serialization/b;

    .line 340
    .line 341
    .line 342
    move-result-object v14

    .line 343
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    const-class v15, Lkotlin/UByteArray;

    .line 348
    .line 349
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    move-object/from16 v22, v14

    .line 354
    .line 355
    invoke-static {}, Lry/a;->o()Lkotlinx/serialization/b;

    .line 356
    .line 357
    .line 358
    move-result-object v14

    .line 359
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 360
    .line 361
    .line 362
    move-result-object v14

    .line 363
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 364
    .line 365
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 366
    .line 367
    .line 368
    move-result-object v15

    .line 369
    sget-object v24, Lkotlin/jvm/internal/BooleanCompanionObject;->a:Lkotlin/jvm/internal/BooleanCompanionObject;

    .line 370
    .line 371
    move-object/from16 v25, v14

    .line 372
    .line 373
    invoke-static/range {v24 .. v24}, Lry/a;->y(Lkotlin/jvm/internal/BooleanCompanionObject;)Lkotlinx/serialization/b;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 378
    .line 379
    .line 380
    move-result-object v14

    .line 381
    const-class v15, [Z

    .line 382
    .line 383
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 384
    .line 385
    .line 386
    move-result-object v15

    .line 387
    move-object/from16 v24, v14

    .line 388
    .line 389
    invoke-static {}, Lry/a;->b()Lkotlinx/serialization/b;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 394
    .line 395
    .line 396
    move-result-object v14

    .line 397
    const-class v15, Lkotlin/Unit;

    .line 398
    .line 399
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 400
    .line 401
    .line 402
    move-result-object v15

    .line 403
    sget-object v26, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 404
    .line 405
    move-object/from16 v27, v14

    .line 406
    .line 407
    invoke-static/range {v26 .. v26}, Lry/a;->x(Lkotlin/Unit;)Lkotlinx/serialization/b;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    const-class v15, Lkotlin/time/Duration;

    .line 416
    .line 417
    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 418
    .line 419
    .line 420
    move-result-object v15

    .line 421
    sget-object v26, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    .line 422
    .line 423
    move-object/from16 v28, v14

    .line 424
    .line 425
    invoke-static/range {v26 .. v26}, Lry/a;->H(Lkotlin/time/Duration$Companion;)Lkotlinx/serialization/b;

    .line 426
    .line 427
    .line 428
    move-result-object v14

    .line 429
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    const/16 v15, 0x1b

    .line 434
    .line 435
    new-array v15, v15, [Lkotlin/Pair;

    .line 436
    .line 437
    const/16 v26, 0x0

    .line 438
    .line 439
    aput-object v0, v15, v26

    .line 440
    .line 441
    const/4 v0, 0x1

    .line 442
    aput-object v1, v15, v0

    .line 443
    .line 444
    const/4 v0, 0x2

    .line 445
    aput-object v2, v15, v0

    .line 446
    .line 447
    const/4 v0, 0x3

    .line 448
    aput-object v3, v15, v0

    .line 449
    .line 450
    const/4 v0, 0x4

    .line 451
    aput-object v4, v15, v0

    .line 452
    .line 453
    const/4 v0, 0x5

    .line 454
    aput-object v5, v15, v0

    .line 455
    .line 456
    const/4 v0, 0x6

    .line 457
    aput-object v6, v15, v0

    .line 458
    .line 459
    const/4 v0, 0x7

    .line 460
    aput-object v7, v15, v0

    .line 461
    .line 462
    const/16 v0, 0x8

    .line 463
    .line 464
    aput-object v8, v15, v0

    .line 465
    .line 466
    const/16 v0, 0x9

    .line 467
    .line 468
    aput-object v9, v15, v0

    .line 469
    .line 470
    const/16 v0, 0xa

    .line 471
    .line 472
    aput-object v10, v15, v0

    .line 473
    .line 474
    const/16 v0, 0xb

    .line 475
    .line 476
    aput-object v11, v15, v0

    .line 477
    .line 478
    const/16 v0, 0xc

    .line 479
    .line 480
    aput-object v12, v15, v0

    .line 481
    .line 482
    const/16 v0, 0xd

    .line 483
    .line 484
    aput-object v13, v15, v0

    .line 485
    .line 486
    const/16 v0, 0xe

    .line 487
    .line 488
    aput-object v17, v15, v0

    .line 489
    .line 490
    const/16 v0, 0xf

    .line 491
    .line 492
    aput-object v16, v15, v0

    .line 493
    .line 494
    const/16 v0, 0x10

    .line 495
    .line 496
    aput-object v19, v15, v0

    .line 497
    .line 498
    const/16 v0, 0x11

    .line 499
    .line 500
    aput-object v18, v15, v0

    .line 501
    .line 502
    const/16 v0, 0x12

    .line 503
    .line 504
    aput-object v21, v15, v0

    .line 505
    .line 506
    const/16 v0, 0x13

    .line 507
    .line 508
    aput-object v20, v15, v0

    .line 509
    .line 510
    const/16 v0, 0x14

    .line 511
    .line 512
    aput-object v23, v15, v0

    .line 513
    .line 514
    const/16 v0, 0x15

    .line 515
    .line 516
    aput-object v22, v15, v0

    .line 517
    .line 518
    const/16 v0, 0x16

    .line 519
    .line 520
    aput-object v25, v15, v0

    .line 521
    .line 522
    const/16 v0, 0x17

    .line 523
    .line 524
    aput-object v24, v15, v0

    .line 525
    .line 526
    const/16 v0, 0x18

    .line 527
    .line 528
    aput-object v27, v15, v0

    .line 529
    .line 530
    const/16 v0, 0x19

    .line 531
    .line 532
    aput-object v28, v15, v0

    .line 533
    .line 534
    const/16 v0, 0x1a

    .line 535
    .line 536
    aput-object v14, v15, v0

    .line 537
    .line 538
    invoke-static {v15}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    sput-object v0, Lkotlinx/serialization/internal/t1;->a:Ljava/util/Map;

    .line 543
    .line 544
    return-void
.end method

.method public static final a(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    const-string v0, "serialName"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kind"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lkotlinx/serialization/internal/t1;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lkotlinx/serialization/internal/s1;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/s1;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static final b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlinx/serialization/internal/t1;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lkotlinx/serialization/b;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/text/CharsKt;->h(C)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "this as java.lang.String).substring(startIndex)"

    .line 41
    .line 42
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    return-object p0
.end method

.method private static final d(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/t1;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lkotlin/reflect/KClass;

    .line 22
    .line 23
    invoke-interface {v1}, Lkotlin/reflect/KClass;->g()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lkotlinx/serialization/internal/t1;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "kotlin."

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-static {p0, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    invoke-static {p0, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, " there already exist "

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lkotlinx/serialization/internal/t1;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    .line 93
    .line 94
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    return-void
.end method
