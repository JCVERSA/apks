.class public final Lcom/transsion/search/fragment/result/SearchResultFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search/fragment/result/SearchResultFragment;->l0(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/search/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/search/fragment/result/SearchResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

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
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/search/widget/d;->a:Lcom/transsion/search/widget/d$a;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/transsion/search/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/transsion/search/fragment/result/SearchResultFragment;->j0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/bean/SearchResultEntity;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/search/bean/SearchResultEntity;->getTabs()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/transsion/search/bean/TabItem;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/search/bean/TabItem;->getTabId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    iget-object v2, p0, Lcom/transsion/search/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search/fragment/result/SearchResultFragment;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/transsion/search/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search/fragment/result/SearchResultFragment;)Lcom/transsion/search/viewmodel/SearchViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/transsion/search/viewmodel/SearchViewModel;->s()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    :cond_1
    const-string v2, "mb_sug"

    .line 57
    .line 58
    :cond_2
    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/search/widget/d$a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
