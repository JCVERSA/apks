.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->T0(Landroidx/viewpager2/widget/ViewPager2;Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

.field final synthetic c:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic i(Landroidx/viewpager2/widget/ViewPager2;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->j(Landroidx/viewpager2/widget/ViewPager2;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Landroidx/viewpager2/widget/ViewPager2;ILandroid/view/View;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
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
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 28
    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 35
    .line 36
    .line 37
    sget v1, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 38
    .line 39
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Integer;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    aput-object p1, v1, v2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
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
    new-instance v0, Lcom/transsion/usercenter/profile/widget/UserProfileTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/usercenter/profile/widget/UserProfileTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$c;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/profile/widget/UserProfileTabTitleView;->setTextById(I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Lcom/transsion/usercenter/profile/fragment/p;

    .line 33
    .line 34
    invoke-direct {p1, v1, p2}, Lcom/transsion/usercenter/profile/fragment/p;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    const/4 p2, -0x2

    .line 9
    const/4 v0, -0x1

    .line 10
    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    const/high16 p2, 0x40c00000    # 6.0f

    .line 14
    .line 15
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method
