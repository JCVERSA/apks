.class public Lc5/v0;
.super Lc5/i1;
.source "source.java"

# interfaces
.implements Lc5/z0;


# static fields
.field public static j:Lc5/v0;

.field private static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc5/v0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/v0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/v0;->j:Lc5/v0;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lc5/v0;->k:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc5/i1;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lc5/v0;->j(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move/from16 v11, p5

    .line 10
    .line 11
    iget-object v12, v9, Lc5/o0;->k:Lc5/j1;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v12}, Lc5/j1;->h0()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 23
    .line 24
    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 25
    .line 26
    iget v3, v12, Lc5/j1;->c:I

    .line 27
    .line 28
    and-int/2addr v3, v2

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    and-int/2addr v2, v11

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_1
    move-object v13, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_3
    instance-of v2, v1, Ljava/util/SortedMap;

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    instance-of v2, v1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    move-object v13, v2

    .line 61
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lc5/o0;->k(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual/range {p1 .. p2}, Lc5/o0;->D(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    iget-object v14, v9, Lc5/o0;->r:Lc5/e1;

    .line 72
    .line 73
    const/4 v15, 0x0

    .line 74
    move-object/from16 v1, p3

    .line 75
    .line 76
    invoke-virtual {v9, v14, v0, v1, v15}, Lc5/o0;->w(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    if-nez p6, :cond_5

    .line 80
    .line 81
    const/16 v1, 0x7b

    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v12, v1}, Lc5/j1;->write(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto/16 :goto_1b

    .line 89
    .line 90
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->s()V

    .line 91
    .line 92
    .line 93
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 94
    .line 95
    invoke-virtual {v12, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v7, 0x1

    .line 100
    if-eqz v1, :cond_8

    .line 101
    .line 102
    iget-object v1, v9, Lc5/o0;->j:Lc5/g1;

    .line 103
    .line 104
    iget-object v1, v1, Lc5/g1;->c:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    .line 111
    .line 112
    if-eq v2, v3, :cond_6

    .line 113
    .line 114
    const-class v3, Ljava/util/HashMap;

    .line 115
    .line 116
    if-eq v2, v3, :cond_6

    .line 117
    .line 118
    const-class v3, Ljava/util/LinkedHashMap;

    .line 119
    .line 120
    if-ne v2, v3, :cond_7

    .line 121
    .line 122
    :cond_6
    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    invoke-virtual {v12, v1}, Lc5/j1;->u(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v12, v1}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move v1, v15

    .line 144
    goto :goto_4

    .line 145
    :cond_8
    :goto_3
    move v1, v7

    .line 146
    :goto_4
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v16

    .line 154
    const/16 v17, 0x0

    .line 155
    .line 156
    move/from16 v18, v1

    .line 157
    .line 158
    move-object/from16 v6, v17

    .line 159
    .line 160
    move-object/from16 v19, v6

    .line 161
    .line 162
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_30

    .line 167
    .line 168
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, v9, Lc5/i1;->f:Ljava/util/List;

    .line 183
    .line 184
    if-eqz v2, :cond_c

    .line 185
    .line 186
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-lez v2, :cond_c

    .line 191
    .line 192
    if-eqz v1, :cond_b

    .line 193
    .line 194
    instance-of v2, v1, Ljava/lang/String;

    .line 195
    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_a

    .line 208
    .line 209
    instance-of v2, v1, Ljava/lang/Number;

    .line 210
    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v8, v9, v0, v2}, Lc5/i1;->e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-nez v2, :cond_c

    .line 222
    .line 223
    :goto_6
    move-object/from16 v22, v6

    .line 224
    .line 225
    move v0, v7

    .line 226
    goto/16 :goto_14

    .line 227
    .line 228
    :cond_b
    :goto_7
    move-object v2, v1

    .line 229
    check-cast v2, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v8, v9, v0, v2}, Lc5/i1;->e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_c

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_c
    iget-object v2, v8, Lc5/i1;->f:Ljava/util/List;

    .line 239
    .line 240
    if-eqz v2, :cond_10

    .line 241
    .line 242
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-lez v2, :cond_10

    .line 247
    .line 248
    if-eqz v1, :cond_f

    .line 249
    .line 250
    instance-of v2, v1, Ljava/lang/String;

    .line 251
    .line 252
    if-eqz v2, :cond_d

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-nez v2, :cond_e

    .line 264
    .line 265
    instance-of v2, v1, Ljava/lang/Number;

    .line 266
    .line 267
    if-eqz v2, :cond_10

    .line 268
    .line 269
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v8, v9, v0, v2}, Lc5/i1;->e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_10

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_f
    :goto_8
    move-object v2, v1

    .line 281
    check-cast v2, Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v8, v9, v0, v2}, Lc5/i1;->e(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_10

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_10
    iget-object v2, v9, Lc5/i1;->c:Ljava/util/List;

    .line 291
    .line 292
    if-eqz v2, :cond_14

    .line 293
    .line 294
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-lez v2, :cond_14

    .line 299
    .line 300
    if-eqz v1, :cond_13

    .line 301
    .line 302
    instance-of v2, v1, Ljava/lang/String;

    .line 303
    .line 304
    if-eqz v2, :cond_11

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_12

    .line 316
    .line 317
    instance-of v2, v1, Ljava/lang/Number;

    .line 318
    .line 319
    if-eqz v2, :cond_14

    .line 320
    .line 321
    :cond_12
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v8, v9, v0, v2, v5}, Lc5/i1;->d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-nez v2, :cond_14

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_13
    :goto_9
    move-object v2, v1

    .line 333
    check-cast v2, Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v8, v9, v0, v2, v5}, Lc5/i1;->d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-nez v2, :cond_14

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_14
    iget-object v2, v8, Lc5/i1;->c:Ljava/util/List;

    .line 343
    .line 344
    if-eqz v2, :cond_18

    .line 345
    .line 346
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-lez v2, :cond_18

    .line 351
    .line 352
    if-eqz v1, :cond_17

    .line 353
    .line 354
    instance-of v2, v1, Ljava/lang/String;

    .line 355
    .line 356
    if-eqz v2, :cond_15

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-nez v2, :cond_16

    .line 368
    .line 369
    instance-of v2, v1, Ljava/lang/Number;

    .line 370
    .line 371
    if-eqz v2, :cond_18

    .line 372
    .line 373
    :cond_16
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v8, v9, v0, v2, v5}, Lc5/i1;->d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-nez v2, :cond_18

    .line 382
    .line 383
    goto/16 :goto_6

    .line 384
    .line 385
    :cond_17
    :goto_a
    move-object v2, v1

    .line 386
    check-cast v2, Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v8, v9, v0, v2, v5}, Lc5/i1;->d(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-nez v2, :cond_18

    .line 393
    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :cond_18
    iget-object v2, v9, Lc5/i1;->e:Ljava/util/List;

    .line 397
    .line 398
    if-eqz v2, :cond_1c

    .line 399
    .line 400
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-lez v2, :cond_1c

    .line 405
    .line 406
    if-eqz v1, :cond_1b

    .line 407
    .line 408
    instance-of v2, v1, Ljava/lang/String;

    .line 409
    .line 410
    if-eqz v2, :cond_19

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-nez v2, :cond_1a

    .line 422
    .line 423
    instance-of v2, v1, Ljava/lang/Number;

    .line 424
    .line 425
    if-eqz v2, :cond_1c

    .line 426
    .line 427
    :cond_1a
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v8, v9, v0, v1, v5}, Lc5/i1;->h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    goto :goto_c

    .line 436
    :cond_1b
    :goto_b
    check-cast v1, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v8, v9, v0, v1, v5}, Lc5/i1;->h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    :cond_1c
    :goto_c
    iget-object v2, v8, Lc5/i1;->e:Ljava/util/List;

    .line 443
    .line 444
    if-eqz v2, :cond_1f

    .line 445
    .line 446
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-lez v2, :cond_1f

    .line 451
    .line 452
    if-eqz v1, :cond_20

    .line 453
    .line 454
    instance-of v2, v1, Ljava/lang/String;

    .line 455
    .line 456
    if-eqz v2, :cond_1d

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_1e

    .line 468
    .line 469
    instance-of v2, v1, Ljava/lang/Number;

    .line 470
    .line 471
    if-eqz v2, :cond_1f

    .line 472
    .line 473
    :cond_1e
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v8, v9, v0, v1, v5}, Lc5/i1;->h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    :cond_1f
    :goto_d
    move-object v4, v1

    .line 482
    goto :goto_f

    .line 483
    :cond_20
    :goto_e
    check-cast v1, Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v8, v9, v0, v1, v5}, Lc5/i1;->h(Lc5/o0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    goto :goto_d

    .line 490
    :goto_f
    if-eqz v4, :cond_21

    .line 491
    .line 492
    instance-of v1, v4, Ljava/lang/String;

    .line 493
    .line 494
    if-eqz v1, :cond_22

    .line 495
    .line 496
    :cond_21
    move-object v15, v4

    .line 497
    move-object/from16 v21, v5

    .line 498
    .line 499
    move-object/from16 v22, v6

    .line 500
    .line 501
    move v0, v7

    .line 502
    goto :goto_12

    .line 503
    :cond_22
    instance-of v1, v4, Ljava/util/Map;

    .line 504
    .line 505
    if-nez v1, :cond_23

    .line 506
    .line 507
    instance-of v1, v4, Ljava/util/Collection;

    .line 508
    .line 509
    if-eqz v1, :cond_24

    .line 510
    .line 511
    :cond_23
    move-object v15, v4

    .line 512
    move-object/from16 v21, v5

    .line 513
    .line 514
    move-object/from16 v22, v6

    .line 515
    .line 516
    move v0, v7

    .line 517
    goto :goto_11

    .line 518
    :cond_24
    invoke-static {v4}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v20

    .line 522
    const/4 v3, 0x0

    .line 523
    move-object/from16 v1, p0

    .line 524
    .line 525
    move-object/from16 v2, p1

    .line 526
    .line 527
    move-object v15, v4

    .line 528
    move-object/from16 v4, p2

    .line 529
    .line 530
    move-object/from16 v21, v5

    .line 531
    .line 532
    move-object/from16 v5, v20

    .line 533
    .line 534
    move-object/from16 v22, v6

    .line 535
    .line 536
    move-object/from16 v6, v21

    .line 537
    .line 538
    move v0, v7

    .line 539
    move/from16 v7, p5

    .line 540
    .line 541
    invoke-virtual/range {v1 .. v7}, Lc5/i1;->i(Lc5/o0;Lc5/p;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    :goto_10
    move-object v3, v1

    .line 546
    goto :goto_13

    .line 547
    :goto_11
    move-object/from16 v3, v21

    .line 548
    .line 549
    goto :goto_13

    .line 550
    :goto_12
    move-object v5, v15

    .line 551
    check-cast v5, Ljava/lang/String;

    .line 552
    .line 553
    const/4 v3, 0x0

    .line 554
    move-object/from16 v1, p0

    .line 555
    .line 556
    move-object/from16 v2, p1

    .line 557
    .line 558
    move-object/from16 v4, p2

    .line 559
    .line 560
    move-object/from16 v6, v21

    .line 561
    .line 562
    move/from16 v7, p5

    .line 563
    .line 564
    invoke-virtual/range {v1 .. v7}, Lc5/i1;->i(Lc5/o0;Lc5/p;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    goto :goto_10

    .line 569
    :goto_13
    if-nez v3, :cond_25

    .line 570
    .line 571
    iget v1, v12, Lc5/j1;->c:I

    .line 572
    .line 573
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 574
    .line 575
    invoke-static {v1, v11, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-nez v1, :cond_25

    .line 580
    .line 581
    :goto_14
    move v7, v0

    .line 582
    move-object/from16 v6, v22

    .line 583
    .line 584
    const/4 v15, 0x0

    .line 585
    :goto_15
    move-object/from16 v0, p2

    .line 586
    .line 587
    goto/16 :goto_5

    .line 588
    .line 589
    :cond_25
    instance-of v1, v15, Ljava/lang/String;

    .line 590
    .line 591
    const/16 v2, 0x2c

    .line 592
    .line 593
    if-eqz v1, :cond_28

    .line 594
    .line 595
    move-object v4, v15

    .line 596
    check-cast v4, Ljava/lang/String;

    .line 597
    .line 598
    if-nez v18, :cond_26

    .line 599
    .line 600
    invoke-virtual {v12, v2}, Lc5/j1;->write(I)V

    .line 601
    .line 602
    .line 603
    :cond_26
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 604
    .line 605
    invoke-virtual {v12, v1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-eqz v1, :cond_27

    .line 610
    .line 611
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->v()V

    .line 612
    .line 613
    .line 614
    :cond_27
    invoke-virtual {v12, v4, v0}, Lc5/j1;->v(Ljava/lang/String;Z)V

    .line 615
    .line 616
    .line 617
    goto :goto_17

    .line 618
    :cond_28
    if-nez v18, :cond_29

    .line 619
    .line 620
    invoke-virtual {v12, v2}, Lc5/j1;->write(I)V

    .line 621
    .line 622
    .line 623
    :cond_29
    sget v1, Lc5/v0;->k:I

    .line 624
    .line 625
    invoke-virtual {v12, v1}, Lc5/j1;->n(I)Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-nez v1, :cond_2a

    .line 630
    .line 631
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 632
    .line 633
    invoke-static {v11, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_2b

    .line 638
    .line 639
    :cond_2a
    instance-of v1, v15, Ljava/lang/Enum;

    .line 640
    .line 641
    if-nez v1, :cond_2b

    .line 642
    .line 643
    invoke-static {v15}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-virtual {v9, v1}, Lc5/o0;->B(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    goto :goto_16

    .line 651
    :cond_2b
    invoke-virtual {v9, v15}, Lc5/o0;->A(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    :goto_16
    const/16 v1, 0x3a

    .line 655
    .line 656
    invoke-virtual {v12, v1}, Lc5/j1;->write(I)V

    .line 657
    .line 658
    .line 659
    :goto_17
    if-nez v3, :cond_2c

    .line 660
    .line 661
    invoke-virtual {v12}, Lc5/j1;->h0()V

    .line 662
    .line 663
    .line 664
    move v7, v0

    .line 665
    move-object/from16 v6, v22

    .line 666
    .line 667
    const/4 v15, 0x0

    .line 668
    const/16 v18, 0x0

    .line 669
    .line 670
    goto :goto_15

    .line 671
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    move-object/from16 v2, v22

    .line 676
    .line 677
    if-eq v1, v2, :cond_2d

    .line 678
    .line 679
    invoke-virtual {v9, v1}, Lc5/o0;->q(Ljava/lang/Class;)Lc5/z0;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    move-object v7, v1

    .line 684
    move-object v6, v2

    .line 685
    goto :goto_18

    .line 686
    :cond_2d
    move-object v7, v2

    .line 687
    move-object/from16 v6, v19

    .line 688
    .line 689
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 690
    .line 691
    invoke-static {v11, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    if-eqz v1, :cond_2f

    .line 696
    .line 697
    instance-of v1, v6, Lc5/p0;

    .line 698
    .line 699
    if-eqz v1, :cond_2f

    .line 700
    .line 701
    instance-of v1, v10, Ljava/lang/reflect/ParameterizedType;

    .line 702
    .line 703
    if-eqz v1, :cond_2e

    .line 704
    .line 705
    move-object v1, v10

    .line 706
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 707
    .line 708
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    array-length v2, v1

    .line 713
    const/4 v4, 0x2

    .line 714
    if-ne v2, v4, :cond_2e

    .line 715
    .line 716
    aget-object v1, v1, v0

    .line 717
    .line 718
    move-object v5, v1

    .line 719
    goto :goto_19

    .line 720
    :cond_2e
    move-object/from16 v5, v17

    .line 721
    .line 722
    :goto_19
    move-object v1, v6

    .line 723
    check-cast v1, Lc5/p0;

    .line 724
    .line 725
    move-object/from16 v2, p1

    .line 726
    .line 727
    move-object v4, v15

    .line 728
    move-object/from16 v19, v6

    .line 729
    .line 730
    move/from16 v6, p5

    .line 731
    .line 732
    invoke-virtual/range {v1 .. v6}, Lc5/p0;->x(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 733
    .line 734
    .line 735
    goto :goto_1a

    .line 736
    :cond_2f
    move-object/from16 v19, v6

    .line 737
    .line 738
    const/4 v5, 0x0

    .line 739
    move-object/from16 v1, v19

    .line 740
    .line 741
    move-object/from16 v2, p1

    .line 742
    .line 743
    move-object v4, v15

    .line 744
    move/from16 v6, p5

    .line 745
    .line 746
    invoke-interface/range {v1 .. v6}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    .line 748
    .line 749
    :goto_1a
    move-object v6, v7

    .line 750
    const/4 v15, 0x0

    .line 751
    const/16 v18, 0x0

    .line 752
    .line 753
    move v7, v0

    .line 754
    goto/16 :goto_15

    .line 755
    .line 756
    :cond_30
    iput-object v14, v9, Lc5/o0;->r:Lc5/e1;

    .line 757
    .line 758
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->l()V

    .line 759
    .line 760
    .line 761
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 762
    .line 763
    invoke-virtual {v12, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_31

    .line 768
    .line 769
    invoke-interface {v13}, Ljava/util/Map;->size()I

    .line 770
    .line 771
    .line 772
    move-result v0

    .line 773
    if-lez v0, :cond_31

    .line 774
    .line 775
    invoke-virtual/range {p1 .. p1}, Lc5/o0;->v()V

    .line 776
    .line 777
    .line 778
    :cond_31
    if-nez p6, :cond_32

    .line 779
    .line 780
    const/16 v0, 0x7d

    .line 781
    .line 782
    invoke-virtual {v12, v0}, Lc5/j1;->write(I)V

    .line 783
    .line 784
    .line 785
    :cond_32
    return-void

    .line 786
    :goto_1b
    iput-object v14, v9, Lc5/o0;->r:Lc5/e1;

    .line 787
    .line 788
    throw v0
.end method
