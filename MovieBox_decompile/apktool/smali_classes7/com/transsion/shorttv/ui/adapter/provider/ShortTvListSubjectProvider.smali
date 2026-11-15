.class public final Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "pageName"

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
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->f:Z

    .line 12
    .line 13
    return-void
.end method

.method private static final A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    const-string p3, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final B(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider$loadBuiltInCover$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider$loadBuiltInCover$1;-><init>(Lcom/transsion/shorttv/bean/Subject;Landroidx/appcompat/widget/AppCompatImageView;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final C(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 17

    .line 1
    sget-object v0, Ler/b;->a:Ler/b$a;

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, ""

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v4, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move-object v4, v3

    .line 30
    :goto_1
    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_module_04:I

    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v7, v2

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    :goto_2
    move-object v7, v3

    .line 48
    :goto_3
    const/16 v14, 0x1fb0

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/4 v11, 0x0

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x0

    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    move-object/from16 v2, p1

    .line 61
    .line 62
    move-object v3, v4

    .line 63
    move v4, v5

    .line 64
    move v5, v6

    .line 65
    move v6, v8

    .line 66
    move v8, v9

    .line 67
    move v9, v10

    .line 68
    move v10, v11

    .line 69
    move v11, v12

    .line 70
    move v12, v13

    .line 71
    move/from16 v13, v16

    .line 72
    .line 73
    invoke-static/range {v0 .. v15}, Ler/b$a;->m(Ler/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static synthetic y(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lbs/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lbs/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_item_trending:I

    .line 2
    .line 3
    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lbs/a;)V
    .locals 12

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lbs/a;->b()Lcom/transsion/shorttv/bean/Subject;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title_trending:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getShowTitle()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    sget v0, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroid/widget/FrameLayout;

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/transsion/shorttv/R$id;->group:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lyq/b;->a:Lyq/b;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/4 v3, 0x0

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v2, v3

    .line 86
    :goto_1
    invoke-virtual {v0, v1, v2}, Lyq/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget v1, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-eqz p2, :cond_3

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :cond_3
    invoke-virtual {p1, v1, v0, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void

    .line 118
    :cond_5
    sget v0, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/FrameLayout;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    sget v0, Lcom/transsion/shorttv/R$id;->group:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    sget v0, Lcom/transsion/shorttv/R$id;->iv_cover:I

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getBuiltIn()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    invoke-direct {p0, v0, p2}, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->B(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->C(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V

    .line 159
    .line 160
    .line 161
    :goto_2
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Landroid/text/StaticLayout;

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    const/high16 v2, 0x430b0000    # 139.0f

    .line 191
    .line 192
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    sub-int v7, v0, v2

    .line 197
    .line 198
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 199
    .line 200
    const/4 v10, 0x0

    .line 201
    const/4 v11, 0x0

    .line 202
    const/high16 v9, 0x3f800000    # 1.0f

    .line 203
    .line 204
    move-object v4, v1

    .line 205
    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    const/4 v1, 0x1

    .line 213
    if-le v0, v1, :cond_7

    .line 214
    .line 215
    move v0, v1

    .line 216
    goto :goto_3

    .line 217
    :cond_7
    move v0, v3

    .line 218
    :goto_3
    sget v2, Lcom/transsion/shorttv/R$id;->tv_type:I

    .line 219
    .line 220
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Landroid/widget/TextView;

    .line 225
    .line 226
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 227
    .line 228
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    if-eqz v5, :cond_9

    .line 236
    .line 237
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-nez v5, :cond_8

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    const-string v6, "yyyy-MM-dd"

    .line 249
    .line 250
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 270
    .line 271
    .line 272
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    const-string v6, ","

    .line 277
    .line 278
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    const-string v6, " \u00b7 "

    .line 283
    .line 284
    if-eqz v5, :cond_a

    .line 285
    .line 286
    array-length v7, v5

    .line 287
    move v8, v3

    .line 288
    :goto_5
    if-ge v8, v7, :cond_a

    .line 289
    .line 290
    aget-object v9, v5, v8

    .line 291
    .line 292
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 297
    .line 298
    .line 299
    add-int/lit8 v8, v8, 0x1

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_a
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    if-eqz v5, :cond_c

    .line 307
    .line 308
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-nez v5, :cond_b

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_b
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 324
    .line 325
    .line 326
    :cond_c
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTags()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-nez v2, :cond_d

    .line 334
    .line 335
    new-instance v2, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .line 339
    .line 340
    :cond_d
    sget v4, Lcom/transsion/shorttv/R$id;->rv_list:I

    .line 341
    .line 342
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 347
    .line 348
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_e

    .line 353
    .line 354
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_e
    new-instance v5, Lcom/transsion/shorttv/ui/adapter/s;

    .line 359
    .line 360
    check-cast v2, Ljava/util/Collection;

    .line 361
    .line 362
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-direct {v5, v2}, Lcom/transsion/shorttv/ui/adapter/s;-><init>(Ljava/util/List;)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Lcom/transsion/shorttv/ui/adapter/provider/g;

    .line 370
    .line 371
    invoke-direct {v2, p1}, Lcom/transsion/shorttv/ui/adapter/provider/g;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 375
    .line 376
    .line 377
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 378
    .line 379
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    invoke-direct {v2, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-gtz v2, :cond_f

    .line 403
    .line 404
    new-instance v2, Lcom/transsion/shorttv/base/widget/f;

    .line 405
    .line 406
    const/high16 v6, 0x40800000    # 4.0f

    .line 407
    .line 408
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    invoke-direct {v2, v6}, Lcom/transsion/shorttv/base/widget/f;-><init>(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 416
    .line 417
    .line 418
    :cond_f
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v4}, Lcr/b;->e(Landroid/view/View;)V

    .line 422
    .line 423
    .line 424
    :goto_7
    sget v2, Lcom/transsion/shorttv/R$id;->tv_desc:I

    .line 425
    .line 426
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Landroid/widget/TextView;

    .line 431
    .line 432
    if-eqz v0, :cond_10

    .line 433
    .line 434
    goto :goto_8

    .line 435
    :cond_10
    const/4 v1, 0x2

    .line 436
    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->e:Ljava/lang/String;

    .line 440
    .line 441
    const-string v1, "minitv_explore"

    .line 442
    .line 443
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    if-eqz v1, :cond_11

    .line 448
    .line 449
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p2

    .line 453
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_11
    const-string v1, "minitv_favorite"

    .line 458
    .line 459
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-eqz v0, :cond_12

    .line 464
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 471
    .line 472
    .line 473
    move-result p2

    .line 474
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string p2, " EPs"

    .line 478
    .line 479
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    :cond_12
    :goto_9
    sget p2, Lcom/transsion/shorttv/R$id;->btn_download:I

    .line 490
    .line 491
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Landroid/widget/TextView;

    .line 496
    .line 497
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->f:Z

    .line 498
    .line 499
    if-eqz p2, :cond_13

    .line 500
    .line 501
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_download:I

    .line 506
    .line 507
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    goto :goto_a

    .line 512
    :cond_13
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_play:I

    .line 517
    .line 518
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object p2

    .line 522
    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/ShortTvListSubjectProvider;->f:Z

    .line 526
    .line 527
    if-eqz p2, :cond_14

    .line 528
    .line 529
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_download_white:I

    .line 530
    .line 531
    goto :goto_b

    .line 532
    :cond_14
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_play_white_trending:I

    .line 533
    .line 534
    :goto_b
    invoke-virtual {p1, p2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 535
    .line 536
    .line 537
    return-void
.end method
