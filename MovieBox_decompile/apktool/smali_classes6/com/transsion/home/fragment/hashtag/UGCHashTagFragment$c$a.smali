.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;
.super Lcom/transsion/baseui/util/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c;->c(Landroid/content/Context;I)Lxy/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->e:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->f:I

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
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->e:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lqk/n;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lqk/n;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->f:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->e:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lqk/n;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lqk/n;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$c$a;->f:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
