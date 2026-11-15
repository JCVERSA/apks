.class public final Lcom/yandex/div/core/view2/divs/DivSelectBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lcu2;

.field public final c:Lcom/yandex/div/core/expression/variables/c;

.field public final d:Lxc3;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcu2;Lcom/yandex/div/core/expression/variables/c;Lxc3;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typefaceResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->b:Lcu2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->c:Lcom/yandex/div/core/expression/variables/c;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->d:Lxc3;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivSelectBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    check-cast p3, Lcom/yandex/div2/DivSelect;

    check-cast p4, Lcom/yandex/div2/DivSelect;

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSelect;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/state/DivStatePath;)V

    return-void
.end method

.method public final g(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;)V
    .locals 2

    invoke-static {}, Lcom/yandex/div/core/view2/animations/UtilsKt;->e()Lcom/yandex/div2/DivAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->q0(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAnimation;Lbk2;)V

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/SelectView;->setItems(Ljava/util/List;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$applyOptions$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Ljava/util/List;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/SelectView;->setOnItemSelectedListener(Le74;)V

    return-void
.end method

.method public final h(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 3

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->b:Lcu2;

    iget-object v0, p2, Lcom/yandex/div2/DivSelect;->l:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p2, Lcom/yandex/div2/DivSelect;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivFontWeight;

    iget-object p2, p2, Lcom/yandex/div2/DivSelect;->q:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    :cond_1
    invoke-static {p0, v0, v2, v1}, Ldu2;->a(Lcu2;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public i(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSelect;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 2

    const-string p4, "<this>"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "bindingContext"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "div"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "path"

    invoke-static {p5, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p4

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/yandex/div/internal/widget/SelectView;->setFocusTracker(La15;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->q(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->p(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->o(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->n(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lcom/yandex/div2/DivSelect;->A:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    check-cast v1, Lcom/yandex/div2/DivSelect$Option;

    iget-object v3, v1, Lcom/yandex/div2/DivSelect$Option;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivSelect$Option;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivSelectBinder$createObservedItemList$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$createObservedItemList$1$1;-><init>(Ljava/util/List;ILcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    invoke-virtual {v3, p3, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move v0, v2

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final k(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 1

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeFontSize$callback$1;

    invoke-direct {p0, p2, p3, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeFontSize$callback$1;-><init>(Lcom/yandex/div2/DivSelect;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    iget-object v0, p2, Lcom/yandex/div2/DivSelect;->m:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    iget-object v0, p2, Lcom/yandex/div2/DivSelect;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    iget-object p2, p2, Lcom/yandex/div2/DivSelect;->n:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->t:Lcom/yandex/div/json/expressions/Expression;

    new-instance p2, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeHintColor$1;

    invoke-direct {p2, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeHintColor$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->u:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p2, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeHintText$1;

    invoke-direct {p2, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeHintText$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final n(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 1

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->y:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->n:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->q(Landroid/widget/TextView;Ljava/lang/Long;Lcom/yandex/div2/DivSizeUnit;)V

    return-void

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeLineHeight$callback$1;-><init>(Lcom/yandex/div/json/expressions/Expression;Loj3;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->n:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final o(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 0

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->F:Lcom/yandex/div/json/expressions/Expression;

    new-instance p2, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeTextColor$1;

    invoke-direct {p2, p1}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeTextColor$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;)V

    invoke-virtual {p0, p3, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final p(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeTypeface$callback$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeTypeface$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSelectBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    :cond_0
    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivSelect;->q:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final q(Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 4

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->d:Lxc3;

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v2

    invoke-virtual {p3}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivSelectBinder;->c:Lcom/yandex/div/core/expression/variables/c;

    iget-object v2, p2, Lcom/yandex/div2/DivSelect;->M:Ljava/lang/String;

    new-instance v3, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;

    invoke-direct {v3, p2, p1, v1, v0}, Lcom/yandex/div/core/view2/divs/DivSelectBinder$observeVariable$subscription$1;-><init>(Lcom/yandex/div2/DivSelect;Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;Lwc3;Loj3;)V

    invoke-virtual {p0, p3, v2, v3, p4}, Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder;->a(Lcom/yandex/div/core/view2/a;Ljava/lang/String;Lcom/yandex/div/core/expression/variables/TwoWayVariableBinder$a;Lcom/yandex/div/core/state/DivStatePath;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;->addSubscription(Lqc2;)V

    return-void
.end method
