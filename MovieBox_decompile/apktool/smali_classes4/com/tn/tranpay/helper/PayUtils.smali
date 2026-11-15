.class public final Lcom/tn/tranpay/helper/PayUtils;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/helper/PayUtils$a;,
        Lcom/tn/tranpay/helper/PayUtils$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/tn/tranpay/helper/PayUtils;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v0, Lcom/tn/tranpay/helper/PayUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/helper/PayUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/helper/PayUtils;->a:Lcom/tn/tranpay/helper/PayUtils;

    .line 7
    .line 8
    new-instance v0, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 9
    .line 10
    const-string v1, "gojek"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v1, "https://gojek.link"

    .line 17
    .line 18
    const-string v2, "https://gopay.co.id/app"

    .line 19
    .line 20
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const-string v2, "com.gojek.app"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "com.gojek.app"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v8, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 45
    .line 46
    const-string v1, "linkaja"

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v6, 0xc

    .line 53
    .line 54
    const-string v2, "com.telkom.mwallet"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    move-object v1, v8

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "com.telkom.mwallet"

    .line 62
    .line 63
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v9, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 68
    .line 69
    const-string v2, "dana"

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/16 v7, 0xc

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    const-string v3, "id.dana.app"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    move-object v2, v9

    .line 82
    invoke-direct/range {v2 .. v8}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    const-string v2, "id.dana.app"

    .line 86
    .line 87
    invoke-static {v2, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v10, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 92
    .line 93
    const-string v3, "ovo"

    .line 94
    .line 95
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const/16 v8, 0xc

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    const-string v4, "com.ovo.app"

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    move-object v3, v10

    .line 106
    invoke-direct/range {v3 .. v9}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "com.ovo.app"

    .line 110
    .line 111
    invoke-static {v3, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v11, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 116
    .line 117
    const-string v4, "shopeepay"

    .line 118
    .line 119
    const-string v5, "shopeeid"

    .line 120
    .line 121
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const/16 v9, 0xc

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    const-string v5, "com.shopee.payment"

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    move-object v4, v11

    .line 136
    invoke-direct/range {v4 .. v10}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    const-string v4, "com.shopee.payment"

    .line 140
    .line 141
    invoke-static {v4, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    new-instance v12, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 146
    .line 147
    const-string v5, "tng"

    .line 148
    .line 149
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    const/16 v10, 0xc

    .line 154
    .line 155
    const/4 v11, 0x0

    .line 156
    const-string v6, "com.tngdigital.tngo"

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    move-object v5, v12

    .line 160
    invoke-direct/range {v5 .. v11}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    .line 162
    .line 163
    const-string v5, "com.tngdigital.tngo"

    .line 164
    .line 165
    invoke-static {v5, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    new-instance v13, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 170
    .line 171
    const-string v6, "boost"

    .line 172
    .line 173
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const/16 v11, 0xc

    .line 178
    .line 179
    const/4 v12, 0x0

    .line 180
    const-string v7, "my.com.asiainsurance.boost"

    .line 181
    .line 182
    const/4 v10, 0x0

    .line 183
    move-object v6, v13

    .line 184
    invoke-direct/range {v6 .. v12}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .line 186
    .line 187
    const-string v6, "my.com.asiainsurance.boost"

    .line 188
    .line 189
    invoke-static {v6, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    new-instance v14, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 194
    .line 195
    const-string v7, "grabpay"

    .line 196
    .line 197
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    const/16 v12, 0xc

    .line 202
    .line 203
    const/4 v13, 0x0

    .line 204
    const-string v8, "com.grabtaxi.passenger"

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object v7, v14

    .line 208
    invoke-direct/range {v7 .. v13}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 209
    .line 210
    .line 211
    const-string v7, "com.grabtaxi.passenger"

    .line 212
    .line 213
    invoke-static {v7, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 218
    .line 219
    const-string v8, "paynow"

    .line 220
    .line 221
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    const/16 v13, 0xc

    .line 226
    .line 227
    const/4 v14, 0x0

    .line 228
    const-string v9, "sg.gov.tech.paynow"

    .line 229
    .line 230
    const/4 v12, 0x0

    .line 231
    move-object v8, v15

    .line 232
    invoke-direct/range {v8 .. v14}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 233
    .line 234
    .line 235
    const-string v8, "sg.gov.tech.paynow"

    .line 236
    .line 237
    invoke-static {v8, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 242
    .line 243
    const-string v9, "truemoney"

    .line 244
    .line 245
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    const-string v9, "https://tmn.app.link"

    .line 250
    .line 251
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    const/16 v14, 0x8

    .line 256
    .line 257
    const/16 v16, 0x0

    .line 258
    .line 259
    const-string v10, "th.co.truemoney.wallet"

    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    move-object v9, v15

    .line 263
    move-object/from16 v17, v8

    .line 264
    .line 265
    move-object v8, v15

    .line 266
    move-object/from16 v15, v16

    .line 267
    .line 268
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 269
    .line 270
    .line 271
    const-string v9, "th.co.truemoney.wallet"

    .line 272
    .line 273
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 278
    .line 279
    const-string v9, "promptpay"

    .line 280
    .line 281
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    const/16 v14, 0xc

    .line 286
    .line 287
    const-string v10, "th.co.promptpay"

    .line 288
    .line 289
    const/4 v12, 0x0

    .line 290
    move-object v9, v15

    .line 291
    move-object/from16 v18, v8

    .line 292
    .line 293
    move-object v8, v15

    .line 294
    move-object/from16 v15, v16

    .line 295
    .line 296
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 297
    .line 298
    .line 299
    const-string v9, "th.co.promptpay"

    .line 300
    .line 301
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 306
    .line 307
    const-string v9, "rabbitlinepay"

    .line 308
    .line 309
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    const-string v10, "com.linecorp.rabbitlinepay"

    .line 314
    .line 315
    move-object v9, v15

    .line 316
    move-object/from16 v19, v8

    .line 317
    .line 318
    move-object v8, v15

    .line 319
    move-object/from16 v15, v16

    .line 320
    .line 321
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 322
    .line 323
    .line 324
    const-string v9, "com.linecorp.rabbitlinepay"

    .line 325
    .line 326
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 331
    .line 332
    const-string v9, "gcash"

    .line 333
    .line 334
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    const-string v10, "com.globe.gcash.android"

    .line 339
    .line 340
    move-object v9, v15

    .line 341
    move-object/from16 v20, v8

    .line 342
    .line 343
    move-object v8, v15

    .line 344
    move-object/from16 v15, v16

    .line 345
    .line 346
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 347
    .line 348
    .line 349
    const-string v9, "com.globe.gcash.android"

    .line 350
    .line 351
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 356
    .line 357
    const-string v9, "paymaya"

    .line 358
    .line 359
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    const-string v10, "com.paymaya"

    .line 364
    .line 365
    move-object v9, v15

    .line 366
    move-object/from16 v21, v8

    .line 367
    .line 368
    move-object v8, v15

    .line 369
    move-object/from16 v15, v16

    .line 370
    .line 371
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    .line 373
    .line 374
    const-string v9, "com.paymaya"

    .line 375
    .line 376
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 381
    .line 382
    const-string v9, "coins"

    .line 383
    .line 384
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    const-string v10, "ph.coins.btc"

    .line 389
    .line 390
    move-object v9, v15

    .line 391
    move-object/from16 v22, v8

    .line 392
    .line 393
    move-object v8, v15

    .line 394
    move-object/from16 v15, v16

    .line 395
    .line 396
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 397
    .line 398
    .line 399
    const-string v9, "ph.coins.btc"

    .line 400
    .line 401
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 406
    .line 407
    const-string v9, "momo"

    .line 408
    .line 409
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    const-string v10, "com.mservice.momotransfer"

    .line 414
    .line 415
    move-object v9, v15

    .line 416
    move-object/from16 v23, v8

    .line 417
    .line 418
    move-object v8, v15

    .line 419
    move-object/from16 v15, v16

    .line 420
    .line 421
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 422
    .line 423
    .line 424
    const-string v9, "com.mservice.momotransfer"

    .line 425
    .line 426
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 431
    .line 432
    const-string v9, "zalopay"

    .line 433
    .line 434
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 435
    .line 436
    .line 437
    move-result-object v11

    .line 438
    const-string v10, "com.vng.zalopay"

    .line 439
    .line 440
    move-object v9, v15

    .line 441
    move-object/from16 v24, v8

    .line 442
    .line 443
    move-object v8, v15

    .line 444
    move-object/from16 v15, v16

    .line 445
    .line 446
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 447
    .line 448
    .line 449
    const-string v9, "com.vng.zalopay"

    .line 450
    .line 451
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 456
    .line 457
    const-string v9, "viettelpay"

    .line 458
    .line 459
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    const-string v10, "com.viettel.viettelpay"

    .line 464
    .line 465
    move-object v9, v15

    .line 466
    move-object/from16 v25, v8

    .line 467
    .line 468
    move-object v8, v15

    .line 469
    move-object/from16 v15, v16

    .line 470
    .line 471
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 472
    .line 473
    .line 474
    const-string v9, "com.viettel.viettelpay"

    .line 475
    .line 476
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 477
    .line 478
    .line 479
    move-result-object v8

    .line 480
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 481
    .line 482
    const-string v9, "ascendmoney"

    .line 483
    .line 484
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    const-string v10, "com.ascendmoney.mobile"

    .line 489
    .line 490
    move-object v9, v15

    .line 491
    move-object/from16 v26, v8

    .line 492
    .line 493
    move-object v8, v15

    .line 494
    move-object/from16 v15, v16

    .line 495
    .line 496
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 497
    .line 498
    .line 499
    const-string v9, "com.ascendmoney.mobile"

    .line 500
    .line 501
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 506
    .line 507
    const-string v9, "alipay"

    .line 508
    .line 509
    const-string v10, "alipays"

    .line 510
    .line 511
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 516
    .line 517
    .line 518
    move-result-object v11

    .line 519
    const-string v10, "com.eg.android.AlipayGphone"

    .line 520
    .line 521
    move-object v9, v15

    .line 522
    move-object/from16 v27, v8

    .line 523
    .line 524
    move-object v8, v15

    .line 525
    move-object/from16 v15, v16

    .line 526
    .line 527
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 528
    .line 529
    .line 530
    const-string v9, "com.eg.android.AlipayGphone"

    .line 531
    .line 532
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 533
    .line 534
    .line 535
    move-result-object v8

    .line 536
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 537
    .line 538
    const-string v9, "weixin"

    .line 539
    .line 540
    const-string v10, "wechat"

    .line 541
    .line 542
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    const-string v10, "com.tencent.mm"

    .line 551
    .line 552
    move-object v9, v15

    .line 553
    move-object/from16 v28, v8

    .line 554
    .line 555
    move-object v8, v15

    .line 556
    move-object/from16 v15, v16

    .line 557
    .line 558
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 559
    .line 560
    .line 561
    const-string v9, "com.tencent.mm"

    .line 562
    .line 563
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 568
    .line 569
    const-string v9, "paypal"

    .line 570
    .line 571
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    const-string v10, "com.paypal.android.p2pmobile"

    .line 576
    .line 577
    move-object v9, v15

    .line 578
    move-object/from16 v29, v8

    .line 579
    .line 580
    move-object v8, v15

    .line 581
    move-object/from16 v15, v16

    .line 582
    .line 583
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 584
    .line 585
    .line 586
    const-string v9, "com.paypal.android.p2pmobile"

    .line 587
    .line 588
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 593
    .line 594
    const-string v9, "paytmmp"

    .line 595
    .line 596
    const-string v10, "paytmgn"

    .line 597
    .line 598
    filled-new-array {v9, v10}, [Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v9

    .line 602
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 603
    .line 604
    .line 605
    move-result-object v11

    .line 606
    const-string v10, "net.one97.paytm"

    .line 607
    .line 608
    move-object v9, v15

    .line 609
    move-object/from16 v30, v8

    .line 610
    .line 611
    move-object v8, v15

    .line 612
    move-object/from16 v15, v16

    .line 613
    .line 614
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 615
    .line 616
    .line 617
    const-string v9, "net.one97.paytm"

    .line 618
    .line 619
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 624
    .line 625
    const-string v9, "phonepe"

    .line 626
    .line 627
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    const-string v10, "com.phonepe.app"

    .line 632
    .line 633
    move-object v9, v15

    .line 634
    move-object/from16 v31, v8

    .line 635
    .line 636
    move-object v8, v15

    .line 637
    move-object/from16 v15, v16

    .line 638
    .line 639
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 640
    .line 641
    .line 642
    const-string v9, "com.phonepe.app"

    .line 643
    .line 644
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 645
    .line 646
    .line 647
    move-result-object v8

    .line 648
    new-instance v15, Lcom/tn/tranpay/helper/PayUtils$a;

    .line 649
    .line 650
    const-string v9, "jazzcash"

    .line 651
    .line 652
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 653
    .line 654
    .line 655
    move-result-object v11

    .line 656
    const/4 v14, 0x4

    .line 657
    const-string v10, "com.techlogix.mobilinkcustomer"

    .line 658
    .line 659
    const-string v13, "intent://deeplink#Intent;scheme=jazzcash;package=com.techlogix.mobilinkcustomer;end"

    .line 660
    .line 661
    move-object v9, v15

    .line 662
    move-object/from16 v32, v8

    .line 663
    .line 664
    move-object v8, v15

    .line 665
    move-object/from16 v15, v16

    .line 666
    .line 667
    invoke-direct/range {v9 .. v15}, Lcom/tn/tranpay/helper/PayUtils$a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 668
    .line 669
    .line 670
    const-string v9, "com.techlogix.mobilinkcustomer"

    .line 671
    .line 672
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 673
    .line 674
    .line 675
    move-result-object v8

    .line 676
    const/16 v9, 0x19

    .line 677
    .line 678
    new-array v9, v9, [Lkotlin/Pair;

    .line 679
    .line 680
    const/4 v10, 0x0

    .line 681
    aput-object v0, v9, v10

    .line 682
    .line 683
    const/4 v0, 0x1

    .line 684
    aput-object v1, v9, v0

    .line 685
    .line 686
    const/4 v0, 0x2

    .line 687
    aput-object v2, v9, v0

    .line 688
    .line 689
    const/4 v0, 0x3

    .line 690
    aput-object v3, v9, v0

    .line 691
    .line 692
    const/4 v0, 0x4

    .line 693
    aput-object v4, v9, v0

    .line 694
    .line 695
    const/4 v0, 0x5

    .line 696
    aput-object v5, v9, v0

    .line 697
    .line 698
    const/4 v0, 0x6

    .line 699
    aput-object v6, v9, v0

    .line 700
    .line 701
    const/4 v0, 0x7

    .line 702
    aput-object v7, v9, v0

    .line 703
    .line 704
    const/16 v0, 0x8

    .line 705
    .line 706
    aput-object v17, v9, v0

    .line 707
    .line 708
    const/16 v0, 0x9

    .line 709
    .line 710
    aput-object v18, v9, v0

    .line 711
    .line 712
    const/16 v0, 0xa

    .line 713
    .line 714
    aput-object v19, v9, v0

    .line 715
    .line 716
    const/16 v0, 0xb

    .line 717
    .line 718
    aput-object v20, v9, v0

    .line 719
    .line 720
    const/16 v0, 0xc

    .line 721
    .line 722
    aput-object v21, v9, v0

    .line 723
    .line 724
    const/16 v0, 0xd

    .line 725
    .line 726
    aput-object v22, v9, v0

    .line 727
    .line 728
    const/16 v0, 0xe

    .line 729
    .line 730
    aput-object v23, v9, v0

    .line 731
    .line 732
    const/16 v0, 0xf

    .line 733
    .line 734
    aput-object v24, v9, v0

    .line 735
    .line 736
    const/16 v0, 0x10

    .line 737
    .line 738
    aput-object v25, v9, v0

    .line 739
    .line 740
    const/16 v0, 0x11

    .line 741
    .line 742
    aput-object v26, v9, v0

    .line 743
    .line 744
    const/16 v0, 0x12

    .line 745
    .line 746
    aput-object v27, v9, v0

    .line 747
    .line 748
    const/16 v0, 0x13

    .line 749
    .line 750
    aput-object v28, v9, v0

    .line 751
    .line 752
    const/16 v0, 0x14

    .line 753
    .line 754
    aput-object v29, v9, v0

    .line 755
    .line 756
    const/16 v0, 0x15

    .line 757
    .line 758
    aput-object v30, v9, v0

    .line 759
    .line 760
    const/16 v0, 0x16

    .line 761
    .line 762
    aput-object v31, v9, v0

    .line 763
    .line 764
    const/16 v0, 0x17

    .line 765
    .line 766
    aput-object v32, v9, v0

    .line 767
    .line 768
    const/16 v0, 0x18

    .line 769
    .line 770
    aput-object v8, v9, v0

    .line 771
    .line 772
    invoke-static {v9}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    sput-object v0, Lcom/tn/tranpay/helper/PayUtils;->b:Ljava/util/Map;

    .line 777
    .line 778
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

.method public static synthetic a(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->p(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->o(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/helper/PayUtils;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, "tran_pay"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "toLowerCase(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "gopay"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "com.gojek.app"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1
.end method

.method private final h(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    sget-object v3, Llh/a;->a:Llh/a;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "PayUtils --> handleDeepLinkGeneric() --> scheme = "

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, ", host = "

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ", uri = "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x2

    .line 53
    invoke-static {v3, v4, v5, v6, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    .line 57
    .line 58
    invoke-virtual {v4, v0, v2}, Lcom/tn/tranpay/helper/PayUtils$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/helper/PayUtils$a;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-direct {p0, p1, v2}, Lcom/tn/tranpay/helper/PayUtils;->k(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :cond_2
    const-string v2, "intent"

    .line 70
    .line 71
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_3
    const-string v2, "https"

    .line 83
    .line 84
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-string v7, "uri.toString()"

    .line 89
    .line 90
    const/4 v8, 0x1

    .line 91
    if-nez v4, :cond_6

    .line 92
    .line 93
    const-string v4, "http"

    .line 94
    .line 95
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    filled-new-array {v4, v2}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, v8}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1

    .line 128
    :cond_5
    return v1

    .line 129
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->l(Landroid/net/Uri;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    return v8

    .line 136
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "PayUtils --> handleDeepLinkGeneric() --> \u672a\u77e5 "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, " \u94fe\u63a5\uff0c\u5c1d\u8bd5\u901a\u7528\u5904\u7406: "

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v3, v0, v5, v6, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1, v8}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    return p1
.end method

.method private final i(Landroid/net/Uri;)Z
    .locals 7

    .line 1
    sget-object v0, Llh/a;->a:Llh/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "PayUtils --> handleIntentScheme() --> \u5904\u7406 intent:// \u534f\u8bae: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v0, v1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/high16 v5, 0x10000000

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    sget-object v5, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "PayUtils --> handleIntentScheme() --> \u6210\u529f\u542f\u52a8 intent:// \u534f\u8bae"

    .line 64
    .line 65
    invoke-static {v0, p1, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return v4

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    const-string v4, "PayUtils --> handleIntentScheme() --> \u6ca1\u6709\u5e94\u7528\u53ef\u4ee5\u5904\u7406\u6b64 intent"

    .line 72
    .line 73
    invoke-static {v0, v4, v2, v3, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v5, "PayUtils --> handleIntentScheme() --> \u5c1d\u8bd5\u8df3\u8f6c\u5e94\u7528\u5e02\u573a: "

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v0, v4, v2, v3, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p1, v1, v3, v2}, Lcom/tn/tranpay/helper/PayUtils;->r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return p1

    .line 114
    :cond_2
    :goto_0
    return v1

    .line 115
    :goto_1
    sget-object v0, Llh/a;->a:Llh/a;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v5, "PayUtils --> handleIntentScheme() --> \u542f\u52a8\u5931\u8d25: "

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0, p1, v2, v3, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return v1
.end method

.method private final j(Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    sget-object v2, Llh/a;->a:Llh/a;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "PayUtils --> handleNoAppFound() --> \u5c1d\u8bd5\u5904\u7406\u672a\u5339\u914d\u7684 DeepLink: scheme = "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x2

    .line 34
    invoke-static {v2, v3, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Lcom/tn/tranpay/helper/PayUtils$b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/tn/tranpay/helper/PayUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    const/high16 v6, 0x10000000

    .line 50
    .line 51
    const-string v7, "android.intent.action.VIEW"

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-static {p0, v3, v4, v5, v4}, Lcom/tn/tranpay/helper/PayUtils;->e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v9, "PayUtils --> handleNoAppFound() --> \u5e94\u7528\u5df2\u5b89\u88c5\u4f46\u65e0\u6cd5\u76f4\u63a5\u5904\u7406\u6b64 DeepLink: "

    .line 68
    .line 69
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v2, v0, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v9, "PayUtils --> handleNoAppFound() --> DeepLink: "

    .line 88
    .line 89
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 103
    .line 104
    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    sget-object p1, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    const-string p1, "PayUtils --> handleNoAppFound() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u6210\u529f\u6253\u5f00"

    .line 120
    .line 121
    invoke-static {v2, p1, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    move v1, v8

    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Llh/a;->a:Llh/a;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v6, "PayUtils --> handleNoAppFound() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u5931\u8d25: "

    .line 139
    .line 140
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, "\uff0c\u5c1d\u8bd5\u5176\u4ed6\u65b9\u5f0f"

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v0, p1, v4, v5, v4}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :goto_0
    if-nez v1, :cond_3

    .line 159
    .line 160
    sget-object p1, Lcom/tn/tranpay/helper/PayUtils$b;->a:Lcom/tn/tranpay/helper/PayUtils$b;

    .line 161
    .line 162
    invoke-virtual {p1, v3}, Lcom/tn/tranpay/helper/PayUtils$b;->b(Ljava/lang/String;)Lcom/tn/tranpay/helper/PayUtils$a;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_2

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    move-object v0, v4

    .line 174
    :goto_1
    if-eqz v0, :cond_3

    .line 175
    .line 176
    sget-object v0, Llh/a;->a:Llh/a;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v6, "PayUtils --> handleNoAppFound() --> \u5c1d\u8bd5\u4f7f\u7528\u914d\u7f6e\u7684 intentScheme: "

    .line 188
    .line 189
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v0, v2, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const-string v0, "parse(config.intentScheme)"

    .line 211
    .line 212
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_3

    .line 220
    .line 221
    return v8

    .line 222
    :cond_3
    return v1

    .line 223
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v0, "PayUtils --> handleNoAppFound() --> \u5e94\u7528\u672a\u5b89\u88c5\uff0c\u8df3\u8f6c\u5e94\u7528\u5e02\u573a: "

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-static {v2, p1, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v3, v1, v5, v4}, Lcom/tn/tranpay/helper/PayUtils;->r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    return p1

    .line 248
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v9, "PayUtils --> handleNoAppFound() --> \u672a\u77e5\u534f\u8bae: "

    .line 254
    .line 255
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v0, "\uff0c\u5c1d\u8bd5\u901a\u7528\u65b9\u5f0f\u6253\u5f00"

    .line 262
    .line 263
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v2, v0, v4, v5, v4}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 274
    .line 275
    invoke-direct {v0, v7, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    sget-object p1, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 288
    .line 289
    .line 290
    const-string p1, "PayUtils --> handleNoAppFound() --> \u901a\u7528\u65b9\u5f0f\u6253\u5f00\u6210\u529f"

    .line 291
    .line 292
    invoke-static {v2, p1, v4, v5, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    .line 294
    .line 295
    move v1, v8

    .line 296
    goto :goto_2

    .line 297
    :catch_1
    move-exception p1

    .line 298
    sget-object v0, Llh/a;->a:Llh/a;

    .line 299
    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v3, "PayUtils --> handleNoAppFound() --> \u901a\u7528\u65b9\u5f0f\u6253\u5f00\u5931\u8d25: "

    .line 310
    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string p1, "\uff0c\u8fd4\u56de false\uff08\u5df2\u963b\u6b62 WebView \u52a0\u8f7d\uff09"

    .line 318
    .line 319
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-static {v0, p1, v4, v5, v4}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :goto_2
    return v1
.end method

.method private final k(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    sget-object v1, Llh/a;->a:Llh/a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "PayUtils --> handlePaymentAppDeepLink() --> \u5904\u7406 "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " deeplink"

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-static {v1, v2, v3, v4, v3}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "https"

    .line 43
    .line 44
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v5, 0x1

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move v0, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v2, "http"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_0
    const-string v2, "uri.toString()"

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0, v5}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v7, "PayUtils --> handlePaymentAppDeepLink() --> \u5c1d\u8bd5\u4f7f\u7528\u914d\u7f6e\u7684 intentScheme: "

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v1, v2, v3, v4, v3}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "parse(config.intentScheme)"

    .line 131
    .line 132
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/tn/tranpay/helper/PayUtils;->i(Landroid/net/Uri;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    return v5

    .line 142
    :cond_3
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->d()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->u(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    return p1

    .line 153
    :cond_4
    move p1, v0

    .line 154
    :goto_1
    return p1
.end method

.method private final l(Landroid/net/Uri;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v9, "app.link"

    .line 10
    .line 11
    const-string v10, "onelink.me"

    .line 12
    .line 13
    const-string v2, "gojek.link"

    .line 14
    .line 15
    const-string v3, "gopay.co.id"

    .line 16
    .line 17
    const-string v4, "alipay.com"

    .line 18
    .line 19
    const-string v5, "paypal.com"

    .line 20
    .line 21
    const-string v6, "paytm.com"

    .line 22
    .line 23
    const-string v7, "phonepe.com"

    .line 24
    .line 25
    const-string v8, "linkaja.id"

    .line 26
    .line 27
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Iterable;

    .line 36
    .line 37
    instance-of v3, v2, Ljava/util/Collection;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    check-cast v3, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    sget-object v1, Llh/a;->a:Llh/a;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "PayUtils --> handleWebPaymentLink() --> \u5df2\u77e5\u652f\u4ed8\u5e94\u7528 Web \u94fe\u63a5: "

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v2, 0x2

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-static {v1, v0, v3, v2, v3}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "uri.toString()"

    .line 103
    .line 104
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v4}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1

    .line 112
    :cond_3
    :goto_0
    return v1
.end method

.method private static final o(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p2, "$onConfirm"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final p(Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p2, "$onCancel"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic r(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/helper/PayUtils;->q(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "android.intent.action.VIEW"

    .line 8
    .line 9
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 v0, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-static {p0, p2, v0, v2, v0}, Lcom/tn/tranpay/helper/PayUtils;->e(Lcom/tn/tranpay/helper/PayUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    sget-object v1, Llh/a;->a:Llh/a;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u672a\u5b89\u88c5: "

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, "\uff0c\u5c1d\u8bd5\u901a\u7528\u65b9\u5f0f\u6253\u5f00"

    .line 42
    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {v1, p2, v0, v2, v0}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v4}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_0
    sget-object p1, Llh/a;->a:Llh/a;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v5, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u5df2\u5b89\u88c5: "

    .line 66
    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "\uff0c\u76f4\u63a5\u542f\u52a8"

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {p1, v3, v0, v2, v0}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    sget-object v3, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/high16 v6, 0x10000

    .line 99
    .line 100
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const/4 v6, 0x0

    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    :try_start_0
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u6210\u529f\u542f\u52a8\u5e94\u7528: "

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {p1, p2, v0, v2, v0}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    sget-object p2, Llh/a;->a:Llh/a;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u542f\u52a8\u5931\u8d25: "

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p2, p1, v0, v2, v0}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    move v4, v6

    .line 163
    :goto_0
    return v4

    .line 164
    :cond_1
    const-string p2, "PayUtils --> tryStartAppDirectly() --> \u5e94\u7528\u65e0\u6cd5\u76f4\u63a5\u5904\u7406\u94fe\u63a5\uff0c\u5c1d\u8bd5\u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f"

    .line 165
    .line 166
    invoke-static {p1, p2, v0, v2, v0}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    :try_start_1
    invoke-virtual {v3}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    .line 178
    .line 179
    const-string p2, "PayUtils --> tryStartAppDirectly() --> \u6210\u529f\u7528\u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u6253\u5f00"

    .line 180
    .line 181
    invoke-static {p1, p2, v0, v2, v0}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :catch_1
    move-exception p1

    .line 186
    sget-object p2, Llh/a;->a:Llh/a;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v3, "PayUtils --> tryStartAppDirectly() --> \u7cfb\u7edf\u9ed8\u8ba4\u65b9\u5f0f\u4e5f\u5931\u8d25: "

    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p2, p1, v0, v2, v0}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    move v4, v6

    .line 213
    :goto_1
    return v4
.end method

.method private final u(Landroid/net/Uri;Lcom/tn/tranpay/helper/PayUtils$a;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p2}, Lcom/tn/tranpay/helper/PayUtils$a;->d()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, "?"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget-object v3, Llh/a;->a:Llh/a;

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v5, "PayUtils --> tryWebFallbacks() --> \u5c1d\u8bd5 Web \u56de\u9000: "

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x2

    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-static {v3, v4, v6, v5, v6}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual {p0, v2, v3}, Lcom/tn/tranpay/helper/PayUtils;->s(Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    return v3

    .line 95
    :cond_4
    return v1
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    .line 16
    sget-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, p1

    .line 34
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->p()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    sget-object v0, Llh/a;->a:Llh/a;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "PayUtils --> checkAppInstalled() --> \u5e94\u7528\u672a\u5b89\u88c5 [\u5305\u540d: "

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, "] [\u5f02\u5e38\u7c7b\u578b: "

    .line 99
    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, "]"

    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1, p2}, Llh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "link"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "uri"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->h(Landroid/net/Uri;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final m(JJLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;-><init>(Lcom/tn/tranpay/helper/PayUtils;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    if-eq v4, v5, :cond_3

    .line 45
    .line 46
    if-ne v4, v6, :cond_2

    .line 47
    .line 48
    iget-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    .line 49
    .line 50
    iget-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    .line 51
    .line 52
    iget-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    .line 53
    .line 54
    iget-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    move-object/from16 v16, v4

    .line 62
    .line 63
    move-object v4, v1

    .line 64
    move-object/from16 v1, v16

    .line 65
    .line 66
    move-wide/from16 v17, v8

    .line 67
    .line 68
    move-wide v8, v12

    .line 69
    move-wide/from16 v12, v17

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    iget-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    .line 82
    .line 83
    iget-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    .line 84
    .line 85
    iget-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    .line 86
    .line 87
    iget-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v8

    .line 104
    move-wide/from16 v10, p3

    .line 105
    .line 106
    move-object v4, v1

    .line 107
    move-wide v12, v8

    .line 108
    move-wide/from16 v8, p1

    .line 109
    .line 110
    move-object/from16 v1, p5

    .line 111
    .line 112
    :goto_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v14, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$2;

    .line 117
    .line 118
    invoke-direct {v14, v1, v7}, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput-wide v8, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    .line 124
    .line 125
    iput-wide v10, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    .line 126
    .line 127
    iput-wide v12, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    .line 128
    .line 129
    iput v5, v4, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 130
    .line 131
    invoke-static {v0, v14, v4}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    if-ne v0, v3, :cond_5

    .line 136
    .line 137
    return-object v3

    .line 138
    :cond_5
    move-object/from16 v16, v4

    .line 139
    .line 140
    move-object v4, v1

    .line 141
    move-object/from16 v1, v16

    .line 142
    .line 143
    move-wide/from16 v17, v8

    .line 144
    .line 145
    move-wide v8, v12

    .line 146
    move-wide/from16 v12, v17

    .line 147
    .line 148
    :goto_2
    :try_start_2
    sget-object v14, Llh/a;->a:Llh/a;

    .line 149
    .line 150
    const-string v15, "Action succeeded"

    .line 151
    .line 152
    invoke-static {v14, v15, v7, v6, v7}, Llh/a;->c(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    move-object/from16 v16, v4

    .line 158
    .line 159
    move-object v4, v1

    .line 160
    move-object/from16 v1, v16

    .line 161
    .line 162
    move-wide/from16 v17, v8

    .line 163
    .line 164
    move-wide v8, v12

    .line 165
    move-wide/from16 v12, v17

    .line 166
    .line 167
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v14

    .line 171
    sub-long/2addr v14, v8

    .line 172
    add-long/2addr v14, v12

    .line 173
    cmp-long v14, v14, v10

    .line 174
    .line 175
    if-gtz v14, :cond_6

    .line 176
    .line 177
    sget-object v14, Llh/a;->a:Llh/a;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v15, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v5, "Action failed: "

    .line 189
    .line 190
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, ". Retrying in "

    .line 197
    .line 198
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, "ms"

    .line 205
    .line 206
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v14, v0, v7, v6, v7}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iput-object v4, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->L$0:Ljava/lang/Object;

    .line 217
    .line 218
    iput-wide v12, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$0:J

    .line 219
    .line 220
    iput-wide v10, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$1:J

    .line 221
    .line 222
    iput-wide v8, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->J$2:J

    .line 223
    .line 224
    iput v6, v1, Lcom/tn/tranpay/helper/PayUtils$retryWithFixedIntervalAndTimeLimit$1;->label:I

    .line 225
    .line 226
    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v3, :cond_1

    .line 231
    .line 232
    return-object v3

    .line 233
    :goto_4
    const/4 v5, 0x1

    .line 234
    goto :goto_1

    .line 235
    :cond_6
    sget-object v0, Llh/a;->a:Llh/a;

    .line 236
    .line 237
    const-string v1, "Exceeded maximum retry time"

    .line 238
    .line 239
    invoke-static {v0, v1, v7, v6, v7}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v0
.end method

.method public final n(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onConfirm"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onCancel"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v1, Lcom/tn/lib/tranpay/R$string;->pay_abandon_transaction:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    .line 29
    .line 30
    sget v1, Lcom/tn/lib/tranpay/R$string;->pay_confirm:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/tn/tranpay/helper/e;

    .line 37
    .line 38
    invoke-direct {v2, p2}, Lcom/tn/tranpay/helper/e;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    sget p2, Lcom/tn/lib/tranpay/R$string;->pay_cancel:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/tn/tranpay/helper/f;

    .line 51
    .line 52
    invoke-direct {p2, p3}, Lcom/tn/tranpay/helper/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final q(Ljava/lang/String;Z)Z
    .locals 8

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    const-string v2, "android.intent.action.VIEW"

    .line 10
    .line 11
    const-string v3, "market://details?id="

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p2

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :goto_0
    new-instance v3, Landroid/content/Intent;

    .line 51
    .line 52
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {v3, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    sget-object p2, Llh/a;->a:Llh/a;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "PayUtils --> startAppMarket() --> \u6210\u529f\u542f\u52a8\u5e94\u7528\u5e02\u573a: "

    .line 79
    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {p2, v3, v5, v4, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_1
    sget-object v3, Llh/a;->a:Llh/a;

    .line 95
    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v7, "PayUtils --> startAppMarket() --> \u542f\u52a8\u5e94\u7528\u5e02\u573a\u5931\u8d25: "

    .line 102
    .line 103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {v3, p2, v5, v4, v5}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v6, "https://play.google.com/store/apps/details?id="

    .line 122
    .line 123
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    new-instance v6, Landroid/content/Intent;

    .line 134
    .line 135
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {v6, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "PayUtils --> startAppMarket() --> \u4f7f\u7528 Google Play \u542f\u52a8: "

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v3, p1, v5, v4, v5}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catch_1
    move-exception p1

    .line 176
    sget-object p2, Llh/a;->a:Llh/a;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v1, "PayUtils --> startAppMarket() --> Google Play \u4e5f\u5931\u8d25: "

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {p2, p1, v5, v4, v5}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x0

    .line 199
    :goto_2
    return v0
.end method

.method public final s(Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v4, "android.intent.action.VIEW"

    .line 19
    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    const/high16 p2, 0x10000000

    .line 30
    .line 31
    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :catch_1
    move-exception p2

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    :goto_0
    sget-object p2, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Llh/a;->a:Llh/a;

    .line 63
    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v4, "PayUtils --> startUrl() --> \u6210\u529f\u542f\u52a8: "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {p2, v3, v2, v0, v2}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    sget-object p2, Llh/a;->a:Llh/a;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "PayUtils --> startUrl() --> \u6ca1\u6709\u5e94\u7528\u80fd\u5904\u7406: "

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {p2, v3, v2, v0, v2}, Llh/a;->k(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->j(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return p1

    .line 113
    :goto_1
    sget-object p2, Llh/a;->a:Llh/a;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v4, "PayUtils --> startUrl() --> \u542f\u52a8\u5931\u8d25: "

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p2, p1, v2, v0, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    return v1

    .line 136
    :goto_3
    sget-object v1, Llh/a;->a:Llh/a;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "PayUtils --> startUrl() --> ActivityNotFoundException: "

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {v1, p2, v2, v0, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1}, Lcom/tn/tranpay/helper/PayUtils;->j(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    return p1
.end method
