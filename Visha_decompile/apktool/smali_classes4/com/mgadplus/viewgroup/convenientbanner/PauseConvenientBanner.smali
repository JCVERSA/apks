.class public Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;,
        Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;,
        Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;

.field public c:[I

.field public d:Ljava/util/ArrayList;

.field public e:Lcom/mgadplus/viewgroup/convenientbanner/c/a;

.field public f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

.field public h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

.field public i:Lj2d;

.field public j:Landroid/view/ViewGroup;

.field public k:J

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

.field public r:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->n:Z

    .line 6
    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 7
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    .line 12
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->n:Z

    .line 14
    iput-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 15
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    .line 16
    sget-object v0, Lcom/mgmi/R$styleable;->PauseConvenientBanner:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    sget v0, Lcom/mgmi/R$styleable;->PauseConvenientBanner_pausecanLoop:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 22
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    .line 23
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->n:Z

    .line 25
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 26
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    .line 27
    sget-object p3, Lcom/mgmi/R$styleable;->PauseConvenientBanner:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 28
    sget p3, Lcom/mgmi/R$styleable;->PauseConvenientBanner_pausecanLoop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 29
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 33
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    .line 34
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    const/4 p4, 0x1

    .line 35
    iput-boolean p4, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->n:Z

    .line 36
    iput-boolean p4, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 37
    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    .line 38
    sget-object p3, Lcom/mgmi/R$styleable;->PauseConvenientBanner:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 39
    sget p3, Lcom/mgmi/R$styleable;->PauseConvenientBanner_pausecanLoop:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 2

    .line 29
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 32
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->k:J

    :cond_1
    return-object p0
.end method

.method public a(La6d;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setOnItemClickListener(La6d;)V

    return-object p0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setOnItemClickListener(La6d;)V

    return-object p0
.end method

.method public a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 34
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/c/a;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :goto_0
    return-object p0
.end method

.method public a(Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 25
    sget-object v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->ALIGN_PARENT_LEFT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 26
    sget-object v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->ALIGN_PARENT_RIGHT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    if-ne p1, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 27
    sget-object v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->CENTER_HORIZONTAL:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    if-ne p1, v1, :cond_2

    move v2, v3

    :cond_2
    const/16 p1, 0xe

    invoke-virtual {v0, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public a(Lk2d;Ljava/util/List;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2d;",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;"
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-direct {v0, p1, p2}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;-><init>(Lk2d;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    .line 4
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-boolean p2, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    invoke-virtual {p1, v0, p2}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->a(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 5
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->c:[I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a([I)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    :cond_0
    return-object p0
.end method

.method public a(Z)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public a([I)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->c:[I

    .line 11
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b:Ljava/util/List;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 13
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    .line 14
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 15
    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 16
    aget v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 17
    :cond_1
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :goto_1
    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Lcom/mgadplus/viewgroup/convenientbanner/c/a;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/mgadplus/viewgroup/convenientbanner/c/a;-><init>(Ljava/util/ArrayList;[I)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/c/a;

    .line 21
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 22
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/c/a;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getRealItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/convenientbanner/c/a;->onPageSelected(I)V

    .line 23
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->e:Lcom/mgadplus/viewgroup/convenientbanner/c/a;

    invoke-virtual {v0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/c/a;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    return-object p0
.end method

.method public a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    return p0
.end method

.method public b(J)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 3

    .line 15
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 18
    iput-wide p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->k:J

    .line 19
    :cond_1
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    .line 20
    iget-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    iget-wide v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->k:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public b()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 10
    iget-boolean v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    iget-wide v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->k:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->pause_include_viewpager:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Lcom/mgmi/R$id;->pause_cbLoopViewPager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iput-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    .line 3
    sget v0, Lcom/mgmi/R$id;->pause_loPageTurningPoint:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->j:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->i()V

    .line 6
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    .line 7
    new-instance p1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;-><init>(Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->r:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;

    return-void
.end method

.method public c()Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 3

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->l:Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->q:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->r:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

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

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->r:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->r:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$b;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b:Ljava/util/List;

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

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->getRealItem()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getOnPageChangeListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->f:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method public getScrollDuration()I
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->i:Lj2d;

    invoke-virtual {p0}, Lj2d;->a()I

    move-result p0

    return p0
.end method

.method public getViewPager()Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    return-object p0
.end method

.method public h()V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g:Lcom/mgadplus/viewgroup/convenientbanner/a/b;

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->k:J

    invoke-virtual {p0, v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->b(J)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Lj2d;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lj2d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->i:Lj2d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj2d;->c(Z)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->i:Lj2d;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public setCanLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->o:Z

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setCanLoop(Z)V

    return-void
.end method

.method public setInSmallSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->p:Z

    return-void
.end method

.method public setManualPageable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;->setCanScroll(Z)V

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->i:Lj2d;

    invoke-virtual {p0, p1}, Lj2d;->b(I)V

    return-void
.end method

.method public setSupportVideo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a:Z

    return-void
.end method

.method public setcurrentitem(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->h:Lcom/mgadplus/viewgroup/convenientbanner/view/PauseCBLoopViewPager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
