.class public final Lcom/yandex/div/core/view2/divs/DivGridBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lco2;

.field public final d:Loj8;

.field public final e:Loj8;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lco2;Loj8;Loj8;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divViewCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->c:Lco2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->d:Loj8;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->e:Loj8;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivGridBinder;Landroid/view/View;Loj3;Log2;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->h(Landroid/view/View;Loj3;Log2;)V

    return-void
.end method

.method private final i(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)Ljava/util/List;
    .locals 4

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getComplexRebindInProgress$div_release()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->c:Lco2;

    invoke-virtual {p0, p2, v1}, Lco2;->c(Lcom/yandex/div/core/view2/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    add-int/lit8 v1, p3, 0x1

    add-int/2addr p3, p4

    new-instance v2, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move p3, v1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p3}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;

    check-cast p3, Lcom/yandex/div2/DivGrid;

    check-cast p4, Lcom/yandex/div2/DivGrid;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGrid;Lcom/yandex/div2/DivGrid;)V

    return-void
.end method

.method public final g(Landroid/view/View;Loj3;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    const/16 v0, 0x1f

    shr-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' to Int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_3
    cmp-long p2, p2, v2

    if-lez p2, :cond_4

    const p2, 0x7fffffff

    goto :goto_2

    :cond_4
    const/high16 p2, -0x80000000

    goto :goto_2

    :cond_5
    :goto_1
    long-to-int p2, p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->a()I

    move-result p3

    if-eq p3, p2, :cond_7

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/DivLayoutParams;->l(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public final h(Landroid/view/View;Loj3;Log2;)V
    .locals 1

    invoke-interface {p3}, Log2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->g(Landroid/view/View;Loj3;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-interface {p3}, Log2;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->j(Landroid/view/View;Loj3;Lcom/yandex/div/json/expressions/Expression;)V

    return-void
.end method

.method public final j(Landroid/view/View;Loj3;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    const/16 v0, 0x1f

    shr-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable convert \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\' to Int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_3
    cmp-long p2, p2, v2

    if-lez p2, :cond_4

    const p2, 0x7fffffff

    goto :goto_2

    :cond_4
    const/high16 p2, -0x80000000

    goto :goto_2

    :cond_5
    :goto_1
    long-to-int p2, p2

    goto :goto_2

    :cond_6
    const/4 p2, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->g()I

    move-result p3

    if-eq p3, p2, :cond_7

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/DivLayoutParams;->q(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method

.method public k(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGrid;Lcom/yandex/div2/DivGrid;)V
    .locals 16

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    const-string v0, "<this>"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->setReleaseViewVisitor$div_release(Lzr8;)V

    iget-object v2, v14, Lcom/yandex/div2/DivGrid;->b:Lcom/yandex/div2/DivAction;

    iget-object v3, v14, Lcom/yandex/div2/DivGrid;->d:Ljava/util/List;

    iget-object v4, v14, Lcom/yandex/div2/DivGrid;->A:Ljava/util/List;

    iget-object v5, v14, Lcom/yandex/div2/DivGrid;->q:Ljava/util/List;

    iget-object v6, v14, Lcom/yandex/div2/DivGrid;->w:Ljava/util/List;

    iget-object v7, v14, Lcom/yandex/div2/DivGrid;->v:Ljava/util/List;

    iget-object v8, v14, Lcom/yandex/div2/DivGrid;->E:Ljava/util/List;

    iget-object v9, v14, Lcom/yandex/div2/DivGrid;->D:Ljava/util/List;

    iget-object v10, v14, Lcom/yandex/div2/DivGrid;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivGrid;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v11

    iget-object v12, v14, Lcom/yandex/div2/DivGrid;->k:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v12}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v0, v14, Lcom/yandex/div2/DivGrid;->l:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivGridBinder$bind$1;

    invoke-direct {v2, v13}, Lcom/yandex/div/core/view2/divs/DivGridBinder$bind$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->addSubscription(Lqc2;)V

    iget-object v0, v14, Lcom/yandex/div2/DivGrid;->n:Lcom/yandex/div/json/expressions/Expression;

    iget-object v1, v14, Lcom/yandex/div2/DivGrid;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v13, v0, v1, v2}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->p(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Loj3;)V

    return-void
.end method

.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGrid;Lcom/yandex/div2/DivGrid;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 4

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-static {p3}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-static {p3, v0}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->e:Loj8;

    invoke-static {p1, v1, v2, v3}, Loo8;->a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Loj8;)Z

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->o(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-static {p0, v0}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object p0

    if-eqz p4, :cond_0

    iget-object p3, p4, Lcom/yandex/div2/DivGrid;->y:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-static {p3, v0}, Lbh2;->s(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p2, p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O0(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final m(Landroid/view/View;Log2;Loj3;)V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    const/4 v3, 0x0

    invoke-static {p1}, Lvr8;->a(Landroid/view/View;)Lqj3;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->F(Landroid/view/View;Log2;Log2;Loj3;Lqj3;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->h(Landroid/view/View;Loj3;Log2;)V

    instance-of v0, p1, Lqj3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivGridBinder$bindLayoutParams$callback$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivGridBinder$bindLayoutParams$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivGridBinder;Landroid/view/View;Loj3;Log2;)V

    check-cast p1, Lqj3;

    invoke-interface {p2}, Log2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    invoke-interface {p2}, Log2;->e()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public n(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div2/Div$f;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lwu2;->d(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object v4

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->getDiv()Lcom/yandex/div2/Div$f;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGrid;Lcom/yandex/div2/DivGrid;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final o(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/core/view2/a;Ljava/util/List;Lcom/yandex/div/core/state/DivStatePath;)Ljava/util/List;
    .locals 10

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    check-cast p3, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v6, Lcom/yandex/div2/Div;

    add-int/2addr v4, v5

    invoke-direct {p0, p1, p2, v6, v4}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->i(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move v4, v7

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v4, Lcom/yandex/div2/Div;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v7

    invoke-static {v7, v3, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->o0(Log2;ILcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v3

    new-instance v8, Lcom/yandex/div/internal/widget/DivLayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Lcom/yandex/div/internal/widget/DivLayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->d:Loj8;

    invoke-interface {v8}, Loj8;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrg2;

    const-string v9, "childView"

    invoke-static {v6, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p2, v6, v4, v3}, Lrg2;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0, v6, v7, v1}, Lcom/yandex/div/core/view2/divs/DivGridBinder;->m(Landroid/view/View;Log2;Loj3;)V

    invoke-static {v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->b0(Log2;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v6, v4}, Lcom/yandex/div/core/view2/Div2View;->bindViewToDiv$div_release(Landroid/view/View;Lcom/yandex/div2/Div;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v6}, Lcom/yandex/div/core/view2/Div2View;->unbindViewFromDiv$div_release(Landroid/view/View;)Lcom/yandex/div2/Div;

    :goto_2
    move v3, v5

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public final p(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Loj3;)V
    .locals 1

    invoke-virtual {p2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAlignmentVertical;

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/DivViewGroup;->setGravity(I)V

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivGridBinder$observeContentAlignment$callback$1;

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/yandex/div/core/view2/divs/DivGridBinder$observeContentAlignment$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div/json/expressions/Expression;Loj3;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2, p4, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->addSubscription(Lqc2;)V

    invoke-virtual {p3, p4, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final q(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;Lcom/yandex/div2/Div$f;)V
    .locals 6

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;->setDiv(Lcom/yandex/div2/Div$f;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p3

    invoke-static {p3}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "childView"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, p1

    :cond_0
    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivGridBinder;->d:Loj8;

    invoke-interface {v4}, Loj8;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrg2;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/Div;

    invoke-virtual {v4, v3, v2, v5}, Lrg2;->w(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
