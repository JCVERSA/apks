.class public final Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B1\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001fR\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001fR\u0018\u0010\'\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "tabId",
        "",
        "pageName",
        "",
        "isHorizontal",
        "isTablet",
        "<init>",
        "(IILjava/lang/String;ZZ)V",
        "item",
        "pos",
        "",
        "C1",
        "(Lcom/transsion/shorttv_pugc/bean/Subject;I)V",
        "Lcom/transsion/shorttv_pugc/bean/OperateItem;",
        "D1",
        "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "y0",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V",
        "F",
        "I",
        "G",
        "Ljava/lang/String;",
        "H",
        "itemWidth",
        "itemHeight",
        "J",
        "Lcom/transsion/shorttv_pugc/bean/OperateItem;",
        "operateItem",
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


# instance fields
.field private final F:I

.field private final G:Ljava/lang/String;

.field private final H:I

.field private final I:I

.field private J:Lcom/transsion/shorttv_pugc/bean/OperateItem;


# direct methods
.method public constructor <init>(IILjava/lang/String;ZZ)V
    .locals 2

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->F:I

    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->G:Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    if-eqz p4, :cond_2

    const p1, 0x3f0f5c29    # 0.56f

    goto :goto_1

    :cond_2
    const p1, 0x3fb1eb85    # 1.39f

    .line 6
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p3

    invoke-static {p2, p3}, Lkotlin/ranges/RangesKt;->h(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->b(F)I

    move-result p2

    add-int/lit8 p2, p2, -0xc

    mul-int/lit8 p3, v1, 0x8

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, -0xc

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    int-to-float p3, v1

    div-float/2addr p2, p3

    .line 7
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 8
    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    .line 1
    sget p1, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_op_item_movie_rank:I

    :cond_0
    move v1, p1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;-><init>(IILjava/lang/String;ZZ)V

    return-void
.end method

.method private final C1(Lcom/transsion/shorttv_pugc/bean/Subject;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "browse_rank_item"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "sequence"

    .line 14
    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->F:I

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "tabId"

    .line 29
    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->J:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-static {p2, v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->a(Lcom/transsion/shorttv_pugc/bean/OperateItem;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p1, v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->c(Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->G:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "holder"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "item"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3, v2}, Lls/b;->a(Ljava/util/List;Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v0, v1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 30
    .line 31
    .line 32
    sget v4, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_image:I

    .line 33
    .line 34
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 39
    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getBuiltIn()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v9, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter$convert$1$1;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-direct {v9, v2, v4, v5}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter$convert$1$1;-><init>(Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v10, 0x3

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_0
    sget-object v5, Lis/b;->a:Lis/b$a;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const-string v7, "getContext(...)"

    .line 77
    .line 78
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, ""

    .line 86
    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-nez v7, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move-object v9, v7

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    move-object v9, v8

    .line 99
    :goto_1
    iget v10, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 100
    .line 101
    iget v11, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    if-nez v7, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object v12, v7

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    :goto_2
    move-object v12, v8

    .line 119
    :goto_3
    const/16 v19, 0x1fa0

    .line 120
    .line 121
    const/16 v20, 0x0

    .line 122
    .line 123
    const/4 v13, 0x0

    .line 124
    const/4 v14, 0x0

    .line 125
    const/4 v15, 0x0

    .line 126
    const/16 v16, 0x0

    .line 127
    .line 128
    const/16 v17, 0x0

    .line 129
    .line 130
    const/16 v18, 0x0

    .line 131
    .line 132
    const/16 v21, 0x0

    .line 133
    .line 134
    move-object v7, v4

    .line 135
    move-object v8, v9

    .line 136
    move v9, v10

    .line 137
    move v10, v11

    .line 138
    move v11, v13

    .line 139
    move v13, v14

    .line 140
    move v14, v15

    .line 141
    move/from16 v15, v16

    .line 142
    .line 143
    move/from16 v16, v17

    .line 144
    .line 145
    move/from16 v17, v18

    .line 146
    .line 147
    move/from16 v18, v21

    .line 148
    .line 149
    invoke-static/range {v5 .. v20}, Lis/b$a;->m(Lis/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    .line 158
    iget v6, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 159
    .line 160
    if-ne v5, v6, :cond_5

    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 167
    .line 168
    iget v6, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 169
    .line 170
    if-eq v5, v6, :cond_6

    .line 171
    .line 172
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget v6, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 177
    .line 178
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget v5, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 185
    .line 186
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    .line 188
    :cond_6
    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->P(I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    const/16 v5, 0x64

    .line 193
    .line 194
    if-ne v4, v5, :cond_7

    .line 195
    .line 196
    return-void

    .line 197
    :cond_7
    sget v4, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_title:I

    .line 198
    .line 199
    invoke-virtual {v1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Landroid/widget/TextView;

    .line 204
    .line 205
    if-eqz v4, :cond_8

    .line 206
    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getTitle()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    iget v5, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 217
    .line 218
    .line 219
    :cond_8
    sget v4, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_corner:I

    .line 220
    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/Subject;->getCorner()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {v1, v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v2, v3}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->C1(Lcom/transsion/shorttv_pugc/bean/Subject;I)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final D1(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->J:Lcom/transsion/shorttv_pugc/bean/OperateItem;

    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x64

    .line 7
    .line 8
    if-ne p2, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_op_item_movie_rank_more:I

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p2, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_image:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 38
    .line 39
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 46
    .line 47
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    .line 49
    :cond_0
    sget p2, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_more_mask:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 60
    .line 61
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 68
    .line 69
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    return-object p2

    .line 80
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget p2, Lcom/transsion/shorttv/R$id;->main_op_movie_rank_image:I

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 91
    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->H:I

    .line 99
    .line 100
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTvOpRankingAdapter;->I:I

    .line 107
    .line 108
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    :cond_2
    return-object p1
.end method
