.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Triple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/util/List;

    .line 26
    .line 27
    move-object v5, v4

    .line 28
    check-cast v5, Ljava/util/Collection;

    .line 29
    .line 30
    if-eqz v5, :cond_23

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    goto/16 :goto_13

    .line 39
    .line 40
    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v5, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$compareBy$1;

    .line 43
    .line 44
    invoke-direct {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$compareBy$1;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$1;

    .line 48
    .line 49
    invoke-direct {v6, v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$2;

    .line 53
    .line 54
    invoke-direct {v5, v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3$emit$$inlined$thenBy$2;-><init>(Ljava/util/Comparator;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    check-cast v4, Ljava/lang/Iterable;

    .line 66
    .line 67
    new-instance v6, Ljava/util/ArrayList;

    .line 68
    .line 69
    const/16 v7, 0xa

    .line 70
    .line 71
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    const/4 v10, 0x0

    .line 87
    if-eqz v9, :cond_d

    .line 88
    .line 89
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 94
    .line 95
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    if-eqz v11, :cond_3

    .line 100
    .line 101
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-lez v12, :cond_2

    .line 106
    .line 107
    move-object/from16 v19, v11

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move-object/from16 v19, v10

    .line 111
    .line 112
    :goto_1
    if-eqz v19, :cond_3

    .line 113
    .line 114
    new-instance v11, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 115
    .line 116
    const/16 v23, 0x1d7

    .line 117
    .line 118
    const/16 v24, 0x0

    .line 119
    .line 120
    const/4 v14, 0x0

    .line 121
    const/4 v15, 0x0

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const/16 v18, 0x0

    .line 125
    .line 126
    const/16 v20, 0x0

    .line 127
    .line 128
    const/16 v21, 0x0

    .line 129
    .line 130
    const/16 v22, 0x0

    .line 131
    .line 132
    move-object v13, v11

    .line 133
    move-object/from16 v17, v19

    .line 134
    .line 135
    invoke-direct/range {v13 .. v24}, Lcom/transsion/moviedetailapi/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v30, v11

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    move-object/from16 v30, v10

    .line 142
    .line 143
    :goto_2
    new-instance v19, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 144
    .line 145
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    if-nez v11, :cond_4

    .line 150
    .line 151
    move-object v12, v2

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    move-object v12, v11

    .line 154
    :goto_3
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoPosition()Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    if-eqz v11, :cond_5

    .line 167
    .line 168
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    goto :goto_4

    .line 173
    :cond_5
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->videoUGCPosition()I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    :goto_4
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v15

    .line 181
    const/16 v17, 0x10

    .line 182
    .line 183
    const/16 v18, 0x0

    .line 184
    .line 185
    const/16 v16, 0x0

    .line 186
    .line 187
    move-object/from16 v11, v19

    .line 188
    .line 189
    invoke-direct/range {v11 .. v18}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 190
    .line 191
    .line 192
    new-instance v38, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 193
    .line 194
    if-eqz v3, :cond_6

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUid()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    move-object/from16 v21, v11

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    move-object/from16 v21, v10

    .line 204
    .line 205
    :goto_5
    if-eqz v3, :cond_7

    .line 206
    .line 207
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    move-object/from16 v22, v11

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_7
    move-object/from16 v22, v10

    .line 215
    .line 216
    :goto_6
    if-eqz v3, :cond_8

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUserAvatar()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    move-object/from16 v23, v11

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_8
    move-object/from16 v23, v10

    .line 226
    .line 227
    :goto_7
    const/16 v25, 0x8

    .line 228
    .line 229
    const/16 v26, 0x0

    .line 230
    .line 231
    const/16 v24, 0x0

    .line 232
    .line 233
    move-object/from16 v20, v38

    .line 234
    .line 235
    invoke-direct/range {v20 .. v26}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    if-nez v11, :cond_9

    .line 243
    .line 244
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    :cond_9
    move-object/from16 v26, v11

    .line 249
    .line 250
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    if-nez v11, :cond_a

    .line 255
    .line 256
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    :cond_a
    move-object/from16 v27, v11

    .line 261
    .line 262
    if-eqz v3, :cond_b

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getDescription()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    :cond_b
    move-object/from16 v28, v10

    .line 269
    .line 270
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 271
    .line 272
    .line 273
    move-result-object v33

    .line 274
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v37

    .line 278
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v41

    .line 282
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v42

    .line 286
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoEpTitle()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v45

    .line 290
    new-instance v9, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 291
    .line 292
    move-object/from16 v25, v9

    .line 293
    .line 294
    const v55, 0x1ff62768

    .line 295
    .line 296
    .line 297
    const/16 v56, 0x0

    .line 298
    .line 299
    const/16 v29, 0x0

    .line 300
    .line 301
    const/16 v31, 0x0

    .line 302
    .line 303
    const/16 v32, 0x0

    .line 304
    .line 305
    const/16 v34, 0x0

    .line 306
    .line 307
    const/16 v35, 0x0

    .line 308
    .line 309
    const/16 v36, 0x0

    .line 310
    .line 311
    const/16 v39, 0x0

    .line 312
    .line 313
    const/16 v43, 0x0

    .line 314
    .line 315
    const/16 v44, 0x0

    .line 316
    .line 317
    const/16 v46, 0x0

    .line 318
    .line 319
    const/16 v47, 0x0

    .line 320
    .line 321
    const/16 v48, 0x0

    .line 322
    .line 323
    const/16 v49, 0x0

    .line 324
    .line 325
    const/16 v50, 0x0

    .line 326
    .line 327
    const/16 v51, 0x0

    .line 328
    .line 329
    const/16 v52, 0x0

    .line 330
    .line 331
    const/16 v53, 0x0

    .line 332
    .line 333
    const/16 v54, 0x0

    .line 334
    .line 335
    move-object/from16 v40, v19

    .line 336
    .line 337
    invoke-direct/range {v25 .. v56}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;IZLcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {v19 .. v19}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getPosition()Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    if-eqz v10, :cond_c

    .line 345
    .line 346
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    goto :goto_8

    .line 351
    :cond_c
    const/4 v10, -0x1

    .line 352
    :goto_8
    invoke-virtual {v9, v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setPlayListPosition(I)V

    .line 353
    .line 354
    .line 355
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_d
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 365
    .line 366
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    if-eqz v8, :cond_f

    .line 375
    .line 376
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    move-object v9, v8

    .line 381
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 382
    .line 383
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    iget-object v12, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 388
    .line 389
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    if-nez v11, :cond_10

    .line 394
    .line 395
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    iget-object v11, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 400
    .line 401
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    if-eqz v9, :cond_e

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_f
    move-object v8, v10

    .line 409
    :cond_10
    :goto_9
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 410
    .line 411
    move-object v4, v3

    .line 412
    check-cast v4, Ljava/lang/Iterable;

    .line 413
    .line 414
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 415
    .line 416
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    if-eqz v11, :cond_14

    .line 425
    .line 426
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    move-object v12, v11

    .line 431
    check-cast v12, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 432
    .line 433
    invoke-virtual {v12}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v13

    .line 437
    iget-object v14, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 438
    .line 439
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    if-nez v13, :cond_15

    .line 444
    .line 445
    invoke-virtual {v12}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v13

    .line 449
    if-eqz v8, :cond_12

    .line 450
    .line 451
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v14

    .line 455
    goto :goto_a

    .line 456
    :cond_12
    move-object v14, v10

    .line 457
    :goto_a
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v13

    .line 461
    if-nez v13, :cond_15

    .line 462
    .line 463
    invoke-virtual {v12}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v12

    .line 467
    if-eqz v8, :cond_13

    .line 468
    .line 469
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    goto :goto_b

    .line 474
    :cond_13
    move-object v13, v10

    .line 475
    :goto_b
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v12

    .line 479
    if-eqz v12, :cond_11

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_14
    move-object v11, v10

    .line 483
    :cond_15
    :goto_c
    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 484
    .line 485
    if-nez v11, :cond_16

    .line 486
    .line 487
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    move-object v11, v3

    .line 492
    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 493
    .line 494
    :cond_16
    if-eqz v8, :cond_1d

    .line 495
    .line 496
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    if-eqz v3, :cond_1d

    .line 501
    .line 502
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    if-lez v6, :cond_17

    .line 507
    .line 508
    move-object v15, v3

    .line 509
    goto :goto_d

    .line 510
    :cond_17
    move-object v15, v10

    .line 511
    :goto_d
    if-eqz v15, :cond_1d

    .line 512
    .line 513
    new-instance v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 514
    .line 515
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    if-nez v6, :cond_18

    .line 520
    .line 521
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    :cond_18
    new-instance v9, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 526
    .line 527
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v12

    .line 531
    if-nez v12, :cond_19

    .line 532
    .line 533
    const-string v12, ""

    .line 534
    .line 535
    :cond_19
    move-object v14, v12

    .line 536
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 537
    .line 538
    .line 539
    move-result v12

    .line 540
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v16

    .line 544
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v12

    .line 548
    const-wide/16 v17, 0x0

    .line 549
    .line 550
    if-eqz v12, :cond_1a

    .line 551
    .line 552
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 553
    .line 554
    .line 555
    move-result-wide v12

    .line 556
    goto :goto_e

    .line 557
    :cond_1a
    move-wide/from16 v12, v17

    .line 558
    .line 559
    :goto_e
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v19

    .line 563
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 564
    .line 565
    .line 566
    move-result-object v12

    .line 567
    if-eqz v12, :cond_1b

    .line 568
    .line 569
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 570
    .line 571
    .line 572
    move-result-wide v17

    .line 573
    :cond_1b
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v18

    .line 577
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v8

    .line 581
    if-nez v8, :cond_1c

    .line 582
    .line 583
    const-string v8, "ResourceId"

    .line 584
    .line 585
    :cond_1c
    move-object/from16 v21, v8

    .line 586
    .line 587
    const-string v13, "Mp4"

    .line 588
    .line 589
    const-string v8, ""

    .line 590
    .line 591
    const-string v20, ""

    .line 592
    .line 593
    move-object v12, v9

    .line 594
    move-object/from16 v17, v19

    .line 595
    .line 596
    move-object/from16 v19, v8

    .line 597
    .line 598
    invoke-direct/range {v12 .. v21}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    invoke-direct {v3, v6, v8, v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V

    .line 606
    .line 607
    .line 608
    goto :goto_f

    .line 609
    :cond_1d
    move-object v3, v10

    .line 610
    :goto_f
    if-eqz v11, :cond_1e

    .line 611
    .line 612
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 613
    .line 614
    invoke-static {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->w0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    new-instance v8, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 619
    .line 620
    invoke-direct {v8, v11, v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isCollection()Z

    .line 624
    .line 625
    .line 626
    move-result v9

    .line 627
    invoke-virtual {v8, v9}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v6, v8}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    :cond_1e
    new-instance v6, Ljava/util/ArrayList;

    .line 634
    .line 635
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 636
    .line 637
    .line 638
    move-result v7

    .line 639
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .line 641
    .line 642
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-eqz v7, :cond_21

    .line 651
    .line 652
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v7

    .line 656
    check-cast v7, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 657
    .line 658
    invoke-virtual {v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v8

    .line 662
    if-eqz v11, :cond_1f

    .line 663
    .line 664
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v9

    .line 668
    goto :goto_11

    .line 669
    :cond_1f
    move-object v9, v10

    .line 670
    :goto_11
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    if-eqz v8, :cond_20

    .line 675
    .line 676
    move-object v8, v3

    .line 677
    goto :goto_12

    .line 678
    :cond_20
    move-object v8, v10

    .line 679
    :goto_12
    new-instance v9, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 680
    .line 681
    invoke-direct {v9, v7, v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v9, v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    .line 685
    .line 686
    .line 687
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    goto :goto_10

    .line 691
    :cond_21
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    if-eqz v2, :cond_22

    .line 696
    .line 697
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 698
    .line 699
    invoke-static {v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 700
    .line 701
    .line 702
    move-result-object v4

    .line 703
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    invoke-static {v2, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    new-array v5, v1, [Lkotlin/Pair;

    .line 712
    .line 713
    const/4 v6, 0x0

    .line 714
    aput-object v2, v5, v6

    .line 715
    .line 716
    invoke-static {v5}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    invoke-virtual {v4, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    :cond_22
    iget-object v2, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 724
    .line 725
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    new-instance v4, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 730
    .line 731
    invoke-direct {v4, v3, v1, v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 738
    .line 739
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .line 747
    .line 748
    const-string v5, "getLocalDataWithoutNet size:"

    .line 749
    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v13

    .line 760
    const/4 v15, 0x4

    .line 761
    const/16 v16, 0x0

    .line 762
    .line 763
    const-string v12, "UGCImmVideoDetailViewModel"

    .line 764
    .line 765
    const/4 v14, 0x0

    .line 766
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    iget-object v2, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 770
    .line 771
    invoke-virtual {v2, v3, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->E0(Ljava/util/List;Z)V

    .line 772
    .line 773
    .line 774
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 775
    .line 776
    return-object v1

    .line 777
    :cond_23
    :goto_13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 778
    .line 779
    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Triple;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$3;->a(Lkotlin/Triple;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
