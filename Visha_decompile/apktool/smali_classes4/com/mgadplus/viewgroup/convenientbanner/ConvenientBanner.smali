.class public Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;,
        Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;

.field public c:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public d:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

.field public e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

.field public f:Lj2d;

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$a;

.field public l:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;


# virtual methods
.method public a(J)Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->h:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->c()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->i:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 5
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->g:J

    .line 6
    :cond_1
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->h:Z

    .line 7
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->k:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$a;

    iget-wide v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->g:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->a:Z

    return p0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->k:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$a;

    iget-wide v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->g:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->h:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->k:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->l:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->d:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->g:J

    invoke-virtual {p0, v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->a(J)Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->l:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->d:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->l:Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getOnPageChangeListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->c:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method public getScrollDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->f:Lj2d;

    invoke-virtual {p0}, Lj2d;->a()I

    move-result p0

    return p0
.end method

.method public getViewPager()Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    return-object p0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setCanLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->j:Z

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->setCanLoop(Z)V

    return-void
.end method

.method public setManualPageable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->setCanScroll(Z)V

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->f:Lj2d;

    invoke-virtual {p0, p1}, Lj2d;->b(I)V

    return-void
.end method

.method public setcurrentitem(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
