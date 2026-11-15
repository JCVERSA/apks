.class public final Lcom/transsion/room/fragment/RoomListMainFragment$b;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomListMainFragment;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/room/fragment/RoomListMainFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic i(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/fragment/RoomListMainFragment$b;->j(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfp/s;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lfp/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

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
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x40400000    # 3.0f

    .line 12
    .line 13
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v2, v1

    .line 18
    const/high16 v3, 0x40000000    # 2.0f

    .line 19
    .line 20
    mul-float/2addr v2, v3

    .line 21
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setRoundRadius(F)V

    .line 22
    .line 23
    .line 24
    neg-int v1, v1

    .line 25
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setVerticalPadding(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setHorizontalPadding(I)V

    .line 29
    .line 30
    .line 31
    sget v1, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setFillColor(I)V

    .line 38
    .line 39
    .line 40
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
    new-instance v0, Lcom/transsion/room/view/RoomListMainTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/room/view/RoomListMainTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

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
    invoke-virtual {v0, v1}, Lcom/transsion/room/view/RoomListMainTabTitleView;->setTextById(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/transsion/room/fragment/x1;

    .line 27
    .line 28
    invoke-direct {v1, p1, p2}, Lcom/transsion/room/fragment/x1;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
