.class public final Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;
.super Lcom/transsion/home/adapter/trending/provider/b;
.source "source.java"


# instance fields
.field private final e:I

.field private final f:I

.field private final g:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 5
    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/high16 v0, 0x41400000    # 12.0f

    .line 11
    .line 12
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    sub-int/2addr p1, v0

    .line 19
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->f:I

    .line 20
    .line 21
    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/e;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/operateUGC/provider/e;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->g:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic D(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lrk/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lrk/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getFeedsUGCVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    iget v0, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/home/bean/OperateItem;->getOriginalOperateItem()Lcom/transsion/home/bean/OperateItem;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :cond_1
    :goto_0
    invoke-static {p3, v0, v1}, Lgu/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    sget-object p3, Lrk/d;->c:Lrk/d$a;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    iget p1, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 41
    .line 42
    invoke-virtual {p3, p2, p0, p1}, Lrk/d$a;->c(ILcom/transsion/home/bean/OperateItem;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final H()Lrk/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lrk/d;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;)Lrk/d;
    .locals 2

    .line 1
    new-instance v0, Lrk/d;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 4
    .line 5
    iget p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lrk/d;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 11

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    const-string v1, "UGCFeedsBig"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsUGCVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_12

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_12

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :cond_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_image:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBuiltIn()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v8, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider$convert$1$1;

    .line 66
    .line 67
    invoke-direct {v8, v0, v1, v3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider$convert$1$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    const/4 v9, 0x3

    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v7, 0x0

    .line 74
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const-string v6, "getContext(...)"

    .line 85
    .line 86
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_3

    .line 104
    .line 105
    :cond_2
    move-object v5, v2

    .line 106
    :cond_3
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget v5, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->f:I

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-nez v5, :cond_5

    .line 127
    .line 128
    :cond_4
    move-object v5, v2

    .line 129
    :cond_5
    invoke-virtual {v4, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    sget v5, Lcom/transsion/wrapperad/R$color;->module_01:I

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Lni/f$b;->i(I)Lni/f$b;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v4, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    :goto_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v1, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_corner:I

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 166
    .line 167
    .line 168
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_type_icon:I

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Landroid/widget/ImageView;

    .line 175
    .line 176
    if-eqz v1, :cond_8

    .line 177
    .line 178
    const/4 v4, 0x4

    .line 179
    invoke-static {v1, v0, v3, v4, v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_time_text:I

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v0, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 193
    .line 194
    .line 195
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .line 210
    if-eqz v1, :cond_9

    .line 211
    .line 212
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    sget v2, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v2, "special_#shorts_icon"

    .line 235
    .line 236
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    goto/16 :goto_6

    .line 245
    .line 246
    :cond_9
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 247
    .line 248
    iget v6, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 249
    .line 250
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    const/4 v7, 0x0

    .line 255
    invoke-virtual {v1, v6, v7}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_e

    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-eqz v1, :cond_a

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :cond_a
    if-eqz v3, :cond_e

    .line 272
    .line 273
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_b

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v1, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_d

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-nez v0, :cond_c

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_c
    move-object v2, v0

    .line 306
    :cond_d
    :goto_1
    const-string v0, "special_#user_icon"

    .line 307
    .line 308
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    goto :goto_6

    .line 317
    :cond_e
    :goto_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 330
    .line 331
    sget-object v3, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 332
    .line 333
    invoke-virtual {v3}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-ne v2, v3, :cond_10

    .line 338
    .line 339
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-eqz v0, :cond_f

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 346
    .line 347
    .line 348
    move-result-wide v2

    .line 349
    goto :goto_3

    .line 350
    :cond_f
    move-wide v2, v4

    .line 351
    :goto_3
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->k(J)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    goto :goto_5

    .line 356
    :cond_10
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_11

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 363
    .line 364
    .line 365
    move-result-wide v2

    .line 366
    goto :goto_4

    .line 367
    :cond_11
    move-wide v2, v4

    .line 368
    :goto_4
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :goto_5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :goto_6
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_subtitle:I

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 391
    .line 392
    .line 393
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 394
    .line 395
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/d;

    .line 396
    .line 397
    invoke-direct {v1, p2, p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/d;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    .line 402
    .line 403
    iget v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->e:I

    .line 404
    .line 405
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 406
    .line 407
    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eq v0, v1, :cond_12

    .line 412
    .line 413
    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->H()Lrk/d;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    invoke-virtual {v0, p2, p1, v4, v5}, Lrk/d;->a(Lcom/transsion/home/bean/OperateItem;IJ)V

    .line 422
    .line 423
    .line 424
    :cond_12
    :goto_7
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsBigUGCProvider;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_BIG:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->provider_ugc_item_big:I

    .line 2
    .line 3
    return v0
.end method
