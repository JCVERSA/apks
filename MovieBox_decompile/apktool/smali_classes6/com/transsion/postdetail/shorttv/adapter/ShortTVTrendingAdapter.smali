.class public final Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "pageName",
        "",
        "isDownloadBtn",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "item",
        "",
        "E1",
        "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "F1",
        "holder",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "F",
        "Ljava/lang/String;",
        "G",
        "Z",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final F:Ljava/lang/String;

.field private final G:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/postdetail/R$layout;->item_short_tv_trending:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->F:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->G:Z

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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

.method private final E1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/Subject;)V
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
    new-instance v4, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/appcompat/widget/AppCompatImageView;Lkotlin/coroutines/Continuation;)V

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

.method private final F1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 3

    .line 1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, ""

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :cond_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Lcom/tn/lib/widget/R$color;->module_04:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lni/f$b;->i(I)Lni/f$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v2, p2

    .line 55
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2, p1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 11

    .line 1
    const-string v0, "holder"

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
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    sget v0, Lcom/transsion/postdetail/R$id;->flAdContainer:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    sget v0, Lcom/transsion/postdetail/R$id;->group:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Low/b;->a:Low/b;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v3

    .line 61
    :goto_0
    invoke-virtual {v0, v1, v2}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget v1, Lcom/transsion/postdetail/R$id;->flAdContainer:I

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_1
    invoke-virtual {p1, v1, v0, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void

    .line 93
    :cond_3
    sget v0, Lcom/transsion/postdetail/R$id;->flAdContainer:I

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    sget v0, Lcom/transsion/postdetail/R$id;->group:I

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    sget v0, Lcom/transsion/postdetail/R$id;->iv_cover:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_4

    .line 128
    .line 129
    invoke-direct {p0, v0, p2}, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->E1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->F1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    sget v0, Lcom/transsion/postdetail/R$id;->tv_title:I

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Landroid/text/StaticLayout;

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    const/high16 v3, 0x430b0000    # 139.0f

    .line 166
    .line 167
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    sub-int v6, v0, v3

    .line 172
    .line 173
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x0

    .line 177
    const/high16 v8, 0x3f800000    # 1.0f

    .line 178
    .line 179
    move-object v3, v1

    .line 180
    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    const/4 v1, 0x1

    .line 188
    if-le v0, v1, :cond_5

    .line 189
    .line 190
    move v0, v1

    .line 191
    goto :goto_2

    .line 192
    :cond_5
    move v0, v2

    .line 193
    :goto_2
    sget v3, Lcom/transsion/postdetail/R$id;->tv_type:I

    .line 194
    .line 195
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroid/widget/TextView;

    .line 200
    .line 201
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 202
    .line 203
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    if-eqz v5, :cond_7

    .line 211
    .line 212
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_6

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const-string v6, "yyyy-MM-dd"

    .line 224
    .line 225
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    .line 246
    .line 247
    :cond_7
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    const-string v6, ","

    .line 252
    .line 253
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const-string v6, " \u00b7 "

    .line 258
    .line 259
    if-eqz v5, :cond_8

    .line 260
    .line 261
    array-length v7, v5

    .line 262
    move v8, v2

    .line 263
    :goto_4
    if-ge v8, v7, :cond_8

    .line 264
    .line 265
    aget-object v9, v5, v8

    .line 266
    .line 267
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    .line 273
    .line 274
    add-int/lit8 v8, v8, 0x1

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    if-eqz v5, :cond_a

    .line 282
    .line 283
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-nez v5, :cond_9

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_9
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 299
    .line 300
    .line 301
    :cond_a
    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTags()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    if-nez v3, :cond_b

    .line 309
    .line 310
    new-instance v3, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .line 314
    .line 315
    :cond_b
    sget v4, Lcom/transsion/postdetail/R$id;->rv_list:I

    .line 316
    .line 317
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_c

    .line 328
    .line 329
    invoke-static {v4}, Luf/c;->g(Landroid/view/View;)V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_c
    new-instance v5, Lcom/transsion/postdetail/shorttv/adapter/a;

    .line 334
    .line 335
    check-cast v3, Ljava/util/Collection;

    .line 336
    .line 337
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-direct {v5, v3}, Lcom/transsion/postdetail/shorttv/adapter/a;-><init>(Ljava/util/List;)V

    .line 342
    .line 343
    .line 344
    new-instance v3, Lcom/transsion/postdetail/shorttv/adapter/b;

    .line 345
    .line 346
    invoke-direct {v3, p1}, Lcom/transsion/postdetail/shorttv/adapter/b;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v5, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 350
    .line 351
    .line 352
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 353
    .line 354
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-direct {v3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-gtz v3, :cond_d

    .line 378
    .line 379
    new-instance v3, Ltf/d;

    .line 380
    .line 381
    const/high16 v6, 0x40800000    # 4.0f

    .line 382
    .line 383
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    invoke-direct {v3, v6}, Ltf/d;-><init>(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 391
    .line 392
    .line 393
    :cond_d
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v4}, Luf/c;->k(Landroid/view/View;)V

    .line 397
    .line 398
    .line 399
    :goto_6
    sget v3, Lcom/transsion/postdetail/R$id;->tv_desc:I

    .line 400
    .line 401
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    check-cast v3, Landroid/widget/TextView;

    .line 406
    .line 407
    if-eqz v0, :cond_e

    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_e
    const/4 v1, 0x2

    .line 411
    :goto_7
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->F:Ljava/lang/String;

    .line 415
    .line 416
    const-string v1, "minitv_explore"

    .line 417
    .line 418
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-eqz v1, :cond_f

    .line 423
    .line 424
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_f
    const-string v1, "minitv_favorite"

    .line 433
    .line 434
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_10

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string p2, " EPs"

    .line 453
    .line 454
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p2

    .line 461
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    :cond_10
    :goto_8
    sget p2, Lcom/transsion/postdetail/R$id;->btn_download:I

    .line 465
    .line 466
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    check-cast p1, Landroid/widget/TextView;

    .line 471
    .line 472
    iget-boolean p2, p0, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->G:Z

    .line 473
    .line 474
    if-eqz p2, :cond_11

    .line 475
    .line 476
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 477
    .line 478
    .line 479
    move-result-object p2

    .line 480
    sget v0, Lcom/transsnet/downloader/R$string;->str_download:I

    .line 481
    .line 482
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    goto :goto_9

    .line 487
    :cond_11
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 488
    .line 489
    .line 490
    move-result-object p2

    .line 491
    sget v0, Lcom/transsion/baseui/R$string;->play:I

    .line 492
    .line 493
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p2

    .line 497
    :goto_9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    iget-boolean p2, p0, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->G:Z

    .line 501
    .line 502
    if-eqz p2, :cond_12

    .line 503
    .line 504
    sget p2, Lcom/transsnet/downloader/R$mipmap;->ic_download_white:I

    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_12
    sget p2, Lcom/transsion/postdetail/R$mipmap;->ic_play_white_trending:I

    .line 508
    .line 509
    :goto_a
    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 510
    .line 511
    .line 512
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
