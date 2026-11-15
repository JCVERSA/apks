.class public final Lcom/transsion/home/adapter/operateUGC/provider/c;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final e:I

.field private final f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final g:Ljava/util/Set;

.field private h:Landroid/os/Handler;

.field private i:Landroidx/viewpager2/widget/ViewPager2;

.field private j:Lcom/tn/lib/view/indicator/BannerIndicator;

.field private k:I

.field private l:J

.field private m:Z

.field private final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->e:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->g:Ljava/util/Set;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->k:I

    .line 22
    .line 23
    const-wide/16 p1, 0x1388

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/home/adapter/operateUGC/provider/b;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/operateUGC/provider/b;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/c;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/home/adapter/operateUGC/provider/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic B(Lcom/transsion/home/adapter/operateUGC/provider/c;)Lcom/tn/lib/view/indicator/BannerIndicator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->j:Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/transsion/home/adapter/operateUGC/provider/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/operateUGC/provider/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/home/adapter/operateUGC/provider/c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->k:I

    .line 2
    .line 3
    return-void
.end method

.method private final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final H(Lcom/transsion/home/adapter/operateUGC/provider/c;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->j:Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "circleIndicator"

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final J(Lcom/transsion/home/adapter/operateUGC/provider/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    const-string v1, "viewPager2"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v2

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v3, v2

    .line 28
    :cond_1
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object p0, v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    rem-int/2addr v3, p0

    .line 64
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->f:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/transsion/home/adapter/operateUGC/provider/c;->F()V

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/transsion/home/adapter/operateUGC/provider/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/operateUGC/provider/c;->H(Lcom/transsion/home/adapter/operateUGC/provider/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/operateUGC/provider/c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/operateUGC/provider/c;->J(Lcom/transsion/home/adapter/operateUGC/provider/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 7

    .line 1
    const-string v0, "helper"

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v1, Lcom/transsion/home/R$id;->provider_ugc_banner_view_pager:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 24
    .line 25
    sget v1, Lcom/transsion/home/R$id;->provider_ugc_banner_view_scroll_helper:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/baseui/widget/OperateScrollableHost;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/OperateScrollableHost;->interceptAllEvent(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 38
    .line 39
    sget v0, Lcom/transsion/home/R$id;->provider_ugc_banner_view_pager_indicator:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->j:Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 67
    .line 68
    const-string v1, "viewPager2"

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object v0, v2

    .line 77
    :cond_2
    new-instance v3, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;

    .line 78
    .line 79
    iget v4, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->e:I

    .line 80
    .line 81
    invoke-direct {v3, p1, v4, p0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;-><init>(Ljava/util/List;ILcom/transsion/home/adapter/operateUGC/provider/c;Lcom/transsion/home/bean/OperateItem;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    new-instance v0, Landroid/os/Handler;

    .line 104
    .line 105
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v0, v2

    .line 122
    :cond_5
    new-instance v3, Lcom/transsion/home/adapter/operateUGC/provider/c$a;

    .line 123
    .line 124
    invoke-direct {v3, p2, p0, p1}, Lcom/transsion/home/adapter/operateUGC/provider/c$a;-><init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/operateUGC/provider/c;Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->j:Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 131
    .line 132
    const-string v3, "circleIndicator"

    .line 133
    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object v0, v2

    .line 140
    :cond_6
    invoke-virtual {v0}, Lcom/tn/lib/view/indicator/BaseIndicator;->getIndicatorConfig()Lcom/tn/lib/view/indicator/a;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const/4 v4, -0x1

    .line 145
    invoke-virtual {v0, v4}, Lcom/tn/lib/view/indicator/a;->s(I)Lcom/tn/lib/view/indicator/a;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget v5, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 153
    .line 154
    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v0, v4}, Lcom/tn/lib/view/indicator/a;->q(I)Lcom/tn/lib/view/indicator/a;

    .line 159
    .line 160
    .line 161
    const/high16 v4, 0x40800000    # 4.0f

    .line 162
    .line 163
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-virtual {v0, v5}, Lcom/tn/lib/view/indicator/a;->r(I)Lcom/tn/lib/view/indicator/a;

    .line 168
    .line 169
    .line 170
    const/high16 v5, 0x41000000    # 8.0f

    .line 171
    .line 172
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v0, v5}, Lcom/tn/lib/view/indicator/a;->t(I)Lcom/tn/lib/view/indicator/a;

    .line 177
    .line 178
    .line 179
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {v0, v4}, Lcom/tn/lib/view/indicator/a;->o(I)Lcom/tn/lib/view/indicator/a;

    .line 184
    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v0, v4}, Lcom/tn/lib/view/indicator/a;->n(I)Lcom/tn/lib/view/indicator/a;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->j:Lcom/tn/lib/view/indicator/BannerIndicator;

    .line 194
    .line 195
    if-nez v0, :cond_7

    .line 196
    .line 197
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v2

    .line 201
    :cond_7
    new-instance v3, Lcom/transsion/home/adapter/operateUGC/provider/a;

    .line 202
    .line 203
    invoke-direct {v3, p0}, Lcom/transsion/home/adapter/operateUGC/provider/a;-><init>(Lcom/transsion/home/adapter/operateUGC/provider/c;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const/4 v0, 0x0

    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerBean;->getInterval()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    if-eqz p2, :cond_8

    .line 221
    .line 222
    invoke-static {p2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    if-eqz p2, :cond_8

    .line 227
    .line 228
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    goto :goto_0

    .line 233
    :cond_8
    move p2, v0

    .line 234
    :goto_0
    int-to-long v3, p2

    .line 235
    const-wide/16 v5, 0x3e8

    .line 236
    .line 237
    mul-long/2addr v3, v5

    .line 238
    const-wide/16 v5, 0x0

    .line 239
    .line 240
    cmp-long p2, v3, v5

    .line 241
    .line 242
    if-lez p2, :cond_9

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_9
    iget-wide v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 246
    .line 247
    :goto_1
    iput-wide v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 248
    .line 249
    iget p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->k:I

    .line 250
    .line 251
    if-ltz p2, :cond_a

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    const p2, 0x3fffffff    # 1.9999999f

    .line 259
    .line 260
    .line 261
    rem-int p1, p2, p1

    .line 262
    .line 263
    sub-int/2addr p2, p1

    .line 264
    :goto_2
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->i:Landroidx/viewpager2/widget/ViewPager2;

    .line 265
    .line 266
    if-nez p1, :cond_b

    .line 267
    .line 268
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_b
    move-object v2, p1

    .line 273
    :goto_3
    invoke-virtual {v2, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 274
    .line 275
    .line 276
    return-void
.end method

.method public final I(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->g:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    :goto_1
    return p1
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/c;->G(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->UGC_BANNER:Lcom/transsion/moviedetailapi/bean/PostItemType;

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
    sget v0, Lcom/transsion/home/R$layout;->provider_ugc_item_banner:I

    .line 2
    .line 3
    return v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 3

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->m:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->m:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->l:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/transsion/home/adapter/operateUGC/provider/c$b;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/operateUGC/provider/c$b;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->m:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/provider/c;->n:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
