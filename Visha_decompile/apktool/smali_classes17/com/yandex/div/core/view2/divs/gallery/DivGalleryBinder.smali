.class public final Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final d:Loj8;

.field public final e:Lzn2;

.field public final f:F


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/DivViewCreator;Loj8;Lzn2;F)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchCache"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->d:Loj8;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->e:Lzn2;

    iput p5, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->f:F

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->n(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V

    return-void
.end method


# virtual methods
.method public final g(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 8

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;-><init>(Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->D:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->C:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivGallery;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->addSubscription(Lqc2;)V

    :cond_0
    new-instance v1, Lcom/yandex/div/core/view2/divs/ReleasingViewPool;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/div/core/view2/divs/ReleasingViewPool;-><init>(Lzr8;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    invoke-static {p3, v0}, Lbh2;->d(Lcom/yandex/div2/DivGallery;Loj3;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->d:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "divBinder.get()"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lrg2;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    move-object v2, v1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;-><init>(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->n(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V

    return-void
.end method

.method public final h(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V
    .locals 1

    iget-object p0, p3, Lcom/yandex/div2/DivGallery;->s:Lcom/yandex/div2/DivCollectionItemBuilder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p3

    new-instance v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bindItemBuilder$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bindItemBuilder$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/core/view2/a;)V

    invoke-static {p0, p3, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;Le74;)V

    return-void
.end method

.method public i(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div2/Div$d;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getDiv()Lcom/yandex/div2/Div$d;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-ne p3, v1, :cond_3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    instance-of p4, p3, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    if-eqz p4, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryAdapter;

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->e:Lzn2;

    invoke-virtual {v0, p2, p3, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;->w(Landroidx/recyclerview/widget/RecyclerView;Lzn2;Lcom/yandex/div/core/view2/a;)Z

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->d:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p3, "divBinder.get()"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrg2;

    invoke-static {p2, p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->E(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lrg2;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$d;->c()Lcom/yandex/div2/DivGallery;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;

    invoke-direct {v0, p1, p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$b;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p1, p0, Lrj2;

    if-eqz p1, :cond_0

    check-cast p0, Lrj2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    if-nez p2, :cond_2

    invoke-interface {p0, p2, p4}, Lrj2;->instantScrollToPosition(ILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0, p2, p3, p4}, Lrj2;->instantScrollToPositionWithOffset(IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V

    :goto_1
    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final n(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    iget-object v6, v3, Lcom/yandex/div2/DivGallery;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v6, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/div2/DivGallery$Orientation;

    sget-object v7, Lcom/yandex/div2/DivGallery$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivGallery$Orientation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    iget-object v7, v3, Lcom/yandex/div2/DivGallery;->D:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v7, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/yandex/div2/DivGallery$Scrollbar;->AUTO:Lcom/yandex/div2/DivGallery$Scrollbar;

    if-ne v7, v10, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    move v7, v9

    :goto_1
    if-eqz v7, :cond_2

    if-ne v6, v8, :cond_2

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v9

    :goto_2
    invoke-virtual {v1, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    move v7, v8

    goto :goto_3

    :cond_3
    move v7, v9

    :goto_3
    invoke-virtual {v1, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    iget-object v7, v3, Lcom/yandex/div2/DivGallery;->h:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v10, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v7, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    goto :goto_4

    :cond_4
    move-wide v12, v10

    :goto_4
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    cmp-long v7, v12, v10

    const-string v10, "metrics"

    if-nez v7, :cond_5

    new-instance v20, Lcom/yandex/div/internal/widget/PaddingItemDecoration;

    iget-object v11, v3, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v11, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-static {v4, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v12

    const/16 v18, 0x3d

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, v20

    move/from16 v17, v6

    invoke-direct/range {v10 .. v19}, Lcom/yandex/div/internal/widget/PaddingItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    move-object/from16 v4, v20

    goto :goto_6

    :cond_5
    new-instance v20, Lcom/yandex/div/internal/widget/PaddingItemDecoration;

    iget-object v11, v3, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v11, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-static {v4, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v12

    iget-object v10, v3, Lcom/yandex/div2/DivGallery;->k:Lcom/yandex/div/json/expressions/Expression;

    if-nez v10, :cond_6

    iget-object v10, v3, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    :cond_6
    invoke-virtual {v10, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-static {v10, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v13

    const/16 v18, 0x39

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, v20

    move/from16 v17, v6

    invoke-direct/range {v10 .. v19}, Lcom/yandex/div/internal/widget/PaddingItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v1, v4}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v4, v3, Lcom/yandex/div2/DivGallery;->C:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivGallery$ScrollMode;

    invoke-virtual {v1, v4}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->setScrollMode(Lcom/yandex/div2/DivGallery$ScrollMode;)V

    sget-object v10, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x0

    if-eq v10, v8, :cond_9

    const/4 v8, 0x2

    if-eq v10, v8, :cond_7

    goto :goto_8

    :cond_7
    iget-object v8, v3, Lcom/yandex/div2/DivGallery;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v8, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const-string v12, "resources.displayMetrics"

    invoke-static {v10, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getPagerSnapStartHelper()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10, v8}, Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;->b(I)V

    goto :goto_7

    :cond_8
    new-instance v10, Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    invoke-direct {v10, v8}, Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->setPagerSnapStartHelper(Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;)V

    :goto_7
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_8

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->getPagerSnapStartHelper()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_a
    :goto_8
    if-nez v7, :cond_b

    new-instance v7, Landroidx/recyclerview/widget/DivLinearLayoutManager;

    invoke-direct {v7, v2, v1, v3, v6}, Landroidx/recyclerview/widget/DivLinearLayoutManager;-><init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V

    goto :goto_9

    :cond_b
    new-instance v7, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;

    invoke-direct {v7, v2, v1, v3, v6}, Lcom/yandex/div/core/view2/divs/gallery/DivGridLayoutManager;-><init>(Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div2/DivGallery;I)V

    :goto_9
    invoke-interface {v7}, Lrj2;->toLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget v8, v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->f:F

    invoke-virtual {v1, v8}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->setScrollInterceptionAngle(F)V

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object v8

    if-eqz v8, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivGallery;->getId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    :cond_c
    invoke-virtual {v8, v10}, Luv2;->a(Ljava/lang/String;)Luv2$a;

    move-result-object v12

    instance-of v13, v12, Lcd4;

    if-eqz v13, :cond_d

    check-cast v12, Lcd4;

    goto :goto_a

    :cond_d
    move-object v12, v11

    :goto_a
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcd4;->b()I

    move-result v13

    goto :goto_d

    :cond_e
    iget-object v13, v3, Lcom/yandex/div2/DivGallery;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v13, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    const/16 v15, 0x1f

    shr-long v15, v13, v15

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-eqz v19, :cond_12

    const-wide/16 v19, -0x1

    cmp-long v15, v15, v19

    if-nez v15, :cond_f

    goto :goto_c

    :cond_f
    sget-object v15, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v15

    if-eqz v15, :cond_10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable convert \'"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "\' to Int"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lxi;->i(Ljava/lang/String;)V

    :cond_10
    cmp-long v9, v13, v17

    if-lez v9, :cond_11

    const v9, 0x7fffffff

    :goto_b
    move v13, v9

    goto :goto_d

    :cond_11
    const/high16 v9, -0x80000000

    goto :goto_b

    :cond_12
    :goto_c
    long-to-int v13, v13

    :goto_d
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Lcd4;->a()I

    move-result v9

    goto :goto_e

    :cond_13
    if-eqz v13, :cond_14

    const/4 v9, 0x0

    goto :goto_e

    :cond_14
    if-nez v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingStart()I

    move-result v9

    goto :goto_e

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    :goto_e
    invoke-static {v4}, Li39;->a(Lcom/yandex/div2/DivGallery$ScrollMode;)Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;

    move-result-object v4

    invoke-virtual {v0, v1, v13, v9, v4}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;IILcom/yandex/div/core/view2/divs/gallery/ScrollPosition;)V

    new-instance v0, Lcom/yandex/div/core/state/UpdateStateScrollListener;

    invoke-direct {v0, v10, v8, v7}, Lcom/yandex/div/core/state/UpdateStateScrollListener;-><init>(Ljava/lang/String;Luv2;Lrj2;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_16
    new-instance v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryScrollListener;

    invoke-direct {v0, v2, v1, v7, v3}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryScrollListener;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lrj2;Lcom/yandex/div2/DivGallery;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, v3, Lcom/yandex/div2/DivGallery;->z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v11, Low7;->a:Low7;

    :cond_17
    invoke-virtual {v1, v11}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;->setOnInterceptTouchEventListener(Lue7;)V

    return-void
.end method
