.class public abstract Lme2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lme2;->g(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V

    return-void
.end method

.method public static final synthetic b(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;Loj3;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lme2;->i(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;Loj3;Le74;)V

    return-void
.end method

.method public static final synthetic c(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lme2;->j(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V

    return-void
.end method

.method public static final synthetic d(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lme2;->k(Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lme2;->l(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic f(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lme2;->m(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final g(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;La15;Loj3;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G(Landroid/view/View;La15;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public static final h(Landroid/view/View;)Z
    .locals 1

    sget v0, Lcom/yandex/div/R$id;->div_penetrating_longtap_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final i(Landroid/view/View;Lcom/yandex/div/json/expressions/Expression;Loj3;Le74;)V
    .locals 1

    instance-of v0, p0, Lqj3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lqj3;

    invoke-virtual {p1, p2, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p1

    invoke-interface {p0, p1}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public static final j(Landroid/view/View;Ljava/util/List;Loj3;Le74;)V
    .locals 2

    instance-of v0, p0, Lqj3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAction;

    move-object v1, p0

    check-cast v1, Lqj3;

    iget-object v0, v0, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v1, v0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final k(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 3

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAction;

    iget-object v2, v2, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static final l(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lme2;->h(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lme2;->l(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static final m(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1

    sget v0, Lcom/yandex/div/R$id;->div_penetrating_longtap_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Landroid/view/View;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-static {p0, p1}, Lme2;->m(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
