.class public Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field public h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public i:La6d;

.field public j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

.field public k:Z

.field public l:Z

.field public m:F

.field public n:F

.field public o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->k:Z

    .line 3
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->l:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->m:F

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->n:F

    .line 5
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->k:Z

    .line 9
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->l:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->m:F

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->n:F

    .line 11
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager$a;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    return-object p0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private getStartSelectItem()I
    .locals 2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a()I

    move-result p0

    mul-int/lit16 v0, p0, 0x12c

    div-int/lit8 v0, v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    rem-int v1, v0, p0

    if-nez v1, :cond_1

    return v0

    :cond_1
    :goto_0
    rem-int v1, v0, p0

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    .line 3
    invoke-virtual {p1, p2}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->c(Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;)V

    .line 5
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 6
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getFristItem()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final b(FFFF)Ldkd;
    .locals 8

    new-instance v7, Ldkd;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float v6, p0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Ldkd;-><init>(FFFFFF)V

    return-object v7
.end method

.method public bridge synthetic getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getAdapter()Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/mgadplus/viewgroup/convenientbanner/a/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    return-object p0
.end method

.method public getFristItem()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getStartSelectItem()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastItem()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getRealItem()I
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->i:La6d;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->n:F

    iget v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->m:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->b(FFFF)Ldkd;

    move-result-object v0

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->i:La6d;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getRealItem()I

    move-result v3

    invoke-interface {v2, v3, v0}, La6d;->a(ILdkd;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->m:F

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->n:F

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->m:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    :try_start_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v1
.end method

.method public setCanLoop(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->l:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getRealItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->a(Z)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->k:Z

    return-void
.end method

.method public setOnItemClickListener(La6d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->i:La6d;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method
