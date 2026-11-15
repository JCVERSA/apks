.class public Lcom/mgadplus/viewgroup/convenientbanner/a/b;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/viewpager/widget/PagerAdapter;"
    }
.end annotation


# instance fields
.field public f:Ljava/util/List;

.field public g:Lk2d;

.field public h:Z

.field public i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

.field public j:I

.field public k:Ly5d;

.field public l:Ly5d;


# direct methods
.method public constructor <init>(Lk2d;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->j:I

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->g:Lk2d;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public a(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    rem-int/2addr p1, p0

    return p1
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result v0

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->g:Lk2d;

    invoke-interface {p2, v0}, Lk2d;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly5d;

    .line 7
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ly5d;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    new-instance p0, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 9
    :cond_0
    sget v2, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    sget p1, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly5d;

    move-object v1, p2

    move-object p2, p1

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, v0, p3}, Ly5d;->a(Landroid/content/Context;ILjava/lang/Object;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 15
    iput-object p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->k:Ly5d;

    .line 16
    invoke-interface {p2, v0}, Ly5d;->b(I)V

    :cond_3
    return-object v1
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->h:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5d;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ly5d;->c()V

    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->e(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5d;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ly5d;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_1
    instance-of v0, p3, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;->getParentViewWrf()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->j()Ly5d;

    move-result-object p0

    instance-of v1, v0, Ly5d;

    if-eqz v1, :cond_3

    if-ne p0, v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_2
    check-cast v0, Ly5d;

    invoke-interface {v0, p2}, Ly5d;->a(I)V

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public e(I)V
    .locals 3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->k:Ly5d;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Ly5d;->b(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5d;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Ly5d;->b(I)V

    :cond_3
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 3

    instance-of p0, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly5d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ly5d;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(I)V
    .locals 4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly5d;

    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->l:Ly5d;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ly5d;->f()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->k:Ly5d;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ly5d;->f()V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result p1

    invoke-interface {v2, p1}, Ly5d;->b(I)V

    iput-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->l:Ly5d;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->h:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a()I

    move-result p0

    if-eqz v0, :cond_0

    mul-int/lit16 p0, p0, 0x12c

    :cond_0
    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->j:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly5d;

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->j:I

    invoke-interface {v3}, Ly5d;->a()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly5d;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ly5d;->b()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public i()Z
    .locals 6

    iget v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5d;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5d;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ly5d;->e()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance p2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {p2}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Ly5d;
    .locals 1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
