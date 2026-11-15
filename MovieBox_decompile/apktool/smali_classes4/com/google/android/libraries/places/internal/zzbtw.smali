.class final Lcom/google/android/libraries/places/internal/zzbtw;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzbwf;

.field private static final zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

.field private static final zzc:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbwf;->zza:Lcom/google/android/libraries/places/internal/zzbwe;

    .line 2
    .line 3
    const-string v0, ":"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbtt;->zze:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 25
    .line 26
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbtt;->zzb:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 27
    .line 28
    const-string v4, "GET"

    .line 29
    .line 30
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 38
    .line 39
    const-string v5, "POST"

    .line 40
    .line 41
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v4, v3, v5}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 49
    .line 50
    sget-object v5, Lcom/google/android/libraries/places/internal/zzbtt;->zzc:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 51
    .line 52
    const-string v6, "/"

    .line 53
    .line 54
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-direct {v3, v5, v6}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 62
    .line 63
    const-string v7, "/index.html"

    .line 64
    .line 65
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-direct {v6, v5, v7}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 73
    .line 74
    sget-object v7, Lcom/google/android/libraries/places/internal/zzbtt;->zzd:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 75
    .line 76
    const-string v8, "http"

    .line 77
    .line 78
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-direct {v5, v7, v8}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 86
    .line 87
    const-string v9, "https"

    .line 88
    .line 89
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-direct {v8, v7, v9}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 94
    .line 95
    .line 96
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 97
    .line 98
    sget-object v9, Lcom/google/android/libraries/places/internal/zzbtt;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 99
    .line 100
    const-string v10, "200"

    .line 101
    .line 102
    invoke-static {v10}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-direct {v7, v9, v10}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 107
    .line 108
    .line 109
    new-instance v10, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 110
    .line 111
    const-string v11, "204"

    .line 112
    .line 113
    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-direct {v10, v9, v11}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 118
    .line 119
    .line 120
    new-instance v11, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 121
    .line 122
    const-string v12, "206"

    .line 123
    .line 124
    invoke-static {v12}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-direct {v11, v9, v12}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 129
    .line 130
    .line 131
    new-instance v12, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 132
    .line 133
    const-string v13, "304"

    .line 134
    .line 135
    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-direct {v12, v9, v13}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 140
    .line 141
    .line 142
    new-instance v13, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 143
    .line 144
    const-string v14, "400"

    .line 145
    .line 146
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    invoke-direct {v13, v9, v14}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 151
    .line 152
    .line 153
    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 154
    .line 155
    const-string v15, "404"

    .line 156
    .line 157
    invoke-static {v15}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    invoke-direct {v14, v9, v15}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 162
    .line 163
    .line 164
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 165
    .line 166
    const-string v16, "500"

    .line 167
    .line 168
    move-object/from16 v17, v14

    .line 169
    .line 170
    invoke-static/range {v16 .. v16}, Lcom/google/android/libraries/places/internal/zzbwe;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbwf;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    invoke-direct {v15, v9, v14}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Lcom/google/android/libraries/places/internal/zzbwf;Lcom/google/android/libraries/places/internal/zzbwf;)V

    .line 175
    .line 176
    .line 177
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 178
    .line 179
    const-string v14, "accept-charset"

    .line 180
    .line 181
    invoke-direct {v9, v14, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v14, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 185
    .line 186
    move-object/from16 v16, v9

    .line 187
    .line 188
    const-string v9, "accept-encoding"

    .line 189
    .line 190
    move-object/from16 v18, v15

    .line 191
    .line 192
    const-string v15, "gzip, deflate"

    .line 193
    .line 194
    invoke-direct {v14, v9, v15}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 198
    .line 199
    const-string v15, "accept-language"

    .line 200
    .line 201
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 205
    .line 206
    move-object/from16 v19, v9

    .line 207
    .line 208
    const-string v9, "accept-ranges"

    .line 209
    .line 210
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 214
    .line 215
    move-object/from16 v20, v15

    .line 216
    .line 217
    const-string v15, "accept"

    .line 218
    .line 219
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 223
    .line 224
    move-object/from16 v21, v9

    .line 225
    .line 226
    const-string v9, "access-control-allow-origin"

    .line 227
    .line 228
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 232
    .line 233
    move-object/from16 v22, v15

    .line 234
    .line 235
    const-string v15, "age"

    .line 236
    .line 237
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 241
    .line 242
    move-object/from16 v23, v9

    .line 243
    .line 244
    const-string v9, "allow"

    .line 245
    .line 246
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 250
    .line 251
    move-object/from16 v24, v15

    .line 252
    .line 253
    const-string v15, "authorization"

    .line 254
    .line 255
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 259
    .line 260
    move-object/from16 v25, v9

    .line 261
    .line 262
    const-string v9, "cache-control"

    .line 263
    .line 264
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 268
    .line 269
    move-object/from16 v26, v15

    .line 270
    .line 271
    const-string v15, "content-disposition"

    .line 272
    .line 273
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 277
    .line 278
    move-object/from16 v27, v9

    .line 279
    .line 280
    const-string v9, "content-encoding"

    .line 281
    .line 282
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 286
    .line 287
    move-object/from16 v28, v15

    .line 288
    .line 289
    const-string v15, "content-language"

    .line 290
    .line 291
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 295
    .line 296
    move-object/from16 v29, v9

    .line 297
    .line 298
    const-string v9, "content-length"

    .line 299
    .line 300
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 304
    .line 305
    move-object/from16 v30, v15

    .line 306
    .line 307
    const-string v15, "content-location"

    .line 308
    .line 309
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 313
    .line 314
    move-object/from16 v31, v9

    .line 315
    .line 316
    const-string v9, "content-range"

    .line 317
    .line 318
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 322
    .line 323
    move-object/from16 v32, v15

    .line 324
    .line 325
    const-string v15, "content-type"

    .line 326
    .line 327
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 331
    .line 332
    move-object/from16 v33, v9

    .line 333
    .line 334
    const-string v9, "cookie"

    .line 335
    .line 336
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 340
    .line 341
    move-object/from16 v34, v15

    .line 342
    .line 343
    const-string v15, "date"

    .line 344
    .line 345
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 349
    .line 350
    move-object/from16 v35, v9

    .line 351
    .line 352
    const-string v9, "etag"

    .line 353
    .line 354
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 358
    .line 359
    move-object/from16 v36, v15

    .line 360
    .line 361
    const-string v15, "expect"

    .line 362
    .line 363
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 367
    .line 368
    move-object/from16 v37, v9

    .line 369
    .line 370
    const-string v9, "expires"

    .line 371
    .line 372
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 376
    .line 377
    move-object/from16 v38, v15

    .line 378
    .line 379
    const-string v15, "from"

    .line 380
    .line 381
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 385
    .line 386
    move-object/from16 v39, v9

    .line 387
    .line 388
    const-string v9, "host"

    .line 389
    .line 390
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 394
    .line 395
    move-object/from16 v40, v15

    .line 396
    .line 397
    const-string v15, "if-match"

    .line 398
    .line 399
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 403
    .line 404
    move-object/from16 v41, v9

    .line 405
    .line 406
    const-string v9, "if-modified-since"

    .line 407
    .line 408
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 412
    .line 413
    move-object/from16 v42, v15

    .line 414
    .line 415
    const-string v15, "if-none-match"

    .line 416
    .line 417
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 421
    .line 422
    move-object/from16 v43, v9

    .line 423
    .line 424
    const-string v9, "if-range"

    .line 425
    .line 426
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 430
    .line 431
    move-object/from16 v44, v15

    .line 432
    .line 433
    const-string v15, "if-unmodified-since"

    .line 434
    .line 435
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 439
    .line 440
    move-object/from16 v45, v9

    .line 441
    .line 442
    const-string v9, "last-modified"

    .line 443
    .line 444
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 448
    .line 449
    move-object/from16 v46, v15

    .line 450
    .line 451
    const-string v15, "link"

    .line 452
    .line 453
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 457
    .line 458
    move-object/from16 v47, v9

    .line 459
    .line 460
    const-string v9, "location"

    .line 461
    .line 462
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 466
    .line 467
    move-object/from16 v48, v15

    .line 468
    .line 469
    const-string v15, "max-forwards"

    .line 470
    .line 471
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 475
    .line 476
    move-object/from16 v49, v9

    .line 477
    .line 478
    const-string v9, "proxy-authenticate"

    .line 479
    .line 480
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 484
    .line 485
    move-object/from16 v50, v15

    .line 486
    .line 487
    const-string v15, "proxy-authorization"

    .line 488
    .line 489
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 493
    .line 494
    move-object/from16 v51, v9

    .line 495
    .line 496
    const-string v9, "range"

    .line 497
    .line 498
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 502
    .line 503
    move-object/from16 v52, v15

    .line 504
    .line 505
    const-string v15, "referer"

    .line 506
    .line 507
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 511
    .line 512
    move-object/from16 v53, v9

    .line 513
    .line 514
    const-string v9, "refresh"

    .line 515
    .line 516
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 520
    .line 521
    move-object/from16 v54, v15

    .line 522
    .line 523
    const-string v15, "retry-after"

    .line 524
    .line 525
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 529
    .line 530
    move-object/from16 v55, v9

    .line 531
    .line 532
    const-string v9, "server"

    .line 533
    .line 534
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 538
    .line 539
    move-object/from16 v56, v15

    .line 540
    .line 541
    const-string v15, "set-cookie"

    .line 542
    .line 543
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 547
    .line 548
    move-object/from16 v57, v9

    .line 549
    .line 550
    const-string v9, "strict-transport-security"

    .line 551
    .line 552
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 556
    .line 557
    move-object/from16 v58, v15

    .line 558
    .line 559
    const-string v15, "transfer-encoding"

    .line 560
    .line 561
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 565
    .line 566
    move-object/from16 v59, v9

    .line 567
    .line 568
    const-string v9, "user-agent"

    .line 569
    .line 570
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 574
    .line 575
    move-object/from16 v60, v15

    .line 576
    .line 577
    const-string v15, "vary"

    .line 578
    .line 579
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    new-instance v15, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 583
    .line 584
    move-object/from16 v61, v9

    .line 585
    .line 586
    const-string v9, "via"

    .line 587
    .line 588
    invoke-direct {v15, v9, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    new-instance v9, Lcom/google/android/libraries/places/internal/zzbtt;

    .line 592
    .line 593
    move-object/from16 v62, v15

    .line 594
    .line 595
    const-string v15, "www-authenticate"

    .line 596
    .line 597
    invoke-direct {v9, v15, v2}, Lcom/google/android/libraries/places/internal/zzbtt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const/16 v2, 0x3d

    .line 601
    .line 602
    new-array v15, v2, [Lcom/google/android/libraries/places/internal/zzbtt;

    .line 603
    .line 604
    const/16 v63, 0x0

    .line 605
    .line 606
    aput-object v0, v15, v63

    .line 607
    .line 608
    const/4 v0, 0x1

    .line 609
    aput-object v1, v15, v0

    .line 610
    .line 611
    const/4 v1, 0x2

    .line 612
    aput-object v4, v15, v1

    .line 613
    .line 614
    const/4 v1, 0x3

    .line 615
    aput-object v3, v15, v1

    .line 616
    .line 617
    const/4 v1, 0x4

    .line 618
    aput-object v6, v15, v1

    .line 619
    .line 620
    const/4 v1, 0x5

    .line 621
    aput-object v5, v15, v1

    .line 622
    .line 623
    const/4 v1, 0x6

    .line 624
    aput-object v8, v15, v1

    .line 625
    .line 626
    const/4 v1, 0x7

    .line 627
    aput-object v7, v15, v1

    .line 628
    .line 629
    const/16 v1, 0x8

    .line 630
    .line 631
    aput-object v10, v15, v1

    .line 632
    .line 633
    const/16 v1, 0x9

    .line 634
    .line 635
    aput-object v11, v15, v1

    .line 636
    .line 637
    const/16 v1, 0xa

    .line 638
    .line 639
    aput-object v12, v15, v1

    .line 640
    .line 641
    const/16 v1, 0xb

    .line 642
    .line 643
    aput-object v13, v15, v1

    .line 644
    .line 645
    const/16 v1, 0xc

    .line 646
    .line 647
    aput-object v17, v15, v1

    .line 648
    .line 649
    const/16 v1, 0xd

    .line 650
    .line 651
    aput-object v18, v15, v1

    .line 652
    .line 653
    const/16 v1, 0xe

    .line 654
    .line 655
    aput-object v16, v15, v1

    .line 656
    .line 657
    const/16 v1, 0xf

    .line 658
    .line 659
    aput-object v14, v15, v1

    .line 660
    .line 661
    const/16 v1, 0x10

    .line 662
    .line 663
    aput-object v19, v15, v1

    .line 664
    .line 665
    const/16 v1, 0x11

    .line 666
    .line 667
    aput-object v20, v15, v1

    .line 668
    .line 669
    const/16 v1, 0x12

    .line 670
    .line 671
    aput-object v21, v15, v1

    .line 672
    .line 673
    const/16 v1, 0x13

    .line 674
    .line 675
    aput-object v22, v15, v1

    .line 676
    .line 677
    const/16 v1, 0x14

    .line 678
    .line 679
    aput-object v23, v15, v1

    .line 680
    .line 681
    const/16 v1, 0x15

    .line 682
    .line 683
    aput-object v24, v15, v1

    .line 684
    .line 685
    const/16 v1, 0x16

    .line 686
    .line 687
    aput-object v25, v15, v1

    .line 688
    .line 689
    const/16 v1, 0x17

    .line 690
    .line 691
    aput-object v26, v15, v1

    .line 692
    .line 693
    const/16 v1, 0x18

    .line 694
    .line 695
    aput-object v27, v15, v1

    .line 696
    .line 697
    const/16 v1, 0x19

    .line 698
    .line 699
    aput-object v28, v15, v1

    .line 700
    .line 701
    const/16 v1, 0x1a

    .line 702
    .line 703
    aput-object v29, v15, v1

    .line 704
    .line 705
    const/16 v1, 0x1b

    .line 706
    .line 707
    aput-object v30, v15, v1

    .line 708
    .line 709
    const/16 v1, 0x1c

    .line 710
    .line 711
    aput-object v31, v15, v1

    .line 712
    .line 713
    const/16 v1, 0x1d

    .line 714
    .line 715
    aput-object v32, v15, v1

    .line 716
    .line 717
    const/16 v1, 0x1e

    .line 718
    .line 719
    aput-object v33, v15, v1

    .line 720
    .line 721
    const/16 v1, 0x1f

    .line 722
    .line 723
    aput-object v34, v15, v1

    .line 724
    .line 725
    const/16 v1, 0x20

    .line 726
    .line 727
    aput-object v35, v15, v1

    .line 728
    .line 729
    const/16 v1, 0x21

    .line 730
    .line 731
    aput-object v36, v15, v1

    .line 732
    .line 733
    const/16 v1, 0x22

    .line 734
    .line 735
    aput-object v37, v15, v1

    .line 736
    .line 737
    const/16 v1, 0x23

    .line 738
    .line 739
    aput-object v38, v15, v1

    .line 740
    .line 741
    const/16 v1, 0x24

    .line 742
    .line 743
    aput-object v39, v15, v1

    .line 744
    .line 745
    const/16 v1, 0x25

    .line 746
    .line 747
    aput-object v40, v15, v1

    .line 748
    .line 749
    const/16 v1, 0x26

    .line 750
    .line 751
    aput-object v41, v15, v1

    .line 752
    .line 753
    const/16 v1, 0x27

    .line 754
    .line 755
    aput-object v42, v15, v1

    .line 756
    .line 757
    const/16 v1, 0x28

    .line 758
    .line 759
    aput-object v43, v15, v1

    .line 760
    .line 761
    const/16 v1, 0x29

    .line 762
    .line 763
    aput-object v44, v15, v1

    .line 764
    .line 765
    const/16 v1, 0x2a

    .line 766
    .line 767
    aput-object v45, v15, v1

    .line 768
    .line 769
    const/16 v1, 0x2b

    .line 770
    .line 771
    aput-object v46, v15, v1

    .line 772
    .line 773
    const/16 v1, 0x2c

    .line 774
    .line 775
    aput-object v47, v15, v1

    .line 776
    .line 777
    const/16 v1, 0x2d

    .line 778
    .line 779
    aput-object v48, v15, v1

    .line 780
    .line 781
    const/16 v1, 0x2e

    .line 782
    .line 783
    aput-object v49, v15, v1

    .line 784
    .line 785
    const/16 v1, 0x2f

    .line 786
    .line 787
    aput-object v50, v15, v1

    .line 788
    .line 789
    const/16 v1, 0x30

    .line 790
    .line 791
    aput-object v51, v15, v1

    .line 792
    .line 793
    const/16 v1, 0x31

    .line 794
    .line 795
    aput-object v52, v15, v1

    .line 796
    .line 797
    const/16 v1, 0x32

    .line 798
    .line 799
    aput-object v53, v15, v1

    .line 800
    .line 801
    const/16 v1, 0x33

    .line 802
    .line 803
    aput-object v54, v15, v1

    .line 804
    .line 805
    const/16 v1, 0x34

    .line 806
    .line 807
    aput-object v55, v15, v1

    .line 808
    .line 809
    const/16 v1, 0x35

    .line 810
    .line 811
    aput-object v56, v15, v1

    .line 812
    .line 813
    const/16 v1, 0x36

    .line 814
    .line 815
    aput-object v57, v15, v1

    .line 816
    .line 817
    const/16 v1, 0x37

    .line 818
    .line 819
    aput-object v58, v15, v1

    .line 820
    .line 821
    const/16 v1, 0x38

    .line 822
    .line 823
    aput-object v59, v15, v1

    .line 824
    .line 825
    const/16 v1, 0x39

    .line 826
    .line 827
    aput-object v60, v15, v1

    .line 828
    .line 829
    const/16 v1, 0x3a

    .line 830
    .line 831
    aput-object v61, v15, v1

    .line 832
    .line 833
    const/16 v1, 0x3b

    .line 834
    .line 835
    aput-object v62, v15, v1

    .line 836
    .line 837
    const/16 v1, 0x3c

    .line 838
    .line 839
    aput-object v9, v15, v1

    .line 840
    .line 841
    sput-object v15, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    .line 842
    .line 843
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 844
    .line 845
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 846
    .line 847
    .line 848
    move/from16 v3, v63

    .line 849
    .line 850
    :goto_0
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    .line 851
    .line 852
    array-length v5, v4

    .line 853
    if-ge v3, v2, :cond_1

    .line 854
    .line 855
    aget-object v5, v4, v3

    .line 856
    .line 857
    iget-object v5, v5, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 858
    .line 859
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v5

    .line 863
    if-nez v5, :cond_0

    .line 864
    .line 865
    aget-object v4, v4, v3

    .line 866
    .line 867
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/zzbtt;->zzh:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 868
    .line 869
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    :cond_0
    add-int/2addr v3, v0

    .line 877
    goto :goto_0

    .line 878
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzc:Ljava/util/Map;

    .line 883
    .line 884
    return-void
.end method

.method static bridge synthetic zza()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zza:Lcom/google/android/libraries/places/internal/zzbwf;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbwf;)Lcom/google/android/libraries/places/internal/zzbwf;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzbwf;->zza(I)B

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x41

    .line 13
    .line 14
    if-lt v2, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x5a

    .line 17
    .line 18
    if-le v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwf;->zzf()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object p0
.end method

.method static bridge synthetic zzd()[Lcom/google/android/libraries/places/internal/zzbtt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbtw;->zzb:[Lcom/google/android/libraries/places/internal/zzbtt;

    .line 2
    .line 3
    return-object v0
.end method
