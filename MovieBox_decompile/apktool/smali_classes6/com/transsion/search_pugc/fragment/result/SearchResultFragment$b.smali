.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->l0(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field final synthetic b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

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
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->a:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/search_pugc/g;->h:Lcom/transsion/search_pugc/g$b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/transsion/search_pugc/g$b;->a(Landroid/content/Context;)Lcom/transsion/search_pugc/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->i0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getTabs()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/transsion/search_pugc/bean/SearchTab;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, v3

    .line 45
    :goto_0
    iget-object v2, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment$b;->b:Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;->k0(Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;)Lcom/transsion/search_pugc/bean/UGCSearchResultData;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/transsion/search_pugc/bean/UGCSearchResultData;->getOps()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_1
    invoke-virtual {v0, v1, p1, v3}, Lcom/transsion/search_pugc/g;->C(Ljava/lang/String;Lcom/transsion/search_pugc/bean/SearchTab;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
