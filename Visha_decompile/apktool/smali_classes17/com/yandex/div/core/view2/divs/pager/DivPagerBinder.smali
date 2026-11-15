.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final d:Loj8;

.field public final e:Lzn2;

.field public final f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final g:Lxv7;

.field public final h:Lb5;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/DivViewCreator;Loj8;Lzn2;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lxv7;Lb5;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchCache"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divActionBinder"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerIndicatorConnector"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStateProvider"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->d:Loj8;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->e:Lzn2;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->g:Lxv7;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->h:Lb5;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$createInfiniteScrollListener$1;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$createInfiniteScrollListener$1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final h(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v10, v11}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->n(Lcom/yandex/div2/DivPager;Loj3;)Z

    move-result v13

    xor-int/lit8 v1, v13, 0x1

    invoke-virtual {v9, v1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->setOrientation(I)V

    iget-object v1, v10, Lcom/yandex/div2/DivPager;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v11}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivPager$ItemAlignment;

    move-object/from16 v15, p5

    invoke-virtual {v15, v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->L(Lcom/yandex/div2/DivPager$ItemAlignment;)V

    invoke-static/range {p1 .. p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    if-eqz v13, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v1, v10, Lcom/yandex/div2/DivPager;->s:Lcom/yandex/div2/DivFixedSize;

    const-string v2, "metrics"

    invoke-static {v8, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8, v11}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v16

    iget-object v1, v10, Lcom/yandex/div2/DivPager;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v11}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget-object v1, v10, Lcom/yandex/div2/DivPager;->D:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v11}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/yandex/div2/DivPager$ItemAlignment;

    new-instance v6, Lsn2;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div2/DivPager;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v2

    move-object v1, v6

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v5, v8

    move-object/from16 v18, v6

    move v6, v13

    move-object/from16 v21, v7

    invoke-direct/range {v1 .. v7}, Lsn2;-><init>(Lcom/yandex/div2/DivEdgeInsets;Loj3;Landroid/view/View;Landroid/util/DisplayMetrics;ZLcom/yandex/div2/DivPager$ItemAlignment;)V

    iget-object v1, v10, Lcom/yandex/div2/DivPager;->u:Lcom/yandex/div2/DivPagerLayoutMode;

    instance-of v2, v1, Lcom/yandex/div2/DivPagerLayoutMode$d;

    if-eqz v2, :cond_3

    new-instance v7, Ln08;

    check-cast v1, Lcom/yandex/div2/DivPagerLayoutMode$d;

    invoke-virtual {v1}, Lcom/yandex/div2/DivPagerLayoutMode$d;->c()Lcom/yandex/div2/DivPageSize;

    move-result-object v2

    move-object v1, v7

    move-object/from16 v3, p3

    move v4, v14

    move-object/from16 v5, v18

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Ln08;-><init>(Lcom/yandex/div2/DivPageSize;Loj3;ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    :goto_2
    move-object v8, v7

    goto :goto_3

    :cond_3
    instance-of v2, v1, Lcom/yandex/div2/DivPagerLayoutMode$b;

    if-eqz v2, :cond_4

    new-instance v17, Laz6;

    check-cast v1, Lcom/yandex/div2/DivPagerLayoutMode$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivPagerLayoutMode$b;->c()Lcom/yandex/div2/DivNeighbourPageSize;

    move-result-object v2

    move-object/from16 v1, v17

    move-object/from16 v3, p3

    move-object v4, v8

    move v5, v14

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Laz6;-><init>(Lcom/yandex/div2/DivNeighbourPageSize;Loj3;Landroid/util/DisplayMetrics;IFLsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    move-object/from16 v8, v17

    goto :goto_3

    :cond_4
    instance-of v1, v1, Lcom/yandex/div2/DivPagerLayoutMode$c;

    if-eqz v1, :cond_6

    new-instance v7, Ljpc;

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move-object/from16 v5, v18

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Ljpc;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    goto :goto_2

    :goto_3
    instance-of v1, v8, Lex3;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;

    move-object v7, v8

    check-cast v7, Lex3;

    move-object/from16 v2, p1

    move v3, v14

    move/from16 v4, v16

    move-object v5, v7

    move-object/from16 v6, v18

    move-object v11, v7

    move/from16 v7, v19

    move-object/from16 v17, v8

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeOffScreenPagesController;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;IFLex3;Lsn2;ZLcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;

    move-object/from16 v7, v18

    invoke-direct {v1, v7, v11}, Lcom/yandex/div/core/view2/divs/pager/FixedPageSizeItemDecoration;-><init>(Lsn2;Lex3;)V

    move-object/from16 v2, v21

    goto :goto_4

    :cond_5
    move-object/from16 v17, v8

    move-object/from16 v7, v18

    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v7

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeOffScreenPagesController;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;FLun2;Lsn2;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;

    move-object/from16 v2, v21

    invoke-direct {v1, v14, v7, v2}, Lcom/yandex/div/core/view2/divs/pager/WrapContentPageSizeItemDecoration;-><init>(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->q(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v6, Ltn2;

    move v4, v14

    move-object v14, v6

    move v15, v4

    move-object/from16 v18, v7

    move-object/from16 v20, p5

    move-object/from16 v21, v2

    invoke-direct/range {v14 .. v21}, Ltn2;-><init>(IFLun2;Lsn2;ZLcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    new-instance v8, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;

    iget-object v5, v10, Lcom/yandex/div2/DivPager;->z:Lcom/yandex/div2/DivPageTransformation;

    move-object v0, v8

    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;-><init>(Landroidx/recyclerview/widget/RecyclerView;Loj3;Landroid/util/SparseArray;ILcom/yandex/div2/DivPageTransformation;Ltn2;Z)V

    invoke-virtual {v9, v8}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->setPageTransformer$div_release(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;)V

    return-void

    :cond_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final i(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v7, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->h:Lb5;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb5;->c(Landroid/content/Context;)Z

    move-result v19

    new-instance v0, Lcom/yandex/div/core/view2/divs/ReleasingViewPool;

    invoke-virtual {v4}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/ReleasingViewPool;-><init>(Lzr8;)V

    invoke-virtual {v6, v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    new-instance v2, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-static {v5, v3}, Lbh2;->e(Lcom/yandex/div2/DivPager;Loj3;)Ljava/util/List;

    move-result-object v9

    iget-object v0, v7, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->d:Loj8;

    invoke-interface {v0}, Loj8;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "divBinder.get()"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Lrg2;

    iget-object v13, v7, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    move-object v8, v2

    move-object/from16 v10, p2

    move-object/from16 v12, v18

    move-object/from16 v14, p4

    move/from16 v15, v19

    move-object/from16 v16, p1

    invoke-direct/range {v8 .. v16}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;-><init>(Ljava/util/List;Lcom/yandex/div/core/view2/a;Lrg2;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v7, v6, v5, v3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getPagerOnItemsCountChange$div_release()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;->a()V

    :cond_1
    invoke-virtual {v4}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->w()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setClipToPage$div_release(Z)V

    invoke-virtual {v7, v5, v3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->n(Lcom/yandex/div2/DivPager;Loj3;)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    invoke-virtual {v6, v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->setOrientation(I)V

    iget-object v0, v5, Lcom/yandex/div2/DivPager;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivPager$ItemAlignment;

    invoke-virtual {v2, v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->L(Lcom/yandex/div2/DivPager$ItemAlignment;)V

    new-instance v9, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v10, v2

    move-object/from16 v2, p1

    move-object v11, v3

    move-object/from16 v3, p3

    move-object v12, v4

    move-object v4, v11

    move-object v13, v5

    move-object/from16 v5, v18

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$reusableObserver$1;-><init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;Landroid/util/SparseArray;Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivPager;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    :goto_0
    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivPager;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v6

    :goto_1
    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivPager;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_2
    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivPager;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v6

    :goto_3
    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->s:Lcom/yandex/div2/DivFixedSize;

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->s:Lcom/yandex/div2/DivFixedSize;

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->D:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v7, v0, v13, v9}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->o(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/div2/DivPager;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    iget-object v0, v13, Lcom/yandex/div2/DivPager;->u:Lcom/yandex/div2/DivPagerLayoutMode;

    instance-of v1, v0, Lcom/yandex/div2/DivPagerLayoutMode$b;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/yandex/div2/DivPagerLayoutMode$b;

    invoke-virtual {v0}, Lcom/yandex/div2/DivPagerLayoutMode$b;->c()Lcom/yandex/div2/DivNeighbourPageSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivNeighbourPageSize;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual {v0}, Lcom/yandex/div2/DivPagerLayoutMode$b;->c()Lcom/yandex/div2/DivNeighbourPageSize;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivNeighbourPageSize;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    goto :goto_4

    :cond_6
    instance-of v1, v0, Lcom/yandex/div2/DivPagerLayoutMode$d;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/yandex/div2/DivPagerLayoutMode$d;

    invoke-virtual {v0}, Lcom/yandex/div2/DivPagerLayoutMode$d;->c()Lcom/yandex/div2/DivPageSize;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivPageSize;->a:Lcom/yandex/div2/DivPercentageSize;

    iget-object v0, v0, Lcom/yandex/div2/DivPercentageSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11, v9}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    goto :goto_4

    :cond_7
    instance-of v0, v0, Lcom/yandex/div2/DivPagerLayoutMode$c;

    :goto_4
    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;

    invoke-virtual {v10}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D()Lg3;

    move-result-object v1

    iget-object v2, v7, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->f:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    invoke-direct {v0, v12, v1, v2}, Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;-><init>(Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivActionBinder;)V

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setPagerSelectedActionsDispatcher$div_release(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V

    invoke-virtual {v10}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D()Lg3;

    move-result-object v2

    new-instance v9, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageChangeCallback;-><init>(Lcom/yandex/div2/DivPager;Ljava/util/List;Lcom/yandex/div/core/view2/a;Landroidx/recyclerview/widget/RecyclerView;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-virtual {v14, v9}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setChangePageCallbackForLogger$div_release(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {v12}, Lcom/yandex/div/core/view2/Div2View;->getCurrentState()Luv2;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivPager;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {v0, v1}, Luv2;->a(Ljava/lang/String;)Luv2$a;

    move-result-object v2

    instance-of v3, v2, Lzv7;

    if-eqz v3, :cond_9

    check-cast v2, Lzv7;

    goto :goto_5

    :cond_9
    move-object v2, v6

    :goto_5
    new-instance v3, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;

    invoke-direct {v3, v1, v0}, Lcom/yandex/div/core/state/UpdateStateChangePageCallback;-><init>(Ljava/lang/String;Luv2;)V

    invoke-virtual {v14, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setChangePageCallbackForState$div_release(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lzv7;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v10}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D()Lg3;

    move-result-object v2

    invoke-virtual {v2}, Lr2;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getRealPosition(I)I

    move-result v2

    if-ge v1, v2, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_b

    move-object v6, v0

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9

    :cond_c
    iget-object v0, v13, Lcom/yandex/div2/DivPager;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_10

    const-wide/16 v8, -0x1

    cmp-long v2, v2, v8

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    sget-object v2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable convert \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\' to Int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_e
    cmp-long v0, v0, v4

    if-lez v0, :cond_f

    const v0, 0x7fffffff

    goto :goto_8

    :cond_f
    const/high16 v0, -0x80000000

    goto :goto_8

    :cond_10
    :goto_7
    long-to-int v0, v0

    :goto_8
    invoke-virtual {v10, v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->G(I)I

    move-result v0

    :goto_9
    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setCurrentItem$div_release(I)V

    :cond_11
    iget-object v0, v13, Lcom/yandex/div2/DivPager;->A:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$2;

    invoke-direct {v1, v14}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bind$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    invoke-virtual {v0, v11, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->addSubscription(Lqc2;)V

    invoke-virtual/range {p0 .. p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;)V

    if-eqz v19, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->enableAccessibility()V

    :cond_12
    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;Loj3;)V
    .locals 3

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p2, p2, Lcom/yandex/div2/DivPager;->q:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindInfiniteScroll$1;

    invoke-direct {v2, p1, v1, p0, v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindInfiniteScroll$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, p3, v2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    return-void
.end method

.method public final k(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;)V
    .locals 1

    iget-object p0, p3, Lcom/yandex/div2/DivPager;->r:Lcom/yandex/div2/DivCollectionItemBuilder;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p3

    new-instance v0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$bindItemBuilder$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivCollectionItemBuilder;Lcom/yandex/div/core/view2/a;)V

    invoke-static {p0, p3, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;Le74;)V

    return-void
.end method

.method public l(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/Div$j;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->g:Lxv7;

    invoke-virtual {p3}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lxv7;->c(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div2/DivPager;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getDiv()Lcom/yandex/div2/Div$j;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_4

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    instance-of v0, p4, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz v0, :cond_0

    move-object v1, p4

    check-cast v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    :cond_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->e:Lzn2;

    invoke-virtual {v1, p4, v0, p1}, Lcom/yandex/div/core/view2/divs/DivCollectionAdapter;->w(Landroidx/recyclerview/widget/RecyclerView;Lzn2;Lcom/yandex/div/core/view2/a;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->getPagerOnItemsCountChange$div_release()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;->a()V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->d:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p4, "divBinder.get()"

    invoke-static {p0, p4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrg2;

    invoke-static {p2, p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->E(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lrg2;)V

    new-instance p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$a;

    invoke-direct {p0, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$a;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;->setChangePageCallbackForOffScreenPages$div_release(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->p(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p2, v1}, Lcom/yandex/div/core/widget/ViewPager2Wrapper;->setPageTransformer$div_release(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;)V

    :cond_5
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$j;->c()Lcom/yandex/div2/DivPager;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivPager;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$createInfiniteScrollListener$1;
    .locals 0

    new-instance p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$createInfiniteScrollListener$1;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$createInfiniteScrollListener$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;)V

    return-object p0
.end method

.method public final n(Lcom/yandex/div2/DivPager;Loj3;)Z
    .locals 0

    iget-object p0, p1, Lcom/yandex/div2/DivPager;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/div2/DivPager$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivPager$Orientation;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final o(Landroidx/viewpager2/widget/ViewPager2;Lcom/yandex/div2/DivPager;Le74;)Lqc2;
    .locals 0

    new-instance p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;

    invoke-direct {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder$observeSizeChange$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;Le74;Lcom/yandex/div2/DivPager;)V

    return-object p0
.end method

.method public final p(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getItemDecorationCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->removeItemDecorationAt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerBinder;->p(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
