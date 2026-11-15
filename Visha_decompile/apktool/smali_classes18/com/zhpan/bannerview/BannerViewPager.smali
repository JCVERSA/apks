.class public Lcom/zhpan/bannerview/BannerViewPager;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/BannerViewPager$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Z

.field public d:Z

.field public e:Lcom/zhpan/indicator/base/IIndicator;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Landroidx/viewpager2/widget/ViewPager2;

.field public h:Lr70;

.field public final i:Landroid/os/Handler;

.field public j:Lcom/zhpan/bannerview/BaseBannerAdapter;

.field public k:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final l:Ljava/lang/Runnable;

.field public m:Landroid/graphics/RectF;

.field public n:Landroid/graphics/Path;

.field public o:I

.field public p:I

.field public q:Landroidx/lifecycle/Lifecycle;

.field public final r:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/zhpan/bannerview/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->i:Landroid/os/Handler;

    .line 5
    new-instance p3, Lz70;

    invoke-direct {p3, p0}, Lz70;-><init>(Lcom/zhpan/bannerview/BannerViewPager;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->l:Ljava/lang/Runnable;

    .line 6
    new-instance p3, Lcom/zhpan/bannerview/BannerViewPager$a;

    invoke-direct {p3, p0}, Lcom/zhpan/bannerview/BannerViewPager$a;-><init>(Lcom/zhpan/bannerview/BannerViewPager;)V

    iput-object p3, p0, Lcom/zhpan/bannerview/BannerViewPager;->r:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BannerViewPager;->h(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private B(I)V
    .locals 2

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result p0

    invoke-static {p0}, Lv70;->b(I)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/zhpan/bannerview/BannerViewPager;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->t(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/zhpan/bannerview/BannerViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->g()V

    return-void
.end method

.method public static synthetic c(Lcom/zhpan/bannerview/BannerViewPager;Lcom/zhpan/bannerview/BannerViewPager$b;ZLandroid/view/View;II)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/zhpan/bannerview/BannerViewPager;->u(Lcom/zhpan/bannerview/BannerViewPager$b;ZLandroid/view/View;II)V

    return-void
.end method

.method public static synthetic d(Lcom/zhpan/bannerview/BannerViewPager;IFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zhpan/bannerview/BannerViewPager;->y(IFI)V

    return-void
.end method

.method public static synthetic e(Lcom/zhpan/bannerview/BannerViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->z(I)V

    return-void
.end method

.method public static synthetic f(Lcom/zhpan/bannerview/BannerViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->x(I)V

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v1}, Lr70;->c()Lu70;

    move-result-object v1

    invoke-virtual {v1}, Lu70;->q()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->l:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getInterval()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private getInterval()I
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->c()Lu70;

    move-result-object p0

    invoke-virtual {p0}, Lu70;->e()I

    move-result p0

    return p0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorValues(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setupViewPager(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->o()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->m()I

    move-result v0

    if-lez v0, :cond_0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lfdc;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zhpan/bannerview/R$layout;->bvp_layout:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/zhpan/bannerview/R$id;->vp_main:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    sget v0, Lcom/zhpan/bannerview/R$id;->bvp_layout_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->d()Landroidx/viewpager2/widget/CompositePageTransformer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method private q()Z
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->c()Lu70;

    move-result-object p0

    invoke-virtual {p0}, Lu70;->p()Z

    move-result p0

    return p0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()Z
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->c()Lu70;

    move-result-object p0

    invoke-virtual {p0}, Lu70;->t()Z

    move-result p0

    return p0
.end method

.method private setIndicatorValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lu70;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lu70;->u()V

    iget-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    if-nez v1, :cond_1

    new-instance v1, Lcom/zhpan/indicator/IndicatorView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zhpan/indicator/IndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lu70;->c()Lrz4;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->j(Lrz4;Ljava/util/List;)V

    return-void
.end method

.method private setupViewPager(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->o()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lu70;->o()I

    move-result v2

    invoke-static {v1, v2}, Luq8;->a(Landroidx/viewpager2/widget/ViewPager2;I)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lu70;->r()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zhpan/bannerview/BaseBannerAdapter;->v(Z)V

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lv70;->b(I)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->r:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->r:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lu70;->h()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lu70;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->n(Lu70;)V

    invoke-virtual {v0}, Lu70;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->m(I)V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "You must set adapter for BannerViewPager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private v(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p2, p3, :cond_4

    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p2}, Lr70;->c()Lu70;

    move-result-object p2

    invoke-virtual {p2}, Lu70;->r()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->o:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->o:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_2

    :cond_1
    move v0, p3

    :cond_2
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-le p3, p2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private w(III)V
    .locals 3

    const/4 v0, 0x0

    if-le p3, p2, :cond_4

    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p2}, Lr70;->c()Lu70;

    move-result-object p2

    invoke-virtual {p2}, Lu70;->r()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    if-nez p2, :cond_0

    iget p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->p:I

    sub-int p2, p1, p2

    if-lez p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    iget v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p3

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->p:I

    sub-int/2addr p1, p0

    if-ltz p1, :cond_2

    :cond_1
    move v0, p3

    :cond_2
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-le p2, p3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private x(I)V
    .locals 1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->k:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method private y(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v1}, Lr70;->c()Lu70;

    move-result-object v1

    invoke-virtual {v1}, Lu70;->r()Z

    invoke-static {p1, v0}, Lv70;->c(II)I

    move-result p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->k:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_0
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method private z(I)V
    .locals 3

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v1}, Lr70;->c()Lu70;

    move-result-object v1

    invoke-virtual {v1}, Lu70;->r()Z

    move-result v1

    invoke-static {p1, v0}, Lv70;->c(II)I

    move-result v2

    iput v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/zhpan/bannerview/BannerViewPager;->B(I)V

    :cond_1
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->k:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_2
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    invoke-interface {p1, p0}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->c()Lrz4;

    move-result-object v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v1, p1}, Lv70;->c(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lrz4;->q(I)V

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    invoke-interface {p0}, Lcom/zhpan/indicator/base/IIndicator;->notifyDataChanged()V

    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->B(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->A(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v2}, Lr70;->c()Lu70;

    move-result-object v2

    invoke-virtual {v2}, Lu70;->r()Z

    .line 5
    invoke-static {v1, v0}, Lv70;->c(II)I

    move-result v2

    if-eq v1, p2, :cond_3

    if-nez p2, :cond_0

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    .line 6
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p2, v2

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0, p1}, Lr70;->a(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public create()V
    .locals 1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->create(Ljava/util/List;)V

    return-void
.end method

.method public create(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->w(Ljava/util/List;)V

    .line 3
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->i()V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "You must set adapter for BannerViewPager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disallowInterceptTouchEvent(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->y(Z)V

    return-object p0
.end method

.method public disallowParentInterceptDownEvent(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->y(Z)V

    return-object p0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->n()[F

    move-result-object v0

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->m:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->n:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->m:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->n:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAdapter()Lcom/zhpan/bannerview/BaseBannerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zhpan/bannerview/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    return p0
.end method

.method public getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final h(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lr70;

    invoke-direct {v0}, Lr70;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0, p1, p2}, Lr70;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->p()V

    return-void
.end method

.method public insertItem(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->B(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->A(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final j(Lrz4;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->l()V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->k()V

    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    invoke-interface {v0, p1}, Lcom/zhpan/indicator/base/IIndicator;->setIndicatorOptions(Lrz4;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lrz4;->v(I)V

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    invoke-interface {p0}, Lcom/zhpan/indicator/base/IIndicator;->notifyDataChanged()V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->c()Lu70;

    move-result-object p0

    invoke-virtual {p0}, Lu70;->a()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    const/16 p0, 0xe

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->c()Lu70;

    move-result-object p0

    invoke-virtual {p0}, Lu70;->b()Lu70$a;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, 0x41200000    # 10.0f

    invoke-static {p0}, Lv70;->a(F)I

    move-result p0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu70$a;->b()I

    move-result v1

    invoke-virtual {p0}, Lu70$a;->d()I

    move-result v2

    invoke-virtual {p0}, Lu70$a;->c()I

    move-result v3

    invoke-virtual {p0}, Lu70$a;->a()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method

.method public final m(I)V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0}, Lu70;->j()F

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lr70;->i(ZF)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lr70;->i(ZF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n(Lu70;)V
    .locals 6

    invoke-virtual {p1}, Lu70;->l()I

    move-result v0

    invoke-virtual {p1}, Lu70;->f()I

    move-result v1

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_0

    if-eq v0, v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lu70;->h()I

    move-result v4

    invoke-virtual {p1}, Lu70;->i()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1}, Lu70;->i()I

    move-result p1

    add-int/2addr p1, v1

    if-gez p1, :cond_1

    move p1, v3

    :cond_1
    if-gez v5, :cond_2

    move v5, v3

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {v2, p1, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    invoke-virtual {v2, v3, p1, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    :cond_5
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->b()V

    return-void
.end method

.method public nextPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/zhpan/bannerview/BannerViewPager;->o:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/zhpan/bannerview/BannerViewPager;->p:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v5}, Lr70;->c()Lu70;

    move-result-object v5

    invoke-virtual {v5}, Lu70;->h()I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-direct {p0, v2, v3, v4}, Lcom/zhpan/bannerview/BannerViewPager;->w(III)V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_5

    invoke-direct {p0, v0, v3, v4}, Lcom/zhpan/bannerview/BannerViewPager;->v(III)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->o:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v2}, Lr70;->c()Lu70;

    move-result-object v2

    invoke-virtual {v2}, Lu70;->s()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "SUPER_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    const-string v0, "IS_CUSTOM_INDICATOR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->c:Z

    iget p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SUPER_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_POSITION"

    iget v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IS_CUSTOM_INDICATOR"

    iget-boolean p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->c:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public previousPage()V
    .locals 1

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public refreshData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Ly70;

    invoke-direct {v0, p0, p1}, Ly70;-><init>(Lcom/zhpan/bannerview/BannerViewPager;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->q:Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method

.method public registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->k:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public removeDefaultPageTransformer()V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->f()V

    return-void
.end method

.method public removeItem(I)V
    .locals 2

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->B(I)V

    invoke-virtual {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->A(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object p0
.end method

.method public removeMarginPageTransformer()V
    .locals 0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0}, Lr70;->g()V

    return-void
.end method

.method public removeTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p0, p1}, Lr70;->h(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/zhpan/bannerview/BaseBannerAdapter;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BaseBannerAdapter<",
            "TT;>;)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    return-object p0
.end method

.method public setAutoPlay(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->v(Z)V

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p1}, Lr70;->c()Lu70;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu70;->x(Z)V

    :cond_0
    return-object p0
.end method

.method public setAutoPlaySmoothly(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->w(Z)V

    return-object p0
.end method

.method public setCanLoop(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->x(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p1}, Lr70;->c()Lu70;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu70;->v(Z)V

    :cond_0
    return-object p0
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    .line 4
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    .line 6
    invoke-virtual {v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v1

    invoke-static {v0, v1}, Lv70;->c(II)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.method public setIndicatorGravity(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->A(I)V

    return-object p0
.end method

.method public setIndicatorHeight(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->B(I)V

    return-object p0
.end method

.method public setIndicatorMargin(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lu70;->C(IIII)V

    return-object p0
.end method

.method public setIndicatorSlideMode(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->D(I)V

    return-object p0
.end method

.method public setIndicatorSliderColor(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu70;->E(II)V

    return-object p0
.end method

.method public setIndicatorSliderGap(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lu70;->z(F)V

    return-object p0
.end method

.method public setIndicatorSliderRadius(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorSliderRadius(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setIndicatorSliderRadius(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p1, p2}, Lu70;->F(II)V

    return-object p0
.end method

.method public setIndicatorSliderWidth(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setIndicatorSliderWidth(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setIndicatorSliderWidth(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lu70;->F(II)V

    return-object p0
.end method

.method public setIndicatorStyle(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->G(I)V

    return-object p0
.end method

.method public setIndicatorView(Lcom/zhpan/indicator/base/IIndicator;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/indicator/base/IIndicator;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->c:Z

    iput-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->e:Lcom/zhpan/indicator/base/IIndicator;

    :cond_0
    return-object p0
.end method

.method public setIndicatorVisibility(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->H(I)V

    return-object p0
.end method

.method public setInterval(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->I(I)V

    return-object p0
.end method

.method public setLifecycleRegistry(Landroidx/lifecycle/Lifecycle;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->registerLifecycleObserver(Landroidx/lifecycle/Lifecycle;)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setOffScreenPageLimit(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->K(I)V

    return-object p0
.end method

.method public setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$b;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BannerViewPager$b;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$b;Z)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setOnPageClickListener(Lcom/zhpan/bannerview/BannerViewPager$b;Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BannerViewPager$b;",
            "Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lx70;

    invoke-direct {v1, p0, p1, p2}, Lx70;-><init>(Lcom/zhpan/bannerview/BannerViewPager;Lcom/zhpan/bannerview/BannerViewPager$b;Z)V

    invoke-virtual {v0, v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->x(Lcom/zhpan/bannerview/BaseBannerAdapter$a;)V

    :cond_0
    return-object p0
.end method

.method public setOrientation(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->L(I)V

    return-object p0
.end method

.method public setPageMargin(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0, p1}, Lr70;->j(I)V

    return-object p0
.end method

.method public setPageStyle(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x3f59999a    # 0.85f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/zhpan/bannerview/BannerViewPager;->setPageStyle(IF)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p0

    return-object p0
.end method

.method public setPageStyle(IF)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->O(I)V

    .line 3
    iget-object p1, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p1}, Lr70;->c()Lu70;

    move-result-object p1

    invoke-virtual {p1, p2}, Lu70;->N(F)V

    return-object p0
.end method

.method public setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ")",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    :cond_0
    return-object p0
.end method

.method public setRTLMode(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->S(Z)V

    return-object p0
.end method

.method public setRevealWidth(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setRevealWidth(II)Lcom/zhpan/bannerview/BannerViewPager;

    return-object p0
.end method

.method public setRevealWidth(II)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p2}, Lu70;->P(I)V

    .line 3
    iget-object p2, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {p2}, Lr70;->c()Lu70;

    move-result-object p2

    invoke-virtual {p2, p1}, Lu70;->J(I)V

    return-object p0
.end method

.method public setRoundCorner(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->Q(I)V

    return-object p0
.end method

.method public setRoundCorner(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->m:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->n:Landroid/graphics/Path;

    .line 4
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lu70;->R(IIII)V

    return-object p0
.end method

.method public setRoundRect(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->setRoundCorner(I)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p0

    return-object p0
.end method

.method public setRoundRect(IIII)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zhpan/bannerview/BannerViewPager;->setRoundCorner(IIII)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object p0

    return-object p0
.end method

.method public setScrollDuration(I)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->T(I)V

    return-object p0
.end method

.method public setUserInputEnabled(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->V(Z)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    return-object p0
.end method

.method public showIndicatorWhenOneItem(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->W(Z)V

    return-object p0
.end method

.method public startLoop()V
    .locals 5

    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->q:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->q:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->l:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    :cond_1
    return-void
.end method

.method public startLoopNow()V
    .locals 3

    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zhpan/bannerview/BannerViewPager;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/zhpan/bannerview/BannerViewPager;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    :cond_0
    return-void
.end method

.method public stopLoop()V
    .locals 2

    iget-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zhpan/bannerview/BannerViewPager;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->d:Z

    :cond_0
    return-void
.end method

.method public stopLoopWhenDetachedFromWindow(Z)Lcom/zhpan/bannerview/BannerViewPager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/zhpan/bannerview/BannerViewPager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->h:Lr70;

    invoke-virtual {v0}, Lr70;->c()Lu70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu70;->U(Z)V

    return-object p0
.end method

.method public final synthetic t(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->stopLoop()V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->w(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zhpan/bannerview/BannerViewPager;->j:Lcom/zhpan/bannerview/BaseBannerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zhpan/bannerview/BannerViewPager;->B(I)V

    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BannerViewPager;->A(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BannerViewPager;->startLoop()V

    :cond_0
    return-void
.end method

.method public final synthetic u(Lcom/zhpan/bannerview/BannerViewPager$b;ZLandroid/view/View;II)V
    .locals 0

    invoke-interface {p1, p3, p4}, Lcom/zhpan/bannerview/BannerViewPager$b;->a(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/zhpan/bannerview/BannerViewPager;->g:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p5}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
