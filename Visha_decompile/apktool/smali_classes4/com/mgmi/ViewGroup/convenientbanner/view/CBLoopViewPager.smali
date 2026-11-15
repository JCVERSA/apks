.class public Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private b:Lcom/mgmi/ViewGroup/convenientbanner/c/b;

.field private c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F


# virtual methods
.method public a(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 0

    check-cast p1, Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-virtual {p1, p2}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(Z)V

    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-virtual {p1, p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;)V

    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getFristItem()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public bridge synthetic getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getAdapter()Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/mgmi/ViewGroup/convenientbanner/a/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    return-object p0
.end method

.method public getFristItem()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastItem()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getRealItem()I
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->b:Lcom/mgmi/ViewGroup/convenientbanner/c/b;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->g:F

    iget v1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->f:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->b:Lcom/mgmi/ViewGroup/convenientbanner/c/b;

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mgmi/ViewGroup/convenientbanner/c/b;->a(I)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->f:F

    iput v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->g:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->f:F

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public setCanLoop(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;->a(Z)V

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->c:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->d:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/mgmi/ViewGroup/convenientbanner/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->b:Lcom/mgmi/ViewGroup/convenientbanner/c/b;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method
