.class public final Lcom/transsion/ad/monopoly/plan/AdPlansTransform;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlansTransform;->a:Lcom/transsion/ad/monopoly/plan/AdPlansTransform;

    .line 7
    .line 8
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


# virtual methods
.method public final a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/db/plan/MbAdDbPlans;
    .locals 42

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    move-object v2, v0

    .line 11
    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    const-string v0, ""

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :goto_2
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getVersion()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    move-object v3, v0

    .line 25
    :goto_3
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v4, v1

    .line 32
    goto :goto_4

    .line 33
    :cond_3
    move-object v4, v0

    .line 34
    :goto_4
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getStartTime()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v5, v1

    .line 41
    goto :goto_5

    .line 42
    :cond_4
    move-object v5, v0

    .line 43
    :goto_5
    if-eqz p1, :cond_5

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEndTime()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v6, v1

    .line 50
    goto :goto_6

    .line 51
    :cond_5
    move-object v6, v0

    .line 52
    :goto_6
    if-eqz p1, :cond_6

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtraConfig()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v7, v1

    .line 59
    goto :goto_7

    .line 60
    :cond_6
    move-object v7, v0

    .line 61
    :goto_7
    if-eqz p1, :cond_7

    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDisplayTimes()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v8, v1

    .line 68
    goto :goto_8

    .line 69
    :cond_7
    move-object v8, v0

    .line 70
    :goto_8
    if-eqz p1, :cond_8

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getShowedTimes()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v9, v1

    .line 77
    goto :goto_9

    .line 78
    :cond_8
    move-object v9, v0

    .line 79
    :goto_9
    if-eqz p1, :cond_9

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getShowDate()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v10, v1

    .line 86
    goto :goto_a

    .line 87
    :cond_9
    move-object v10, v0

    .line 88
    :goto_a
    if-eqz p1, :cond_a

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v11, v1

    .line 95
    goto :goto_b

    .line 96
    :cond_a
    move-object v11, v0

    .line 97
    :goto_b
    if-eqz p1, :cond_b

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    move-object v12, v1

    .line 104
    goto :goto_c

    .line 105
    :cond_b
    move-object v12, v0

    .line 106
    :goto_c
    if-eqz p1, :cond_c

    .line 107
    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object v13, v1

    .line 113
    goto :goto_d

    .line 114
    :cond_c
    move-object v13, v0

    .line 115
    :goto_d
    if-eqz p1, :cond_d

    .line 116
    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBrand()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_e

    .line 122
    :cond_d
    move-object v1, v0

    .line 123
    :goto_e
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    if-eqz p1, :cond_e

    .line 128
    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDenyBrand()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_f

    .line 134
    :cond_e
    move-object v1, v0

    .line 135
    :goto_f
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    if-eqz p1, :cond_f

    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getModel()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto :goto_10

    .line 146
    :cond_f
    move-object v1, v0

    .line 147
    :goto_10
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v16

    .line 151
    if-eqz p1, :cond_10

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDenyModel()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    goto :goto_11

    .line 158
    :cond_10
    move-object v1, v0

    .line 159
    :goto_11
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v17

    .line 163
    if-eqz p1, :cond_11

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCountry()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_12

    .line 170
    :cond_11
    move-object v1, v0

    .line 171
    :goto_12
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v18

    .line 175
    if-eqz p1, :cond_12

    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getScenes()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    goto :goto_13

    .line 182
    :cond_12
    move-object v1, v0

    .line 183
    :goto_13
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v19

    .line 187
    if-eqz p1, :cond_13

    .line 188
    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    move-object/from16 v23, v1

    .line 194
    .line 195
    goto :goto_14

    .line 196
    :cond_13
    move-object/from16 v23, v0

    .line 197
    .line 198
    :goto_14
    if-eqz p1, :cond_14

    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    move-object/from16 v20, v1

    .line 205
    .line 206
    goto :goto_15

    .line 207
    :cond_14
    move-object/from16 v20, v0

    .line 208
    .line 209
    :goto_15
    if-eqz p1, :cond_15

    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    move-object/from16 v21, v1

    .line 216
    .line 217
    goto :goto_16

    .line 218
    :cond_15
    move-object/from16 v21, v0

    .line 219
    .line 220
    :goto_16
    if-eqz p1, :cond_16

    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getSort()Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object/from16 v24, v1

    .line 227
    .line 228
    goto :goto_17

    .line 229
    :cond_16
    move-object/from16 v24, v0

    .line 230
    .line 231
    :goto_17
    if-eqz p1, :cond_17

    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    goto :goto_18

    .line 238
    :cond_17
    move-object v1, v0

    .line 239
    :goto_18
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v22

    .line 243
    if-eqz p1, :cond_18

    .line 244
    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdShowLevel()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    move-object/from16 v25, v1

    .line 250
    .line 251
    goto :goto_19

    .line 252
    :cond_18
    move-object/from16 v25, v0

    .line 253
    .line 254
    :goto_19
    if-eqz p1, :cond_19

    .line 255
    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getFilterClientVersion()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    move-object/from16 v26, v1

    .line 261
    .line 262
    goto :goto_1a

    .line 263
    :cond_19
    move-object/from16 v26, v0

    .line 264
    .line 265
    :goto_1a
    if-eqz p1, :cond_1a

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdPlanCreateTime()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    move-object/from16 v27, v1

    .line 272
    .line 273
    goto :goto_1b

    .line 274
    :cond_1a
    move-object/from16 v27, v0

    .line 275
    .line 276
    :goto_1b
    if-eqz p1, :cond_1b

    .line 277
    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAppStarDesc()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    move-object/from16 v28, v1

    .line 283
    .line 284
    goto :goto_1c

    .line 285
    :cond_1b
    move-object/from16 v28, v0

    .line 286
    .line 287
    :goto_1c
    if-eqz p1, :cond_1c

    .line 288
    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAppSizeDesc()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    move-object/from16 v29, v1

    .line 294
    .line 295
    goto :goto_1d

    .line 296
    :cond_1c
    move-object/from16 v29, v0

    .line 297
    .line 298
    :goto_1d
    if-eqz p1, :cond_1d

    .line 299
    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDispatchTimeStart()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    move-object/from16 v33, v1

    .line 305
    .line 306
    goto :goto_1e

    .line 307
    :cond_1d
    move-object/from16 v33, v0

    .line 308
    .line 309
    :goto_1e
    if-eqz p1, :cond_1e

    .line 310
    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getDispatchTimeEnd()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    move-object/from16 v34, v1

    .line 316
    .line 317
    goto :goto_1f

    .line 318
    :cond_1e
    move-object/from16 v34, v0

    .line 319
    .line 320
    :goto_1f
    if-eqz p1, :cond_1f

    .line 321
    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxEnableExpr()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    move-object/from16 v30, v1

    .line 327
    .line 328
    goto :goto_20

    .line 329
    :cond_1f
    move-object/from16 v30, v0

    .line 330
    .line 331
    :goto_20
    if-eqz p1, :cond_20

    .line 332
    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxDisableExpr()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    move-object/from16 v31, v1

    .line 338
    .line 339
    goto :goto_21

    .line 340
    :cond_20
    move-object/from16 v31, v0

    .line 341
    .line 342
    :goto_21
    if-eqz p1, :cond_21

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCtxAttributeConfig()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    goto :goto_22

    .line 349
    :cond_21
    move-object v1, v0

    .line 350
    :goto_22
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v32

    .line 354
    if-eqz p1, :cond_22

    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtImage()Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    goto :goto_23

    .line 361
    :cond_22
    move-object v1, v0

    .line 362
    :goto_23
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v35

    .line 366
    if-eqz p1, :cond_23

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    move-object/from16 v36, v1

    .line 373
    .line 374
    goto :goto_24

    .line 375
    :cond_23
    move-object/from16 v36, v0

    .line 376
    .line 377
    :goto_24
    if-eqz p1, :cond_24

    .line 378
    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getEcpmCent()Ljava/lang/Long;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    move-object/from16 v37, v1

    .line 384
    .line 385
    goto :goto_25

    .line 386
    :cond_24
    move-object/from16 v37, v0

    .line 387
    .line 388
    :goto_25
    const/4 v1, 0x0

    .line 389
    if-eqz p1, :cond_25

    .line 390
    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->isValid()Z

    .line 392
    .line 393
    .line 394
    move-result v38

    .line 395
    goto :goto_26

    .line 396
    :cond_25
    move/from16 v38, v1

    .line 397
    .line 398
    :goto_26
    if-eqz p1, :cond_26

    .line 399
    .line 400
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkPreload()Z

    .line 401
    .line 402
    .line 403
    move-result v39

    .line 404
    goto :goto_27

    .line 405
    :cond_26
    move/from16 v39, v1

    .line 406
    .line 407
    :goto_27
    if-eqz p1, :cond_27

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    :cond_27
    move/from16 v40, v1

    .line 414
    .line 415
    if-eqz p1, :cond_28

    .line 416
    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getCountryCode()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    :cond_28
    move-object/from16 v41, v0

    .line 422
    .line 423
    new-instance v0, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    .line 424
    .line 425
    move-object v1, v0

    .line 426
    invoke-direct/range {v1 .. v41}, Lcom/transsion/ad/db/plan/MbAdDbPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-object v0
