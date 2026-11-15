.class public final Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000e\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\r*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u0014\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0001H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv/bean/Subject;",
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
        "(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V",
        "F1",
        "holder",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V",
        "baseQuickAdapter",
        "Lt6/f;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;",
        "F",
        "Ljava/lang/String;",
        "G",
        "Z",
        "shortTvLib_release"
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
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_item_trending:I

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
    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->F:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->G:Z

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

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

.method private final E1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V
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
    new-instance v4, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter$loadBuiltInCover$1;-><init>(Lcom/transsion/shorttv/bean/Subject;Landroidx/appcompat/widget/AppCompatImageView;Lkotlin/coroutines/Continuation;)V

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

.method private final F1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V
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


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 12

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
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title_trending:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getShowTitle()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    sget v0, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    sget v0, Lcom/transsion/shorttv/R$id;->group:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lyq/b;->a:Lyq/b;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x0

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v2, v3

    .line 79
    :goto_1
    invoke-virtual {v0, v1, v2}, Lyq/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget v1, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_2
    invoke-virtual {p1, v1, v0, v3}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return-void

    .line 111
    :cond_4
    sget v0, Lcom/transsion/shorttv/R$id;->flAdContainer:I

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/widget/FrameLayout;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    sget v0, Lcom/transsion/shorttv/R$id;->group:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    sget v0, Lcom/transsion/shorttv/R$id;->iv_cover:I

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getBuiltIn()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    invoke-direct {p0, v0, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->E1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->F1(Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/shorttv/bean/Subject;)V

    .line 152
    .line 153
    .line 154
    :goto_2
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title:I

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Landroid/text/StaticLayout;

    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const/high16 v2, 0x430b0000    # 139.0f

    .line 184
    .line 185
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    sub-int v7, v0, v2

    .line 190
    .line 191
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 192
    .line 193
    const/4 v10, 0x0

    .line 194
    const/4 v11, 0x0

    .line 195
    const/high16 v9, 0x3f800000    # 1.0f

    .line 196
    .line 197
    move-object v4, v1

    .line 198
    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    const/4 v1, 0x1

    .line 206
    if-le v0, v1, :cond_6

    .line 207
    .line 208
    move v0, v1

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    move v0, v3

    .line 211
    :goto_3
    sget v2, Lcom/transsion/shorttv/R$id;->tv_type:I

    .line 212
    .line 213
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Landroid/widget/TextView;

    .line 218
    .line 219
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 220
    .line 221
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    if-eqz v5, :cond_8

    .line 229
    .line 230
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-nez v5, :cond_7

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_7
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const-string v6, "yyyy-MM-dd"

    .line 242
    .line 243
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    .line 264
    .line 265
    :cond_8
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const-string v6, ","

    .line 270
    .line 271
    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    const-string v6, " \u00b7 "

    .line 276
    .line 277
    if-eqz v5, :cond_9

    .line 278
    .line 279
    array-length v7, v5

    .line 280
    move v8, v3

    .line 281
    :goto_5
    if-ge v8, v7, :cond_9

    .line 282
    .line 283
    aget-object v9, v5, v8

    .line 284
    .line 285
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    .line 291
    .line 292
    add-int/lit8 v8, v8, 0x1

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    if-eqz v5, :cond_b

    .line 300
    .line 301
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-nez v5, :cond_a

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 317
    .line 318
    .line 319
    :cond_b
    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTags()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-nez v2, :cond_c

    .line 327
    .line 328
    new-instance v2, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    :cond_c
    sget v4, Lcom/transsion/shorttv/R$id;->rv_list:I

    .line 334
    .line 335
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 340
    .line 341
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_d

    .line 346
    .line 347
    invoke-static {v4}, Lcr/b;->b(Landroid/view/View;)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_d
    new-instance v5, Lcom/transsion/shorttv/ui/adapter/s;

    .line 352
    .line 353
    check-cast v2, Ljava/util/Collection;

    .line 354
    .line 355
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-direct {v5, v2}, Lcom/transsion/shorttv/ui/adapter/s;-><init>(Ljava/util/List;)V

    .line 360
    .line 361
    .line 362
    new-instance v2, Lcom/transsion/shorttv/ui/adapter/e;

    .line 363
    .line 364
    invoke-direct {v2, p1}, Lcom/transsion/shorttv/ui/adapter/e;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 368
    .line 369
    .line 370
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 371
    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-direct {v2, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-gtz v2, :cond_e

    .line 396
    .line 397
    new-instance v2, Lcom/transsion/shorttv/base/widget/f;

    .line 398
    .line 399
    const/high16 v6, 0x40800000    # 4.0f

    .line 400
    .line 401
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    invoke-direct {v2, v6}, Lcom/transsion/shorttv/base/widget/f;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 409
    .line 410
    .line 411
    :cond_e
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 412
    .line 413
    .line 414
    invoke-static {v4}, Lcr/b;->e(Landroid/view/View;)V

    .line 415
    .line 416
    .line 417
    :goto_7
    sget v2, Lcom/transsion/shorttv/R$id;->tv_desc:I

    .line 418
    .line 419
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Landroid/widget/TextView;

    .line 424
    .line 425
    if-eqz v0, :cond_f

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_f
    const/4 v1, 0x2

    .line 429
    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->F:Ljava/lang/String;

    .line 433
    .line 434
    const-string v1, "minitv_explore"

    .line 435
    .line 436
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_10

    .line 441
    .line 442
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_10
    const-string v1, "minitv_favorite"

    .line 451
    .line 452
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_11

    .line 457
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string p2, " EPs"

    .line 471
    .line 472
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p2

    .line 479
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    .line 482
    :cond_11
    :goto_9
    sget p2, Lcom/transsion/shorttv/R$id;->btn_download:I

    .line 483
    .line 484
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    check-cast p1, Landroid/widget/TextView;

    .line 489
    .line 490
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->G:Z

    .line 491
    .line 492
    if-eqz p2, :cond_12

    .line 493
    .line 494
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 495
    .line 496
    .line 497
    move-result-object p2

    .line 498
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_download:I

    .line 499
    .line 500
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    goto :goto_a

    .line 505
    :cond_12
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_play:I

    .line 510
    .line 511
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p2

    .line 515
    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    iget-boolean p2, p0, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->G:Z

    .line 519
    .line 520
    if-eqz p2, :cond_13

    .line 521
    .line 522
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_download_white:I

    .line 523
    .line 524
    goto :goto_b

    .line 525
    :cond_13
    sget p2, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_play_white_trending:I

    .line 526
    .line 527
    :goto_b
    invoke-virtual {p1, p2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 528
    .line 529
    .line 530
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/ShortTVTrendingAdapter;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lt6/f;"
        }
    .end annotation

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt6/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt6/f;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
