.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;
.super Lxy/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->j0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->b:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->c:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    int-to-float v3, v3

    .line 22
    invoke-virtual {v0, v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 39
    .line 40
    .line 41
    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 42
    .line 43
    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v4, 0x3

    .line 60
    new-array v4, v4, [Ljava/lang/Integer;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object v2, v4, v5

    .line 64
    .line 65
    aput-object v3, v4, v1

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    aput-object p1, v4, v1

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
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
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->b:Ljava/util/List;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->c:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/CharSequence;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const/high16 p1, 0x41800000    # 16.0f

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;

    .line 38
    .line 39
    invoke-direct {p1, v1, p2}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;-><init>(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
