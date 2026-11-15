.class public final Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B3\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001eR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001eR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u001e\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "tabId",
        "",
        "isHorizontal",
        "isTablet",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;IZZ)V",
        "position",
        "P",
        "(I)I",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "y0",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "I",
        "H",
        "itemWidth",
        "itemHeight",
        "J",
        "descHeight",
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

.field private final G:I

.field private final H:I

.field private final I:I

.field private final J:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;IZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 5
    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->G:I

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

    .line 7
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

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 9
    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    const/high16 p1, 0x41d80000    # 27.0f

    .line 10
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    .line 1
    sget p1, Lcom/transsion/home/R$layout;->home_item_new_style_rank_content:I

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;IZZ)V

    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
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
    sget v0, Lcom/transsion/home/R$id;->main_op_movie_rank_image:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    const-string v1, "getContext(...)"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, ""

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    new-instance v8, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter$convert$1$1;

    .line 41
    .line 42
    invoke-direct {v8, p2, v0, v2}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter$convert$1$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    const/4 v9, 0x3

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    :cond_1
    move-object v5, v3

    .line 79
    :cond_2
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    :cond_3
    move-object v5, v3

    .line 96
    :cond_4
    invoke-virtual {v4, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Lni/f$b;->m(I)Lni/f$b;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 107
    .line 108
    iget v6, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    .line 109
    .line 110
    add-int/2addr v5, v6

    .line 111
    invoke-virtual {v4, v5}, Lni/f$b;->c(I)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v4, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    .line 124
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 125
    .line 126
    if-ne v4, v5, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    .line 134
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 135
    .line 136
    iget v6, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    .line 137
    .line 138
    add-int/2addr v5, v6

    .line 139
    if-eq v4, v5, :cond_6

    .line 140
    .line 141
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 146
    .line 147
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 154
    .line 155
    iget v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    .line 156
    .line 157
    add-int/2addr v4, v5

    .line 158
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    .line 160
    :cond_6
    sget v0, Lcom/transsion/home/R$id;->mainOpMovieRankImage:I

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 167
    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    new-instance v7, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter$convert$2$1;

    .line 185
    .line 186
    invoke-direct {v7, p2, v0, v2}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter$convert$2$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/google/android/material/imageview/ShapeableImageView;Lkotlin/coroutines/Continuation;)V

    .line 187
    .line 188
    .line 189
    const/4 v8, 0x3

    .line 190
    const/4 v9, 0x0

    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_7
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-nez v2, :cond_9

    .line 221
    .line 222
    :cond_8
    move-object v2, v3

    .line 223
    :cond_9
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    if-eqz v2, :cond_a

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-nez v2, :cond_b

    .line 238
    .line 239
    :cond_a
    move-object v2, v3

    .line 240
    :cond_b
    invoke-virtual {v1, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Lni/f$b;->c(I)Lni/f$b;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 257
    .line 258
    .line 259
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 264
    .line 265
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 266
    .line 267
    if-ne v1, v2, :cond_c

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    .line 275
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 276
    .line 277
    if-eq v1, v2, :cond_d

    .line 278
    .line 279
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 284
    .line 285
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 286
    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 292
    .line 293
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    .line 295
    :cond_d
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v0, p2}, Lij/k;->e(Ljava/util/List;Ljava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->P(I)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    const/16 v1, 0x64

    .line 308
    .line 309
    if-ne v0, v1, :cond_e

    .line 310
    .line 311
    return-void

    .line 312
    :cond_e
    sget v0, Lcom/transsion/home/R$id;->main_op_movie_rank_title:I

    .line 313
    .line 314
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, Landroid/widget/TextView;

    .line 319
    .line 320
    if-eqz v0, :cond_f

    .line 321
    .line 322
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 332
    .line 333
    .line 334
    :cond_f
    sget v0, Lcom/transsion/home/R$id;->tvRank:I

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Landroid/widget/TextView;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    const/4 v2, 0x1

    .line 347
    add-int/2addr v1, v2

    .line 348
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    if-eq v1, v2, :cond_12

    .line 356
    .line 357
    const/4 v2, 0x2

    .line 358
    if-eq v1, v2, :cond_11

    .line 359
    .line 360
    const/4 v2, 0x3

    .line 361
    if-eq v1, v2, :cond_10

    .line 362
    .line 363
    sget v1, Lcom/transsion/home/R$drawable;->bg_ranking_tl_normal:I

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 366
    .line 367
    .line 368
    goto :goto_2

    .line 369
    :cond_10
    sget v1, Lcom/transsion/home/R$drawable;->bg_ranking_tl_no3:I

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_11
    sget v1, Lcom/transsion/home/R$drawable;->bg_ranking_tl_no2:I

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :cond_12
    sget v1, Lcom/transsion/home/R$drawable;->bg_ranking_tl_no1:I

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 384
    .line 385
    .line 386
    :goto_2
    sget v0, Lcom/transsion/home/R$id;->main_op_movie_rank_corner:I

    .line 387
    .line 388
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    check-cast p1, Landroid/widget/TextView;

    .line 393
    .line 394
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    if-nez p2, :cond_13

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_13
    move-object v3, p2

    .line 402
    :goto_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 403
    .line 404
    .line 405
    move-result p2

    .line 406
    if-lez p2, :cond_14

    .line 407
    .line 408
    const/4 p2, 0x0

    .line 409
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_14
    const/16 p2, 0x8

    .line 417
    .line 418
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    :goto_4
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected P(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x64

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->P(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
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
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

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
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 46
    .line 47
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    :cond_0
    sget p2, Lcom/transsion/home/R$id;->main_op_movie_rank_more_mask:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 63
    .line 64
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 71
    .line 72
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->J:I

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    .line 77
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    return-object p2

    .line 86
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y0(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    sget p2, Lcom/transsion/home/R$id;->mainOpMovieRankImage:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 97
    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->H:I

    .line 105
    .line 106
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/NewStyleRankContentAdapter;->I:I

    .line 113
    .line 114
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    .line 116
    :cond_2
    return-object p1
.end method
