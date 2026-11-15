.class public Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# instance fields
.field public h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public i:La6d;

.field public j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

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
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->k:Z

    .line 3
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->l:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->m:F

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->n:F

    .line 5
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 6
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->k:Z

    .line 9
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->l:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->m:F

    iput p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->n:F

    .line 11
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager$a;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;)Lcom/mgadplus/viewgroup/convenientbanner/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->o:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getAdapter()Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/mgadplus/viewgroup/convenientbanner/a/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    return-object p0
.end method

.method public getFristItem()I
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastItem()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getRealItem()I
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->k:Z

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
    .locals 3

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->k:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->i:La6d;

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

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->n:F

    iget v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->m:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->i:La6d;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result v1

    new-instance v2, Ldkd;

    invoke-direct {v2}, Ldkd;-><init>()V

    invoke-interface {v0, v1, v2}, La6d;->a(ILdkd;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->m:F

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->n:F

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->m:F

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

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->l:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/a/a;->a(Z)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->j:Lcom/mgadplus/viewgroup/convenientbanner/a/a;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->k:Z

    return-void
.end method

.method public setOnItemClickListener(La6d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->i:La6d;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/view/CBLoopViewPager;->h:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method
