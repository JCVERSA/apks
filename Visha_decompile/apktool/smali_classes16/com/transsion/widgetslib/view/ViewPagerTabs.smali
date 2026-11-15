.class public Lcom/transsion/widgetslib/view/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/ViewPagerTabs$e;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$g;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$f;,
        Lcom/transsion/widgetslib/view/ViewPagerTabs$SavedState;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

.field public c:Landroid/content/Context;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/util/ArrayList;

.field public j:[I

.field public k:[I

.field public l:[I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:[I

.field public q:I

.field public r:Landroid/graphics/Paint;

.field public s:Landroidx/viewpager/widget/ViewPager;

.field public t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public u:Landroid/view/View$OnScrollChangeListener;

.field public v:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 3
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->j:[I

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->k:[I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->p:[I

    .line 7
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->w(Landroid/util/AttributeSet;)V

    .line 9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->h:Z

    .line 10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    invoke-direct {p1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    iget p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 12
    iget-object p2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->j:[I

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->h:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->w:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/view/ViewPagerTabs;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/view/ViewPagerTabs;)[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->k:[I

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Lcom/transsion/widgetslib/view/ViewPagerTabs$e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/view/ViewPagerTabs;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->y:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->z(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/view/ViewPagerTabs;IFI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->A(IFI)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->B(I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->C()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/view/ViewPagerTabs;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->D()V

    return-void
.end method


# virtual methods
.method public final A(IFI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrolled(IFI)V

    return-void
.end method

.method public final B(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageSelected(I)V

    return-void
.end method

.method public final C()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eq v1, v0, :cond_2

    new-array v0, v0, [I

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_0

    aget v3, v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->q()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public final D()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->a(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v3, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v3, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDefaultViewPagerItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->a(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v(I)I

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->h:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->D()V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onTabClick(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v(I)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    :goto_0
    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    div-int/2addr v2, v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, ""

    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v7, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->e:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    int-to-float v8, v8

    invoke-virtual {p0, v6, v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s(Landroid/widget/TextView;F)V

    :cond_3
    invoke-virtual {p0, v6}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->y(Landroid/widget/TextView;)F

    move-result v8

    iget-object v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    if-eqz v9, :cond_4

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2

    :cond_4
    iget v9, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->d:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setWidth(I)V

    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->d:I

    invoke-virtual {v6, v8, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v8, Lcom/transsion/widgetslib/view/ViewPagerTabs$d;

    invoke-direct {v8, p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs$d;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-static {v8}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->a(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)I

    move-result v8

    if-ne v5, v8, :cond_5

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v7, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_5
    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v7, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public final r([Ljava/lang/CharSequence;)V
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t(I)V

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    div-int/2addr v1, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_5

    iget-object v5, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/transsion/widgetslib/R$layout;->tab_textview:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    aget-object v6, p1, v4

    if-nez v6, :cond_1

    const-string v6, ""

    aput-object v6, p1, v4

    :cond_1
    aget-object v6, p1, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v6, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->e:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-float v7, v7

    invoke-virtual {p0, v5, v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s(Landroid/widget/TextView;F)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->y(Landroid/widget/TextView;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->i:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    if-eqz v8, :cond_3

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->d:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setWidth(I)V

    iget v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->d:I

    invoke-virtual {v5, v7, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$integer;->OSSemiBoldWeight:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v7, Lcom/transsion/widgetslib/view/ViewPagerTabs$a;

    invoke-direct {v7, p0, v4}, Lcom/transsion/widgetslib/view/ViewPagerTabs$a;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-static {v7}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->a(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)I

    move-result v7

    if-ne v4, v7, :cond_4

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    sget v6, Lcom/transsion/widgetslib/R$style;->os_semibold_font:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_4
    iget-object v6, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v6, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public final s(Landroid/widget/TextView;F)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p2

    if-lez p2, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OS ViewPagerTabs # breakTitleText() Catch Exception e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ViewPagerTabs"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setItemClickListener(Lcom/transsion/widgetslib/view/ViewPagerTabs$g;)V
    .locals 0

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->b(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;->b(Lcom/transsion/widgetslib/view/ViewPagerTabs$e;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->t:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->u:Landroid/view/View$OnScrollChangeListener;

    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 0

    return-void
.end method

.method public setSelectedTabColors([I)V
    .locals 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    if-nez v1, :cond_2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    array-length v5, p1

    sub-int/2addr v5, v3

    if-gt v1, v5, :cond_3

    aget v3, p1, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->m:Z

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_2
    return-void
.end method

.method public setTabBalanced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    return-void
.end method

.method public setTabChildEnable(Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setTabHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setTabs([Ljava/lang/CharSequence;)V
    .locals 5

    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-eq v1, v0, :cond_3

    new-array v0, v0, [I

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->o:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-gt v1, v4, :cond_1

    aget v3, v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->l:[I

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->r([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setTitleTabEnable(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setUnSelectTextColor(I)V
    .locals 0

    return-void
.end method

.method public varargs setUnreadTip([I)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->p:[I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$b;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$b;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->s:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/widgetslib/view/ViewPagerTabs$c;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroidx/viewpager/widget/ViewPager;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->n:Z

    :cond_1
    return-void
.end method

.method public final u(I)I
    .locals 1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final v(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method

.method public final w(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->d:I

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_viewpager_average_tab_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->e:I

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_tab_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->g:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->u(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->u(I)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->w:I

    iget v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->v:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->x:I

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$styleable;->ViewPagerTabs_osTabHeight:I

    iget v2, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->f:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-direct {p1, p0, v1}, Lcom/transsion/widgetslib/view/ViewPagerTabs$e;-><init>(Lcom/transsion/widgetslib/view/ViewPagerTabs;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->b:Lcom/transsion/widgetslib/view/ViewPagerTabs$e;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->q:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->r:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->r:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget p1, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    filled-new-array {p1}, [I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/ViewPagerTabs;->c:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->os_bg_primary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final x()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y(Landroid/widget/TextView;)F
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public final z(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/ViewPagerTabs;->onPageScrollStateChanged(I)V

    return-void
.end method
