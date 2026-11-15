.class public final Lcom/transsion/search_pugc/fragment/result/provider/s;
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
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/search_pugc/fragment/result/provider/m;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/provider/m;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->f:Lkotlin/Lazy;

    .line 21
    .line 22
    new-instance p1, Lcom/transsion/search_pugc/fragment/result/provider/n;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/provider/n;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->g:Lkotlin/Lazy;

    .line 32
    .line 33
    const p1, 0x3f733333    # 0.95f

    .line 34
    .line 35
    .line 36
    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->h:F

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic A(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/search_pugc/fragment/result/provider/s;->F(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsion/search_pugc/fragment/result/provider/s;->J(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic C()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/provider/s;->O()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic D(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/search_pugc/fragment/result/provider/s;->H(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
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
    new-instance p3, Lcom/transsion/search_pugc/fragment/result/provider/r;

    .line 15
    .line 16
    invoke-direct {p3, p1}, Lcom/transsion/search_pugc/fragment/result/provider/r;-><init>(Landroid/view/View;)V

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

.method private static final H(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getOps()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p3, v0}, Lcom/transsion/search_pugc/constant/a;->f(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p0, p2}, Lcom/transsion/search_pugc/fragment/result/provider/s;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final I(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    const/4 p3, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0, p2, p3}, Lcom/transsion/search_pugc/constant/a;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p0, p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static final J(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    if-eqz v2, :cond_a

    .line 29
    .line 30
    if-eq v2, v0, :cond_5

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    if-eq v2, v5, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x3

    .line 36
    if-eq v2, p0, :cond_5

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_4

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    iget p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    cmpg-float p0, p0, p1

    .line 52
    .line 53
    if-nez p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    iput p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 60
    .line 61
    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 62
    .line 63
    :cond_1
    iget p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 64
    .line 65
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    new-instance p5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p6, "startX = "

    .line 75
    .line 76
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p0, ", event.x= "

    .line 83
    .line 84
    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 91
    .line 92
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sub-float/2addr p0, p1

    .line 97
    const/high16 p1, 0x41a00000    # 20.0f

    .line 98
    .line 99
    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    int-to-double p5, v0

    .line 104
    float-to-double p7, p0

    .line 105
    neg-double p7, p7

    .line 106
    int-to-double p1, p1

    .line 107
    div-double/2addr p7, p1

    .line 108
    invoke-static {p7, p8}, Ljava/lang/Math;->exp(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    sub-double/2addr p5, p1

    .line 113
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->K()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 122
    .line 123
    .line 124
    move-result p7

    .line 125
    sub-int/2addr p2, p7

    .line 126
    int-to-double p7, p2

    .line 127
    mul-double/2addr p7, p5

    .line 128
    double-to-int p2, p7

    .line 129
    add-int/2addr p1, p2

    .line 130
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->K()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-le p1, p2, :cond_2

    .line 135
    .line 136
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->K()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    :cond_2
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->K()I

    .line 145
    .line 146
    .line 147
    move-result p5

    .line 148
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 149
    .line 150
    .line 151
    move-result p6

    .line 152
    sub-int/2addr p5, p6

    .line 153
    int-to-float p5, p5

    .line 154
    iget p6, p4, Lcom/transsion/search_pugc/fragment/result/provider/s;->h:F

    .line 155
    .line 156
    mul-float/2addr p5, p6

    .line 157
    float-to-int p5, p5

    .line 158
    add-int/2addr p2, p5

    .line 159
    if-lt p1, p2, :cond_3

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    move v0, v4

    .line 163
    :goto_0
    iput-boolean v0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    const-string p5, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 170
    .line 171
    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 175
    .line 176
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result p4

    .line 184
    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 185
    .line 186
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    iget-boolean p2, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 190
    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string p4, "MOVE dist="

    .line 197
    .line 198
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string p0, ", width="

    .line 205
    .line 206
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p0, ", atMax="

    .line 213
    .line 214
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_4
    return v4

    .line 221
    :cond_5
    invoke-virtual {p7, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 226
    .line 227
    if-eqz p0, :cond_6

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string p7, "UP atMax="

    .line 243
    .line 244
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p1, ", \u5bbd="

    .line 251
    .line 252
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    if-eqz p0, :cond_9

    .line 259
    .line 260
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 261
    .line 262
    if-eqz p1, :cond_8

    .line 263
    .line 264
    invoke-virtual {p5}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_7

    .line 269
    .line 270
    invoke-virtual {p5}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getOps()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-static {p1, p2}, Lcom/transsion/search_pugc/constant/a;->f(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_7
    invoke-virtual {p6}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    invoke-virtual {p4, p5, p1}, Lcom/transsion/search_pugc/fragment/result/provider/s;->d(Lcom/transsion/search_pugc/bean/SearchResultItem;I)V

    .line 282
    .line 283
    .line 284
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-direct {p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->L()I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/s;->E(Landroid/view/View;II)V

    .line 293
    .line 294
    .line 295
    :cond_9
    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_a
    invoke-virtual {p8}, Landroid/view/MotionEvent;->getX()F

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    iput p0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 303
    .line 304
    iput-boolean v4, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 305
    .line 306
    if-eqz v1, :cond_b

    .line 307
    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string p2, "--------------------------------DOWN startX="

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string p0, " \u521d\u59cb\u5bbd="

    .line 330
    .line 331
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    :goto_1
    return v4
.end method

.method private final K()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->g:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->f:Lkotlin/Lazy;

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

.method private final M(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x6

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ltz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    add-int/2addr p2, p1

    .line 23
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 24
    .line 25
    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/16 p3, 0x21

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object v0
.end method

.method private static final N()I
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

.method private static final O()I
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

.method private final P(Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

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
    invoke-virtual {p0, v1, v0}, Lcom/transsion/search_pugc/fragment/result/provider/s;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

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

.method public static synthetic y()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/provider/s;->N()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic z(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/search_pugc/fragment/result/provider/s;->I(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V
    .locals 10

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
    sget v2, Lcom/transsion/search/R$id;->tv_collection_info:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget v4, Lcom/transsion/search/R$string;->collection:I

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v4, v5

    .line 38
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " \u2022 "

    .line 47
    .line 48
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getTitle()Ljava/lang/String;

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
    move-result-object v6

    .line 74
    sget-object v8, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual {v8, v9}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/transsion/search_pugc/g;->e()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-static {v4, v6, v8}, Lcom/transsion/search_pugc/constant/a;->d(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move-object v4, v5

    .line 94
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    sget v8, Lcom/tn/lib/widget/R$color;->white:I

    .line 103
    .line 104
    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-direct {p0, v3, v4, v6}, Lcom/transsion/search_pugc/fragment/result/provider/s;->M(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 113
    .line 114
    .line 115
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getCount()Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    sget v6, Lcom/transsion/baseui/R$plurals;->videos_count_text:I

    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    new-array v9, v1, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v8, v9, v0

    .line 153
    .line 154
    invoke-virtual {v4, v6, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 159
    .line 160
    .line 161
    :cond_2
    sget v3, Lcom/transsion/search/R$id;->tv_info:I

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    sget v2, Lcom/transsion/search/R$id;->view_into:I

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    new-instance v3, Lcom/transsion/search_pugc/fragment/result/provider/o;

    .line 179
    .line 180
    invoke-direct {v3, p2, p0, p1}, Lcom/transsion/search_pugc/fragment/result/provider/o;-><init>(Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    sget v2, Lcom/transsion/search/R$id;->rv:I

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object v8, v2

    .line 193
    check-cast v8, Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;

    .line 194
    .line 195
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 196
    .line 197
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-direct {v2, v3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 205
    .line 206
    .line 207
    new-instance v2, Lcom/transsion/search_pugc/fragment/result/adapter/a;

    .line 208
    .line 209
    invoke-direct {v2, v0, v1, v5}, Lcom/transsion/search_pugc/fragment/result/adapter/a;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/SearchResultItem;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    if-eqz v3, :cond_3

    .line 217
    .line 218
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    goto :goto_2

    .line 223
    :cond_3
    move-object v3, v5

    .line 224
    :goto_2
    move-object v4, v3

    .line 225
    check-cast v4, Ljava/util/Collection;

    .line 226
    .line 227
    const/4 v6, 0x5

    .line 228
    if-eqz v4, :cond_6

    .line 229
    .line 230
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_4

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_4
    if-eqz v3, :cond_5

    .line 238
    .line 239
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    goto :goto_3

    .line 244
    :cond_5
    move v4, v0

    .line 245
    :goto_3
    if-lt v4, v6, :cond_6

    .line 246
    .line 247
    move v4, v1

    .line 248
    goto :goto_5

    .line 249
    :cond_6
    :goto_4
    move v4, v0

    .line 250
    :goto_5
    if-eqz v4, :cond_8

    .line 251
    .line 252
    if-eqz v3, :cond_7

    .line 253
    .line 254
    invoke-interface {v3, v0, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    goto :goto_6

    .line 259
    :cond_7
    move-object v3, v5

    .line 260
    :cond_8
    :goto_6
    if-eqz v3, :cond_a

    .line 261
    .line 262
    invoke-static {v3}, Lcom/transsion/search_pugc/constant/a;->k(Ljava/util/List;)Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_a

    .line 267
    .line 268
    check-cast v0, Ljava/util/Collection;

    .line 269
    .line 270
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_a

    .line 275
    .line 276
    if-eqz v4, :cond_9

    .line 277
    .line 278
    new-instance v3, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    .line 279
    .line 280
    sget-object v6, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;->FOOTER:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 281
    .line 282
    invoke-direct {v3, v5, v6, v1, v5}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :cond_9
    move-object v5, v0

    .line 289
    :cond_a
    check-cast v5, Ljava/util/Collection;

    .line 290
    .line 291
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/transsion/search_pugc/fragment/result/provider/p;

    .line 295
    .line 296
    invoke-direct {v0, v2, p0}, Lcom/transsion/search_pugc/fragment/result/provider/p;-><init>(Lcom/transsion/search_pugc/fragment/result/adapter/a;Lcom/transsion/search_pugc/fragment/result/provider/s;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 303
    .line 304
    .line 305
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 306
    .line 307
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 308
    .line 309
    .line 310
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 311
    .line 312
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 313
    .line 314
    .line 315
    if-eqz v4, :cond_b

    .line 316
    .line 317
    new-instance v9, Lcom/transsion/search_pugc/fragment/result/provider/q;

    .line 318
    .line 319
    move-object v0, v9

    .line 320
    move-object v1, v8

    .line 321
    move-object v4, v5

    .line 322
    move-object v5, p0

    .line 323
    move-object v6, p2

    .line 324
    move-object v7, p1

    .line 325
    invoke-direct/range {v0 .. v7}, Lcom/transsion/search_pugc/fragment/result/provider/q;-><init>(Lcom/transsion/search_pugc/fragment/result/provider/FooterStretchRecyclerView;Lcom/transsion/search_pugc/fragment/result/adapter/a;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/transsion/search_pugc/fragment/result/provider/s;Lcom/transsion/search_pugc/bean/SearchResultItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    .line 330
    .line 331
    :cond_b
    invoke-direct {p0, p2}, Lcom/transsion/search_pugc/fragment/result/provider/s;->P(Lcom/transsion/search_pugc/bean/SearchResultItem;)V

    .line 332
    .line 333
    .line 334
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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/search_pugc/fragment/result/provider/s;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/search_pugc/bean/SearchResultItem;)V

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/provider/s;->e:Lcom/transsion/search_pugc/fragment/result/provider/t;

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
    sget-object v0, Lcom/transsion/search_pugc/constant/SearchType;->VERTICAL_RANK:Lcom/transsion/search_pugc/constant/SearchType;

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
