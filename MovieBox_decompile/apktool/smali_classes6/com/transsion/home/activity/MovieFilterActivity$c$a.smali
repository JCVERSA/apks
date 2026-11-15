.class public final Lcom/transsion/home/activity/MovieFilterActivity$c$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/activity/MovieFilterActivity$c;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/activity/MovieFilterActivity;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/activity/MovieFilterActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->e:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->e:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lqk/c;

    .line 8
    .line 9
    iget-object p1, p1, Lqk/c;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iget v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->f:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->e:Lcom/transsion/home/activity/MovieFilterActivity;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lqk/c;

    .line 24
    .line 25
    iget-object p1, p1, Lqk/c;->b:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 26
    .line 27
    iget v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c$a;->f:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v2, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
