.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v4, v3

    .line 34
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "UGC_VIDEO"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_5

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W0()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setOps(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-object v3, p2

    .line 100
    :cond_5
    :goto_2
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move-object v1, p2

    .line 114
    :goto_3
    if-eqz v1, :cond_8

    .line 115
    .line 116
    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-direct {v0, v1, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    move-object v0, p2

    .line 131
    :goto_4
    move-object v3, v0

    .line 132
    goto :goto_5

    .line 133
    :cond_9
    move-object v3, p2

    .line 134
    :goto_5
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/Map;

    .line 145
    .line 146
    if-nez v0, :cond_a

    .line 147
    .line 148
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    :cond_a
    if-eqz v3, :cond_d

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_d

    .line 160
    .line 161
    check-cast v1, Ljava/lang/Iterable;

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_d

    .line 172
    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-eqz v4, :cond_b

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    if-eqz v4, :cond_b

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-eqz v2, :cond_c

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_c

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    goto :goto_7

    .line 214
    :cond_c
    const/4 v2, 0x1

    .line 215
    :goto_7
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_d
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    if-eqz p1, :cond_e

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_e

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 247
    .line 248
    invoke-static {v1, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->D0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_e
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 252
    .line 253
    if-eqz p1, :cond_f

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    if-eqz v0, :cond_f

    .line 260
    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    goto :goto_8

    .line 270
    :cond_f
    move-object v0, p2

    .line 271
    :goto_8
    if-eqz v3, :cond_10

    .line 272
    .line 273
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v1, :cond_10

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    goto :goto_9

    .line 288
    :cond_10
    move-object v1, p2

    .line 289
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v5, "getImmVideoRecommentList,success:"

    .line 295
    .line 296
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v0, ", videoList size:"

    .line 303
    .line 304
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v0, " "

    .line 311
    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    const/4 v8, 0x4

    .line 320
    const/4 v9, 0x0

    .line 321
    const-string v5, "UGCImmVideoDetailViewModel"

    .line 322
    .line 323
    const/4 v7, 0x0

    .line 324
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 328
    .line 329
    if-eqz p1, :cond_11

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    :cond_11
    move-object v6, p2

    .line 336
    const/16 v7, 0xc

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    const/4 v2, 0x0

    .line 340
    const/4 v4, 0x0

    .line 341
    const/4 v5, 0x0

    .line 342
    invoke-static/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->G0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 346
    .line 347
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
