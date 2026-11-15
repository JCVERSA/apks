.class public final Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

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
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lqk/p;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lqk/p;->s:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lqk/p;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lqk/p;->k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v0, v2, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
