.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/transsion/home/R$id;->iconBg:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "findViewById(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v0, Lcom/transsion/home/R$id;->contentIV:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 36
    .line 37
    sget v0, Lcom/transsion/home/R$id;->playIV:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    .line 49
    .line 50
    sget v0, Lcom/transsion/home/R$id;->titleTV:I

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v0, Lcom/transsion/home/R$id;->desTV:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    .line 75
    .line 76
    return-void
.end method

.method public static synthetic f(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->i(Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->j(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->l()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final j(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method


# virtual methods
.method public final h(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "itemView"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object v3, v2

    .line 59
    :goto_0
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v3, Lsf/a;

    .line 64
    .line 65
    const/16 v4, 0x8

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    const/16 v6, 0x32

    .line 69
    .line 70
    invoke-direct {v3, v6, v4, v5}, Lsf/a;-><init>(IIZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 85
    .line 86
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :cond_2
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    sget v0, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    .line 129
    .line 130
    sget v0, Lcom/transsion/home/R$drawable;->ic_trending_arrow:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 136
    .line 137
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/h;

    .line 141
    .line 142
    invoke-direct {v5}, Lcom/transsion/home/adapter/suboperate/adapter/h;-><init>()V

    .line 143
    .line 144
    .line 145
    const/4 v6, 0x1

    .line 146
    const/4 v7, 0x0

    .line 147
    const-wide/16 v3, 0x0

    .line 148
    .line 149
    invoke-static/range {v2 .. v7}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_3

    .line 153
    .line 154
    :cond_3
    sget-object p1, Lcom/transsion/ad/monopoly/plan/c;->a:Lcom/transsion/ad/monopoly/plan/c;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/c;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/c;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 165
    .line 166
    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 174
    .line 175
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const-string v7, "getContext(...)"

    .line 180
    .line 181
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const-string v6, ""

    .line 189
    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    if-nez v7, :cond_5

    .line 197
    .line 198
    :cond_4
    move-object v7, v6

    .line 199
    :cond_5
    invoke-virtual {v5, v7}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    if-eqz v4, :cond_7

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getThumbnail()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-nez v4, :cond_6

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_6
    move-object v6, v4

    .line 213
    :cond_7
    :goto_1
    invoke-virtual {v5, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    sget v5, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    .line 218
    .line 219
    invoke-virtual {v4, v5}, Lni/f$b;->i(I)Lni/f$b;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const/16 v5, 0x28

    .line 224
    .line 225
    invoke-static {v5}, Llj/a;->b(I)I

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    const/16 v5, 0x38

    .line 234
    .line 235
    invoke-static {v5}, Llj/a;->b(I)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual {v4, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 244
    .line 245
    invoke-virtual {v4, v5}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 246
    .line 247
    .line 248
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    .line 249
    .line 250
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 251
    .line 252
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    .line 254
    .line 255
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    .line 256
    .line 257
    if-eqz v3, :cond_8

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getTitle()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto :goto_2

    .line 264
    :cond_8
    move-object v5, v2

    .line 265
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    .line 269
    .line 270
    if-eqz v3, :cond_9

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDesc()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    :cond_9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    .line 280
    .line 281
    const/4 v3, 0x0

    .line 282
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 283
    .line 284
    .line 285
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    .line 286
    .line 287
    sget v3, Lcom/transsion/home/R$drawable;->ic_trending_arrow:I

    .line 288
    .line 289
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/c;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 297
    .line 298
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/i;

    .line 302
    .line 303
    invoke-direct {v5, p1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/i;-><init>(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 304
    .line 305
    .line 306
    const/4 v6, 0x1

    .line 307
    const/4 v7, 0x0

    .line 308
    const-wide/16 v3, 0x0

    .line 309
    .line 310
    invoke-static/range {v2 .. v7}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_a
    :goto_3
    return-void
.end method
