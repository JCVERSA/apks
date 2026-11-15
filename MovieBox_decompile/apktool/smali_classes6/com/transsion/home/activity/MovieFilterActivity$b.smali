.class public final Lcom/transsion/home/activity/MovieFilterActivity$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/activity/MovieFilterActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/activity/MovieFilterActivity;


# direct methods
.method constructor <init>(Lcom/transsion/home/activity/MovieFilterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$b;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$b;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqk/c;

    .line 11
    .line 12
    iget-object v0, v0, Lqk/c;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$b;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqk/c;

    .line 11
    .line 12
    iget-object v0, v0, Lqk/c;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$b;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqk/c;

    .line 11
    .line 12
    iget-object v0, v0, Lqk/c;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
