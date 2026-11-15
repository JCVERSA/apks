.class public final Lcom/yandex/div/core/view2/divs/DivBaseBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBaseBinder$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;

.field public final b:Lcom/yandex/div/core/tooltip/DivTooltipController;

.field public final c:Llj2;

.field public final d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;Lcom/yandex/div/core/tooltip/DivTooltipController;Llj2;Lcom/yandex/div/core/view2/DivAccessibilityBinder;)V
    .locals 1

    const-string v0, "divBackgroundBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tooltipController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divFocusBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divAccessibilityBinder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->c:Llj2;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    return-void
.end method

.method public static final H(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;Landroid/view/View;IIIIIIII)V
    .locals 15

    const-string v0, "$this_bindLayoutProvider"

    move-object v1, p0

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$divView"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$variablesHolder"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bindingContext"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "metrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p12

    move/from16 v9, p14

    invoke-virtual/range {v1 .. v10}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->T(Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;IIIILoj3;)V

    invoke-virtual/range {p5 .. p5}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v10

    move-object/from16 v4, p6

    move/from16 v6, p9

    move/from16 v7, p11

    move/from16 v8, p13

    move/from16 v9, p15

    invoke-virtual/range {v1 .. v10}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->T(Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;IIIILoj3;)V

    return-void
.end method

