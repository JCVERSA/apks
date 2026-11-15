.class final Lcom/google/android/libraries/places/api/model/zzbj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 46

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v43, Lcom/google/android/libraries/places/api/model/zzbk;

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v3, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    const-class v1, Lcom/google/android/libraries/places/api/model/Place;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/google/android/libraries/places/api/model/AddressComponents;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-nez v11, :cond_1

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/4 v11, 0x0

    .line 100
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-nez v12, :cond_2

    .line 105
    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v12, 0x0

    .line 112
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-nez v13, :cond_3

    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    const/4 v13, 0x0

    .line 128
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    if-nez v14, :cond_4

    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    goto :goto_4

    .line 139
    :cond_4
    const/4 v14, 0x0

    .line 140
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-nez v15, :cond_5

    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    goto :goto_5

    .line 151
    :cond_5
    const/4 v15, 0x0

    .line 152
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    move-object/from16 v17, v2

    .line 161
    .line 162
    check-cast v17, Lcom/google/android/gms/maps/model/LatLng;

    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_6

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    move-object/from16 v18, v2

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_6
    const/16 v18, 0x0

    .line 178
    .line 179
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_7

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    move-object/from16 v19, v2

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_7
    const/16 v19, 0x0

    .line 193
    .line 194
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    move-object/from16 v20, v2

    .line 203
    .line 204
    check-cast v20, Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_8

    .line 211
    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    move-object/from16 v21, v2

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_8
    const/16 v21, 0x0

    .line 220
    .line 221
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v22

    .line 229
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 234
    .line 235
    .line 236
    move-result-object v23

    .line 237
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 242
    .line 243
    .line 244
    move-result-object v24

    .line 245
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object/from16 v25, v2

    .line 254
    .line 255
    check-cast v25, Lcom/google/android/libraries/places/api/model/PlusCode;

    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_9

    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    move-object/from16 v26, v2

    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_9
    const/16 v26, 0x0

    .line 275
    .line 276
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-nez v2, :cond_a

    .line 281
    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    move-object/from16 v27, v2

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_a
    const/16 v27, 0x0

    .line 290
    .line 291
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_b

    .line 296
    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    .line 298
    .line 299
    .line 300
    move-result-wide v28

    .line 301
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    move-object/from16 v28, v2

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_b
    const/16 v28, 0x0

    .line 309
    .line 310
    :goto_b
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    move-object/from16 v29, v2

    .line 319
    .line 320
    check-cast v29, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 327
    .line 328
    .line 329
    move-result-object v30

    .line 330
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    move-object/from16 v31, v2

    .line 339
    .line 340
    check-cast v31, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 341
    .line 342
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    move-object/from16 v32, v2

    .line 351
    .line 352
    check-cast v32, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    move-object/from16 v33, v2

    .line 363
    .line 364
    check-cast v33, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object/from16 v34, v2

    .line 375
    .line 376
    check-cast v34, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    move-object/from16 v35, v2

    .line 387
    .line 388
    check-cast v35, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    move-object/from16 v36, v2

    .line 399
    .line 400
    check-cast v36, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    move-object/from16 v37, v2

    .line 411
    .line 412
    check-cast v37, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    move-object/from16 v38, v2

    .line 423
    .line 424
    check-cast v38, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 431
    .line 432
    .line 433
    move-result-object v39

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-nez v2, :cond_c

    .line 439
    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    move-object/from16 v44, v2

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_c
    const/16 v44, 0x0

    .line 452
    .line 453
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    if-nez v2, :cond_d

    .line 458
    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    move-object/from16 v45, v2

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_d
    const/16 v45, 0x0

    .line 471
    .line 472
    :goto_d
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    move-object/from16 v40, v2

    .line 481
    .line 482
    check-cast v40, Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    move-object/from16 v41, v2

    .line 493
    .line 494
    check-cast v41, Landroid/net/Uri;

    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    move-object/from16 v42, v0

    .line 505
    .line 506
    check-cast v42, Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 507
    .line 508
    move-object/from16 v1, v43

    .line 509
    .line 510
    move-object v2, v3

    .line 511
    move-object v3, v4

    .line 512
    move-object v4, v5

    .line 513
    move-object v5, v6

    .line 514
    move-object v6, v7

    .line 515
    move-object v7, v8

    .line 516
    move-object v8, v9

    .line 517
    move-object v9, v10

    .line 518
    move-object v10, v11

    .line 519
    move-object v11, v12

    .line 520
    move-object v12, v13

    .line 521
    move-object v13, v14

    .line 522
    move-object v14, v15

    .line 523
    move-object/from16 v15, v17

    .line 524
    .line 525
    move-object/from16 v16, v18

    .line 526
    .line 527
    move-object/from16 v17, v19

    .line 528
    .line 529
    move-object/from16 v18, v20

    .line 530
    .line 531
    move-object/from16 v19, v21

    .line 532
    .line 533
    move-object/from16 v20, v22

    .line 534
    .line 535
    move-object/from16 v21, v23

    .line 536
    .line 537
    move-object/from16 v22, v24

    .line 538
    .line 539
    move-object/from16 v23, v25

    .line 540
    .line 541
    move-object/from16 v24, v26

    .line 542
    .line 543
    move-object/from16 v25, v27

    .line 544
    .line 545
    move-object/from16 v26, v28

    .line 546
    .line 547
    move-object/from16 v27, v29

    .line 548
    .line 549
    move-object/from16 v28, v30

    .line 550
    .line 551
    move-object/from16 v29, v31

    .line 552
    .line 553
    move-object/from16 v30, v32

    .line 554
    .line 555
    move-object/from16 v31, v33

    .line 556
    .line 557
    move-object/from16 v32, v34

    .line 558
    .line 559
    move-object/from16 v33, v35

    .line 560
    .line 561
    move-object/from16 v34, v36

    .line 562
    .line 563
    move-object/from16 v35, v37

    .line 564
    .line 565
    move-object/from16 v36, v38

    .line 566
    .line 567
    move-object/from16 v37, v39

    .line 568
    .line 569
    move-object/from16 v38, v44

    .line 570
    .line 571
    move-object/from16 v39, v45

    .line 572
    .line 573
    invoke-direct/range {v1 .. v42}, Lcom/google/android/libraries/places/api/model/zzbk;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AddressComponents;Ljava/util/List;Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/OpeningHours;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/util/List;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)V

    .line 574
    .line 575
    .line 576
    return-object v43
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/libraries/places/api/model/zzbk;

    .line 2
    .line 3
    return-object p1
.end method
