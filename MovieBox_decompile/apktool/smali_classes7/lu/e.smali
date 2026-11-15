.class public final Llu/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/e$a;,
        Llu/e$b;
    }
.end annotation


# static fields
.field public static final d:Llu/e$a;


# instance fields
.field private final a:Llu/e$b;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llu/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Llu/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Llu/e;->d:Llu/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Llu/e$b;)V
    .locals 1

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llu/e;->a:Llu/e$b;

    .line 10
    .line 11
    new-instance p1, Llu/b;

    .line 12
    .line 13
    invoke-direct {p1}, Llu/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Llu/e;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p1, Llu/c;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Llu/c;-><init>(Llu/e;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Llu/e;->c:Landroidx/lifecycle/c0;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Llu/e;->m(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llu/e;->g(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    invoke-static {}, Llu/e;->n()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    .line 1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v93, ""

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move-object/from16 v2, v93

    .line 25
    .line 26
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v94, 0x0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v3, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object/from16 v3, v94

    .line 41
    .line 42
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_3
    move-object v4, v1

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v5, v1

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    move-object/from16 v5, v94

    .line 66
    .line 67
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getSize()Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    move-object v6, v1

    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object/from16 v6, v94

    .line 80
    .line 81
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object/from16 v53, v1

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_6
    move-object/from16 v53, v94

    .line 95
    .line 96
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getResolutions()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :goto_6
    move/from16 v25, v1

    .line 119
    .line 120
    goto :goto_7

    .line 121
    :cond_7
    const/4 v1, 0x0

    .line 122
    goto :goto_6

    .line 123
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getDuration()J

    .line 130
    .line 131
    .line 132
    move-result-wide v7

    .line 133
    goto :goto_8

    .line 134
    :cond_8
    const-wide/16 v7, 0x0

    .line 135
    .line 136
    :goto_8
    const-wide/16 v9, 0x3e8

    .line 137
    .line 138
    mul-long/2addr v7, v9

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_9

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getIdType()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move-object/from16 v71, v1

    .line 150
    .line 151
    goto :goto_9

    .line 152
    :cond_9
    move-object/from16 v71, v94

    .line 153
    .line 154
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v73

    .line 158
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-lez v1, :cond_a

    .line 163
    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    :goto_a
    move v9, v1

    .line 169
    goto :goto_b

    .line 170
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    goto :goto_a

    .line 175
    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_b

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    move-object/from16 v72, v1

    .line 186
    .line 187
    goto :goto_c

    .line 188
    :cond_b
    move-object/from16 v72, v94

    .line 189
    .line 190
    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    if-nez v1, :cond_c

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :cond_c
    move-object/from16 v74, v1

    .line 201
    .line 202
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-nez v1, :cond_d

    .line 207
    .line 208
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :cond_d
    move-object/from16 v77, v1

    .line 213
    .line 214
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v62

    .line 218
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    sget-object v10, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 223
    .line 224
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v86

    .line 232
    new-instance v15, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 233
    .line 234
    move-object v1, v15

    .line 235
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v76

    .line 243
    const v91, 0xd1e0

    .line 244
    .line 245
    .line 246
    const/16 v92, 0x0

    .line 247
    .line 248
    const/4 v7, 0x0

    .line 249
    const/4 v8, 0x0

    .line 250
    const/4 v9, 0x0

    .line 251
    const/4 v11, 0x0

    .line 252
    const-wide/16 v12, 0x0

    .line 253
    .line 254
    const/4 v14, 0x0

    .line 255
    const/16 v16, 0x0

    .line 256
    .line 257
    move-object/from16 v95, v15

    .line 258
    .line 259
    move/from16 v15, v16

    .line 260
    .line 261
    const-wide/16 v17, 0x0

    .line 262
    .line 263
    const-wide/16 v19, 0x0

    .line 264
    .line 265
    const/16 v21, 0x0

    .line 266
    .line 267
    const/16 v22, 0x0

    .line 268
    .line 269
    const/16 v23, 0x0

    .line 270
    .line 271
    const/16 v24, 0x0

    .line 272
    .line 273
    const/16 v26, 0x0

    .line 274
    .line 275
    const/16 v27, 0x0

    .line 276
    .line 277
    const/16 v28, 0x0

    .line 278
    .line 279
    const/16 v29, 0x0

    .line 280
    .line 281
    const/16 v30, 0x0

    .line 282
    .line 283
    const/16 v31, 0x0

    .line 284
    .line 285
    const/16 v35, 0x0

    .line 286
    .line 287
    const-wide/16 v36, 0x0

    .line 288
    .line 289
    const/16 v38, 0x0

    .line 290
    .line 291
    const/16 v39, 0x0

    .line 292
    .line 293
    const/16 v40, 0x0

    .line 294
    .line 295
    const/16 v41, 0x0

    .line 296
    .line 297
    const-wide/16 v42, 0x0

    .line 298
    .line 299
    const/16 v44, 0x0

    .line 300
    .line 301
    const/16 v45, 0x0

    .line 302
    .line 303
    const-wide/16 v46, 0x0

    .line 304
    .line 305
    const/16 v48, 0x0

    .line 306
    .line 307
    const-wide/16 v49, 0x0

    .line 308
    .line 309
    const/16 v51, 0x0

    .line 310
    .line 311
    const/16 v52, 0x0

    .line 312
    .line 313
    const/16 v54, 0x0

    .line 314
    .line 315
    const/16 v55, 0x0

    .line 316
    .line 317
    const/16 v56, 0x0

    .line 318
    .line 319
    const/16 v57, 0x0

    .line 320
    .line 321
    const/16 v58, 0x0

    .line 322
    .line 323
    const/16 v59, 0x0

    .line 324
    .line 325
    const/16 v60, 0x0

    .line 326
    .line 327
    const/16 v61, 0x0

    .line 328
    .line 329
    const/16 v63, 0x0

    .line 330
    .line 331
    const/16 v64, 0x0

    .line 332
    .line 333
    const/16 v65, 0x0

    .line 334
    .line 335
    const/16 v66, 0x0

    .line 336
    .line 337
    const/16 v67, 0x0

    .line 338
    .line 339
    const/16 v68, 0x0

    .line 340
    .line 341
    const/16 v69, 0x0

    .line 342
    .line 343
    const/16 v70, 0x0

    .line 344
    .line 345
    const/16 v78, 0x0

    .line 346
    .line 347
    const/16 v79, 0x0

    .line 348
    .line 349
    const/16 v80, 0x0

    .line 350
    .line 351
    const/16 v81, 0x0

    .line 352
    .line 353
    const/16 v85, 0x0

    .line 354
    .line 355
    const/16 v87, 0x0

    .line 356
    .line 357
    const/16 v88, 0x0

    .line 358
    .line 359
    const v89, -0x38100120

    .line 360
    .line 361
    .line 362
    const v90, 0x3fdfeffd

    .line 363
    .line 364
    .line 365
    const-string v32, ""

    .line 366
    .line 367
    const-string v75, ""

    .line 368
    .line 369
    move-object/from16 v33, p4

    .line 370
    .line 371
    move-object/from16 v34, v0

    .line 372
    .line 373
    move-object/from16 v82, p5

    .line 374
    .line 375
    move-object/from16 v83, p6

    .line 376
    .line 377
    move-object/from16 v84, p7

    .line 378
    .line 379
    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 380
    .line 381
    .line 382
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    move-object/from16 v2, v95

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-eqz v1, :cond_e

    .line 400
    .line 401
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getIdType()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v94

    .line 405
    :cond_e
    move-object/from16 v1, v94

    .line 406
    .line 407
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleIdType(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    if-nez v0, :cond_f

    .line 411
    .line 412
    move-object/from16 v13, v93

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_f
    move-object v13, v0

    .line 416
    :goto_d
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v14

    .line 420
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v15

    .line 424
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    move-object/from16 v10, p0

    .line 428
    .line 429
    move-object/from16 v11, p1

    .line 430
    .line 431
    move-object/from16 v12, p4

    .line 432
    .line 433
    move-object/from16 v16, v2

    .line 434
    .line 435
    invoke-direct/range {v10 .. v16}, Llu/e;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 436
    .line 437
    .line 438
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 439
    .line 440
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v5, "UGC\u89c6\u9891\uff0c\u5f00\u59cb\u4e0b\u8f7d:  resourceId = "

    .line 454
    .line 455
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v1, ", name = "

    .line 462
    .line 463
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    filled-new-array {v1}, [Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    const/4 v3, 0x1

    .line 478
    const-string v4, "download"

    .line 479
    .line 480
    invoke-virtual {v0, v4, v1, v3}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 481
    .line 482
    .line 483
    return-object v2
.end method

.method private static final g(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V
    .locals 11

    .line 1
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 2
    .line 3
    invoke-interface {v0}, Llu/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :goto_0
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "\u5355\u89c6\u9891\u76f4\u63a5\u4e0b\u8f7d\uff0c\u5df2\u83b7\u53d6\u6570\u636e\u6267\u884c\u4e0b\u8f7d\uff0c ugcVideoId:"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", category:"

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    filled-new-array {v0}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    const/4 v9, 0x4

    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v6, "UGCImmVideoDownload"

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v5 .. v10}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 89
    .line 90
    sget p1, Lcom/transsnet/downloader/R$string;->notification_download_failed:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 97
    .line 98
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 99
    .line 100
    invoke-interface {v0}, Llu/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const-string v5, "/ugc_video/immersive_detail"

    .line 114
    .line 115
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 116
    .line 117
    invoke-interface {v0}, Llu/e$b;->d()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 122
    .line 123
    invoke-interface {v0}, Llu/e$b;->g()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 128
    .line 129
    invoke-interface {v0}, Llu/e$b;->e()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    move-object v1, p0

    .line 134
    move-object v3, p1

    .line 135
    invoke-virtual/range {v1 .. v8}, Llu/e;->e(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    goto :goto_3

    .line 148
    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 149
    .line 150
    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_4
    return-void
.end method

.method private final h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 14

    .line 1
    const-string v0, "page_from"

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "ops"

    .line 10
    .line 11
    move-object/from16 v2, p4

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "resource_id"

    .line 22
    .line 23
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v4, "task_id"

    .line 28
    .line 29
    move-object/from16 v5, p5

    .line 30
    .line 31
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "refer_subject_id"

    .line 36
    .line 37
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const-string v6, "content_id"

    .line 46
    .line 47
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "belong_to_collection_id"

    .line 56
    .line 57
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-string v8, "category_type"

    .line 66
    .line 67
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    const-string v9, "video_track_id"

    .line 76
    .line 77
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-string v10, "video_parent_content_id"

    .line 86
    .line 87
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const-string v11, "video_parent_video_track_id"

    .line 96
    .line 97
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    const/16 v12, 0xb

    .line 106
    .line 107
    new-array v12, v12, [Lkotlin/Pair;

    .line 108
    .line 109
    const/4 v13, 0x0

    .line 110
    aput-object v0, v12, v13

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    aput-object v1, v12, v0

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    aput-object v2, v12, v0

    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    aput-object v4, v12, v0

    .line 120
    .line 121
    const/4 v0, 0x4

    .line 122
    aput-object v5, v12, v0

    .line 123
    .line 124
    const/4 v0, 0x5

    .line 125
    aput-object v6, v12, v0

    .line 126
    .line 127
    const/4 v0, 0x6

    .line 128
    aput-object v7, v12, v0

    .line 129
    .line 130
    const/4 v0, 0x7

    .line 131
    aput-object v8, v12, v0

    .line 132
    .line 133
    const/16 v0, 0x8

    .line 134
    .line 135
    aput-object v9, v12, v0

    .line 136
    .line 137
    const/16 v0, 0x9

    .line 138
    .line 139
    aput-object v10, v12, v0

    .line 140
    .line 141
    const/16 v0, 0xa

    .line 142
    .line 143
    aput-object v11, v12, v0

    .line 144
    .line 145
    invoke-static {v12}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 150
    .line 151
    const-string v2, "download_click"

    .line 152
    .line 153
    if-eqz p2, :cond_1

    .line 154
    .line 155
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_0

    .line 160
    .line 161
    move-object/from16 v4, p2

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    const/4 v4, 0x0

    .line 165
    :goto_0
    if-nez v4, :cond_2

    .line 166
    .line 167
    :cond_1
    move-object v4, v2

    .line 168
    :cond_2
    invoke-virtual {v1, v4, v2, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Landroid/os/Bundle;

    .line 172
    .line 173
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 184
    .line 185
    move-object v3, p1

    .line 186
    invoke-virtual {v1, v2, v0, p1}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method private final i()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Llu/e;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final m(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p2, "formatSize"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "downloadBean"

    .line 7
    .line 8
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Llu/e;->a:Llu/e$b;

    .line 12
    .line 13
    invoke-interface {p0}, Llu/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->c1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final n()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ugcVideo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pageFrom"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "trackId"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p7}, Llu/e;->d(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object p2, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 31
    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2, p1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Llu/e;->i()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 p3, 0x1

    .line 48
    new-array p3, p3, [Lcom/transsion/baselib/db/download/DownloadBean;

    .line 49
    .line 50
    const/4 p4, 0x0

    .line 51
    aput-object p1, p3, p4

    .line 52
    .line 53
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    sget-object p2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Llu/i;)V
    .locals 12

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reportDelegate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 12
    .line 13
    invoke-interface {v0}, Llu/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->isOnline()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 48
    .line 49
    invoke-interface {v0}, Llu/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getDownloadStatus()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v3, 0x5

    .line 60
    if-ne v0, v3, :cond_4

    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 63
    .line 64
    invoke-interface {v0}, Llu/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v3, p0, Llu/e;->a:Llu/e$b;

    .line 78
    .line 79
    invoke-interface {v3}, Llu/e$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    move-object v7, v3

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move-object v7, v2

    .line 96
    :goto_0
    const/16 v10, 0x18

    .line 97
    .line 98
    const/4 v11, 0x0

    .line 99
    const-string v5, "downloaded"

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x0

    .line 103
    move-object v4, p2

    .line 104
    move-object v6, p1

    .line 105
    invoke-static/range {v4 .. v11}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "/download/ugc_my_downloads"

    .line 109
    .line 110
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, "main_tab_index"

    .line 115
    .line 116
    invoke-virtual {p1, p2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 p2, 0x2

    .line 121
    invoke-static {p1, v0, v2, p2, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    return-void

    .line 125
    :cond_4
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 126
    .line 127
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_5

    .line 132
    .line 133
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 134
    .line 135
    sget p2, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 142
    .line 143
    invoke-interface {v0}, Llu/e$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :cond_6
    move-object v6, v2

    .line 158
    const/16 v9, 0x18

    .line 159
    .line 160
    const/4 v10, 0x0

    .line 161
    const-string v4, "download"

    .line 162
    .line 163
    const/4 v7, 0x0

    .line 164
    const/4 v8, 0x0

    .line 165
    move-object v3, p2

    .line 166
    move-object v5, p1

    .line 167
    invoke-static/range {v3 .. v10}, Llu/i;->b(Llu/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    if-eqz p2, :cond_8

    .line 175
    .line 176
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Llu/e$b;->a(Z)V

    .line 179
    .line 180
    .line 181
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v1, "\u5355\u89c6\u9891\u76f4\u63a5\u4e0b\u8f7d\uff0c\u70b9\u51fb\u53bb\u8bf7\u6c42\u4e0b\u8f7d\u6570\u636e--\uff0c ugcVideoId:"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p1, "}"

    .line 201
    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    filled-new-array {p1}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    const/4 v6, 0x4

    .line 214
    const/4 v7, 0x0

    .line 215
    const-string v3, "UGCImmVideoDownload"

    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Llu/e;->a:Llu/e$b;

    .line 222
    .line 223
    invoke-interface {p1}, Llu/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_7

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->H(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_7
    iget-object p1, p0, Llu/e;->a:Llu/e$b;

    .line 233
    .line 234
    invoke-interface {p1}, Llu/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-eqz p1, :cond_8

    .line 239
    .line 240
    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->c1(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_8
    return-void
.end method

.method public final j(Landroidx/lifecycle/u;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llu/e;->a:Llu/e$b;

    .line 7
    .line 8
    invoke-interface {v0}, Llu/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->z()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Llu/e;->c:Landroidx/lifecycle/c0;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final k(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Llu/e;->a:Llu/e$b;

    .line 7
    .line 8
    invoke-interface {p1}, Llu/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->z()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Llu/e;->c:Landroidx/lifecycle/c0;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    move-object/from16 v3, p1

    .line 6
    .line 7
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "video"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "trackId"

    .line 16
    .line 17
    move-object/from16 v11, p3

    .line 18
    .line 19
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, v4

    .line 41
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_1
    move-object v6, v4

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    sget-object v8, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    .line 73
    .line 74
    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    new-instance v15, Llu/d;

    .line 83
    .line 84
    move-object/from16 v13, p0

    .line 85
    .line 86
    invoke-direct {v15, v13, v0}, Llu/d;-><init>(Llu/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 87
    .line 88
    .line 89
    const-string v8, "/ugc_video/immersive_detail"

    .line 90
    .line 91
    move-object/from16 v3, p1

    .line 92
    .line 93
    move-object v4, v1

    .line 94
    move-object/from16 v11, p3

    .line 95
    .line 96
    move-object/from16 v12, p4

    .line 97
    .line 98
    move-object/from16 v13, p5

    .line 99
    .line 100
    invoke-virtual/range {v2 .. v15}, Lcom/transsnet/downloader/DownloadManagerApi;->f0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
