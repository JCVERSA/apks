.class public final enum Lcom/amazonaws/services/s3/model/Region;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_CapeTown:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_HongKong:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CN_Ningxia:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_London:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Milan:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Paris:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Stockholm:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum ME_Bahrain:Lcom/amazonaws/services/s3/model/Region;

.field public static final S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

.field public static final enum SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_East_2:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Gov_East_1:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Standard:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West_2:Lcom/amazonaws/services/s3/model/Region;


# instance fields
.field private final regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "US_Standard"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 11
    .line 12
    new-instance v2, Lcom/amazonaws/services/s3/model/Region;

    .line 13
    .line 14
    const-string v3, "us-east-2"

    .line 15
    .line 16
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "US_East_2"

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v2, v4, v5, v3}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lcom/amazonaws/services/s3/model/Region;->US_East_2:Lcom/amazonaws/services/s3/model/Region;

    .line 27
    .line 28
    new-instance v3, Lcom/amazonaws/services/s3/model/Region;

    .line 29
    .line 30
    const-string v4, "us-west-1"

    .line 31
    .line 32
    filled-new-array {v4}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v6, "US_West"

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    invoke-direct {v3, v6, v7, v4}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v3, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    .line 43
    .line 44
    new-instance v4, Lcom/amazonaws/services/s3/model/Region;

    .line 45
    .line 46
    const-string v6, "us-west-2"

    .line 47
    .line 48
    filled-new-array {v6}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const-string v8, "US_West_2"

    .line 53
    .line 54
    const/4 v9, 0x3

    .line 55
    invoke-direct {v4, v8, v9, v6}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v4, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    .line 59
    .line 60
    new-instance v6, Lcom/amazonaws/services/s3/model/Region;

    .line 61
    .line 62
    const-string v8, "s3-us-gov-west-1"

    .line 63
    .line 64
    filled-new-array {v8}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    const-string v10, "US_GovCloud"

    .line 69
    .line 70
    const/4 v11, 0x4

    .line 71
    invoke-direct {v6, v10, v11, v8}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v6, Lcom/amazonaws/services/s3/model/Region;->US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

    .line 75
    .line 76
    new-instance v8, Lcom/amazonaws/services/s3/model/Region;

    .line 77
    .line 78
    const-string v10, "s3-us-gov-east-1"

    .line 79
    .line 80
    filled-new-array {v10}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    const-string v12, "US_Gov_East_1"

    .line 85
    .line 86
    const/4 v13, 0x5

    .line 87
    invoke-direct {v8, v12, v13, v10}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lcom/amazonaws/services/s3/model/Region;->US_Gov_East_1:Lcom/amazonaws/services/s3/model/Region;

    .line 91
    .line 92
    new-instance v10, Lcom/amazonaws/services/s3/model/Region;

    .line 93
    .line 94
    const-string v12, "eu-west-1"

    .line 95
    .line 96
    const-string v14, "EU"

    .line 97
    .line 98
    filled-new-array {v12, v14}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    const-string v14, "EU_Ireland"

    .line 103
    .line 104
    const/4 v15, 0x6

    .line 105
    invoke-direct {v10, v14, v15, v12}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v10, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    .line 109
    .line 110
    new-instance v12, Lcom/amazonaws/services/s3/model/Region;

    .line 111
    .line 112
    const-string v14, "eu-west-2"

    .line 113
    .line 114
    filled-new-array {v14}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    const-string v15, "EU_London"

    .line 119
    .line 120
    const/4 v13, 0x7

    .line 121
    invoke-direct {v12, v15, v13, v14}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sput-object v12, Lcom/amazonaws/services/s3/model/Region;->EU_London:Lcom/amazonaws/services/s3/model/Region;

    .line 125
    .line 126
    new-instance v14, Lcom/amazonaws/services/s3/model/Region;

    .line 127
    .line 128
    const-string v15, "eu-west-3"

    .line 129
    .line 130
    filled-new-array {v15}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    const-string v13, "EU_Paris"

    .line 135
    .line 136
    const/16 v11, 0x8

    .line 137
    .line 138
    invoke-direct {v14, v13, v11, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v14, Lcom/amazonaws/services/s3/model/Region;->EU_Paris:Lcom/amazonaws/services/s3/model/Region;

    .line 142
    .line 143
    new-instance v13, Lcom/amazonaws/services/s3/model/Region;

    .line 144
    .line 145
    const-string v15, "eu-central-1"

    .line 146
    .line 147
    filled-new-array {v15}, [Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    const-string v11, "EU_Frankfurt"

    .line 152
    .line 153
    const/16 v9, 0x9

    .line 154
    .line 155
    invoke-direct {v13, v11, v9, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sput-object v13, Lcom/amazonaws/services/s3/model/Region;->EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

    .line 159
    .line 160
    new-instance v11, Lcom/amazonaws/services/s3/model/Region;

    .line 161
    .line 162
    const-string v15, "eu-north-1"

    .line 163
    .line 164
    filled-new-array {v15}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    const-string v9, "EU_Stockholm"

    .line 169
    .line 170
    const/16 v7, 0xa

    .line 171
    .line 172
    invoke-direct {v11, v9, v7, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v11, Lcom/amazonaws/services/s3/model/Region;->EU_Stockholm:Lcom/amazonaws/services/s3/model/Region;

    .line 176
    .line 177
    new-instance v9, Lcom/amazonaws/services/s3/model/Region;

    .line 178
    .line 179
    const-string v15, "ap-east-1"

    .line 180
    .line 181
    filled-new-array {v15}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    const-string v7, "AP_HongKong"

    .line 186
    .line 187
    const/16 v5, 0xb

    .line 188
    .line 189
    invoke-direct {v9, v7, v5, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sput-object v9, Lcom/amazonaws/services/s3/model/Region;->AP_HongKong:Lcom/amazonaws/services/s3/model/Region;

    .line 193
    .line 194
    new-instance v7, Lcom/amazonaws/services/s3/model/Region;

    .line 195
    .line 196
    const-string v15, "ap-south-1"

    .line 197
    .line 198
    filled-new-array {v15}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    const-string v5, "AP_Mumbai"

    .line 203
    .line 204
    const/16 v1, 0xc

    .line 205
    .line 206
    invoke-direct {v7, v5, v1, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sput-object v7, Lcom/amazonaws/services/s3/model/Region;->AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

    .line 210
    .line 211
    new-instance v5, Lcom/amazonaws/services/s3/model/Region;

    .line 212
    .line 213
    const-string v15, "ap-southeast-1"

    .line 214
    .line 215
    filled-new-array {v15}, [Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    const-string v1, "AP_Singapore"

    .line 220
    .line 221
    move-object/from16 v16, v7

    .line 222
    .line 223
    const/16 v7, 0xd

    .line 224
    .line 225
    invoke-direct {v5, v1, v7, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sput-object v5, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    .line 229
    .line 230
    new-instance v1, Lcom/amazonaws/services/s3/model/Region;

    .line 231
    .line 232
    const-string v15, "ap-southeast-2"

    .line 233
    .line 234
    filled-new-array {v15}, [Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    const-string v7, "AP_Sydney"

    .line 239
    .line 240
    move-object/from16 v17, v5

    .line 241
    .line 242
    const/16 v5, 0xe

    .line 243
    .line 244
    invoke-direct {v1, v7, v5, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sput-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    .line 248
    .line 249
    new-instance v7, Lcom/amazonaws/services/s3/model/Region;

    .line 250
    .line 251
    const-string v15, "ap-northeast-1"

    .line 252
    .line 253
    filled-new-array {v15}, [Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    const-string v5, "AP_Tokyo"

    .line 258
    .line 259
    move-object/from16 v18, v1

    .line 260
    .line 261
    const/16 v1, 0xf

    .line 262
    .line 263
    invoke-direct {v7, v5, v1, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sput-object v7, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    .line 267
    .line 268
    new-instance v5, Lcom/amazonaws/services/s3/model/Region;

    .line 269
    .line 270
    const-string v15, "ap-northeast-2"

    .line 271
    .line 272
    filled-new-array {v15}, [Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    const-string v1, "AP_Seoul"

    .line 277
    .line 278
    move-object/from16 v19, v7

    .line 279
    .line 280
    const/16 v7, 0x10

    .line 281
    .line 282
    invoke-direct {v5, v1, v7, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sput-object v5, Lcom/amazonaws/services/s3/model/Region;->AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

    .line 286
    .line 287
    new-instance v1, Lcom/amazonaws/services/s3/model/Region;

    .line 288
    .line 289
    const-string v15, "sa-east-1"

    .line 290
    .line 291
    filled-new-array {v15}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    const-string v7, "SA_SaoPaulo"

    .line 296
    .line 297
    move-object/from16 v20, v5

    .line 298
    .line 299
    const/16 v5, 0x11

    .line 300
    .line 301
    invoke-direct {v1, v7, v5, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    sput-object v1, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    .line 305
    .line 306
    new-instance v7, Lcom/amazonaws/services/s3/model/Region;

    .line 307
    .line 308
    const-string v15, "ca-central-1"

    .line 309
    .line 310
    filled-new-array {v15}, [Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    const-string v5, "CA_Montreal"

    .line 315
    .line 316
    move-object/from16 v21, v1

    .line 317
    .line 318
    const/16 v1, 0x12

    .line 319
    .line 320
    invoke-direct {v7, v5, v1, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v7, Lcom/amazonaws/services/s3/model/Region;->CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

    .line 324
    .line 325
    new-instance v5, Lcom/amazonaws/services/s3/model/Region;

    .line 326
    .line 327
    const-string v15, "cn-north-1"

    .line 328
    .line 329
    filled-new-array {v15}, [Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v15

    .line 333
    const-string v1, "CN_Beijing"

    .line 334
    .line 335
    move-object/from16 v22, v7

    .line 336
    .line 337
    const/16 v7, 0x13

    .line 338
    .line 339
    invoke-direct {v5, v1, v7, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sput-object v5, Lcom/amazonaws/services/s3/model/Region;->CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

    .line 343
    .line 344
    new-instance v1, Lcom/amazonaws/services/s3/model/Region;

    .line 345
    .line 346
    const-string v15, "cn-northwest-1"

    .line 347
    .line 348
    filled-new-array {v15}, [Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    const-string v7, "CN_Ningxia"

    .line 353
    .line 354
    move-object/from16 v23, v5

    .line 355
    .line 356
    const/16 v5, 0x14

    .line 357
    .line 358
    invoke-direct {v1, v7, v5, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sput-object v1, Lcom/amazonaws/services/s3/model/Region;->CN_Ningxia:Lcom/amazonaws/services/s3/model/Region;

    .line 362
    .line 363
    new-instance v7, Lcom/amazonaws/services/s3/model/Region;

    .line 364
    .line 365
    const-string v15, "me-south-1"

    .line 366
    .line 367
    filled-new-array {v15}, [Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v15

    .line 371
    const-string v5, "ME_Bahrain"

    .line 372
    .line 373
    move-object/from16 v24, v1

    .line 374
    .line 375
    const/16 v1, 0x15

    .line 376
    .line 377
    invoke-direct {v7, v5, v1, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v7, Lcom/amazonaws/services/s3/model/Region;->ME_Bahrain:Lcom/amazonaws/services/s3/model/Region;

    .line 381
    .line 382
    new-instance v5, Lcom/amazonaws/services/s3/model/Region;

    .line 383
    .line 384
    const-string v15, "eu-south-1"

    .line 385
    .line 386
    filled-new-array {v15}, [Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v15

    .line 390
    const-string v1, "EU_Milan"

    .line 391
    .line 392
    move-object/from16 v25, v7

    .line 393
    .line 394
    const/16 v7, 0x16

    .line 395
    .line 396
    invoke-direct {v5, v1, v7, v15}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    sput-object v5, Lcom/amazonaws/services/s3/model/Region;->EU_Milan:Lcom/amazonaws/services/s3/model/Region;

    .line 400
    .line 401
    new-instance v1, Lcom/amazonaws/services/s3/model/Region;

    .line 402
    .line 403
    const-string v7, "af-south-1"

    .line 404
    .line 405
    filled-new-array {v7}, [Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    const-string v15, "AP_CapeTown"

    .line 410
    .line 411
    move-object/from16 v26, v5

    .line 412
    .line 413
    const/16 v5, 0x17

    .line 414
    .line 415
    invoke-direct {v1, v15, v5, v7}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    sput-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_CapeTown:Lcom/amazonaws/services/s3/model/Region;

    .line 419
    .line 420
    const/16 v5, 0x18

    .line 421
    .line 422
    new-array v5, v5, [Lcom/amazonaws/services/s3/model/Region;

    .line 423
    .line 424
    const/4 v7, 0x0

    .line 425
    aput-object v0, v5, v7

    .line 426
    .line 427
    const/4 v0, 0x1

    .line 428
    aput-object v2, v5, v0

    .line 429
    .line 430
    const/4 v0, 0x2

    .line 431
    aput-object v3, v5, v0

    .line 432
    .line 433
    const/4 v0, 0x3

    .line 434
    aput-object v4, v5, v0

    .line 435
    .line 436
    const/4 v0, 0x4

    .line 437
    aput-object v6, v5, v0

    .line 438
    .line 439
    const/4 v0, 0x5

    .line 440
    aput-object v8, v5, v0

    .line 441
    .line 442
    const/4 v0, 0x6

    .line 443
    aput-object v10, v5, v0

    .line 444
    .line 445
    const/4 v0, 0x7

    .line 446
    aput-object v12, v5, v0

    .line 447
    .line 448
    const/16 v0, 0x8

    .line 449
    .line 450
    aput-object v14, v5, v0

    .line 451
    .line 452
    const/16 v0, 0x9

    .line 453
    .line 454
    aput-object v13, v5, v0

    .line 455
    .line 456
    const/16 v0, 0xa

    .line 457
    .line 458
    aput-object v11, v5, v0

    .line 459
    .line 460
    const/16 v0, 0xb

    .line 461
    .line 462
    aput-object v9, v5, v0

    .line 463
    .line 464
    const/16 v0, 0xc

    .line 465
    .line 466
    aput-object v16, v5, v0

    .line 467
    .line 468
    const/16 v0, 0xd

    .line 469
    .line 470
    aput-object v17, v5, v0

    .line 471
    .line 472
    const/16 v0, 0xe

    .line 473
    .line 474
    aput-object v18, v5, v0

    .line 475
    .line 476
    const/16 v0, 0xf

    .line 477
    .line 478
    aput-object v19, v5, v0

    .line 479
    .line 480
    const/16 v0, 0x10

    .line 481
    .line 482
    aput-object v20, v5, v0

    .line 483
    .line 484
    const/16 v0, 0x11

    .line 485
    .line 486
    aput-object v21, v5, v0

    .line 487
    .line 488
    const/16 v0, 0x12

    .line 489
    .line 490
    aput-object v22, v5, v0

    .line 491
    .line 492
    const/16 v0, 0x13

    .line 493
    .line 494
    aput-object v23, v5, v0

    .line 495
    .line 496
    const/16 v0, 0x14

    .line 497
    .line 498
    aput-object v24, v5, v0

    .line 499
    .line 500
    const/16 v0, 0x15

    .line 501
    .line 502
    aput-object v25, v5, v0

    .line 503
    .line 504
    const/16 v0, 0x16

    .line 505
    .line 506
    aput-object v26, v5, v0

    .line 507
    .line 508
    const/16 v0, 0x17

    .line 509
    .line 510
    aput-object v1, v5, v0

    .line 511
    .line 512
    sput-object v5, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    .line 513
    .line 514
    const-string v0, "s3[-.]([^.]+)\\.amazonaws\\.com(\\.[^.]*)?"

    .line 515
    .line 516
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    .line 521
    .line 522
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const-string v0, "US"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    const-string v0, "us-east-1"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {}, Lcom/amazonaws/services/s3/model/Region;->values()[Lcom/amazonaws/services/s3/model/Region;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_2

    .line 27
    .line 28
    aget-object v3, v0, v2

    .line 29
    .line 30
    iget-object v4, v3, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Cannot create enum from "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p0, " value!"

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_3
    :goto_1
    sget-object p0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 73
    .line 74
    return-object p0
.end method

.method private getFirstRegionId0()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/s3/model/Region;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/amazonaws/services/s3/model/Region;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Region;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Region;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/amazonaws/services/s3/model/Region;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getFirstRegionId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toAWSRegion()Lcom/amazonaws/regions/Region;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "s3.amazonaws.com"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->b(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
