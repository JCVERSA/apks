.class public abstract Lcom/yandex/div/internal/widget/tabs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/b$b;,
        Lcom/yandex/div/internal/widget/tabs/b$c;,
        Lcom/yandex/div/internal/widget/tabs/b$g;,
        Lcom/yandex/div/internal/widget/tabs/b$d;,
        Lcom/yandex/div/internal/widget/tabs/b$i;,
        Lcom/yandex/div/internal/widget/tabs/b$h;,
        Lcom/yandex/div/internal/widget/tabs/b$f;,
        Lcom/yandex/div/internal/widget/tabs/b$e;
    }
.end annotation


# instance fields
.field public final a:Lcdc;

.field public final b:Landroid/view/View;

.field public final c:Lcom/yandex/div/internal/widget/tabs/b$b;

.field public final d:Lcom/yandex/div/internal/widget/tabs/b$d;

.field public final e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

.field public f:Lcom/yandex/div/internal/widget/tabs/d;

.field public final g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

.field public h:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/yandex/div/internal/widget/tabs/b$c;

.field public final n:Landroidx/viewpager/widget/PagerAdapter;

.field public o:Z

.field public p:Lcom/yandex/div/internal/widget/tabs/b$g;

.field public q:Z


# direct methods
.method public constructor <init>(Lcdc;Landroid/view/View;Lcom/yandex/div/internal/widget/tabs/b$i;Lcom/yandex/div/internal/widget/tabs/d;Lfda;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;Lcom/yandex/div/internal/widget/tabs/b$c;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->i:Ljava/util/Map;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->j:Ljava/util/Map;

    new-instance v0, Lcom/yandex/div/internal/widget/tabs/b$a;

    invoke-direct {v0, p0}, Lcom/yandex/div/internal/widget/tabs/b$a;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->n:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->q:Z

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->a:Lcdc;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/tabs/b;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/internal/widget/tabs/b;->f:Lcom/yandex/div/internal/widget/tabs/d;

    iput-object p7, p0, Lcom/yandex/div/internal/widget/tabs/b;->m:Lcom/yandex/div/internal/widget/tabs/b$c;

    new-instance p4, Lcom/yandex/div/internal/widget/tabs/b$d;

    invoke-direct {p4, p0, v1}, Lcom/yandex/div/internal/widget/tabs/b$d;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V

    iput-object p4, p0, Lcom/yandex/div/internal/widget/tabs/b;->d:Lcom/yandex/div/internal/widget/tabs/b$d;

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->d()Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/yandex/div/internal/widget/tabs/b;->k:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/div/internal/widget/tabs/b;->l:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->c()I

    move-result v2

    invoke-static {p2, v2}, Lndc;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/internal/widget/tabs/b$b;

    iput-object v2, p0, Lcom/yandex/div/internal/widget/tabs/b;->c:Lcom/yandex/div/internal/widget/tabs/b$b;

    invoke-interface {v2, p4}, Lcom/yandex/div/internal/widget/tabs/b$b;->setHost(Lcom/yandex/div/internal/widget/tabs/b$b$a;)V

    invoke-virtual {p5}, Lfda;->a()Lbu2;

    move-result-object p4

    invoke-interface {v2, p4}, Lcom/yandex/div/internal/widget/tabs/b$b;->setTypefaceProvider(Lbu2;)V

    invoke-interface {v2, p1, p7}, Lcom/yandex/div/internal/widget/tabs/b$b;->setViewPool(Lcdc;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->b()I

    move-result p1

    invoke-static {p2, p1}, Lndc;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p4

    invoke-static {p1, p4}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->clearOnPageChangeListeners()V

    new-instance p4, Lcom/yandex/div/internal/widget/tabs/b$h;

    invoke-direct {p4, p0, v1}, Lcom/yandex/div/internal/widget/tabs/b$h;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V

    invoke-virtual {p1, p4}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-interface {v2}, Lcom/yandex/div/internal/widget/tabs/b$b;->getCustomPageChangeListener()Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1, p8}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->g()Z

    move-result p4

    invoke-virtual {p1, p4}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->setScrollEnabled(Z)V

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->f()Z

    move-result p4

    invoke-virtual {p1, p4}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->setEdgeScrollEnabled(Z)V

    new-instance p4, Lcom/yandex/div/internal/widget/tabs/b$f;

    invoke-direct {p4, p0, v1}, Lcom/yandex/div/internal/widget/tabs/b$f;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Lcom/yandex/div/internal/widget/tabs/b$a;)V

    invoke-virtual {p1, v0, p4}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    invoke-virtual {p3}, Lcom/yandex/div/internal/widget/tabs/b$i;->a()I

    move-result p1

    invoke-static {p2, p1}, Lndc;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b;->r()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;III)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/tabs/b;->s(Landroid/view/ViewGroup;III)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/tabs/b;)I
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b;->q()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$g;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    return-object p0
.end method

