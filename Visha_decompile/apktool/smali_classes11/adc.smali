.class public abstract Ladc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ladc;->i([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ladc;->n([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ladc;->k([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Ladc;->j(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ladc;->l([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ladc;->m([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Ladc;->o(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic h(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    invoke-static {p0, p1}, Ladc;->p(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic i([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    aput-boolean v1, p0, v0

    aget-object p0, p1, v0

    if-eqz p0, :cond_1

    invoke-static {p2, p0}, Ladc;->p(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p0, 0x0

    aput-object p0, p1, v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public static synthetic j(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic k([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance p0, Lycc;

    invoke-direct {p0, p1, p2}, Lycc;-><init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic l([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-static {p1, p0}, Ladc;->r(II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic m([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {p1}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic n([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1, v0}, Ladc;->q(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    aput v1, p0, v0

    invoke-static {p1}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic o(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static p(Landroidx/viewpager2/widget/ViewPager2;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public static q(IZ)Z
    .locals 0

    if-nez p1, :cond_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(II)Z
    .locals 0

    if-lez p1, :cond_1

    if-lez p0, :cond_0

    if-eq p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static s(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/Runnable;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v0, [Z

    aput-boolean v1, v2, v1

    new-array v0, v0, [Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v9, Lucc;

    invoke-direct {v9, v2, v0, p0, p2}, Lucc;-><init>([Z[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    new-instance p2, Lvcc;

    invoke-direct {p2, v2, p0, v9}, Lvcc;-><init>([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    new-instance v10, Ladc$a;

    move-object v3, v10

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, v0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Ladc$a;-><init>([ZLandroidx/viewpager2/widget/ViewPager2;I[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Ljava/lang/Runnable;)V

    aput-object v10, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    new-instance v0, Lwcc;

    invoke-direct {v0, v2, p1, p0, p2}, Lwcc;-><init>([ZILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lxcc;

    invoke-direct {p1, v2, p0, v9}, Lxcc;-><init>([ZLandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x140

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static t(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    new-instance v1, Lzcc;

    invoke-direct {v1, v0, p0, p1}, Lzcc;-><init>([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ladc$b;

    invoke-direct {v3, v0, p0, p1}, Ladc$b;-><init>([ILandroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static u(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Ladc;->v(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance v0, Ltcc;

    invoke-direct {v0, p0, p1}, Ltcc;-><init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p0, p1}, Ladc;->t(Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static v(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v3, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    return-void
.end method