.method public static final I(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)Z
    .locals 5

    const-string v0, "$variablesHolder"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->z()V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getLayoutSizes$div_release()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loj3;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lbob;->a:Lbob$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v4, v2, v1}, Lbob$a;->d(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Ljava/lang/String;Loj3;)Lcom/yandex/div/data/VariableMutationException;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getLayoutSizes$div_release()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->I(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p15}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->H(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->j(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->k(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V

    return-void
.end method

.method public static final synthetic e(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->l(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Z)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->n(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Z)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)Lcom/yandex/div/core/view2/DivAccessibilityBinder;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    return-object p0
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->R(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->S(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->w(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;Lcom/yandex/div/core/view2/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->c:Llj2;

    invoke-virtual {p0, p1, p2, p3, p4}, Llj2;->e(Landroid/view/View;Lcom/yandex/div/core/view2/a;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final B(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 1

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->r(Lcom/yandex/div2/DivSize;Lcom/yandex/div2/DivSize;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->m(Landroid/view/View;Log2;Loj3;)V

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->h0(Lcom/yandex/div2/DivSize;Loj3;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->y(Landroid/view/View;F)V

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->S(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p3

    invoke-static {p1, p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->u(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->R(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p3

    invoke-static {p1, p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V

    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-static {p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->L(Lcom/yandex/div2/DivSize;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p3

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindHeight$1;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindHeight$1;-><init>(Landroid/view/View;Log2;Loj3;Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    invoke-static {p5, p3, p4, v0}, Lsj3;->n(Lqj3;Lcom/yandex/div2/DivSize;Loj3;Le74;)V

    return-void
.end method

.method public final C(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;)V
    .locals 0

    invoke-interface {p3}, Log2;->getId()Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Log2;->getId()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p0, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->i()Ltv2;

    move-result-object p0

    invoke-interface {p3}, Log2;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ltv2;->a(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p3}, Log2;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public final D(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const-string p0, "divView"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->i()Ltv2;

    move-result-object p0

    invoke-virtual {p0, p3}, Ltv2;->a(Ljava/lang/String;)I

    move-result p0

    :goto_0
    invoke-static {p2, p3, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public final E(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LayoutParams should be initialized before view binding"

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->P(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->B(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->J(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->u(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    return-void
.end method

.method public final F(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 1

    const-string v0, "target"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newDiv"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->E(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    return-void
.end method

.method public final G(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 14

    move-object v10, p1

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p3 .. p3}, Log2;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/yandex/div2/DivLayoutProvider;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Log2;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/yandex/div2/DivLayoutProvider;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v4, v5, v6, v3}, Lg1a;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/yandex/div2/DivLayoutProvider;->a:Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-interface/range {p4 .. p4}, Log2;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/yandex/div2/DivLayoutProvider;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    invoke-static {v2, v4, v5, v6, v3}, Lg1a;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Log2;->v()Lcom/yandex/div2/DivLayoutProvider;

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->Q(Landroid/view/View;)V

    :cond_6
    iget-object v4, v1, Lcom/yandex/div2/DivLayoutProvider;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/yandex/div2/DivLayoutProvider;->a:Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v11}, Lcom/yandex/div/core/view2/Div2View;->getVariablesHolders$div_release()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    if-nez v1, :cond_9

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    invoke-direct {v1}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v1, v0, v6}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->D(Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/Div2View;->getVariablesHolders$div_release()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v12, v1

    goto :goto_3

    :cond_9
    move-object/from16 v6, p2

    goto :goto_2

    :goto_3
    new-instance v13, Lpg2;

    move-object v0, v13

    move-object v1, p1

    move-object v2, p0

    move-object v3, v11

    move-object v5, v12

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lpg2;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    :cond_b
    invoke-virtual {p1, v13}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    sget v0, Lcom/yandex/div/R$id;->div_layout_provider_listener_id:I

    invoke-virtual {p1, v0, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/Div2View;->getClearVariablesListener$div_release()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Lqg2;

    invoke-direct {v0, v12, v11}, Lqg2;-><init>(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {v11, v0}, Lcom/yandex/div/core/view2/Div2View;->setClearVariablesListener$div_release(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Neither width_variable_name nor height_variable_name found."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final J(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 0

    invoke-interface {p2}, Log2;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Log2;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->r(Landroid/view/View;Lcom/yandex/div2/DivEdgeInsets;Loj3;)V

    invoke-interface {p2}, Log2;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->A(Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->d()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindMargins$1;

    invoke-direct {p3, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindMargins$1;-><init>(Landroid/view/View;Log2;Loj3;)V

    invoke-static {p5, p0, p4, p3}, Lsj3;->f(Lqj3;Lcom/yandex/div2/DivEdgeInsets;Loj3;Le74;)V

    return-void
.end method

.method public final K(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V
    .locals 3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->i()Ltv2;

    move-result-object p0

    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/yandex/div2/DivFocus$NextFocusIds;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/yandex/div2/DivFocus$NextFocusIds;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p2, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Ltv2;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    invoke-virtual {p0, v1}, Ltv2;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$1;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$1;-><init>(Landroid/view/View;Ltv2;)V

    invoke-virtual {p2, p5, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    invoke-interface {p6, p2}, Lqj3;->addSubscription(Lqc2;)V

    :goto_4
    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/yandex/div2/DivFocus$NextFocusIds;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object p2, v0

    :goto_5
    if-eqz p4, :cond_7

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/yandex/div2/DivFocus$NextFocusIds;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    invoke-static {p2, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_9

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v1, v0

    :goto_7
    invoke-virtual {p0, v1}, Ltv2;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    if-eqz p2, :cond_b

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$2;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$2;-><init>(Landroid/view/View;Ltv2;)V

    invoke-virtual {p2, p5, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p2

    goto :goto_8

    :cond_b
    move-object p2, v0

    :goto_8
    invoke-interface {p6, p2}, Lqj3;->addSubscription(Lqc2;)V

    :goto_9
    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p2, p2, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p2, :cond_c

    iget-object p2, p2, Lcom/yandex/div2/DivFocus$NextFocusIds;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_a

    :cond_c
    move-object p2, v0

    :goto_a
    if-eqz p4, :cond_d

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/yandex/div2/DivFocus$NextFocusIds;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_b

    :cond_d
    move-object v1, v0

    :goto_b
    invoke-static {p2, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    if-eqz p2, :cond_f

    invoke-virtual {p2, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    :cond_f
    move-object v1, v0

    :goto_c
    invoke-virtual {p0, v1}, Ltv2;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_e

    :cond_10
    if-eqz p2, :cond_11

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$3;-><init>(Landroid/view/View;Ltv2;)V

    invoke-virtual {p2, p5, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p2

    goto :goto_d

    :cond_11
    move-object p2, v0

    :goto_d
    invoke-interface {p6, p2}, Lqj3;->addSubscription(Lqc2;)V

    :goto_e
    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p2

    if-eqz p2, :cond_12

    iget-object p2, p2, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p2, :cond_12

    iget-object p2, p2, Lcom/yandex/div2/DivFocus$NextFocusIds;->e:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_f

    :cond_12
    move-object p2, v0

    :goto_f
    if-eqz p4, :cond_13

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lcom/yandex/div2/DivFocus$NextFocusIds;->e:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_10

    :cond_13
    move-object v1, v0

    :goto_10
    invoke-static {p2, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_13

    :cond_14
    if-eqz p2, :cond_15

    invoke-virtual {p2, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_11

    :cond_15
    move-object v1, v0

    :goto_11
    invoke-virtual {p0, v1}, Ltv2;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_13

    :cond_16
    if-eqz p2, :cond_17

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$4;

    invoke-direct {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$4;-><init>(Landroid/view/View;Ltv2;)V

    invoke-virtual {p2, p5, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p2

    goto :goto_12

    :cond_17
    move-object p2, v0

    :goto_12
    invoke-interface {p6, p2}, Lqj3;->addSubscription(Lqc2;)V

    :goto_13
    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-object p2, p2, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p2, :cond_18

    iget-object p2, p2, Lcom/yandex/div2/DivFocus$NextFocusIds;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_14

    :cond_18
    move-object p2, v0

    :goto_14
    if-eqz p4, :cond_19

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p3

    if-eqz p3, :cond_19

    iget-object p3, p3, Lcom/yandex/div2/DivFocus;->c:Lcom/yandex/div2/DivFocus$NextFocusIds;

    if-eqz p3, :cond_19

    iget-object p3, p3, Lcom/yandex/div2/DivFocus$NextFocusIds;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_15

    :cond_19
    move-object p3, v0

    :goto_15
    invoke-static {p2, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1a

    goto :goto_17

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual {p2, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_16

    :cond_1b
    move-object p3, v0

    :goto_16
    invoke-virtual {p0, p3}, Ltv2;->a(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1c

    goto :goto_17

    :cond_1c
    if-eqz p2, :cond_1d

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$5;

    invoke-direct {p3, p1, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindNextFocus$$inlined$bindNextFocusId$5;-><init>(Landroid/view/View;Ltv2;)V

    invoke-virtual {p2, p5, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_1d
    invoke-interface {p6, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_17
    return-void
.end method

.method public final L(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 0

    instance-of p0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    if-nez p0, :cond_3

    invoke-interface {p2}, Log2;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Log2;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->w(Landroid/view/View;Lcom/yandex/div2/DivEdgeInsets;Loj3;)V

    invoke-interface {p2}, Log2;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->A(Lcom/yandex/div2/DivEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->t()Lcom/yandex/div2/DivEdgeInsets;

    move-result-object p0

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindPaddings$1;

    invoke-direct {p3, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindPaddings$1;-><init>(Landroid/view/View;Log2;Loj3;)V

    invoke-static {p5, p0, p4, p3}, Lsj3;->f(Lqj3;Lcom/yandex/div2/DivEdgeInsets;Loj3;Le74;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final M(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 0

    invoke-interface {p2}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->t(Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivTransform;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p0

    invoke-static {p1, p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x(Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V

    invoke-interface {p2}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->N(Lcom/yandex/div2/DivTransform;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p0

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindTransform$1;

    invoke-direct {p3, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindTransform$1;-><init>(Landroid/view/View;Log2;Loj3;)V

    invoke-static {p5, p0, p4, p3}, Lsj3;->p(Lqj3;Lcom/yandex/div2/DivTransform;Loj3;Le74;)V

    return-void
.end method

.method public final N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lmk2;

    invoke-interface {v0}, Lqj3;->closeAllSubscription()V

    invoke-interface {v0, p3}, Lmk2;->setDiv(Lcom/yandex/div2/Div;)V

    invoke-interface {v0, p1}, Lmk2;->setBindingContext(Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p3

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->o(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V

    return-void
.end method

.method public final O(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V
    .locals 7

    invoke-interface {p3}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p4, 0x1

    :goto_1
    move v5, p4

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->n(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Z)V

    invoke-interface {p3}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p4

    invoke-static {p4}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-void

    :cond_3
    invoke-interface {p3}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p4

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindVisibility$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;)V

    invoke-virtual {p4, p5, v6}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p6, p0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final P(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 1

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->r(Lcom/yandex/div2/DivSize;Lcom/yandex/div2/DivSize;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->z(Landroid/view/View;Log2;Loj3;)V

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->h0(Lcom/yandex/div2/DivSize;Loj3;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->n(Landroid/view/View;F)V

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->S(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p3

    invoke-static {p1, p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->v(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->R(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    move-result-object p3

    invoke-static {p1, p3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->t(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    invoke-static {p3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->L(Lcom/yandex/div2/DivSize;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p3

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindWidth$1;

    invoke-direct {v0, p1, p2, p4, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindWidth$1;-><init>(Landroid/view/View;Log2;Loj3;Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    invoke-static {p5, p3, p4, v0}, Lsj3;->n(Lqj3;Lcom/yandex/div2/DivSize;Loj3;Le74;)V

    return-void
.end method

.method public final Q(Landroid/view/View;)V
    .locals 1

    sget p0, Lcom/yandex/div/R$id;->div_layout_provider_listener_id:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/View$OnLayoutChangeListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final R(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    .locals 1

    instance-of p0, p1, Lcom/yandex/div2/DivSize$d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivSize$d;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    :cond_1
    return-object v0
.end method

.method public final S(Lcom/yandex/div2/DivSize;)Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    .locals 1

    instance-of p0, p1, Lcom/yandex/div2/DivSize$d;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivSize$d;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    :cond_1
    return-object v0
.end method

.method public final T(Lcom/yandex/div/core/view2/Div2View;Landroid/util/DisplayMetrics;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;IIIILoj3;)V
    .locals 0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p6, p5

    sub-int/2addr p8, p7

    if-ne p6, p8, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;->A(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/Throwable;

    const-string p2, "Size subscriber affects original view size. Relayout was prevented."

    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getLayoutSizes$div_release()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0, p9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast p1, Ljava/util/Map;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->m0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public final j(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->c(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAccessibility$Mode;Log2;)V

    return-void
.end method

.method public final l(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Landroid/view/View;Log2;)V
    .locals 0

    invoke-interface {p2}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final n(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Z)V
    .locals 9

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getDivTransitionHandler$div_release()Lcom/yandex/div/core/view2/animations/DivTransitionHandler;

    move-result-object p0

    invoke-interface {p3}, Log2;->getVisibility()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivVisibility;

    sget-object v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-interface {p3}, Log2;->n()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-static {v6}, Lwt2;->g(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->f(Landroid/view/View;)Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;->b()I

    move-result v5

    :cond_5
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getViewComponent$div_release()Lcom/yandex/div/core/dagger/Div2ViewComponent;

    move-result-object v8

    invoke-interface {v8}, Lcom/yandex/div/core/dagger/Div2ViewComponent;->c()Lut2;

    move-result-object v8

    if-eq v5, v3, :cond_6

    if-ne v5, v4, :cond_7

    :cond_6
    if-nez v0, :cond_7

    invoke-interface {p3}, Log2;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p3

    invoke-virtual {v8, p3, v2, p4}, Lut2;->e(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object v7

    goto :goto_1

    :cond_7
    if-eq v0, v3, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    if-nez v5, :cond_9

    if-nez p5, :cond_9

    invoke-interface {p3}, Log2;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p3

    invoke-virtual {v8, p3, v1, p4}, Lut2;->e(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object v7

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_a

    invoke-static {p2}, Landroidx/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_a
    :goto_1
    if-eqz v7, :cond_b

    invoke-virtual {v7, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    :cond_b
    :goto_2
    if-eqz v7, :cond_c

    new-instance p3, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;

    invoke-direct {p3, v0}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;-><init>(I)V

    invoke-virtual {p0, v7, p1, p3}, Lcom/yandex/div/core/view2/animations/DivTransitionHandler;->i(Landroidx/transition/Transition;Landroid/view/View;Lcom/yandex/div/core/view2/animations/DivTransitionHandler$a$a;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->trackChildrenVisibility()V

    return-void
.end method

.method public final o(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lvr8;->a(Landroid/view/View;)Lqj3;

    move-result-object v14

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    move-object/from16 v15, p4

    invoke-virtual {v9, v10, v13, v11, v15}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->C(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->E(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-virtual/range {p0 .. p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->G(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->p(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->v(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v8}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->x(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->z(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;)V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->L(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->K(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V

    invoke-interface/range {p3 .. p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivFocus;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface/range {p3 .. p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v2, Lcom/yandex/div2/DivFocus;->d:Ljava/util/List;

    :cond_1
    move-object/from16 v2, p2

    invoke-virtual {v9, v10, v2, v0, v1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->A(Landroid/view/View;Lcom/yandex/div/core/view2/a;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->O(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v12

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->M(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-interface/range {p3 .. p3}, Log2;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v9, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    invoke-virtual {v1, v10, v0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->o(Landroid/view/View;Ljava/util/List;)V

    :cond_2
    iget-object v0, v9, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v9, v10, v11}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->m(Landroid/view/View;Log2;)V

    :cond_3
    return-void
.end method

.method public final p(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Log2;Loj3;Lqj3;)V
    .locals 6

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->k(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    sget-object p2, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->d(Landroid/view/View;Log2;Lcom/yandex/div2/DivAccessibility$Type;Loj3;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->t(Landroid/view/View;Log2;Log2;Loj3;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->q(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->r(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Lqj3;)V

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->s(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    return-void
.end method

.method public final q(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 3

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object p3, v1

    :goto_3
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object p3, v1

    :goto_4
    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->j(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_7
    move-object p3, v1

    :goto_6
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_8
    move-object p3, v1

    :goto_7
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_9

    return-void

    :cond_9
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityDescriptionAndHint$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Log2;Loj3;)V

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_8

    :cond_a
    move-object p0, v1

    :goto_8
    invoke-interface {p5, p0}, Lqj3;->addSubscription(Lqc2;)V

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/DivAccessibility;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_b
    invoke-interface {p5, v1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final r(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;Lqj3;)V
    .locals 8

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->k(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Lcom/yandex/div2/DivAccessibility$Mode;)V

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityMode$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Log2;Loj3;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_3
    invoke-interface {p5, v1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final s(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 2

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->l(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object p3, v1

    :goto_3
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/yandex/div2/DivAccessibility;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p2, :cond_6

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityStateDescription$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAccessibilityStateDescription$1;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Landroid/view/View;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_6
    invoke-interface {p5, v1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final t(Landroid/view/View;Log2;Log2;Loj3;)V
    .locals 2

    if-eqz p3, :cond_2

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p3}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    :cond_1
    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->d:Lcom/yandex/div/core/view2/DivAccessibilityBinder;

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/yandex/div2/DivAccessibility;->g:Lcom/yandex/div2/DivAccessibility$Type;

    if-nez p3, :cond_4

    :cond_3
    sget-object p3, Lcom/yandex/div2/DivAccessibility$Type;->AUTO:Lcom/yandex/div2/DivAccessibility$Type;

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->d(Landroid/view/View;Log2;Lcom/yandex/div2/DivAccessibility$Type;Loj3;)V

    return-void
.end method

.method public final u(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 2

    invoke-interface {p2}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    invoke-static {p0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_2

    :cond_3
    move-object p0, v0

    :goto_2
    invoke-interface {p2}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_3

    :cond_4
    move-object p3, v0

    :goto_3
    invoke-static {p1, p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d(Landroid/view/View;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    invoke-interface {p2}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p2}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAlignment$callback$1;

    invoke-direct {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAlignment$callback$1;-><init>(Landroid/view/View;Log2;Loj3;)V

    invoke-interface {p2}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, p4, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    invoke-interface {p5, p1}, Lqj3;->addSubscription(Lqc2;)V

    invoke-interface {p2}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, p4, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_7
    invoke-interface {p5, v0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final v(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V
    .locals 2

    invoke-interface {p2}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->e(Landroid/view/View;D)V

    invoke-interface {p2}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    new-instance p2, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAlpha$1;

    invoke-direct {p2, p1}, Lcom/yandex/div/core/view2/divs/DivBaseBinder$bindAlpha$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p4, p2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p5, p0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final w(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->a:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;

    invoke-interface {p3}, Log2;->getBackground()Ljava/util/List;

    move-result-object v3

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Log2;->getBackground()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p0

    :goto_0
    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivFocus;->a:Ljava/util/List;

    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object v5, p0

    :goto_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p0, p3, Lcom/yandex/div2/DivFocus;->a:Ljava/util/List;

    :cond_2
    move-object v6, p0

    move-object v1, p2

    move-object v2, p1

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder;->f(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lqj3;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final y(Lcom/yandex/div/core/view2/a;Landroid/view/View;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newDiv"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->w(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lqj3;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->L(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    return-void
.end method

.method public final z(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->c:Llj2;

    invoke-interface {p3}, Log2;->q()Lcom/yandex/div2/DivFocus;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivFocus;->b:Lcom/yandex/div2/DivBorder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Log2;->B()Lcom/yandex/div2/DivBorder;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Llj2;->d(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)V

    return-void
.end method
