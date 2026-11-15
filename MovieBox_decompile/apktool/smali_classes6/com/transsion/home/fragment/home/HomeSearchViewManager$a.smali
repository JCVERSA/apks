.class final Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;
.super Lxy/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/home/HomeSearchViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/transsion/home/bean/AppTab;

.field final synthetic c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;


# direct methods
.method public constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :cond_0
    invoke-direct {v1, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    .line 25
    .line 26
    .line 27
    const/high16 v0, 0x40400000    # 3.0f

    .line 28
    .line 29
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    .line 35
    .line 36
    .line 37
    const/high16 v0, 0x41c00000    # 24.0f

    .line 38
    .line 39
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    .line 45
    .line 46
    .line 47
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 48
    .line 49
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 66
    .line 67
    const/high16 v2, 0x40000000    # 2.0f

    .line 68
    .line 69
    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 73
    .line 74
    .line 75
    sget v0, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 76
    .line 77
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v1, p1, p1, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 82
    .line 83
    .line 84
    return-object v1
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/transsion/home/bean/HomeTabItem;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    const-string v1, "context"

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    new-instance p1, Lcom/transsion/home/view/CustomTabAdView;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v0

    .line 44
    :cond_1
    invoke-direct {p1, v2}, Lcom/transsion/home/view/CustomTabAdView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 48
    .line 49
    new-instance v2, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;

    .line 50
    .line 51
    invoke-direct {v2, v1, p2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    move-object v0, p2

    .line 72
    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    .line 73
    .line 74
    :cond_2
    invoke-virtual {p1, v0}, Lcom/transsion/home/view/CustomTabAdView;->showData(Lcom/transsion/home/bean/HomeTabItem;)V

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_3
    const/high16 p1, 0x41200000    # 10.0f

    .line 79
    .line 80
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    new-instance v2, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object v3, v0

    .line 98
    :cond_4
    const/16 v1, 0x11

    .line 99
    .line 100
    invoke-direct {v2, v3, v1, p1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/transsion/home/bean/HomeTabItem;

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    const/high16 v0, 0x41800000    # 16.0f

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$b;

    .line 136
    .line 137
    invoke-direct {v0, p1, p2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$b;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-object v2
.end method

.method public final h(Lcom/transsion/home/bean/AppTab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->b:Lcom/transsion/home/bean/AppTab;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy/a;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
