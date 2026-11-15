.class public Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:[I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mgmi/ViewGroup/convenientbanner/c/a;

.field private e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private f:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

.field private g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

.field private h:Lcom/mgmi/ViewGroup/convenientbanner/a;

.field private i:Landroid/view/ViewGroup;

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;


# direct methods
.method public static synthetic a(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->k:Z

    return p0
.end method

.method public static synthetic c(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->n:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;)J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->j:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
    .locals 3

    .line 24
    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->k:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b()V

    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->l:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 27
    iput-wide p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->j:J

    .line 28
    :cond_1
    iput-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->k:Z

    .line 29
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->n:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
    .locals 1

    .line 30
    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 31
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->d:Lcom/mgmi/ViewGroup/convenientbanner/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/c/a;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/mgmi/ViewGroup/convenientbanner/b/a;Ljava/util/List;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgmi/ViewGroup/convenientbanner/b/a;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;"
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    invoke-direct {v0, p1, p2}, Lcom/mgmi/ViewGroup/convenientbanner/a/a;-><init>(Lcom/mgmi/ViewGroup/convenientbanner/b/a;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->f:Lcom/mgmi/ViewGroup/convenientbanner/a/a;

    .line 4
    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    iget-boolean p2, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->m:Z

    invoke-virtual {p1, v0, p2}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->a(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 5
    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b:[I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a([I)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    :cond_0
    return-object p0
.end method

.method public a([I)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    iput-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b:[I

    .line 10
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 12
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    .line 13
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    iget-object v3, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 15
    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 16
    :cond_1
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :goto_1
    iget-object v3, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->i:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Lcom/mgmi/ViewGroup/convenientbanner/c/a;

    iget-object v1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/mgmi/ViewGroup/convenientbanner/c/a;-><init>(Ljava/util/ArrayList;[I)V

    iput-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->d:Lcom/mgmi/ViewGroup/convenientbanner/c/a;

    .line 20
    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 21
    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->d:Lcom/mgmi/ViewGroup/convenientbanner/c/a;

    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {v0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgmi/ViewGroup/convenientbanner/c/a;->onPageSelected(I)V

    .line 22
    iget-object p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->d:Lcom/mgmi/ViewGroup/convenientbanner/c/a;

    invoke-virtual {v0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/c/a;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    return-object p0
.end method

.method public a()Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->k:Z

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->k:Z

    .line 3
    iget-object v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->n:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

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

    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->l:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->j:J

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(J)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->getRealItem()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getOnPageChangeListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method public getScrollDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->h:Lcom/mgmi/ViewGroup/convenientbanner/a;

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/a;->a()I

    move-result p0

    return p0
.end method

.method public getViewPager()Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    return-object p0
.end method

.method public setCanLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->m:Z

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->setCanLoop(Z)V

    return-void
.end method

.method public setManualPageable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;->setCanScroll(Z)V

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->h:Lcom/mgmi/ViewGroup/convenientbanner/a;

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/convenientbanner/a;->a(I)V

    return-void
.end method

.method public setcurrentitem(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->g:Lcom/mgmi/ViewGroup/convenientbanner/view/CBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
