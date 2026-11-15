.class public final Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"

# interfaces
.implements Lcom/transsion/search_pugc/fragment/result/provider/t;


# instance fields
.field private final synthetic e:Lcom/transsion/search_pugc/fragment/result/provider/t;


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/fragment/result/provider/t;)V
    .locals 1

    .line 1
    const-string v0, "reportable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK_TYPE2:Lcom/transsion/search_pugc/constant/SearchType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->provider_result_vertical_rank_type2:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "helper"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v3, "item"

    .line 10
    .line 11
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_13

    .line 30
    .line 31
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, ""

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object v6, v7

    .line 66
    :cond_3
    invoke-virtual {v5, v6}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-nez v6, :cond_5

    .line 81
    .line 82
    :cond_4
    move-object v6, v7

    .line 83
    :cond_5
    invoke-virtual {v5, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget v6, Lcom/transsion/search/R$id;->iv_cover:I

    .line 88
    .line 89
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v6, 0x0

    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 110
    .line 111
    if-eqz v5, :cond_a

    .line 112
    .line 113
    sget v8, Lcom/transsion/search/R$id;->iv_cover1:I

    .line 114
    .line 115
    invoke-virtual {p1, v8, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v4, v8}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_6

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-nez v5, :cond_7

    .line 137
    .line 138
    :cond_6
    move-object v5, v7

    .line 139
    :cond_7
    invoke-virtual {v8, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    if-eqz v8, :cond_8

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    if-nez v8, :cond_9

    .line 154
    .line 155
    :cond_8
    move-object v8, v7

    .line 156
    :cond_9
    invoke-virtual {v5, v8}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    sget v8, Lcom/transsion/search/R$id;->iv_cover1:I

    .line 161
    .line 162
    invoke-virtual {p1, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Landroid/widget/ImageView;

    .line 167
    .line 168
    invoke-virtual {v5, v8}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_a
    new-instance v5, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$2;

    .line 173
    .line 174
    invoke-direct {v5, p1, v6}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$2;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v5, v2, v6}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :goto_0
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_f

    .line 185
    .line 186
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 191
    .line 192
    if-eqz v5, :cond_f

    .line 193
    .line 194
    sget v8, Lcom/transsion/search/R$id;->iv_cover2:I

    .line 195
    .line 196
    invoke-virtual {p1, v8, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v4, v8}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    if-eqz v5, :cond_b

    .line 212
    .line 213
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    if-nez v5, :cond_c

    .line 218
    .line 219
    :cond_b
    move-object v5, v7

    .line 220
    :cond_c
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-eqz v5, :cond_e

    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    if-nez v5, :cond_d

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_d
    move-object v7, v5

    .line 238
    :cond_e
    :goto_1
    invoke-virtual {v4, v7}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    sget v5, Lcom/transsion/search/R$id;->iv_cover2:I

    .line 243
    .line 244
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    check-cast v5, Landroid/widget/ImageView;

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_f
    new-instance v4, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$4;

    .line 255
    .line 256
    invoke-direct {v4, p1, v6}, Lcom/transsion/search_pugc/fragment/result/provider/ResultVerticalRankType2Provider$convert$4;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v6, v4, v2, v6}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :goto_2
    sget v4, Lcom/transsion/search/R$id;->tv_title:I

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getTitle()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    if-eqz v5, :cond_10

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    sget-object v8, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v8, v9}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v8}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-static {v5, v7, v8}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    goto :goto_3

    .line 293
    :cond_10
    move-object v5, v6

    .line 294
    :goto_3
    invoke-virtual {p1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getCount()Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-eqz v3, :cond_12

    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-le v3, v2, :cond_11

    .line 308
    .line 309
    sget v4, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    sget v7, Lcom/transsion/search/R$string;->videos:I

    .line 316
    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    new-array v8, v2, [Ljava/lang/Object;

    .line 322
    .line 323
    aput-object v3, v8, v1

    .line 324
    .line 325
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_11
    sget v4, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    sget v7, Lcom/transsion/search/R$string;->video:I

    .line 340
    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    new-array v8, v2, [Ljava/lang/Object;

    .line 346
    .line 347
    aput-object v3, v8, v1

    .line 348
    .line 349
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {p1, v4, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 354
    .line 355
    .line 356
    :cond_12
    :goto_4
    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 357
    .line 358
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-static {v3}, Luf/c;->g(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    new-instance v3, Lcom/transsion/baseui/util/k$a;

    .line 366
    .line 367
    sget v4, Lcom/transsion/search/R$drawable;->ic_tag_collection:I

    .line 368
    .line 369
    invoke-direct {v3, v4}, Lcom/transsion/baseui/util/k$a;-><init>(I)V

    .line 370
    .line 371
    .line 372
    new-instance v4, Lcom/transsion/baseui/util/k$b;

    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    sget v7, Lcom/transsion/baseui/R$string;->ugc_video_tv_collection:I

    .line 379
    .line 380
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    const-string v7, "getString(...)"

    .line 385
    .line 386
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sget v7, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 390
    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v7

    .line 395
    invoke-direct {v4, v5, v7}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    .line 397
    .line 398
    new-instance v5, Lcom/transsion/baseui/util/k$b;

    .line 399
    .line 400
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-static {p2, v7}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p2

    .line 412
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 413
    .line 414
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    invoke-direct {v5, p2, v7}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    .line 420
    .line 421
    const/4 p2, 0x3

    .line 422
    new-array p2, p2, [Lcom/transsion/baseui/util/k;

    .line 423
    .line 424
    aput-object v3, p2, v1

    .line 425
    .line 426
    aput-object v4, p2, v2

    .line 427
    .line 428
    aput-object v5, p2, v0

    .line 429
    .line 430
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    .line 435
    .line 436
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const/4 v3, 0x4

    .line 441
    invoke-static {p2, v2, v1, v3, v6}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 446
    .line 447
    .line 448
    :cond_13
    :goto_5
    return-void
.end method
