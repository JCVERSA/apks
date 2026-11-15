.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

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
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqk/n;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lqk/n;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 19
    .line 20
    .line 21
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
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqk/n;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lqk/n;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "onPageSelected: position="

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ", filterId="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v2, "/home/hashtag"

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->f0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Lcom/transsion/home/hashtag/HashTagViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lcom/transsion/home/hashtag/HashTagViewModel;->w(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lqk/n;

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    iget-object v0, v0, Lqk/n;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method
