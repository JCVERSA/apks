.class final Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final LANGUAGE_UNDEFINED:Ljava/lang/String; = "und"

.field private static final SHORT_TYPE_ALBUM:I

.field private static final SHORT_TYPE_ARTIST:I

.field private static final SHORT_TYPE_COMMENT:I

.field private static final SHORT_TYPE_COMPOSER_1:I

.field private static final SHORT_TYPE_COMPOSER_2:I

.field private static final SHORT_TYPE_ENCODER:I

.field private static final SHORT_TYPE_GENRE:I

.field private static final SHORT_TYPE_LYRICS:I

.field private static final SHORT_TYPE_NAME_1:I

.field private static final SHORT_TYPE_NAME_2:I

.field private static final SHORT_TYPE_YEAR:I

.field private static final STANDARD_GENRES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MetadataUtil"

.field private static final TYPE_ALBUM_ARTIST:I

.field private static final TYPE_COMPILATION:I

.field private static final TYPE_COVER_ART:I

.field private static final TYPE_DISK_NUMBER:I

.field private static final TYPE_GAPLESS_ALBUM:I

.field private static final TYPE_GENRE:I

.field private static final TYPE_GROUPING:I

.field private static final TYPE_INTERNAL:I

.field private static final TYPE_RATING:I

.field private static final TYPE_SORT_ALBUM:I

.field private static final TYPE_SORT_ALBUM_ARTIST:I

.field private static final TYPE_SORT_ARTIST:I

.field private static final TYPE_SORT_COMPOSER:I

.field private static final TYPE_SORT_TRACK_NAME:I

.field private static final TYPE_TEMPO:I

.field private static final TYPE_TRACK_NUMBER:I

.field private static final TYPE_TV_SHOW:I

.field private static final TYPE_TV_SORT_SHOW:I


