.class public final Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B;\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010!R\u0014\u0010$\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "",
        "isSubTab",
        "tabId",
        "isHorizontal",
        "isTablet",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;ZIZZ)V",
        "item",
        "pos",
        "",
        "C1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "y0",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "Z",
        "H",
        "I",
        "itemWidth",
        "J",
        "itemHeight",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final K:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:Z

.field private final H:I

.field private final I:I

.field private final J:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;ZIZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 5
    iput-boolean p3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->G:Z

    .line 6
    iput p4, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->H:I

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    if-eqz p5, :cond_2

    const p1, 0x3f0f5c29    # 0.56f

    goto :goto_1

    :cond_2
    const p1, 0x3fb1eb85    # 1.39f

    .line 7
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

    .line 8
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 9
    iput p1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;ZIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    .line 1
    sget p1, Lcom/transsion/home/R$layout;->item_main_operation_movie_rank:I

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;ZIZZ)V

    return-void
.end method

.method private final C1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
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
    iget p2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->H:I

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
    iget-object p2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-static {p2, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 44
    .line 45
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 46
    .line 47
    iget v1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->H:I

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 9

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
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Lij/k;->e(Ljava/util/List;Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/transsion/home/R$id;->main_op_movie_rank_image:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v6, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter$convert$1$1;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-direct {v6, p2, v1, v2}, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter$convert$1$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x3

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "getContext(...)"

    .line 71
    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, ""

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    :cond_1
    move-object v3, v4

    .line 94
    :cond_2
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move-object v4, v3

    .line 112
    :cond_4
    :goto_0
    invoke-virtual {v2, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget v3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Lni/f$b;->m(I)Lni/f$b;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget v3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lni/f$b;->c(I)Lni/f$b;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .line 137
    iget v3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

    .line 138
    .line 139
    if-ne v2, v3, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    .line 147
    iget v3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    .line 148
    .line 149
    if-eq v2, v3, :cond_6

    .line 150
    .line 151
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget v3, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

    .line 156
    .line 157
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget v2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    .line 164
    .line 165
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    .line 167
    :cond_6
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->P(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    const/16 v2, 0x64

    .line 172
    .line 173
    if-ne v1, v2, :cond_7

    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    sget v1, Lcom/transsion/home/R$id;->main_op_movie_rank_title:I

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Landroid/widget/TextView;

    .line 183
    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget v2, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 196
    .line 197
    .line 198
    :cond_8
    sget v1, Lcom/transsion/home/R$id;->main_op_movie_rank_corner:I

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 205
    .line 206
    .line 207
    iget-boolean p1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->G:Z

    .line 208
    .line 209
    if-eqz p1, :cond_9

    .line 210
    .line 211
    invoke-direct {p0, p2, v0}, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->C1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    sget-object p1, Lzk/c;->a:Lzk/c;

    .line 216
    .line 217
    iget-object v1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 218
    .line 219
    invoke-virtual {p1, p2, v0, v1}, Lzk/c;->g(Lcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/home/bean/OperateItem;)V

    .line 220
    .line 221
    .line 222
    :goto_2
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

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
    sget v0, Lcom/transsion/home/R$layout;->item_main_operation_movie_rank_more:I

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
    sget p2, Lcom/transsion/home/R$id;->main_op_movie_rank_image:I

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
    iget v1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

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
    iget v0, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    .line 46
    .line 47
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    .line 49
    :cond_0
    sget p2, Lcom/transsion/home/R$id;->main_op_movie_rank_more_mask:I

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
    iget v1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

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
    iget v0, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

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
    sget p2, Lcom/transsion/home/R$id;->main_op_movie_rank_image:I

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
    iget v1, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->I:I

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
    iget v0, p0, Lcom/transsion/home/adapter/trending/adapter/OpMovieRankAdapter;->J:I

    .line 107
    .line 108
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    :cond_2
    return-object p1
.end method
