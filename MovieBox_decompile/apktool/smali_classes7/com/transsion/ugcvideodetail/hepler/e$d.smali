.class public final Lcom/transsion/ugcvideodetail/hepler/e$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/e;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    new-instance v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 9
    .line 10
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v12, 0x0

    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    move-object v6, v5

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 27
    .line 28
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v6, v12

    .line 40
    :goto_2
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 41
    .line 42
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_4

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_3
    :goto_3
    move-object v7, v5

    .line 56
    goto :goto_5

    .line 57
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 58
    .line 59
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move-object v7, v12

    .line 71
    :goto_5
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 72
    .line 73
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v8, v5

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    move-object v8, v12

    .line 92
    :goto_6
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_8

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    if-nez v5, :cond_7

    .line 105
    .line 106
    goto :goto_8

    .line 107
    :cond_7
    :goto_7
    move-object v9, v5

    .line 108
    goto :goto_9

    .line 109
    :cond_8
    :goto_8
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 110
    .line 111
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-eqz v5, :cond_9

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    goto :goto_7

    .line 122
    :cond_9
    move-object v9, v12

    .line 123
    :goto_9
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 124
    .line 125
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_b

    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-nez v5, :cond_a

    .line 136
    .line 137
    goto :goto_b

    .line 138
    :cond_a
    :goto_a
    move-object v10, v5

    .line 139
    goto :goto_c

    .line 140
    :cond_b
    :goto_b
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 141
    .line 142
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_c

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    goto :goto_a

    .line 153
    :cond_c
    move-object v10, v12

    .line 154
    :goto_c
    move-object v5, v11

    .line 155
    invoke-direct/range {v5 .. v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 159
    .line 160
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    sget-object v6, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->ON_LINE_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 165
    .line 166
    const-string v7, "TYPE_LOCAL_OUT"

    .line 167
    .line 168
    if-ne v5, v6, :cond_d

    .line 169
    .line 170
    const-string v5, "TYPE_ONLINE"

    .line 171
    .line 172
    goto :goto_d

    .line 173
    :cond_d
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 174
    .line 175
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-eqz v5, :cond_e

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-ne v5, v4, :cond_e

    .line 186
    .line 187
    const-string v5, "TYPE_LOCAL_INNER"

    .line 188
    .line 189
    goto :goto_d

    .line 190
    :cond_e
    move-object v5, v7

    .line 191
    :goto_d
    const-string v6, "from_opt_id"

    .line 192
    .line 193
    const-string v8, "video_params"

    .line 194
    .line 195
    const-string v9, "page_name"

    .line 196
    .line 197
    if-nez p1, :cond_10

    .line 198
    .line 199
    sget-object p1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;->j:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$a;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailForYouFragment;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iget-object v10, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 206
    .line 207
    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    invoke-static {v9, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 212
    .line 213
    .line 214
    move-result-object v9

    .line 215
    invoke-static {v8, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    const-string v11, "type"

    .line 220
    .line 221
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_f

    .line 230
    .line 231
    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-eqz v5, :cond_f

    .line 236
    .line 237
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    :cond_f
    const-string v5, "content_name"

    .line 242
    .line 243
    invoke-static {v5, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-static {v10}, Lcom/transsion/ugcvideodetail/hepler/e;->c(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    const/4 v7, 0x5

    .line 256
    new-array v7, v7, [Lkotlin/Pair;

    .line 257
    .line 258
    aput-object v9, v7, v3

    .line 259
    .line 260
    aput-object v8, v7, v4

    .line 261
    .line 262
    aput-object v11, v7, v2

    .line 263
    .line 264
    aput-object v5, v7, v1

    .line 265
    .line 266
    aput-object v6, v7, v0

    .line 267
    .line 268
    invoke-static {v7}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 273
    .line 274
    .line 275
    goto :goto_e

    .line 276
    :cond_10
    sget-object p1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment;->h:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment$a;

    .line 277
    .line 278
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailCommentFragment;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    iget-object v5, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 283
    .line 284
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    invoke-static {v9, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-static {v8, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    const-string v9, "page_from"

    .line 297
    .line 298
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/hepler/e;->c(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    new-array v0, v0, [Lkotlin/Pair;

    .line 315
    .line 316
    aput-object v7, v0, v3

    .line 317
    .line 318
    aput-object v8, v0, v4

    .line 319
    .line 320
    aput-object v9, v0, v2

    .line 321
    .line 322
    aput-object v5, v0, v1

    .line 323
    .line 324
    invoke-static {v0}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 329
    .line 330
    .line 331
    :goto_e
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    return v0
.end method