# direct methods
.method static constructor <clinit>()V
    .locals 149

    .line 1
    const-string v0, "nam"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    .line 8
    .line 9
    const-string v0, "trk"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    .line 16
    .line 17
    const-string v0, "cmt"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    .line 24
    .line 25
    const-string v0, "day"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    .line 32
    .line 33
    const-string v0, "ART"

    .line 34
    .line 35
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    .line 40
    .line 41
    const-string v0, "too"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    .line 48
    .line 49
    const-string v0, "alb"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    .line 56
    .line 57
    const-string v0, "com"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    .line 64
    .line 65
    const-string v0, "wrt"

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    .line 72
    .line 73
    const-string v0, "lyr"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    .line 80
    .line 81
    const-string v0, "gen"

    .line 82
    .line 83
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    .line 88
    .line 89
    const-string v0, "covr"

    .line 90
    .line 91
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    .line 96
    .line 97
    const-string v0, "gnre"

    .line 98
    .line 99
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    .line 104
    .line 105
    const-string v0, "grp"

    .line 106
    .line 107
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    .line 112
    .line 113
    const-string v0, "disk"

    .line 114
    .line 115
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    .line 120
    .line 121
    const-string v0, "trkn"

    .line 122
    .line 123
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    .line 128
    .line 129
    const-string v0, "tmpo"

    .line 130
    .line 131
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    .line 136
    .line 137
    const-string v0, "cpil"

    .line 138
    .line 139
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    .line 144
    .line 145
    const-string v0, "aART"

    .line 146
    .line 147
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    .line 152
    .line 153
    const-string v0, "sonm"

    .line 154
    .line 155
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    .line 160
    .line 161
    const-string v0, "soal"

    .line 162
    .line 163
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    .line 168
    .line 169
    const-string v0, "soar"

    .line 170
    .line 171
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    .line 176
    .line 177
    const-string v0, "soaa"

    .line 178
    .line 179
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    .line 184
    .line 185
    const-string v0, "soco"

    .line 186
    .line 187
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    .line 192
    .line 193
    const-string v0, "rtng"

    .line 194
    .line 195
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    .line 200
    .line 201
    const-string v0, "pgap"

    .line 202
    .line 203
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    .line 208
    .line 209
    const-string v0, "sosn"

    .line 210
    .line 211
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    .line 216
    .line 217
    const-string v0, "tvsh"

    .line 218
    .line 219
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    .line 224
    .line 225
    const-string v0, "----"

    .line 226
    .line 227
    invoke-static {v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    sput v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    .line 232
    .line 233
    const-string v147, "Jpop"

    .line 234
    .line 235
    const-string v148, "Synthpop"

    .line 236
    .line 237
    const-string v1, "Blues"

    .line 238
    .line 239
    const-string v2, "Classic Rock"

    .line 240
    .line 241
    const-string v3, "Country"

    .line 242
    .line 243
    const-string v4, "Dance"

    .line 244
    .line 245
    const-string v5, "Disco"

    .line 246
    .line 247
    const-string v6, "Funk"

    .line 248
    .line 249
    const-string v7, "Grunge"

    .line 250
    .line 251
    const-string v8, "Hip-Hop"

    .line 252
    .line 253
    const-string v9, "Jazz"

    .line 254
    .line 255
    const-string v10, "Metal"

    .line 256
    .line 257
    const-string v11, "New Age"

    .line 258
    .line 259
    const-string v12, "Oldies"

    .line 260
    .line 261
    const-string v13, "Other"

    .line 262
    .line 263
    const-string v14, "Pop"

    .line 264
    .line 265
    const-string v15, "R&B"

    .line 266
    .line 267
    const-string v16, "Rap"

    .line 268
    .line 269
    const-string v17, "Reggae"

    .line 270
    .line 271
    const-string v18, "Rock"

    .line 272
    .line 273
    const-string v19, "Techno"

    .line 274
    .line 275
    const-string v20, "Industrial"

    .line 276
    .line 277
    const-string v21, "Alternative"

    .line 278
    .line 279
    const-string v22, "Ska"

    .line 280
    .line 281
    const-string v23, "Death Metal"

    .line 282
    .line 283
    const-string v24, "Pranks"

    .line 284
    .line 285
    const-string v25, "Soundtrack"

    .line 286
    .line 287
    const-string v26, "Euro-Techno"

    .line 288
    .line 289
    const-string v27, "Ambient"

    .line 290
    .line 291
    const-string v28, "Trip-Hop"

    .line 292
    .line 293
    const-string v29, "Vocal"

    .line 294
    .line 295
    const-string v30, "Jazz+Funk"

    .line 296
    .line 297
    const-string v31, "Fusion"

    .line 298
    .line 299
    const-string v32, "Trance"

    .line 300
    .line 301
    const-string v33, "Classical"

    .line 302
    .line 303
    const-string v34, "Instrumental"

    .line 304
    .line 305
    const-string v35, "Acid"

    .line 306
    .line 307
    const-string v36, "House"

    .line 308
    .line 309
    const-string v37, "Game"

    .line 310
    .line 311
    const-string v38, "Sound Clip"

    .line 312
    .line 313
    const-string v39, "Gospel"

    .line 314
    .line 315
    const-string v40, "Noise"

    .line 316
    .line 317
    const-string v41, "AlternRock"

    .line 318
    .line 319
    const-string v42, "Bass"

    .line 320
    .line 321
    const-string v43, "Soul"

    .line 322
    .line 323
    const-string v44, "Punk"

    .line 324
    .line 325
    const-string v45, "Space"

    .line 326
    .line 327
    const-string v46, "Meditative"

    .line 328
    .line 329
    const-string v47, "Instrumental Pop"

    .line 330
    .line 331
    const-string v48, "Instrumental Rock"

    .line 332
    .line 333
    const-string v49, "Ethnic"

    .line 334
    .line 335
    const-string v50, "Gothic"

    .line 336
    .line 337
    const-string v51, "Darkwave"

    .line 338
    .line 339
    const-string v52, "Techno-Industrial"

    .line 340
    .line 341
    const-string v53, "Electronic"

    .line 342
    .line 343
    const-string v54, "Pop-Folk"

    .line 344
    .line 345
    const-string v55, "Eurodance"

    .line 346
    .line 347
    const-string v56, "Dream"

    .line 348
    .line 349
    const-string v57, "Southern Rock"

    .line 350
    .line 351
    const-string v58, "Comedy"

    .line 352
    .line 353
    const-string v59, "Cult"

    .line 354
    .line 355
    const-string v60, "Gangsta"

    .line 356
    .line 357
    const-string v61, "Top 40"

    .line 358
    .line 359
    const-string v62, "Christian Rap"

    .line 360
    .line 361
    const-string v63, "Pop/Funk"

    .line 362
    .line 363
    const-string v64, "Jungle"

    .line 364
    .line 365
    const-string v65, "Native American"

    .line 366
    .line 367
    const-string v66, "Cabaret"

    .line 368
    .line 369
    const-string v67, "New Wave"

    .line 370
    .line 371
    const-string v68, "Psychadelic"

    .line 372
    .line 373
    const-string v69, "Rave"

    .line 374
    .line 375
    const-string v70, "Showtunes"

    .line 376
    .line 377
    const-string v71, "Trailer"

    .line 378
    .line 379
    const-string v72, "Lo-Fi"

    .line 380
    .line 381
    const-string v73, "Tribal"

    .line 382
    .line 383
    const-string v74, "Acid Punk"

    .line 384
    .line 385
    const-string v75, "Acid Jazz"

    .line 386
    .line 387
    const-string v76, "Polka"

    .line 388
    .line 389
    const-string v77, "Retro"

    .line 390
    .line 391
    const-string v78, "Musical"

    .line 392
    .line 393
    const-string v79, "Rock & Roll"

    .line 394
    .line 395
    const-string v80, "Hard Rock"

    .line 396
    .line 397
    const-string v81, "Folk"

    .line 398
    .line 399
    const-string v82, "Folk-Rock"

    .line 400
    .line 401
    const-string v83, "National Folk"

    .line 402
    .line 403
    const-string v84, "Swing"

    .line 404
    .line 405
    const-string v85, "Fast Fusion"

    .line 406
    .line 407
    const-string v86, "Bebob"

    .line 408
    .line 409
    const-string v87, "Latin"

    .line 410
    .line 411
    const-string v88, "Revival"

    .line 412
    .line 413
    const-string v89, "Celtic"

    .line 414
    .line 415
    const-string v90, "Bluegrass"

    .line 416
    .line 417
    const-string v91, "Avantgarde"

    .line 418
    .line 419
    const-string v92, "Gothic Rock"

    .line 420
    .line 421
    const-string v93, "Progressive Rock"

    .line 422
    .line 423
    const-string v94, "Psychedelic Rock"

    .line 424
    .line 425
    const-string v95, "Symphonic Rock"

    .line 426
    .line 427
    const-string v96, "Slow Rock"

    .line 428
    .line 429
    const-string v97, "Big Band"

    .line 430
    .line 431
    const-string v98, "Chorus"

    .line 432
    .line 433
    const-string v99, "Easy Listening"

    .line 434
    .line 435
    const-string v100, "Acoustic"

    .line 436
    .line 437
    const-string v101, "Humour"

    .line 438
    .line 439
    const-string v102, "Speech"

    .line 440
    .line 441
    const-string v103, "Chanson"

    .line 442
    .line 443
    const-string v104, "Opera"

    .line 444
    .line 445
    const-string v105, "Chamber Music"

    .line 446
    .line 447
    const-string v106, "Sonata"

    .line 448
    .line 449
    const-string v107, "Symphony"

    .line 450
    .line 451
    const-string v108, "Booty Bass"

    .line 452
    .line 453
    const-string v109, "Primus"

    .line 454
    .line 455
    const-string v110, "Porn Groove"

    .line 456
    .line 457
    const-string v111, "Satire"

    .line 458
    .line 459
    const-string v112, "Slow Jam"

    .line 460
    .line 461
    const-string v113, "Club"

    .line 462
    .line 463
    const-string v114, "Tango"

    .line 464
    .line 465
    const-string v115, "Samba"

    .line 466
    .line 467
    const-string v116, "Folklore"

    .line 468
    .line 469
    const-string v117, "Ballad"

    .line 470
    .line 471
    const-string v118, "Power Ballad"

    .line 472
    .line 473
    const-string v119, "Rhythmic Soul"

    .line 474
    .line 475
    const-string v120, "Freestyle"

    .line 476
    .line 477
    const-string v121, "Duet"

    .line 478
    .line 479
    const-string v122, "Punk Rock"

    .line 480
    .line 481
    const-string v123, "Drum Solo"

    .line 482
    .line 483
    const-string v124, "A capella"

    .line 484
    .line 485
    const-string v125, "Euro-House"

    .line 486
    .line 487
    const-string v126, "Dance Hall"

    .line 488
    .line 489
    const-string v127, "Goa"

    .line 490
    .line 491
    const-string v128, "Drum & Bass"

    .line 492
    .line 493
    const-string v129, "Club-House"

    .line 494
    .line 495
    const-string v130, "Hardcore"

    .line 496
    .line 497
    const-string v131, "Terror"

    .line 498
    .line 499
    const-string v132, "Indie"

    .line 500
    .line 501
    const-string v133, "BritPop"

    .line 502
    .line 503
    const-string v134, "Negerpunk"

    .line 504
    .line 505
    const-string v135, "Polsk Punk"

    .line 506
    .line 507
    const-string v136, "Beat"

    .line 508
    .line 509
    const-string v137, "Christian Gangsta Rap"

    .line 510
    .line 511
    const-string v138, "Heavy Metal"

    .line 512
    .line 513
    const-string v139, "Black Metal"

    .line 514
    .line 515
    const-string v140, "Crossover"

    .line 516
    .line 517
    const-string v141, "Contemporary Christian"

    .line 518
    .line 519
    const-string v142, "Christian Rock"

    .line 520
    .line 521
    const-string v143, "Merengue"

    .line 522
    .line 523
    const-string v144, "Salsa"

    .line 524
    .line 525
    const-string v145, "Thrash Metal"

    .line 526
    .line 527
    const-string v146, "Anime"

    .line 528
    .line 529
    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    sput-object v0, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    .line 534
    .line 535
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

.method private static parseCommentAttribute(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x10

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    .line 25
    .line 26
    const-string v0, "und"

    .line 27
    .line 28
    invoke-direct {p1, v0, p0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "Failed to parse comment attribute: "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "MetadataUtil"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method private static parseCoverArt(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 10
    .line 11
    const-string v3, "MetadataUtil"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v1, v2, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/16 v2, 0xd

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    const-string v2, "image/jpeg"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v2, 0xe

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    const-string v2, "image/png"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, v4

    .line 39
    :goto_0
    if-nez v2, :cond_2

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v0, "Unrecognized cover art flags: "

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-object v4

    .line 62
    :cond_2
    const/4 v1, 0x4

    .line 63
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v0, v0, -0x10

    .line 67
    .line 68
    new-array v1, v0, [B

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0, v1, v3, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    invoke-direct {p0, v2, v4, v0, v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    .line 82
    .line 83
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    return-object v4
.end method

.method public static parseIlstElement(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    shr-int/lit8 v2, v1, 0x18

    .line 15
    .line 16
    and-int/lit16 v2, v2, 0xff

    .line 17
    .line 18
    const/16 v3, 0xa9

    .line 19
    .line 20
    if-eq v2, v3, :cond_11

    .line 21
    .line 22
    const v3, 0xfffd

    .line 23
    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    :try_start_0
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GENRE:I

    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    :try_start_1
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_DISK_NUMBER:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    .line 48
    const-string v2, "TPOS"

    .line 49
    .line 50
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 51
    .line 52
    .line 53
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    :try_start_2
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TRACK_NUMBER:I

    .line 59
    .line 60
    if-ne v1, v2, :cond_3

    .line 61
    .line 62
    const-string v2, "TRCK"

    .line 63
    .line 64
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 69
    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :try_start_3
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TEMPO:I

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x1

    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    const-string v2, "TBPM"

    .line 79
    .line 80
    invoke-static {v1, v2, p0, v4, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 81
    .line 82
    .line 83
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    :try_start_4
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COMPILATION:I

    .line 89
    .line 90
    if-ne v1, v2, :cond_5

    .line 91
    .line 92
    const-string v2, "TCMP"

    .line 93
    .line 94
    invoke-static {v1, v2, p0, v4, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_5
    :try_start_5
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_COVER_ART:I

    .line 103
    .line 104
    if-ne v1, v2, :cond_6

    .line 105
    .line 106
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseCoverArt(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/ApicFrame;

    .line 107
    .line 108
    .line 109
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_6
    :try_start_6
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_ALBUM_ARTIST:I

    .line 115
    .line 116
    if-ne v1, v2, :cond_7

    .line 117
    .line 118
    const-string v2, "TPE2"

    .line 119
    .line 120
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 125
    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_7
    :try_start_7
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_TRACK_NAME:I

    .line 129
    .line 130
    if-ne v1, v2, :cond_8

    .line 131
    .line 132
    const-string v2, "TSOT"

    .line 133
    .line 134
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 135
    .line 136
    .line 137
    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_8
    :try_start_8
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM:I

    .line 143
    .line 144
    if-ne v1, v2, :cond_9

    .line 145
    .line 146
    const-string v2, "TSO2"

    .line 147
    .line 148
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 149
    .line 150
    .line 151
    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 152
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 153
    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_9
    :try_start_9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ARTIST:I

    .line 157
    .line 158
    if-ne v1, v2, :cond_a

    .line 159
    .line 160
    const-string v2, "TSOA"

    .line 161
    .line 162
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 163
    .line 164
    .line 165
    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 166
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 167
    .line 168
    .line 169
    return-object v1

    .line 170
    :cond_a
    :try_start_a
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_ALBUM_ARTIST:I

    .line 171
    .line 172
    if-ne v1, v2, :cond_b

    .line 173
    .line 174
    const-string v2, "TSOP"

    .line 175
    .line 176
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 177
    .line 178
    .line 179
    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 181
    .line 182
    .line 183
    return-object v1

    .line 184
    :cond_b
    :try_start_b
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_SORT_COMPOSER:I

    .line 185
    .line 186
    if-ne v1, v2, :cond_c

    .line 187
    .line 188
    const-string v2, "TSOC"

    .line 189
    .line 190
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 191
    .line 192
    .line 193
    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 194
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 195
    .line 196
    .line 197
    return-object v1

    .line 198
    :cond_c
    :try_start_c
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_RATING:I

    .line 199
    .line 200
    if-ne v1, v2, :cond_d

    .line 201
    .line 202
    const-string v2, "ITUNESADVISORY"

    .line 203
    .line 204
    invoke-static {v1, v2, p0, v3, v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 205
    .line 206
    .line 207
    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 209
    .line 210
    .line 211
    return-object v1

    .line 212
    :cond_d
    :try_start_d
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GAPLESS_ALBUM:I

    .line 213
    .line 214
    if-ne v1, v2, :cond_e

    .line 215
    .line 216
    const-string v2, "ITUNESGAPLESS"

    .line 217
    .line 218
    invoke-static {v1, v2, p0, v3, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 219
    .line 220
    .line 221
    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 223
    .line 224
    .line 225
    return-object v1

    .line 226
    :cond_e
    :try_start_e
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SORT_SHOW:I

    .line 227
    .line 228
    if-ne v1, v2, :cond_f

    .line 229
    .line 230
    const-string v2, "TVSHOWSORT"

    .line 231
    .line 232
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 233
    .line 234
    .line 235
    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 236
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 237
    .line 238
    .line 239
    return-object v1

    .line 240
    :cond_f
    :try_start_f
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_TV_SHOW:I

    .line 241
    .line 242
    if-ne v1, v2, :cond_10

    .line 243
    .line 244
    const-string v2, "TVSHOW"

    .line 245
    .line 246
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 247
    .line 248
    .line 249
    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 251
    .line 252
    .line 253
    return-object v1

    .line 254
    :cond_10
    :try_start_10
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_INTERNAL:I

    .line 255
    .line 256
    if-ne v1, v2, :cond_1b

    .line 257
    .line 258
    invoke-static {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseInternalAttribute(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;

    .line 259
    .line 260
    .line 261
    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 262
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 263
    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_11
    :goto_0
    const v2, 0xffffff

    .line 267
    .line 268
    .line 269
    and-int/2addr v2, v1

    .line 270
    :try_start_11
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMMENT:I

    .line 271
    .line 272
    if-ne v2, v3, :cond_12

    .line 273
    .line 274
    invoke-static {v1, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    .line 275
    .line 276
    .line 277
    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :cond_12
    :try_start_12
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_1:I

    .line 283
    .line 284
    if-eq v2, v3, :cond_1d

    .line 285
    .line 286
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_NAME_2:I

    .line 287
    .line 288
    if-ne v2, v3, :cond_13

    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :cond_13
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_1:I

    .line 293
    .line 294
    if-eq v2, v3, :cond_1c

    .line 295
    .line 296
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_COMPOSER_2:I

    .line 297
    .line 298
    if-ne v2, v3, :cond_14

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_14
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_YEAR:I

    .line 303
    .line 304
    if-ne v2, v3, :cond_15

    .line 305
    .line 306
    const-string v2, "TDRC"

    .line 307
    .line 308
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 309
    .line 310
    .line 311
    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 312
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 313
    .line 314
    .line 315
    return-object v1

    .line 316
    :cond_15
    :try_start_13
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ARTIST:I

    .line 317
    .line 318
    if-ne v2, v3, :cond_16

    .line 319
    .line 320
    const-string v2, "TPE1"

    .line 321
    .line 322
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 323
    .line 324
    .line 325
    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 326
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 327
    .line 328
    .line 329
    return-object v1

    .line 330
    :cond_16
    :try_start_14
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ENCODER:I

    .line 331
    .line 332
    if-ne v2, v3, :cond_17

    .line 333
    .line 334
    const-string v2, "TSSE"

    .line 335
    .line 336
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 337
    .line 338
    .line 339
    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 340
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 341
    .line 342
    .line 343
    return-object v1

    .line 344
    :cond_17
    :try_start_15
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_ALBUM:I

    .line 345
    .line 346
    if-ne v2, v3, :cond_18

    .line 347
    .line 348
    const-string v2, "TALB"

    .line 349
    .line 350
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 351
    .line 352
    .line 353
    move-result-object v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 354
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 355
    .line 356
    .line 357
    return-object v1

    .line 358
    :cond_18
    :try_start_16
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_LYRICS:I

    .line 359
    .line 360
    if-ne v2, v3, :cond_19

    .line 361
    .line 362
    const-string v2, "USLT"

    .line 363
    .line 364
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 365
    .line 366
    .line 367
    move-result-object v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 368
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 369
    .line 370
    .line 371
    return-object v1

    .line 372
    :cond_19
    :try_start_17
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->SHORT_TYPE_GENRE:I

    .line 373
    .line 374
    if-ne v2, v3, :cond_1a

    .line 375
    .line 376
    const-string v2, "TCON"

    .line 377
    .line 378
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 379
    .line 380
    .line 381
    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 382
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 383
    .line 384
    .line 385
    return-object v1

    .line 386
    :cond_1a
    :try_start_18
    sget v3, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->TYPE_GROUPING:I

    .line 387
    .line 388
    if-ne v2, v3, :cond_1b

    .line 389
    .line 390
    const-string v2, "TIT1"

    .line 391
    .line 392
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 393
    .line 394
    .line 395
    move-result-object v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 396
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 397
    .line 398
    .line 399
    return-object v1

    .line 400
    :cond_1b
    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    const-string v3, "Skipped unknown metadata entry: "

    .line 406
    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-static {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 418
    .line 419
    .line 420
    const/4 p0, 0x0

    .line 421
    return-object p0

    .line 422
    :cond_1c
    :goto_1
    :try_start_1a
    const-string v2, "TCOM"

    .line 423
    .line 424
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 425
    .line 426
    .line 427
    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 428
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 429
    .line 430
    .line 431
    return-object v1

    .line 432
    :cond_1d
    :goto_2
    :try_start_1b
    const-string v2, "TIT2"

    .line 433
    .line 434
    invoke-static {v1, v2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 435
    .line 436
    .line 437
    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 438
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 439
    .line 440
    .line 441
    return-object v1

    .line 442
    :goto_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 443
    .line 444
    .line 445
    throw v1
.end method

.method private static parseIndexAndCountAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x16

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, ""

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-lez p2, :cond_0

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, "/"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :cond_0
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 73
    .line 74
    invoke-direct {p2, p1, v3, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p2, "Failed to parse index/count attribute: "

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string p1, "MetadataUtil"

    .line 100
    .line 101
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-object v3
.end method

.method private static parseInternalAttribute(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    move-object v2, v0

    .line 4
    move-object v3, v2

    .line 5
    move v4, v1

    .line 6
    move v5, v4

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    if-ge v6, p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const/4 v9, 0x4

    .line 26
    invoke-virtual {p0, v9}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 27
    .line 28
    .line 29
    sget v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mean:I

    .line 30
    .line 31
    if-ne v8, v9, :cond_0

    .line 32
    .line 33
    add-int/lit8 v7, v7, -0xc

    .line 34
    .line 35
    invoke-virtual {p0, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_name:I

    .line 41
    .line 42
    if-ne v8, v9, :cond_1

    .line 43
    .line 44
    add-int/lit8 v7, v7, -0xc

    .line 45
    .line 46
    invoke-virtual {p0, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget v9, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 52
    .line 53
    if-ne v8, v9, :cond_2

    .line 54
    .line 55
    move v4, v6

    .line 56
    move v5, v7

    .line 57
    :cond_2
    add-int/lit8 v7, v7, -0xc

    .line 58
    .line 59
    invoke-virtual {p0, v7}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-eqz v2, :cond_5

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    if-ne v4, v1, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 71
    .line 72
    .line 73
    const/16 p1, 0x10

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 76
    .line 77
    .line 78
    sub-int/2addr v5, p1

    .line 79
    invoke-virtual {p0, v5}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;

    .line 84
    .line 85
    invoke-direct {p1, v2, v3, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_5
    :goto_1
    return-object v0
.end method

.method private static parseStandardGenreAttribute(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-gt p0, v2, :cond_0

    .line 12
    .line 13
    add-int/lit8 p0, p0, -0x1

    .line 14
    .line 15
    aget-object p0, v1, p0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p0, v0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    new-instance v1, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 22
    .line 23
    const-string v2, "TCON"

    .line 24
    .line 25
    invoke-direct {v1, v2, v0, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    const-string p0, "MetadataUtil"

    .line 30
    .line 31
    const-string v1, "Failed to parse standard genre code"

    .line 32
    .line 33
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private static parseTextAttribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget v2, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/16 p0, 0x8

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x10

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p2, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 26
    .line 27
    invoke-direct {p2, p1, v3, p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p2, "Failed to parse text attribute: "

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "MetadataUtil"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-object v3
.end method

.method private static parseUint8Attribute(ILjava/lang/String;Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ZZ)Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Frame;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    if-ltz p2, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p0, p1, p4, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const-string p3, "und"

    .line 34
    .line 35
    invoke-direct {p0, p3, p1, p2}, Lcom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object p0

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string p2, "Failed to parse uint8 attribute: "

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "MetadataUtil"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object p4
.end method

.method private static parseUint8AttributeValue(Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget v1, Lcom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_data:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const-string p0, "MetadataUtil"

    .line 24
    .line 25
    const-string v0, "Failed to parse uint8 attribute value"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const/4 p0, -0x1

    .line 31
    return p0
.end method
