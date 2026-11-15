.class final Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/coroutines/Continuation;

.field final synthetic b:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->a:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "task"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v2, v1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->a:Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v6, "place fail: "

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const/4 v8, 0x4

    .line 49
    const/4 v9, 0x0

    .line 50
    const-string v5, "LocationP"

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 69
    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 73
    .line 74
    const/4 v8, 0x4

    .line 75
    const/4 v9, 0x0

    .line 76
    const-string v5, "LocationP"

    .line 77
    .line 78
    const-string v6, "place fail:response null"

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->a:Lkotlin/coroutines/Continuation;

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 100
    .line 101
    const-string v5, "LocationP"

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v8, "getNearbyPlaces --size:"

    .line 117
    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const/4 v8, 0x4

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    .line 154
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v5, :cond_3

    .line 171
    .line 172
    sget-object v7, Lij/s;->a:Lij/s;

    .line 173
    .line 174
    iget-object v8, v1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->b:Lcom/google/android/gms/maps/model/LatLng;

    .line 175
    .line 176
    iget-wide v9, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 177
    .line 178
    iget-wide v11, v8, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 179
    .line 180
    iget-wide v13, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .line 182
    move-object/from16 p1, v4

    .line 183
    .line 184
    :try_start_2
    iget-wide v3, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 185
    .line 186
    move-wide v8, v9

    .line 187
    move-wide v10, v11

    .line 188
    move-wide v12, v13

    .line 189
    move-wide v14, v3

    .line 190
    invoke-virtual/range {v7 .. v15}, Lij/s;->a(DDDD)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :catchall_1
    move-exception v0

    .line 199
    move-object/from16 p1, v4

    .line 200
    .line 201
    goto/16 :goto_6

    .line 202
    .line 203
    :cond_3
    move-object/from16 p1, v4

    .line 204
    .line 205
    const-string v3, "<0.1m"

    .line 206
    .line 207
    :goto_1
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 208
    .line 209
    const-string v8, "LocationP"

    .line 210
    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    iget-wide v9, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 214
    .line 215
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    goto :goto_2

    .line 220
    :cond_4
    const/4 v4, 0x0

    .line 221
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v10, "place list \u540d\u79f0: "

    .line 227
    .line 228
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v10, ", \u8ddd\u79bb: "

    .line 235
    .line 236
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v10, ", \u5730\u5740: "

    .line 243
    .line 244
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v10, ",lat:"

    .line 251
    .line 252
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    const/4 v11, 0x4

    .line 263
    const/4 v12, 0x0

    .line 264
    const/4 v10, 0x0

    .line 265
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Lcom/transsion/room/api/bean/LocationPlace;

    .line 269
    .line 270
    const/16 v21, 0xf

    .line 271
    .line 272
    const/16 v22, 0x0

    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    const/16 v18, 0x0

    .line 277
    .line 278
    const/16 v19, 0x0

    .line 279
    .line 280
    const/16 v20, 0x0

    .line 281
    .line 282
    move-object/from16 v16, v4

    .line 283
    .line 284
    invoke-direct/range {v16 .. v22}, Lcom/transsion/room/api/bean/LocationPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v4, v6}, Lcom/transsion/room/api/bean/LocationPlace;->setName(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setAddress(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v3}, Lcom/transsion/room/api/bean/LocationPlace;->setDistance(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    if-eqz v5, :cond_5

    .line 297
    .line 298
    iget-wide v6, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 299
    .line 300
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    goto :goto_3

    .line 305
    :cond_5
    const/4 v0, 0x0

    .line 306
    :goto_3
    invoke-virtual {v4, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLat(Ljava/lang/Double;)V

    .line 307
    .line 308
    .line 309
    if-eqz v5, :cond_6

    .line 310
    .line 311
    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 312
    .line 313
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    goto :goto_4

    .line 318
    :cond_6
    const/4 v0, 0x0

    .line 319
    :goto_4
    invoke-virtual {v4, v0}, Lcom/transsion/room/api/bean/LocationPlace;->setLon(Ljava/lang/Double;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    .line 324
    .line 325
    :goto_5
    move-object/from16 v4, p1

    .line 326
    .line 327
    const/4 v3, 0x0

    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :goto_6
    :try_start_3
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 331
    .line 332
    const-string v4, "LocationP"

    .line 333
    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v6, "place error2 :"

    .line 340
    .line 341
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    const/4 v7, 0x4

    .line 352
    const/4 v8, 0x0

    .line 353
    const/4 v6, 0x0

    .line 354
    invoke-static/range {v3 .. v8}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 358
    .line 359
    .line 360
    goto :goto_5

    .line 361
    :catchall_2
    move-exception v0

    .line 362
    goto :goto_7

    .line 363
    :cond_7
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->a:Lkotlin/coroutines/Continuation;

    .line 364
    .line 365
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 370
    .line 371
    .line 372
    goto :goto_8

    .line 373
    :goto_7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 374
    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v4, "place error1 :"

    .line 381
    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    const/4 v6, 0x4

    .line 393
    const/4 v7, 0x0

    .line 394
    const-string v3, "LocationP"

    .line 395
    .line 396
    const/4 v5, 0x0

    .line 397
    invoke-static/range {v2 .. v7}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, v1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;->a:Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    const/4 v2, 0x0

    .line 403
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :goto_8
    return-void
.end method
