.class public final Lpr2;
.super Lcom/yandex/div/internal/widget/tabs/b;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/Map;

.field public final B:Ljava/util/Map;

.field public final C:Lwv7;

.field public final r:Landroid/view/View;

.field public final s:Z

.field public t:Lcom/yandex/div/core/view2/a;

.field public final u:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final v:Lrg2;

.field public final w:Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;

.field public final x:Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;

.field public y:Lcom/yandex/div/core/state/DivStatePath;

.field public final z:Lzn2;


# direct methods
.method public constructor <init>(Lcdc;Landroid/view/View;Lcom/yandex/div/internal/widget/tabs/b$i;Lcom/yandex/div/internal/widget/tabs/d;ZLcom/yandex/div/core/view2/a;Lfda;Lcom/yandex/div/core/view2/DivViewCreator;Lrg2;Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;Lcom/yandex/div/core/state/DivStatePath;Lzn2;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v8, p12

    move-object/from16 v7, p13

    const-string v0, "viewPool"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabbedCardConfig"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "heightCalculatorFactory"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyleProvider"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divTabsEventManager"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeStateTracker"

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchCache"

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p10

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/yandex/div/internal/widget/tabs/b;-><init>(Lcdc;Landroid/view/View;Lcom/yandex/div/internal/widget/tabs/b$i;Lcom/yandex/div/internal/widget/tabs/d;Lfda;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;Lcom/yandex/div/internal/widget/tabs/b$c;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iput-object v10, v9, Lpr2;->r:Landroid/view/View;

    move/from16 v0, p5

    iput-boolean v0, v9, Lpr2;->s:Z

    iput-object v11, v9, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    iput-object v12, v9, Lpr2;->u:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object v13, v9, Lpr2;->v:Lrg2;

    iput-object v14, v9, Lpr2;->w:Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;

    iput-object v15, v9, Lpr2;->x:Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;

    move-object/from16 v0, p12

    iput-object v0, v9, Lpr2;->y:Lcom/yandex/div/core/state/DivStatePath;

    move-object/from16 v0, p13

    iput-object v0, v9, Lpr2;->z:Lzn2;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v9, Lpr2;->A:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v9, Lpr2;->B:Ljava/util/Map;

    new-instance v0, Lwv7;

    iget-object v1, v9, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    const-string v2, "mPager"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lwv7;-><init>(Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;)V

    iput-object v0, v9, Lpr2;->C:Lwv7;

    return-void
.end method

.method public static final A(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic y(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lpr2;->A(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Landroid/view/ViewGroup;Lyp2;I)Landroid/view/ViewGroup;
    .locals 2

    const-string v0, "tabView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyr8;->a:Lyr8;

    iget-object v1, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p2}, Lyp2;->e()Lcom/yandex/div2/DivTabs$Item;

    move-result-object p2

    iget-object p2, p2, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    iget-object v0, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p3}, Lpr2;->C(Lcom/yandex/div2/Div;Loj3;I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lpr2;->A:Ljava/util/Map;

    new-instance v1, Lyca;

    invoke-direct {v1, p3, p2, v0}, Lyca;-><init>(ILcom/yandex/div2/Div;Landroid/view/View;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public final C(Lcom/yandex/div2/Div;Loj3;I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lpr2;->u:Lcom/yandex/div/core/view2/DivViewCreator;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p3, p1}, Lpr2;->E(ILcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p3

    iget-object v0, p0, Lpr2;->v:Lrg2;

    iget-object p0, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0, p0, p2, p1, p3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    return-object p2
.end method

.method public final D()Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;
    .locals 0

    iget-object p0, p0, Lpr2;->x:Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;

    return-object p0
.end method

.method public final E(ILcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 3

    iget-object v0, p0, Lpr2;->B:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p2

    iget-object p0, p0, Lpr2;->y:Lcom/yandex/div/core/state/DivStatePath;

    invoke-static {p2, p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o0(Log2;ILcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Lcom/yandex/div/core/state/DivStatePath;

    return-object v2
.end method

.method public final F()Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;
    .locals 0

    iget-object p0, p0, Lpr2;->w:Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;

    return-object p0
.end method

.method public final G()Lwv7;
    .locals 0

    iget-object p0, p0, Lpr2;->C:Lwv7;

    return-object p0
.end method

.method public final H()Z
    .locals 0

    iget-boolean p0, p0, Lpr2;->s:Z

    return p0
.end method

.method public final I()V
    .locals 7

    iget-object v0, p0, Lpr2;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyca;

    invoke-virtual {v1}, Lyca;->b()I

    move-result v3

    invoke-virtual {v1}, Lyca;->a()Lcom/yandex/div2/Div;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lpr2;->E(ILcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    iget-object v4, p0, Lpr2;->v:Lrg2;

    iget-object v5, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lyca;->c()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Lyca;->a()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1, v3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J(Lcom/yandex/div/core/view2/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    return-void
.end method

.method public final K(Lcom/yandex/div/internal/widget/tabs/b$g;I)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    iget-object v1, p0, Lpr2;->r:Landroid/view/View;

    invoke-static {v1}, Lvr8;->a(Landroid/view/View;)Lqj3;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Lcom/yandex/div/internal/widget/tabs/b;->v(Lcom/yandex/div/internal/widget/tabs/b$g;Loj3;Lqj3;)V

    iget-object p1, p0, Lpr2;->A:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final L(Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpr2;->y:Lcom/yandex/div/core/state/DivStatePath;

    iget-object p0, p0, Lpr2;->B:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public M(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "tabView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpr2;->A:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyr8;->a:Lyr8;

    iget-object p0, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lyr8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public bridge synthetic o(Landroid/view/ViewGroup;Lcom/yandex/div/internal/widget/tabs/b$g$a;I)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lyp2;

    invoke-virtual {p0, p1, p2, p3}, Lpr2;->B(Landroid/view/ViewGroup;Lyp2;I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lpr2;->M(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final z(Loj3;Lcom/yandex/div2/Div$p;)Lcom/yandex/div2/Div$p;
    .locals 6

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpr2;->z:Lzn2;

    iget-object v1, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzn2;->a(Lei2;)Ldo2;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/yandex/div/core/downloader/DivPatchApply;

    invoke-direct {v1, v0}, Lcom/yandex/div/core/downloader/DivPatchApply;-><init>(Ldo2;)V

    invoke-virtual {v1, p2, p1}, Lcom/yandex/div/core/downloader/DivPatchApply;->o(Lcom/yandex/div2/Div;Loj3;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.yandex.div2.Div.Tabs"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/yandex/div2/Div$p;

    iget-object v0, p0, Lpr2;->t:Lcom/yandex/div/core/view2/a;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivTabs$Item;

    new-instance v4, Lyp2;

    const-string v5, "displayMetrics"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, v0, p1}, Lyp2;-><init>(Lcom/yandex/div2/DivTabs$Item;Landroid/util/DisplayMetrics;Loj3;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lor2;

    invoke-direct {p1, v2}, Lor2;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/b;->e:Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpr2;->K(Lcom/yandex/div/internal/widget/tabs/b$g;I)V

    return-object p2
.end method
