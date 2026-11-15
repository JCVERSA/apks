.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;
.super Lxy/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->h0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)[Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "requireContext(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    .line 26
    .line 27
    .line 28
    const/high16 v1, 0x40400000    # 3.0f

    .line 29
    .line 30
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    .line 36
    .line 37
    .line 38
    const/high16 v1, 0x41c00000    # 24.0f

    .line 39
    .line 40
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    .line 46
    .line 47
    .line 48
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 49
    .line 50
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    int-to-float v1, v1

    .line 55
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 67
    .line 68
    const/high16 v2, 0x40000000    # 2.0f

    .line 69
    .line 70
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget v2, Lcom/tn/lib/widget/R$color;->brand_gradient_start:I

    .line 81
    .line 82
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_center:I

    .line 91
    .line 92
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_end:I

    .line 101
    .line 102
    invoke-static {v0, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v1, v2, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 107
    .line 108
    .line 109
    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->b:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->h0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)[Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aget-object v1, v1, p2

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/shorttv/widget/ShortTVTabTitleView;->setTextById(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;-><init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->g0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
