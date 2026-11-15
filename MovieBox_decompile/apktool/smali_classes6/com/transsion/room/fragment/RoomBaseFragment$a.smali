.class public final Lcom/transsion/room/fragment/RoomBaseFragment$a;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/fragment/RoomBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsion/room/fragment/RoomBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/room/fragment/RoomBaseFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->d:Lcom/transsion/room/fragment/RoomBaseFragment;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->c:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Lcom/transsion/room/fragment/RoomBaseFragment$a;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/fragment/RoomBaseFragment$a;->k(Lcom/transsion/room/fragment/RoomBaseFragment$a;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static final k(Lcom/transsion/room/fragment/RoomBaseFragment$a;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->c:Ljava/util/List;

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
    .locals 4

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
    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 23
    .line 24
    .line 25
    const/high16 v2, 0x42640000    # 57.0f

    .line 26
    .line 27
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineWidth(F)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x3

    .line 57
    new-array v2, v2, [Ljava/lang/Integer;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v1, v2, v3

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    aput-object v1, v2, v3

    .line 64
    .line 65
    aput-object v1, v2, p1

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 68
    .line 69
    .line 70
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
    new-instance v0, Lcom/transsion/room/view/RoomHomeTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/room/view/RoomHomeTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->d:Lcom/transsion/room/fragment/RoomBaseFragment;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$a;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2, v1}, Lcom/transsion/room/fragment/RoomBaseFragment;->x0(Lcom/transsion/room/view/RoomHomeTabTitleView;ILjava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/transsion/room/fragment/e;

    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Lcom/transsion/room/fragment/e;-><init>(Lcom/transsion/room/fragment/RoomBaseFragment$a;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomBaseFragment$a;->j()Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
