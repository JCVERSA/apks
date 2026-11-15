.class public final Lcom/transsion/home/adapter/d;
.super Lxy/a;
.source "source.java"


# instance fields
.field private final b:Lqk/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lqk/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/home/adapter/d;->b:Lqk/h;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/adapter/d;)Lqk/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/d;->b:Lqk/h;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
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
    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    .line 23
    .line 24
    .line 25
    const/high16 v1, 0x41c00000    # 24.0f

    .line 26
    .line 27
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    .line 33
    .line 34
    .line 35
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 36
    .line 37
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 54
    .line 55
    const/high16 v2, 0x40000000    # 2.0f

    .line 56
    .line 57
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    .line 62
    .line 63
    sget v1, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 64
    .line 65
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v0, p1, p1, p1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    .line 7
    .line 8
    const/high16 v1, 0x41200000    # 10.0f

    .line 9
    .line 10
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x11

    .line 15
    .line 16
    invoke-direct {v0, p1, v2, v1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    const-string p1, "default"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget v1, Lcom/transsion/home/R$string;->music_tab_liked_music:I

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget v1, Lcom/transsion/home/R$string;->music_tab_discover:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const/high16 p1, 0x41900000    # 18.0f

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/transsion/home/adapter/d$a;

    .line 57
    .line 58
    invoke-direct {p1, p0, p2}, Lcom/transsion/home/adapter/d$a;-><init>(Lcom/transsion/home/adapter/d;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method
