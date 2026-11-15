.class public final Lcom/transsion/home/adapter/a;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B1\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsion/home/adapter/a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/MovieItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "",
        "dataList",
        "Lrk/b;",
        "listExposureHelper",
        "Lcom/transsion/home/bean/LayoutStyle;",
        "style",
        "",
        "rowCount",
        "<init>",
        "(Ljava/util/List;Lrk/b;Lcom/transsion/home/bean/LayoutStyle;I)V",
        "holder",
        "item",
        "",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "E1",
        "F",
        "Lrk/b;",
        "G",
        "Lcom/transsion/home/bean/LayoutStyle;",
        "D1",
        "()Lcom/transsion/home/bean/LayoutStyle;",
        "F1",
        "(Lcom/transsion/home/bean/LayoutStyle;)V",
        "H",
        "I",
        "C1",
        "()I",
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
.field public static final I:I = 0x8


# instance fields
.field private final F:Lrk/b;

.field private G:Lcom/transsion/home/bean/LayoutStyle;

.field private final H:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lrk/b;Lcom/transsion/home/bean/LayoutStyle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/MovieItem;",
            ">;",
            "Lrk/b;",
            "Lcom/transsion/home/bean/LayoutStyle;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsion/home/R$layout;->home_adapter_movie:I

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/a;->F:Lrk/b;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    .line 14
    .line 15
    iput p4, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/transsion/home/adapter/a;->F:Lrk/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v1, p1, v2}, Lrk/b;->h(Landroidx/recyclerview/widget/LinearLayoutManager;IZ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V
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
    const/high16 v0, 0x42d60000    # 107.0f

    .line 12
    .line 13
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x43150000    # 149.0f

    .line 18
    .line 19
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    const/high16 v3, 0x41000000    # 8.0f

    .line 29
    .line 30
    mul-float/2addr v2, v3

    .line 31
    const/high16 v4, 0x41c00000    # 24.0f

    .line 32
    .line 33
    add-float/2addr v2, v4

    .line 34
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    sub-int v2, v5, v2

    .line 43
    .line 44
    iget v6, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 45
    .line 46
    div-int/2addr v2, v6

    .line 47
    int-to-float v7, v2

    .line 48
    int-to-float v1, v1

    .line 49
    const/high16 v8, 0x3f800000    # 1.0f

    .line 50
    .line 51
    mul-float/2addr v1, v8

    .line 52
    int-to-float v0, v0

    .line 53
    div-float/2addr v1, v0

    .line 54
    mul-float/2addr v7, v1

    .line 55
    float-to-int v0, v7

    .line 56
    add-int/lit8 v6, v6, -0x1

    .line 57
    .line 58
    int-to-float v1, v6

    .line 59
    mul-float/2addr v1, v3

    .line 60
    add-float/2addr v1, v4

    .line 61
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/high16 v3, 0x42da0000    # 109.0f

    .line 66
    .line 67
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 71
    .line 72
    .line 73
    sub-int/2addr v5, v1

    .line 74
    iget v1, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 75
    .line 76
    div-int v1, v5, v1

    .line 77
    .line 78
    const/high16 v3, 0x43240000    # 164.0f

    .line 79
    .line 80
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/high16 v4, 0x42b80000    # 92.0f

    .line 85
    .line 86
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    iget v6, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 91
    .line 92
    div-int/2addr v5, v6

    .line 93
    int-to-float v6, v5

    .line 94
    int-to-float v4, v4

    .line 95
    mul-float/2addr v4, v8

    .line 96
    int-to-float v3, v3

    .line 97
    div-float/2addr v4, v3

    .line 98
    mul-float/2addr v6, v4

    .line 99
    float-to-int v3, v6

    .line 100
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/16 v6, 0x8

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    const/4 v8, 0x0

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    sget-object v0, Low/b;->a:Low/b;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    move-object v2, v8

    .line 128
    :goto_0
    invoke-virtual {v0, v1, v2}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget v1, Lcom/transsion/home/R$id;->nativeView:I

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 139
    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getNonAdDelegate()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eqz p2, :cond_1

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    :cond_1
    invoke-virtual {v1, v2, v0, v8}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    sget p2, Lcom/transsion/home/R$id;->nativeView:I

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Landroid/widget/FrameLayout;

    .line 166
    .line 167
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    sget p2, Lcom/transsion/home/R$id;->group:I

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Landroidx/constraintlayout/widget/Group;

    .line 177
    .line 178
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_3
    sget v4, Lcom/transsion/home/R$id;->nativeView:I

    .line 183
    .line 184
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Landroid/widget/FrameLayout;

    .line 189
    .line 190
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    sget v4, Lcom/transsion/home/R$id;->group:I

    .line 194
    .line 195
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Landroidx/constraintlayout/widget/Group;

    .line 200
    .line 201
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    sget v4, Lcom/transsion/home/R$id;->iv_cover:I

    .line 205
    .line 206
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 211
    .line 212
    iget-object v6, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    .line 213
    .line 214
    if-nez v6, :cond_b

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    sget-object v7, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 221
    .line 222
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-nez v6, :cond_4

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eq v6, v8, :cond_9

    .line 234
    .line 235
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 240
    .line 241
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-nez v6, :cond_5

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-eq v6, v8, :cond_9

    .line 253
    .line 254
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->VSHOW:Lcom/transsion/moviedetailapi/SubjectType;

    .line 259
    .line 260
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v6, :cond_6

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eq v6, v8, :cond_9

    .line 272
    .line 273
    :goto_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 278
    .line 279
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-nez v6, :cond_7

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eq v6, v8, :cond_9

    .line 291
    .line 292
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    sget-object v8, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 297
    .line 298
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-nez v6, :cond_8

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-ne v6, v8, :cond_d

    .line 310
    .line 311
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-nez v3, :cond_a

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-ne v3, v5, :cond_f

    .line 327
    .line 328
    goto :goto_6

    .line 329
    :cond_b
    if-eqz v6, :cond_c

    .line 330
    .line 331
    invoke-virtual {v6}, Lcom/transsion/home/bean/LayoutStyle;->getShape()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    :cond_c
    sget-object v6, Lcom/transsion/home/enum/LayoutStyleEnum;->Horizontal:Lcom/transsion/home/enum/LayoutStyleEnum;

    .line 336
    .line 337
    invoke-virtual {v6}, Lcom/transsion/home/enum/LayoutStyleEnum;->getValue()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_e

    .line 346
    .line 347
    :cond_d
    :goto_5
    move v0, v3

    .line 348
    move v2, v5

    .line 349
    goto :goto_7

    .line 350
    :cond_e
    sget-object v3, Lcom/transsion/home/enum/LayoutStyleEnum;->Square:Lcom/transsion/home/enum/LayoutStyleEnum;

    .line 351
    .line 352
    invoke-virtual {v3}, Lcom/transsion/home/enum/LayoutStyleEnum;->getValue()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_f

    .line 361
    .line 362
    :goto_6
    move v0, v1

    .line 363
    move v2, v0

    .line 364
    :cond_f
    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 369
    .line 370
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 374
    .line 375
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 376
    .line 377
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .line 379
    .line 380
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v1, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    const-string v5, ""

    .line 395
    .line 396
    if-eqz v3, :cond_10

    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    if-nez v3, :cond_11

    .line 403
    .line 404
    :cond_10
    move-object v3, v5

    .line 405
    :cond_11
    invoke-virtual {v1, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    sget v3, Lcom/tn/lib/widget/R$color;->cl37:I

    .line 410
    .line 411
    invoke-virtual {v1, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v1, v2}, Lni/f$b;->m(I)Lni/f$b;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1, v0}, Lni/f$b;->c(I)Lni/f$b;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-eqz v1, :cond_13

    .line 428
    .line 429
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    if-nez v1, :cond_12

    .line 434
    .line 435
    goto :goto_8

    .line 436
    :cond_12
    move-object v5, v1

    .line 437
    :cond_13
    :goto_8
    invoke-virtual {v0, v5}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0, v4}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 442
    .line 443
    .line 444
    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    .line 445
    .line 446
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getTitle()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 451
    .line 452
    .line 453
    sget v0, Lcom/transsion/home/R$id;->tv_tabs:I

    .line 454
    .line 455
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getGenre()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCountryName()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v1, "\u2022"

    .line 472
    .line 473
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 484
    .line 485
    .line 486
    sget v0, Lcom/transsion/home/R$id;->tv_score:I

    .line 487
    .line 488
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getImdbRatingValue()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 493
    .line 494
    .line 495
    sget v0, Lcom/transsion/home/R$id;->tv_tips:I

    .line 496
    .line 497
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    check-cast p1, Lcom/tn/lib/view/CornerTextView;

    .line 502
    .line 503
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getCorner()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p2}, Lcom/transsion/home/bean/MovieItem;->getSubjectType()Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-virtual {p1, v0, p2}, Lcom/tn/lib/view/CornerTextView;->setTextWithType(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 512
    .line 513
    .line 514
    return-void
.end method

.method public final C1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/home/adapter/a;->H:I

    .line 2
    .line 3
    return v0
.end method

.method public final D1()Lcom/transsion/home/bean/LayoutStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/transsion/home/R$id;->iv_cover:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v1, v0, Landroid/app/Activity;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v0, Landroid/app/Activity;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v2

    .line 38
    :goto_0
    const/4 v1, 0x1

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    instance-of v3, v0, Landroid/app/Activity;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    check-cast v2, Landroid/app/Activity;

    .line 58
    .line 59
    :cond_2
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ne v0, v1, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    nop

    .line 80
    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/MovieItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/a;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/MovieItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F1(Lcom/transsion/home/bean/LayoutStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/a;->G:Lcom/transsion/home/bean/LayoutStyle;

    .line 2
    .line 3
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

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/a;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/home/adapter/a;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
