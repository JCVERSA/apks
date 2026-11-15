.class public Lcom/cloud/hisavana/sdk/common/activity/f0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:F

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:F

.field o:F

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(I)Lcom/cloud/hisavana/sdk/common/activity/f0;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/f0;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/common/activity/f0;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    const/high16 v0, 0x438c0000    # 280.0f

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 18
    .line 19
    const/high16 v0, 0x43f90000    # 498.0f

    .line 20
    .line 21
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    const/high16 v3, 0x435c0000    # 220.0f

    .line 31
    .line 32
    const/high16 v4, 0x40c00000    # 6.0f

    .line 33
    .line 34
    const/high16 v5, 0x42480000    # 50.0f

    .line 35
    .line 36
    const/high16 v6, 0x41d00000    # 26.0f

    .line 37
    .line 38
    const/high16 v7, 0x41c00000    # 24.0f

    .line 39
    .line 40
    const/high16 v8, 0x41100000    # 9.0f

    .line 41
    .line 42
    const/high16 v9, 0x41600000    # 14.0f

    .line 43
    .line 44
    const/high16 v10, 0x41a00000    # 20.0f

    .line 45
    .line 46
    const/high16 v11, 0x41000000    # 8.0f

    .line 47
    .line 48
    const/high16 v12, 0x41400000    # 12.0f

    .line 49
    .line 50
    if-ne v0, v2, :cond_1

    .line 51
    .line 52
    const/high16 v0, 0x43dc0000    # 440.0f

    .line 53
    .line 54
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 59
    .line 60
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 65
    .line 66
    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 71
    .line 72
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 77
    .line 78
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 83
    .line 84
    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 85
    .line 86
    const/high16 v0, 0x40000000    # 2.0f

    .line 87
    .line 88
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 93
    .line 94
    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 99
    .line 100
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 105
    .line 106
    const/high16 v0, 0x43340000    # 180.0f

    .line 107
    .line 108
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 113
    .line 114
    const/high16 v0, 0x42240000    # 41.0f

    .line 115
    .line 116
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 121
    .line 122
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 127
    .line 128
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 133
    .line 134
    iput v12, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 135
    .line 136
    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 137
    .line 138
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 143
    .line 144
    const/high16 v0, 0x43200000    # 160.0f

    .line 145
    .line 146
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 151
    .line 152
    const/high16 v0, 0x42000000    # 32.0f

    .line 153
    .line 154
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 159
    .line 160
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 165
    .line 166
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_1
    const/4 v2, 0x3

    .line 175
    const/high16 v13, 0x42200000    # 40.0f

    .line 176
    .line 177
    const/high16 v14, 0x437a0000    # 250.0f

    .line 178
    .line 179
    const/high16 v15, 0x41b00000    # 22.0f

    .line 180
    .line 181
    if-ne v0, v2, :cond_2

    .line 182
    .line 183
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 188
    .line 189
    const/high16 v0, 0x43830000    # 262.0f

    .line 190
    .line 191
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 196
    .line 197
    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 202
    .line 203
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 208
    .line 209
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 214
    .line 215
    iput v10, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 216
    .line 217
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 222
    .line 223
    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 228
    .line 229
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 234
    .line 235
    const/high16 v0, 0x43480000    # 200.0f

    .line 236
    .line 237
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 242
    .line 243
    const/high16 v0, 0x42540000    # 53.0f

    .line 244
    .line 245
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 250
    .line 251
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 256
    .line 257
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 262
    .line 263
    iput v12, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 264
    .line 265
    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 266
    .line 267
    const/high16 v0, 0x41d80000    # 27.0f

    .line 268
    .line 269
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 274
    .line 275
    const/high16 v0, 0x43180000    # 152.0f

    .line 276
    .line 277
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 282
    .line 283
    invoke-static {v13}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 288
    .line 289
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 294
    .line 295
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_2
    const/4 v2, 0x4

    .line 304
    const/high16 v16, 0x42900000    # 72.0f

    .line 305
    .line 306
    const/high16 v13, 0x41900000    # 18.0f

    .line 307
    .line 308
    const/high16 v17, 0x42100000    # 36.0f

    .line 309
    .line 310
    const/high16 v18, 0x41800000    # 16.0f

    .line 311
    .line 312
    if-ne v0, v2, :cond_3

    .line 313
    .line 314
    const/high16 v0, 0x439c0000    # 312.0f

    .line 315
    .line 316
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 321
    .line 322
    const/high16 v0, 0x43a40000    # 328.0f

    .line 323
    .line 324
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 329
    .line 330
    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 335
    .line 336
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 341
    .line 342
    const/high16 v0, 0x428c0000    # 70.0f

    .line 343
    .line 344
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 349
    .line 350
    iput v7, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 351
    .line 352
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 357
    .line 358
    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 363
    .line 364
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 369
    .line 370
    const/high16 v0, 0x43840000    # 264.0f

    .line 371
    .line 372
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 377
    .line 378
    invoke-static/range {v16 .. v16}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 383
    .line 384
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 389
    .line 390
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 395
    .line 396
    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 397
    .line 398
    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 399
    .line 400
    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 405
    .line 406
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 411
    .line 412
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 417
    .line 418
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 423
    .line 424
    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :cond_3
    const/4 v2, 0x5

    .line 433
    if-ne v0, v2, :cond_4

    .line 434
    .line 435
    const/high16 v0, 0x430c0000    # 140.0f

    .line 436
    .line 437
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 442
    .line 443
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 448
    .line 449
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 454
    .line 455
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 460
    .line 461
    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 466
    .line 467
    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 468
    .line 469
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 474
    .line 475
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 480
    .line 481
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 486
    .line 487
    const/high16 v0, 0x42f80000    # 124.0f

    .line 488
    .line 489
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 494
    .line 495
    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 500
    .line 501
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 506
    .line 507
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 512
    .line 513
    iput v8, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 514
    .line 515
    const/high16 v0, 0x40e00000    # 7.0f

    .line 516
    .line 517
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 518
    .line 519
    invoke-static {v13}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 524
    .line 525
    const/high16 v0, 0x42d40000    # 106.0f

    .line 526
    .line 527
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 532
    .line 533
    const/high16 v0, 0x41e00000    # 28.0f

    .line 534
    .line 535
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 540
    .line 541
    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 546
    .line 547
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 552
    .line 553
    goto/16 :goto_0

    .line 554
    .line 555
    :cond_4
    const/4 v2, 0x6

    .line 556
    const/high16 v4, 0x43940000    # 296.0f

    .line 557
    .line 558
    const/high16 v8, 0x42a00000    # 80.0f

    .line 559
    .line 560
    const/high16 v14, -0x40800000    # -1.0f

    .line 561
    .line 562
    if-ne v0, v2, :cond_5

    .line 563
    .line 564
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 569
    .line 570
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 575
    .line 576
    invoke-static {v6}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 581
    .line 582
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 587
    .line 588
    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 593
    .line 594
    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 595
    .line 596
    invoke-static {v11}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 601
    .line 602
    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 607
    .line 608
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 613
    .line 614
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 619
    .line 620
    invoke-static/range {v16 .. v16}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 625
    .line 626
    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 631
    .line 632
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 637
    .line 638
    iput v6, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 639
    .line 640
    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 641
    .line 642
    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 647
    .line 648
    const/high16 v0, 0x43700000    # 240.0f

    .line 649
    .line 650
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 655
    .line 656
    const/high16 v0, 0x42200000    # 40.0f

    .line 657
    .line 658
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 663
    .line 664
    invoke-static {v10}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 669
    .line 670
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 675
    .line 676
    goto :goto_0

    .line 677
    :cond_5
    const/4 v2, 0x7

    .line 678
    if-ne v0, v2, :cond_6

    .line 679
    .line 680
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->a:I

    .line 685
    .line 686
    invoke-static {v14}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->b:I

    .line 691
    .line 692
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->c:I

    .line 697
    .line 698
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->d:I

    .line 703
    .line 704
    const/high16 v0, 0x42c80000    # 100.0f

    .line 705
    .line 706
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->e:I

    .line 711
    .line 712
    iput v10, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->f:F

    .line 713
    .line 714
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->g:I

    .line 719
    .line 720
    invoke-static {v15}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->h:I

    .line 725
    .line 726
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->i:I

    .line 731
    .line 732
    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->j:I

    .line 737
    .line 738
    invoke-static {v8}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->k:I

    .line 743
    .line 744
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->l:I

    .line 749
    .line 750
    invoke-static/range {v18 .. v18}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->m:I

    .line 755
    .line 756
    iput v13, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->n:F

    .line 757
    .line 758
    iput v9, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->o:F

    .line 759
    .line 760
    invoke-static/range {v17 .. v17}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->p:I

    .line 765
    .line 766
    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->q:I

    .line 771
    .line 772
    invoke-static {v5}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->r:I

    .line 777
    .line 778
    invoke-static {v7}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->s:I

    .line 783
    .line 784
    invoke-static {v12}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    iput v0, v1, Lcom/cloud/hisavana/sdk/common/activity/f0;->t:I

    .line 789
    .line 790
    :goto_0
    return-object v1

    .line 791
    :cond_6
    const/4 v0, 0x0

    .line 792
    return-object v0
.end method
