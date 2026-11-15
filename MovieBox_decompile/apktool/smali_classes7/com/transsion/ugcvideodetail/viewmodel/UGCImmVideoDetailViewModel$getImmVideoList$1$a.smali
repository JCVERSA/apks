.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Z


# direct methods
.method constructor <init>(ZILcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->a:Z

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->e:I

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->f:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 p2, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->a:Z

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->setLoadDown(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->b:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_7

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_7

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_7

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setPlayListPosition(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W0()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v5, v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setOps(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-static {v3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->w0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    if-nez v7, :cond_6

    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_3

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    invoke-virtual {v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move-object v7, v1

    .line 100
    :goto_1
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_6

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    if-eqz v6, :cond_4

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_4

    .line 117
    .line 118
    invoke-static {v6}, Lgu/e;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move-object v6, v1

    .line 124
    :goto_2
    if-eqz v6, :cond_5

    .line 125
    .line 126
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v6, v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->setPosition(Ljava/lang/Integer;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    invoke-virtual {v5, v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setBelongToCollection(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    add-int/2addr v0, p2

    .line 137
    goto :goto_0

    .line 138
    :cond_7
    if-eqz p1, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/Collection;

    .line 145
    .line 146
    if-eqz v0, :cond_b

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    goto/16 :goto_5

    .line 155
    .line 156
    :cond_8
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 157
    .line 158
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->d:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->A0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->s0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->r0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->s0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iget v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->b:I

    .line 187
    .line 188
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->C0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->r0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    iget v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->e:I

    .line 202
    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->B0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 212
    .line 213
    iget v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->b:I

    .line 214
    .line 215
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->C0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 219
    .line 220
    iget v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->e:I

    .line 221
    .line 222
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->B0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V

    .line 223
    .line 224
    .line 225
    :goto_4
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 226
    .line 227
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->d:Ljava/lang/String;

    .line 228
    .line 229
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 230
    .line 231
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->s0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 236
    .line 237
    invoke-static {v4}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->r0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v6, "Updated loaded playList range: collectionId="

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v0, ", range["

    .line 255
    .line 256
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v0, "-"

    .line 263
    .line 264
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, "]"

    .line 271
    .line 272
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    const/4 v7, 0x4

    .line 280
    const/4 v8, 0x0

    .line 281
    const-string v4, "UGCImmVideoDetailViewModel"

    .line 282
    .line 283
    const/4 v6, 0x0

    .line 284
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_b
    :goto_5
    if-eqz p1, :cond_c

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_c

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getTotalCount()Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_c

    .line 300
    .line 301
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 302
    .line 303
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->d:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    new-array v3, p2, [Lkotlin/Pair;

    .line 322
    .line 323
    const/4 v4, 0x0

    .line 324
    aput-object v0, v3, v4

    .line 325
    .line 326
    invoke-static {v3}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->f:Z

    .line 334
    .line 335
    if-eqz v0, :cond_12

    .line 336
    .line 337
    new-instance v0, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    if-eqz p1, :cond_d

    .line 343
    .line 344
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    goto :goto_6

    .line 349
    :cond_d
    move-object v2, v1

    .line 350
    :goto_6
    move-object v3, v2

    .line 351
    check-cast v3, Ljava/util/Collection;

    .line 352
    .line 353
    if-eqz v3, :cond_f

    .line 354
    .line 355
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_e

    .line 360
    .line 361
    goto :goto_8

    .line 362
    :cond_e
    check-cast v2, Ljava/lang/Iterable;

    .line 363
    .line 364
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-eqz v3, :cond_f

    .line 373
    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 379
    .line 380
    new-instance v4, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 381
    .line 382
    invoke-direct {v4, v3, v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isCollectionList()Z

    .line 389
    .line 390
    .line 391
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_f
    :goto_8
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 396
    .line 397
    invoke-static {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_10

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_10
    new-instance v2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 409
    .line 410
    iget-boolean v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->a:Z

    .line 411
    .line 412
    if-eqz p1, :cond_11

    .line 413
    .line 414
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    :cond_11
    invoke-direct {v2, v0, v3, v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 419
    .line 420
    .line 421
    move-object v1, v2

    .line 422
    :goto_9
    invoke-virtual {p2, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_12
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->c:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 427
    .line 428
    iget v5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->b:I

    .line 429
    .line 430
    iget-boolean v6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->a:Z

    .line 431
    .line 432
    if-eqz p1, :cond_13

    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    :cond_13
    move-object v7, v1

    .line 439
    const/4 v3, 0x1

    .line 440
    move-object v4, p1

    .line 441
    invoke-static/range {v2 .. v7}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->p0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 442
    .line 443
    .line 444
    :goto_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 445
    .line 446
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
