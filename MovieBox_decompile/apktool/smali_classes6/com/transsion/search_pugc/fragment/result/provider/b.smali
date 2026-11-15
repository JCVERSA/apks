.class public final Lcom/transsion/search_pugc/fragment/result/provider/b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Z

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/search_pugc/fragment/result/provider/b;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/b;->e:Z

    .line 3
    sget-object p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;->DATA:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/b;->f:I

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/fragment/result/provider/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/b;->y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/b;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/search/R$layout;->item_search_collection:I

    .line 2
    .line 3
    return v0
.end method

.method public y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;)V
    .locals 6

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
    sget v0, Lcom/transsion/search/R$id;->v_corner:I

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    move v1, v3

    .line 39
    :goto_2
    xor-int/2addr v1, v3

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 41
    .line 42
    .line 43
    sget v0, Lcom/transsion/search/R$id;->tv_view_resource_corner:I

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object v1, v2

    .line 57
    :goto_3
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 58
    .line 59
    .line 60
    sget v0, Lcom/transsion/search/R$id;->tv_view_resource_tag:I

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    invoke-static {v4, v5}, Lcom/transsion/search_pugc/constant/a;->j(J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move-object v1, v2

    .line 84
    :goto_4
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    sget v1, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .line 101
    const/4 v4, 0x4

    .line 102
    invoke-static {v1, v0, v2, v4, v2}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    sget v0, Lcom/transsion/search/R$id;->iv_view_resource_tag:I

    .line 107
    .line 108
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->e(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 113
    .line 114
    .line 115
    :goto_5
    sget v0, Lcom/transsion/search/R$id;->tv_title:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    iget-boolean v1, p0, Lcom/transsion/search_pugc/fragment/result/provider/b;->e:Z

    .line 124
    .line 125
    const-string v4, "getContext(...)"

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getEpTitle()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_6
    move-object v1, v2

    .line 152
    :goto_6
    if-nez v1, :cond_9

    .line 153
    .line 154
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    goto :goto_7

    .line 165
    :cond_8
    move-object v1, v2

    .line 166
    :cond_9
    :goto_7
    if-eqz v1, :cond_b

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v3, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 176
    .line 177
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v1, v2, v3}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    goto :goto_8

    .line 194
    :cond_a
    const/4 v1, 0x2

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    sget-object v3, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v1, v2, v3}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    :cond_b
    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const-string v2, ""

    .line 253
    .line 254
    if-eqz v1, :cond_c

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_c

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-nez v1, :cond_d

    .line 267
    .line 268
    :cond_c
    move-object v1, v2

    .line 269
    :cond_d
    invoke-virtual {v0, v1}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    if-eqz p2, :cond_f

    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    if-eqz p2, :cond_f

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    if-nez p2, :cond_e

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_e
    move-object v2, p2

    .line 293
    :cond_f
    :goto_9
    invoke-virtual {v0, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    sget v0, Lcom/transsion/search/R$id;->iv_cover:I

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Landroid/widget/ImageView;

    .line 304
    .line 305
    invoke-virtual {p2, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 306
    .line 307
    .line 308
    return-void
.end method
