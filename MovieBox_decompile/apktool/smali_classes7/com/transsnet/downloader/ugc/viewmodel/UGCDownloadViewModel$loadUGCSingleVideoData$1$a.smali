.class final Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, p2

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadList;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_6

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v3, v1

    .line 47
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResources()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/util/Collection;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    :cond_4
    const/4 v2, 0x1

    .line 64
    :cond_5
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_6
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_8

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getResolutions()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->H0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->i(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;)Landroidx/lifecycle/b0;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    move-object v1, p1

    .line 135
    check-cast v1, Ljava/lang/Iterable;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const-string v5, "tab"

    .line 148
    .line 149
    if-eqz v4, :cond_e

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Ljava/lang/Number;

    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-static {v3, v4}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->f(Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;I)Landroidx/lifecycle/b0;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    new-instance v7, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-eqz v9, :cond_b

    .line 179
    .line 180
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    move-object v10, v9

    .line 185
    check-cast v10, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;

    .line 186
    .line 187
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    if-eqz v10, :cond_9

    .line 192
    .line 193
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getResolutions()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    if-eqz v10, :cond_9

    .line 198
    .line 199
    invoke-static {v10}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    if-nez v10, :cond_a

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_a
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-ne v10, v4, :cond_9

    .line 211
    .line 212
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Ljava/util/Map;

    .line 221
    .line 222
    if-eqz v4, :cond_c

    .line 223
    .line 224
    invoke-static {v4}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    if-nez v4, :cond_d

    .line 229
    .line 230
    :cond_c
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 231
    .line 232
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 233
    .line 234
    .line 235
    :cond_d
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_e
    move-object v0, p1

    .line 243
    check-cast v0, Ljava/util/Collection;

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_14

    .line 250
    .line 251
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v1, "download_last_resolution"

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-gez v0, :cond_f

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_f
    move v2, v0

    .line 275
    :goto_5
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, Ljava/lang/Integer;

    .line 280
    .line 281
    if-nez v0, :cond_10

    .line 282
    .line 283
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    move-object v0, p1

    .line 288
    check-cast v0, Ljava/lang/Integer;

    .line 289
    .line 290
    :cond_10
    if-eqz v0, :cond_14

    .line 291
    .line 292
    iget-object p1, p0, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;->a:Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->q()Landroidx/lifecycle/b0;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->u()Ljava/util/Map;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Landroidx/lifecycle/b0;

    .line 322
    .line 323
    if-eqz v0, :cond_11

    .line 324
    .line 325
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Ljava/util/Map;

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_11
    move-object v0, p2

    .line 333
    :goto_6
    if-eqz v0, :cond_12

    .line 334
    .line 335
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    check-cast p2, Ljava/util/List;

    .line 340
    .line 341
    :cond_12
    move-object v0, p2

    .line 342
    check-cast v0, Ljava/util/Collection;

    .line 343
    .line 344
    if-eqz v0, :cond_14

    .line 345
    .line 346
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_13

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_13
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->p()Landroidx/lifecycle/b0;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    :cond_14
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 364
    .line 365
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel$loadUGCSingleVideoData$1$a;->a(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