.end method

.method public final b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 44

    .line 1
    const-class v0, [Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v37

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, [Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v12, v2

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_1
    move-object v12, v1

    .line 67
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, [Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v14, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v14, v1

    .line 86
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, [Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v15, v2

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move-object v15, v1

    .line 105
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, [Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object/from16 v16, v2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    move-object/from16 v16, v1

    .line 125
    .line 126
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, [Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object/from16 v17, v2

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_5
    move-object/from16 v17, v1

    .line 146
    .line 147
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, [Ljava/lang/String;

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->G0([Ljava/lang/Object;)Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    move-object/from16 v18, v0

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_6
    move-object/from16 v18, v1

    .line 167
    .line 168
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v20

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v21

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v22

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v25

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v34

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v35

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v26

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v19

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v24

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v27

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v28

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v32

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v33

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v29

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v30

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const-class v2, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 237
    .line 238
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move-object/from16 v31, v0

    .line 243
    .line 244
    check-cast v31, Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;

    .line 245
    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v2, Lcom/transsion/ad/monopoly/plan/AdPlansTransform$transformPlanDb2Bean$1$adPlans$1;

    .line 251
    .line 252
    invoke-direct {v2}, Lcom/transsion/ad/monopoly/plan/AdPlansTransform$transformPlanDb2Bean$1$adPlans$1;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    move-object/from16 v23, v0

    .line 264
    .line 265
    check-cast v23, Ljava/util/List;

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    const-class v2, Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 272
    .line 273
    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    move-object/from16 v36, v0

    .line 278
    .line 279
    check-cast v36, Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    .line 282
    .line 283
    .line 284
    move-result-object v38

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    .line 286
    .line 287
    .line 288
    move-result-object v39

    .line 289
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->isValid()Z

    .line 290
    .line 291
    .line 292
    move-result v40

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkPreload()Z

    .line 294
    .line 295
    .line 296
    move-result v41

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkOpenByCct()Z

    .line 298
    .line 299
    .line 300
    move-result v42

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v43

    .line 305
    new-instance v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 306
    .line 307
    move-object v3, v0

    .line 308
    invoke-direct/range {v3 .. v43}, Lcom/transsion/ad/monopoly/model/AdPlans;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/MbAdImage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Long;ZZZLjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    goto :goto_7

    .line 316
    :goto_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 317
    .line 318
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    if-nez v2, :cond_7

    .line 331
    .line 332
    move-object v1, v0

    .line 333
    :cond_7
    check-cast v1, Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 334
    .line 335
    return-object v1
.end method
