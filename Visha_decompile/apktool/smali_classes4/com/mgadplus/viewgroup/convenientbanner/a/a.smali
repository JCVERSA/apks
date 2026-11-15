.class public Lcom/mgadplus/viewgroup/convenientbanner/a/a;
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

.field public i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

.field public j:I


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->f:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a()I

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

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->g:Lk2d;

    invoke-interface {p2, p1}, Lk2d;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly5d;

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ly5d;->a(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 7
    sget v1, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly5d;

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p3, p1, p0}, Ly5d;->a(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->h:Z

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 5

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result v0

    iget v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->j:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly5d;

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->j:I

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

.method public c()Z
    .locals 6

    iget v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->j:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5d;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

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

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->cb_item_tag:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly5d;

    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result p0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ly5d;->a(I)V

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getFristItem()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getLastItem()I

    move-result p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->i:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->h:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a()I

    move-result p0

    if-eqz v0, :cond_0

    mul-int/lit16 p0, p0, 0x12c

    :cond_0
    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

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
