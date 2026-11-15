.class public abstract Lff/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    const-string v6, "android.permission.PICTURE_IN_PICTURE"

    .line 2
    .line 3
    const-string v7, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 6
    .line 7
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 8
    .line 9
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 10
    .line 11
    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 12
    .line 13
    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 14
    .line 15
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/collections/SetsKt;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lff/b;->a:Ljava/util/Set;

    .line 26
    .line 27
    const-string v0, "android.permission.READ_CALENDAR"

    .line 28
    .line 29
    const-string v1, "android.permission-group.CALENDAR"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 36
    .line 37
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "android.permission.READ_CALL_LOG"

    .line 42
    .line 43
    const-string v3, "android.permission-group.CALL_LOG"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v4, "android.permission.WRITE_CALL_LOG"

    .line 50
    .line 51
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 56
    .line 57
    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v5, "android.permission.CAMERA"

    .line 62
    .line 63
    const-string v6, "android.permission-group.CAMERA"

    .line 64
    .line 65
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "android.permission.READ_CONTACTS"

    .line 70
    .line 71
    const-string v7, "android.permission-group.CONTACTS"

    .line 72
    .line 73
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    const-string v8, "android.permission.WRITE_CONTACTS"

    .line 78
    .line 79
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const-string v9, "android.permission.GET_ACCOUNTS"

    .line 84
    .line 85
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    .line 90
    .line 91
    const-string v10, "android.permission-group.LOCATION"

    .line 92
    .line 93
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    .line 98
    .line 99
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const-string v12, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 104
    .line 105
    invoke-static {v12, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const-string v12, "android.permission.RECORD_AUDIO"

    .line 110
    .line 111
    const-string v13, "android.permission-group.MICROPHONE"

    .line 112
    .line 113
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v13, "android.permission.READ_PHONE_STATE"

    .line 118
    .line 119
    const-string v14, "android.permission-group.PHONE"

    .line 120
    .line 121
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    const-string v15, "android.permission.READ_PHONE_NUMBERS"

    .line 126
    .line 127
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    move-object/from16 v16, v15

    .line 132
    .line 133
    const-string v15, "android.permission.CALL_PHONE"

    .line 134
    .line 135
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    move-object/from16 v17, v15

    .line 140
    .line 141
    const-string v15, "android.permission.ANSWER_PHONE_CALLS"

    .line 142
    .line 143
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    move-object/from16 v18, v15

    .line 148
    .line 149
    const-string v15, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 150
    .line 151
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    move-object/from16 v19, v15

    .line 156
    .line 157
    const-string v15, "android.permission.USE_SIP"

    .line 158
    .line 159
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    move-object/from16 v20, v15

    .line 164
    .line 165
    const-string v15, "android.permission.ACCEPT_HANDOVER"

    .line 166
    .line 167
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    const-string v15, "android.permission.BODY_SENSORS"

    .line 172
    .line 173
    move-object/from16 v21, v14

    .line 174
    .line 175
    const-string v14, "android.permission-group.SENSORS"

    .line 176
    .line 177
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    move-object/from16 v22, v14

    .line 182
    .line 183
    const-string v14, "android.permission.ACTIVITY_RECOGNITION"

    .line 184
    .line 185
    move-object/from16 v23, v15

    .line 186
    .line 187
    const-string v15, "android.permission-group.ACTIVITY_RECOGNITION"

    .line 188
    .line 189
    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 190
    .line 191
    .line 192
    move-result-object v14

    .line 193
    const-string v15, "android.permission.SEND_SMS"

    .line 194
    .line 195
    move-object/from16 v24, v14

    .line 196
    .line 197
    const-string v14, "android.permission-group.SMS"

    .line 198
    .line 199
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    move-object/from16 v25, v15

    .line 204
    .line 205
    const-string v15, "android.permission.RECEIVE_SMS"

    .line 206
    .line 207
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    move-object/from16 v26, v15

    .line 212
    .line 213
    const-string v15, "android.permission.READ_SMS"

    .line 214
    .line 215
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    move-object/from16 v27, v15

    .line 220
    .line 221
    const-string v15, "android.permission.RECEIVE_WAP_PUSH"

    .line 222
    .line 223
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    move-object/from16 v28, v15

    .line 228
    .line 229
    const-string v15, "android.permission.RECEIVE_MMS"

    .line 230
    .line 231
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    const-string v15, "android.permission.READ_EXTERNAL_STORAGE"

    .line 236
    .line 237
    move-object/from16 v29, v14

    .line 238
    .line 239
    const-string v14, "android.permission-group.STORAGE"

    .line 240
    .line 241
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    move-object/from16 v30, v15

    .line 246
    .line 247
    const-string v15, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 248
    .line 249
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    move-object/from16 v31, v15

    .line 254
    .line 255
    const-string v15, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 256
    .line 257
    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    move-object/from16 v32, v14

    .line 262
    .line 263
    const/16 v14, 0x1e

    .line 264
    .line 265
    new-array v14, v14, [Lkotlin/Pair;

    .line 266
    .line 267
    const/16 v33, 0x0

    .line 268
    .line 269
    aput-object v0, v14, v33

    .line 270
    .line 271
    const/4 v0, 0x1

    .line 272
    aput-object v1, v14, v0

    .line 273
    .line 274
    const/4 v1, 0x2

    .line 275
    aput-object v2, v14, v1

    .line 276
    .line 277
    const/4 v2, 0x3

    .line 278
    aput-object v4, v14, v2

    .line 279
    .line 280
    const/4 v4, 0x4

    .line 281
    aput-object v3, v14, v4

    .line 282
    .line 283
    const/4 v3, 0x5

    .line 284
    aput-object v5, v14, v3

    .line 285
    .line 286
    const/4 v5, 0x6

    .line 287
    aput-object v6, v14, v5

    .line 288
    .line 289
    const/4 v6, 0x7

    .line 290
    aput-object v8, v14, v6

    .line 291
    .line 292
    const/16 v6, 0x8

    .line 293
    .line 294
    aput-object v7, v14, v6

    .line 295
    .line 296
    const/16 v6, 0x9

    .line 297
    .line 298
    aput-object v9, v14, v6

    .line 299
    .line 300
    const/16 v6, 0xa

    .line 301
    .line 302
    aput-object v11, v14, v6

    .line 303
    .line 304
    const/16 v6, 0xb

    .line 305
    .line 306
    aput-object v10, v14, v6

    .line 307
    .line 308
    const/16 v6, 0xc

    .line 309
    .line 310
    aput-object v12, v14, v6

    .line 311
    .line 312
    const/16 v6, 0xd

    .line 313
    .line 314
    aput-object v13, v14, v6

    .line 315
    .line 316
    const/16 v6, 0xe

    .line 317
    .line 318
    aput-object v16, v14, v6

    .line 319
    .line 320
    const/16 v6, 0xf

    .line 321
    .line 322
    aput-object v17, v14, v6

    .line 323
    .line 324
    const/16 v6, 0x10

    .line 325
    .line 326
    aput-object v18, v14, v6

    .line 327
    .line 328
    const/16 v6, 0x11

    .line 329
    .line 330
    aput-object v19, v14, v6

    .line 331
    .line 332
    const/16 v6, 0x12

    .line 333
    .line 334
    aput-object v20, v14, v6

    .line 335
    .line 336
    const/16 v6, 0x13

    .line 337
    .line 338
    aput-object v21, v14, v6

    .line 339
    .line 340
    const/16 v6, 0x14

    .line 341
    .line 342
    aput-object v23, v14, v6

    .line 343
    .line 344
    const/16 v6, 0x15

    .line 345
    .line 346
    aput-object v24, v14, v6

    .line 347
    .line 348
    const/16 v6, 0x16

    .line 349
    .line 350
    aput-object v25, v14, v6

    .line 351
    .line 352
    const/16 v6, 0x17

    .line 353
    .line 354
    aput-object v26, v14, v6

    .line 355
    .line 356
    const/16 v6, 0x18

    .line 357
    .line 358
    aput-object v27, v14, v6

    .line 359
    .line 360
    const/16 v6, 0x19

    .line 361
    .line 362
    aput-object v28, v14, v6

    .line 363
    .line 364
    const/16 v6, 0x1a

    .line 365
    .line 366
    aput-object v29, v14, v6

    .line 367
    .line 368
    const/16 v6, 0x1b

    .line 369
    .line 370
    aput-object v30, v14, v6

    .line 371
    .line 372
    const/16 v6, 0x1c

    .line 373
    .line 374
    aput-object v31, v14, v6

    .line 375
    .line 376
    const/16 v6, 0x1d

    .line 377
    .line 378
    aput-object v15, v14, v6

    .line 379
    .line 380
    invoke-static {v14}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    sput-object v6, Lff/b;->b:Ljava/util/Map;

    .line 385
    .line 386
    const-string v7, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 387
    .line 388
    move-object/from16 v8, v32

    .line 389
    .line 390
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-static {v7}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-static {v7}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v7}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    sput-object v6, Lff/b;->c:Ljava/util/Map;

    .line 410
    .line 411
    const-string v7, "android.permission.BLUETOOTH_SCAN"

    .line 412
    .line 413
    const-string v8, "android.permission-group.NEARBY_DEVICES"

    .line 414
    .line 415
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    const-string v9, "android.permission.BLUETOOTH_ADVERTISE"

    .line 420
    .line 421
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    const-string v10, "android.permission.BLUETOOTH_CONNECT"

    .line 426
    .line 427
    invoke-static {v10, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    new-array v11, v2, [Lkotlin/Pair;

    .line 432
    .line 433
    aput-object v7, v11, v33

    .line 434
    .line 435
    aput-object v9, v11, v0

    .line 436
    .line 437
    aput-object v10, v11, v1

    .line 438
    .line 439
    invoke-static {v11}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-static {v7}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 448
    .line 449
    .line 450
    invoke-static {v7}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    sput-object v6, Lff/b;->d:Ljava/util/Map;

    .line 455
    .line 456
    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    .line 457
    .line 458
    const-string v9, "android.permission-group.READ_MEDIA_VISUAL"

    .line 459
    .line 460
    invoke-static {v7, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    const-string v10, "android.permission.READ_MEDIA_VIDEO"

    .line 465
    .line 466
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    const-string v10, "android.permission.READ_MEDIA_AUDIO"

    .line 471
    .line 472
    const-string v11, "android.permission-group.READ_MEDIA_AURAL"

    .line 473
    .line 474
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    const-string v11, "android.permission.POST_NOTIFICATIONS"

    .line 479
    .line 480
    const-string v12, "android.permission-group.NOTIFICATIONS"

    .line 481
    .line 482
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    const-string v12, "android.permission.NEARBY_WIFI_DEVICES"

    .line 487
    .line 488
    invoke-static {v12, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    const-string v12, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 493
    .line 494
    move-object/from16 v13, v22

    .line 495
    .line 496
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 497
    .line 498
    .line 499
    move-result-object v12

    .line 500
    new-array v5, v5, [Lkotlin/Pair;

    .line 501
    .line 502
    aput-object v7, v5, v33

    .line 503
    .line 504
    aput-object v9, v5, v0

    .line 505
    .line 506
    aput-object v10, v5, v1

    .line 507
    .line 508
    aput-object v11, v5, v2

    .line 509
    .line 510
    aput-object v8, v5, v4

    .line 511
    .line 512
    aput-object v12, v5, v3

    .line 513
    .line 514
    invoke-static {v5}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v0}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    sput-object v0, Lff/b;->e:Ljava/util/Map;

    .line 530
    .line 531
    return-void
.end method

.method public static final a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lff/b;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method
