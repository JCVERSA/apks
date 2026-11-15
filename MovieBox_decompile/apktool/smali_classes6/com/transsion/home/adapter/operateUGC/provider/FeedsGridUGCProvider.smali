.class public final Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;
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

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

    .line 5
    .line 6
    new-instance p2, Lcom/transsion/home/adapter/operateUGC/provider/f;

    .line 7
    .line 8
    invoke-direct {p2, p0}, Lcom/transsion/home/adapter/operateUGC/provider/f;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->g:Lkotlin/Lazy;

    .line 16
    .line 17
    add-int/lit8 p2, p1, -0x1

    .line 18
    .line 19
    mul-int/lit8 p2, p2, 0x8

    .line 20
    .line 21
    int-to-float p2, p2

    .line 22
    const/high16 v0, 0x41c00000    # 24.0f

    .line 23
    .line 24
    add-float/2addr p2, v0

    .line 25
    invoke-static {p2}, Llj/a;->a(F)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sub-int/2addr v0, p2

    .line 34
    div-int/2addr v0, p1

    .line 35
    iput v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->f:I

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic D(Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;)Lrk/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;)Lrk/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
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
    iget v0, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

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
    iget p1, p1, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

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
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->g:Lkotlin/Lazy;

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

.method private static final I(Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;)Lrk/d;
    .locals 2

    .line 1
    new-instance v0, Lrk/d;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 4
    .line 5
    iget p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

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
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getFeedsUGCVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_13

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_13

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_8

    .line 30
    .line 31
    :cond_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_image:I

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_6

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBuiltIn()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-instance v8, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider$convert$1$1;

    .line 59
    .line 60
    invoke-direct {v8, v0, v1, v3}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider$convert$1$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x3

    .line 64
    const/4 v10, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string v6, "getContext(...)"

    .line 78
    .line 79
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    :cond_2
    move-object v5, v2

    .line 99
    :cond_3
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget v5, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->f:I

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_5

    .line 120
    .line 121
    :cond_4
    move-object v5, v2

    .line 122
    :cond_5
    invoke-virtual {v4, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    sget v5, Lcom/transsion/wrapperad/R$color;->module_01:I

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lni/f$b;->i(I)Lni/f$b;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_0
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_corner:I

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

    .line 162
    .line 163
    sget-object v4, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-ne v1, v5, :cond_8

    .line 170
    .line 171
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_type_icon:I

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/widget/ImageView;

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    const/4 v5, 0x4

    .line 182
    invoke-static {v1, v0, v3, v5, v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_8
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_type_icon:I

    .line 187
    .line 188
    const/4 v5, 0x1

    .line 189
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 190
    .line 191
    .line 192
    :cond_9
    :goto_1
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_time_text:I

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v0, v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTimeOrCount(Landroid/content/Context;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 203
    .line 204
    .line 205
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_title:I

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {p1, v1, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    const-wide/16 v5, 0x0

    .line 219
    .line 220
    if-eqz v1, :cond_a

    .line 221
    .line 222
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    sget v2, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const-string v2, "special_#shorts_icon"

    .line 245
    .line 246
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :cond_a
    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

    .line 257
    .line 258
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/4 v7, 0x0

    .line 263
    invoke-virtual {v4, v1, v7}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_f

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_b

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    :cond_b
    if-eqz v3, :cond_f

    .line 280
    .line 281
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_c

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_c
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-static {v1, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_e

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    if-nez v0, :cond_d

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_d
    move-object v2, v0

    .line 314
    :cond_e
    :goto_2
    const-string v0, "special_#user_icon"

    .line 315
    .line 316
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    goto :goto_7

    .line 325
    :cond_f
    :goto_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

    .line 338
    .line 339
    sget-object v3, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 340
    .line 341
    invoke-virtual {v3}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-ne v2, v3, :cond_11

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eqz v0, :cond_10

    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 354
    .line 355
    .line 356
    move-result-wide v2

    .line 357
    goto :goto_4

    .line 358
    :cond_10
    move-wide v2, v5

    .line 359
    :goto_4
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->k(J)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    goto :goto_6

    .line 364
    :cond_11
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    if-eqz v0, :cond_12

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 371
    .line 372
    .line 373
    move-result-wide v2

    .line 374
    goto :goto_5

    .line 375
    :cond_12
    move-wide v2, v5

    .line 376
    :goto_5
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    :goto_6
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    :goto_7
    sget v1, Lcom/transsion/home/R$id;->main_op_trending_grid_subtitle:I

    .line 389
    .line 390
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 399
    .line 400
    .line 401
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 402
    .line 403
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/g;

    .line 404
    .line 405
    invoke-direct {v1, p2, p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/g;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    .line 410
    .line 411
    iget v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->e:I

    .line 412
    .line 413
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eq v0, v1, :cond_13

    .line 420
    .line 421
    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->H()Lrk/d;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    invoke-virtual {v0, p2, p1, v5, v6}, Lrk/d;->a(Lcom/transsion/home/bean/OperateItem;IJ)V

    .line 430
    .line 431
    .line 432
    :cond_13
    :goto_8
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/FeedsGridUGCProvider;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->provider_ugc_item_grid:I

    .line 2
    .line 3
    return v0
.end method
