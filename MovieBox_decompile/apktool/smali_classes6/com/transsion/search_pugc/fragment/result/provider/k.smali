.class public final Lcom/transsion/search_pugc/fragment/result/provider/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"

# interfaces
.implements Lcom/transsion/search_pugc/fragment/result/provider/t;


# instance fields
.field private final synthetic e:Lcom/transsion/search_pugc/fragment/result/provider/t;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:F


# direct methods
.method public constructor <init>(Lcom/transsion/search_pugc/fragment/result/provider/t;)V
    .locals 1

    .line 1
    const-string v0, "reportable"

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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/search_pugc/fragment/result/provider/h;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/provider/h;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->f:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p1, Lcom/transsion/search_pugc/fragment/result/provider/i;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/provider/i;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->g:Lkotlin/Lazy;

    .line 32
    .line 33
    const p1, 0x3f733333    # 0.95f

    .line 34
    .line 35
    .line 36
    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->h:F

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic A()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/provider/k;->M()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic B(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/result/provider/k;->F(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/result/provider/k;->J(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/provider/k;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final E(Landroid/view/View;II)V
    .locals 2

    .line 1
    filled-new-array {p2, p3}, [I

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-wide/16 v0, 0xc8

    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    new-instance p3, Lcom/transsion/search_pugc/fragment/result/provider/j;

    .line 15
    .line 16
    invoke-direct {p3, p1}, Lcom/transsion/search_pugc/fragment/result/provider/j;-><init>(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final F(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final H(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-static {p0, p2}, Lcom/transsion/search_pugc/constant/a;->g(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0, p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static final I(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 2
    .line 3
    .line 4
    move-result-object p7

    .line 5
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 6
    .line 7
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    sub-int/2addr p1, v0

    .line 18
    invoke-virtual {p7, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v2, :cond_9

    .line 29
    .line 30
    if-eq v2, v0, :cond_4

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-eq v2, v5, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x3

    .line 36
    if-eq v2, p0, :cond_4

    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 49
    .line 50
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-float/2addr p0, p1

    .line 55
    const/high16 p1, 0x41a00000    # 20.0f

    .line 56
    .line 57
    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-double p5, v0

    .line 62
    float-to-double p7, p0

    .line 63
    neg-double p7, p7

    .line 64
    int-to-double p1, p1

    .line 65
    div-double/2addr p7, p1

    .line 66
    invoke-static {p7, p8}, Ljava/lang/Math;->exp(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    sub-double/2addr p5, p1

    .line 71
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->L()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->K()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->L()I

    .line 80
    .line 81
    .line 82
    move-result p7

    .line 83
    sub-int/2addr p2, p7

    .line 84
    int-to-double p7, p2

    .line 85
    mul-double/2addr p7, p5

    .line 86
    double-to-int p2, p7

    .line 87
    add-int/2addr p1, p2

    .line 88
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->K()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-le p1, p2, :cond_1

    .line 93
    .line 94
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->K()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    :cond_1
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->L()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->K()I

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->L()I

    .line 107
    .line 108
    .line 109
    move-result p6

    .line 110
    sub-int/2addr p5, p6

    .line 111
    int-to-float p5, p5

    .line 112
    iget p4, p4, Lcom/transsion/search_pugc/fragment/result/provider/k;->h:F

    .line 113
    .line 114
    mul-float/2addr p5, p4

    .line 115
    float-to-int p4, p5

    .line 116
    add-int/2addr p2, p4

    .line 117
    if-lt p1, p2, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    move v0, v4

    .line 121
    :goto_0
    iput-boolean v0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 128
    .line 129
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 133
    .line 134
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 135
    .line 136
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    iget-boolean p2, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 140
    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string p4, "MOVE dist="

    .line 147
    .line 148
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p0, ", width="

    .line 155
    .line 156
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p0, ", atMax="

    .line 163
    .line 164
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_3
    return v4

    .line 171
    :cond_4
    invoke-virtual {p7, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 176
    .line 177
    if-eqz p0, :cond_5

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    goto :goto_1

    .line 188
    :cond_5
    move-object p2, v3

    .line 189
    :goto_1
    new-instance p7, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string p8, "UP atMax="

    .line 195
    .line 196
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string p1, ", \u5bbd="

    .line 203
    .line 204
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    if-eqz p0, :cond_8

    .line 211
    .line 212
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 213
    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    invoke-virtual {p5}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-eqz p1, :cond_6

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-eqz p1, :cond_6

    .line 227
    .line 228
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 233
    .line 234
    if-eqz p1, :cond_6

    .line 235
    .line 236
    invoke-static {p1, v4, v0, v3}, Lcom/transsion/search_pugc/constant/a;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ZILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_6
    invoke-virtual {p6}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p4, p5, p1}, Lcom/transsion/search_pugc/fragment/result/provider/k;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 244
    .line 245
    .line 246
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->L()I

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/k;->E(Landroid/view/View;II)V

    .line 255
    .line 256
    .line 257
    :cond_8
    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_9
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    iput p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 265
    .line 266
    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 267
    .line 268
    if-eqz v1, :cond_a

    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string p2, "DOWN startX="

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p0, " \u521d\u59cb\u5bbd="

    .line 292
    .line 293
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    :goto_2
    return v4
.end method

.method private static final J(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p3, v2, v0, v1}, Lcom/transsion/search_pugc/constant/a;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p1, p0, p2}, Lcom/transsion/search_pugc/fragment/result/provider/k;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final K()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private static final M()I
    .locals 1

    .line 1
    const/high16 v0, 0x42500000    # 52.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final N()I
    .locals 1

    .line 1
    const/high16 v0, 0x41d00000    # 26.0f

    .line 2
    .line 3
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private final O(Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/transsion/search_pugc/fragment/result/provider/k;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 40
    .line 41
    .line 42
    move v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsion/search_pugc/fragment/result/provider/k;->I(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic z(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search_pugc/fragment/result/provider/k;->H(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "helper"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "item"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    sget v4, Lcom/transsion/search/R$id;->iv_ic:I

    .line 35
    .line 36
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-static {v4, v2, v3, v5, v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget v2, Lcom/transsion/search/R$id;->iv_ic:I

    .line 48
    .line 49
    invoke-static {v3}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->e(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 54
    .line 55
    .line 56
    :goto_0
    sget v2, Lcom/transsion/search/R$id;->tv_collection_info:I

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getTitle()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    sget-object v6, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v6, v7}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {v4, v5, v6}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v4, v3

    .line 94
    :goto_1
    invoke-virtual {p1, v2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 95
    .line 96
    .line 97
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideoNum()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    sget v6, Lcom/transsion/baseui/R$plurals;->videos_count_text:I

    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    new-array v8, v1, [Ljava/lang/Object;

    .line 133
    .line 134
    aput-object v7, v8, v0

    .line 135
    .line 136
    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    .line 142
    .line 143
    :cond_2
    const-string v4, "\ufffc"

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v4}, Lcom/transsion/search_pugc/h;->a(Landroid/content/Context;)Landroid/text/style/ImageSpan;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    sub-int/2addr v5, v1

    .line 161
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    const/16 v7, 0x21

    .line 166
    .line 167
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_3

    .line 175
    .line 176
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getWatchNum()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_3

    .line 181
    .line 182
    invoke-static {v4}, Lcom/transsion/search_pugc/constant/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    move-object v4, v3

    .line 188
    :goto_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    sget v6, Lcom/transsion/search/R$string;->views:I

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v4, " "

    .line 207
    .line 208
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 219
    .line 220
    .line 221
    sget v4, Lcom/transsion/search/R$id;->tv_info:I

    .line 222
    .line 223
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    check-cast v4, Landroid/widget/TextView;

    .line 228
    .line 229
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    sget v2, Lcom/transsion/search/R$id;->view_into:I

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    new-instance v4, Lcom/transsion/search_pugc/fragment/result/provider/e;

    .line 239
    .line 240
    invoke-direct {v4, p2, p0, p1}, Lcom/transsion/search_pugc/fragment/result/provider/e;-><init>(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    sget v2, Lcom/transsion/search/R$id;->rv:I

    .line 247
    .line 248
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;

    .line 253
    .line 254
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-direct {v4, v5, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Lcom/transsion/search_pugc/fragment/result/adapter/a;

    .line 267
    .line 268
    invoke-direct {v6, v1}, Lcom/transsion/search_pugc/fragment/result/adapter/a;-><init>(Z)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    if-eqz v4, :cond_4

    .line 276
    .line 277
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    goto :goto_3

    .line 282
    :cond_4
    move-object v4, v3

    .line 283
    :goto_3
    move-object v5, v4

    .line 284
    check-cast v5, Ljava/util/Collection;

    .line 285
    .line 286
    const/4 v7, 0x5

    .line 287
    if-eqz v5, :cond_7

    .line 288
    .line 289
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_5

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_5
    if-eqz v4, :cond_6

    .line 297
    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    goto :goto_4

    .line 303
    :cond_6
    move v5, v0

    .line 304
    :goto_4
    if-le v5, v7, :cond_7

    .line 305
    .line 306
    move v5, v1

    .line 307
    goto :goto_6

    .line 308
    :cond_7
    :goto_5
    move v5, v0

    .line 309
    :goto_6
    if-eqz v5, :cond_9

    .line 310
    .line 311
    if-eqz v4, :cond_8

    .line 312
    .line 313
    invoke-interface {v4, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    goto :goto_7

    .line 318
    :cond_8
    move-object v4, v3

    .line 319
    :cond_9
    :goto_7
    if-eqz v4, :cond_b

    .line 320
    .line 321
    invoke-static {v4}, Lcom/transsion/search_pugc/constant/a;->k(Ljava/util/List;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_b

    .line 326
    .line 327
    check-cast v0, Ljava/util/Collection;

    .line 328
    .line 329
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v0, :cond_b

    .line 334
    .line 335
    if-eqz v5, :cond_a

    .line 336
    .line 337
    new-instance v4, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    .line 338
    .line 339
    sget-object v7, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;->FOOTER:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 340
    .line 341
    invoke-direct {v4, v3, v7, v1, v3}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :cond_a
    move-object v3, v0

    .line 348
    :cond_b
    check-cast v3, Ljava/util/Collection;

    .line 349
    .line 350
    invoke-virtual {v6, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Lcom/transsion/search_pugc/fragment/result/provider/f;

    .line 354
    .line 355
    invoke-direct {v0, v6, p0}, Lcom/transsion/search_pugc/fragment/result/provider/f;-><init>(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/k;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 362
    .line 363
    .line 364
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 365
    .line 366
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 367
    .line 368
    .line 369
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 370
    .line 371
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 372
    .line 373
    .line 374
    if-eqz v5, :cond_c

    .line 375
    .line 376
    new-instance v0, Lcom/transsion/search_pugc/fragment/result/provider/g;

    .line 377
    .line 378
    move-object v4, v0

    .line 379
    move-object v5, v2

    .line 380
    move-object v9, p0

    .line 381
    move-object v10, p2

    .line 382
    move-object v11, p1

    .line 383
    invoke-direct/range {v4 .. v11}, Lcom/transsion/search_pugc/fragment/result/provider/g;-><init>(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/k;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 387
    .line 388
    .line 389
    :cond_c
    invoke-direct {p0, p2}, Lcom/transsion/search_pugc/fragment/result/provider/k;->O(Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/search_pugc/bean/SearchResultItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/k;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    const-string v0, "ugcVideo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/k;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/t;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->UGC_COLLECTION:Lcom/transsion/search_pugc/constant/SearchType;

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
    sget v0, Lcom/transsion/search/R$layout;->provider_result_collection:I

    .line 2
    .line 3
    return v0
.end method
