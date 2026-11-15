.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
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
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->E0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "getString(...)"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$d;->b:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    const-string v1, "page_tab_name"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    :cond_1
    return-void
.end method
