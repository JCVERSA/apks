.class public final Lcom/transsion/search_pugc/fragment/result/provider/c;
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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 2

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getTopicType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "UGC_COLLECTION"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/c;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/c;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_VIDEO:Lcom/transsion/search_pugc/constant/SearchType;

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
    sget v0, Lcom/transsion/search/R$layout;->provider_result_common:I

    .line 2
    .line 3
    return v0
.end method

.method public final y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_b

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v4, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->EDUCATION:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v5, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v7, ""

    .line 79
    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-nez v6, :cond_3

    .line 87
    .line 88
    :cond_2
    move-object v6, v7

    .line 89
    :cond_3
    invoke-virtual {v5, v6}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    move-object v7, v6

    .line 107
    :cond_5
    :goto_0
    invoke-virtual {v5, v7}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    sget v6, Lcom/transsion/search/R$id;->iv_cover:I

    .line 112
    .line 113
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Landroid/widget/ImageView;

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 120
    .line 121
    .line 122
    sget v5, Lcom/transsion/search/R$id;->tv_title:I

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const/4 v7, 0x0

    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    sget-object v9, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-virtual {v9, v10}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-static {v6, v8, v9}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move-object v6, v7

    .line 155
    :goto_1
    invoke-virtual {p1, v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideoNum()Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    if-eqz v5, :cond_8

    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    sget v6, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    if-eqz v4, :cond_7

    .line 179
    .line 180
    sget v4, Lcom/transsion/baseui/R$plurals;->episodes_count_text:I

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_7
    sget v4, Lcom/transsion/baseui/R$plurals;->videos_count_text:I

    .line 184
    .line 185
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    new-array v10, v0, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v9, v10, v1

    .line 192
    .line 193
    invoke-virtual {v8, v4, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {p1, v6, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 198
    .line 199
    .line 200
    :cond_8
    const/4 v4, 0x4

    .line 201
    if-eqz v3, :cond_9

    .line 202
    .line 203
    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 204
    .line 205
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_9
    sget v3, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    check-cast v3, Landroid/widget/ImageView;

    .line 216
    .line 217
    invoke-static {v3, v2, v7, v4, v7}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :goto_3
    sget v3, Lcom/transsion/search/R$id;->v_corner:I

    .line 221
    .line 222
    invoke-virtual {p1, v3, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 223
    .line 224
    .line 225
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 226
    .line 227
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getWatchNum()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    if-eqz p2, :cond_a

    .line 235
    .line 236
    invoke-static {p2}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    goto :goto_4

    .line 241
    :cond_a
    move-object p2, v7

    .line 242
    :goto_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    sget v6, Lcom/transsion/search/R$string;->views:I

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string p2, " "

    .line 261
    .line 262
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 273
    .line 274
    .line 275
    new-instance p2, Lcom/transsion/baseui/util/k$b;

    .line 276
    .line 277
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->g(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const-string v5, "getString(...)"

    .line 294
    .line 295
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    sget v5, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 299
    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    invoke-direct {p2, v3, v5}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    .line 306
    .line 307
    new-instance v3, Lcom/transsion/baseui/util/k$b;

    .line 308
    .line 309
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-static {v5, v6}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    sget v6, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 322
    .line 323
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    invoke-direct {v3, v5, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    .line 329
    .line 330
    const/4 v5, 0x2

    .line 331
    new-array v5, v5, [Lcom/transsion/baseui/util/k$b;

    .line 332
    .line 333
    aput-object p2, v5, v1

    .line 334
    .line 335
    aput-object v3, v5, v0

    .line 336
    .line 337
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {p2, v3, v1, v4, v7}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 352
    .line 353
    .line 354
    sget p2, Lcom/transsion/search/R$id;->ivInfoIcon:I

    .line 355
    .line 356
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Landroid/widget/ImageView;

    .line 361
    .line 362
    invoke-static {p1, v2, v7, v4, v7}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    :cond_b
    :goto_5
    return-void
.end method

.method public final z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v2, Lcom/transsion/search/R$id;->ivInfoIcon:I

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-static {v2}, Luf/c;->k(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3, v5, v4, v5}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v2}, Luf/c;->g(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v6, ""

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    :cond_1
    move-object v3, v6

    .line 70
    :cond_2
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v6, v3

    .line 94
    :cond_4
    :goto_1
    invoke-virtual {v2, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget v3, Lcom/transsion/search/R$id;->iv_cover:I

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroid/widget/ImageView;

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 107
    .line 108
    .line 109
    sget v2, Lcom/transsion/search/R$id;->tv_title:I

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    sget-object v7, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v7, v8}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v3, v6, v7}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move-object v3, v5

    .line 147
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 148
    .line 149
    .line 150
    sget v2, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    invoke-static {v6, v7}, Lcom/transsion/search_pugc/constant/a;->j(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    goto :goto_3

    .line 173
    :cond_6
    move-object v3, v5

    .line 174
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 175
    .line 176
    .line 177
    sget v2, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-eqz v3, :cond_7

    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    goto :goto_4

    .line 196
    :cond_7
    move v3, v1

    .line 197
    :goto_4
    if-eqz v3, :cond_8

    .line 198
    .line 199
    move v3, v1

    .line 200
    goto :goto_5

    .line 201
    :cond_8
    const/16 v3, 0x8

    .line 202
    .line 203
    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    sget v3, Lcom/transsion/baseui/R$drawable;->ic_tag_ugc_shorts_search:I

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 209
    .line 210
    .line 211
    sget v2, Lcom/transsion/search/R$id;->v_corner:I

    .line 212
    .line 213
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    if-eqz v3, :cond_9

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    goto :goto_6

    .line 224
    :cond_9
    move-object v3, v5

    .line 225
    :goto_6
    if-eqz v3, :cond_b

    .line 226
    .line 227
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-nez v3, :cond_a

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    move v3, v1

    .line 235
    goto :goto_8

    .line 236
    :cond_b
    :goto_7
    move v3, v0

    .line 237
    :goto_8
    xor-int/2addr v3, v0

    .line 238
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 239
    .line 240
    .line 241
    sget v2, Lcom/transsion/search/R$id;->tv_view_resource_corner:I

    .line 242
    .line 243
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    if-eqz v3, :cond_c

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    goto :goto_9

    .line 254
    :cond_c
    move-object v3, v5

    .line 255
    :goto_9
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 256
    .line 257
    .line 258
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 259
    .line 260
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    if-eqz v3, :cond_d

    .line 268
    .line 269
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-eqz v3, :cond_d

    .line 274
    .line 275
    invoke-static {v3}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    goto :goto_a

    .line 280
    :cond_d
    move-object v3, v5

    .line 281
    :goto_a
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    sget v7, Lcom/transsion/search/R$string;->views:I

    .line 286
    .line 287
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v3, " "

    .line 300
    .line 301
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 312
    .line 313
    .line 314
    new-instance v2, Lcom/transsion/baseui/util/k$b;

    .line 315
    .line 316
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    if-eqz v6, :cond_e

    .line 325
    .line 326
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    goto :goto_b

    .line 331
    :cond_e
    move-object v6, v5

    .line 332
    :goto_b
    invoke-static {v6}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->g(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    const-string v6, "getString(...)"

    .line 341
    .line 342
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    sget v6, Lcom/tn/lib/widget/R$color;->white_80:I

    .line 346
    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    invoke-direct {v2, v3, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    .line 353
    .line 354
    new-instance v3, Lcom/transsion/baseui/util/k$b;

    .line 355
    .line 356
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    if-eqz p2, :cond_f

    .line 361
    .line 362
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    goto :goto_c

    .line 367
    :cond_f
    move-object p2, v5

    .line 368
    :goto_c
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    invoke-static {p2, v6}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    sget v6, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 377
    .line 378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-direct {v3, p2, v6}, Lcom/transsion/baseui/util/k$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    .line 384
    .line 385
    const/4 p2, 0x2

    .line 386
    new-array p2, p2, [Lcom/transsion/baseui/util/k$b;

    .line 387
    .line 388
    aput-object v2, p2, v1

    .line 389
    .line 390
    aput-object v3, p2, v0

    .line 391
    .line 392
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    sget v0, Lcom/transsion/search/R$id;->tv_info:I

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-static {p2, v2, v1, v4, v5}, Lcom/transsion/baseui/util/q;->g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    .line 403
    .line 404
    .line 405
    move-result-object p2

    .line 406
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 407
    .line 408
    .line 409
    return-void
.end method