.method public static synthetic d(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic e(Lcom/yandex/div/internal/widget/tabs/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->o:Z

    return p0
.end method

.method public static synthetic f(Lcom/yandex/div/internal/widget/tabs/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->o:Z

    return p1
.end method

.method public static synthetic g(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$c;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->m:Lcom/yandex/div/internal/widget/tabs/b$c;

    return-object p0
.end method

.method public static synthetic h(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->h:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    return-object p0
.end method

.method public static synthetic i(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/b$b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->c:Lcom/yandex/div/internal/widget/tabs/b$b;

    return-object p0
.end method

.method public static synthetic j(Lcom/yandex/div/internal/widget/tabs/b;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    return-object p0
.end method

.method public static synthetic k(Lcom/yandex/div/internal/widget/tabs/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->q:Z

    return p0
.end method

.method public static synthetic l(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lcom/yandex/div/internal/widget/tabs/b;)Lcdc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->a:Lcdc;

    return-object p0
.end method

.method public static synthetic n(Lcom/yandex/div/internal/widget/tabs/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->i:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public abstract o(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;I)Ljava/lang/Object;
.end method

.method public final p(ILcom/yandex/div/internal/widget/tabs/b$g;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p2}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final q()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->a:Lcdc;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcdc;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->f:Lcom/yandex/div/internal/widget/tabs/d;

    new-instance v2, Lv90;

    invoke-direct {v2, p0}, Lv90;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    new-instance v3, Lw90;

    invoke-direct {v3, p0}, Lw90;-><init>(Lcom/yandex/div/internal/widget/tabs/b;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/yandex/div/internal/widget/tabs/d;->a(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/d$b;Lcom/yandex/div/internal/widget/tabs/d$a;)Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->h:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->setHeightCalculator(Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;)V

    return-void
.end method

.method public final s(Landroid/view/ViewGroup;III)I
    .locals 9

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;->getCollapsiblePaddingBottom()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    invoke-interface {v1}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object v1

    if-ltz p4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p4, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v2, "Tab index is out ouf bounds!"

    invoke-static {v2, v0}, Lxi;->g(Ljava/lang/String;Z)V

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/tabs/b$g$a;

    invoke-interface {v0}, Lcom/yandex/div/internal/widget/tabs/b$g$a;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    add-int/2addr p0, p1

    return p0

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->j:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/internal/widget/tabs/b$e;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->a:Lcdc;

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/b;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcdc;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    new-instance v8, Lcom/yandex/div/internal/widget/tabs/b$e;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/tabs/b$e;-><init>(Lcom/yandex/div/internal/widget/tabs/b;Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;ILcom/yandex/div/internal/widget/tabs/b$a;)V

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->j:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v1, p4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v8

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/yandex/div/internal/widget/tabs/b$e;->a(Lcom/yandex/div/internal/widget/tabs/b$e;)Landroid/view/ViewGroup;

    move-result-object v7

    :goto_2
    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/tabs/b$e;->b()V

    invoke-virtual {v7}, Landroid/view/View;->forceLayout()V

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/internal/widget/tabs/b;->u(ILcom/yandex/div/internal/widget/tabs/b$g$a;)I

    move-result p0

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v7, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_1
.end method

.method public t()V
    .locals 2

    const-string v0, "BaseDivTabbedCardUi"

    const-string v1, "requestViewPagerLayout"

    invoke-static {v0, v1}, Lpp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->h:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout$a;->b()V

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->g:Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final u(ILcom/yandex/div/internal/widget/tabs/b$g$a;)I
    .locals 0

    invoke-interface {p2}, Lcom/yandex/div/internal/widget/tabs/b$g$a;->c()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p2, -0x1

    if-ne p0, p2, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public v(Lcom/yandex/div/internal/widget/tabs/b$g;Loj3;Lqj3;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/internal/widget/tabs/b;->p(ILcom/yandex/div/internal/widget/tabs/b$g;)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->p:Lcom/yandex/div/internal/widget/tabs/b$g;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->q:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/b;->n:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->q:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->q:Z

    throw p1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/yandex/div/internal/widget/tabs/b$g;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/b;->c:Lcom/yandex/div/internal/widget/tabs/b$b;

    invoke-interface {v1, p1, v0, p2, p3}, Lcom/yandex/div/internal/widget/tabs/b$b;->setData(Ljava/util/List;ILoj3;Lqj3;)V

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    iget-object p2, p0, Lcom/yandex/div/internal/widget/tabs/b;->n:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/b;->c:Lcom/yandex/div/internal/widget/tabs/b$b;

    invoke-interface {p1, v0}, Lcom/yandex/div/internal/widget/tabs/b$b;->manuallyScroll(I)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/b;->t()V

    return-void
.end method

.method public w(Ljava/util/Set;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;->setDisabledScrollPages(Ljava/util/Set;)V

    return-void
.end method

.method public abstract x(Ljava/lang/Object;)V
.end method
