.class public abstract Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$a;
    }
.end annotation


# direct methods
.method public static final synthetic a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lqj3;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->e(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lqj3;Le74;)V

    return-void
.end method

.method public static final synthetic b(Ljava/util/List;Loj3;Lqj3;Le74;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->f(Ljava/util/List;Loj3;Lqj3;Le74;)V

    return-void
.end method

.method public static final synthetic c(Lcom/yandex/div2/DivFontWeight;)Lcom/yandex/div/core/font/DivTypefaceType;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->i(Lcom/yandex/div2/DivFontWeight;)Lcom/yandex/div/core/font/DivTypefaceType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lpr2;Lcom/yandex/div2/DivTabs;Loj3;)Lpr2;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->j(Lpr2;Lcom/yandex/div2/DivTabs;Loj3;)Lpr2;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lqj3;Le74;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p2, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, p0, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p2, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, p0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p2, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p0, p0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p2, p0}, Lqj3;->addSubscription(Lqc2;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final f(Ljava/util/List;Loj3;Lqj3;Le74;)V
    .locals 2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v0, v0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div2/DivSize$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {v0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p2, v1}, Lqj3;->addSubscription(Lqc2;)V

    invoke-virtual {v0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p2, v0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final g(Lcom/yandex/div/internal/widget/tabs/TabView;Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lqj3;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriber"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyStyle$1;-><init>(Lcom/yandex/div2/DivTabs$TabTitleStyle;Loj3;Lcom/yandex/div/internal/widget/tabs/TabView;)V

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p3, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->k:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p3, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v1}, Lqj3;->addSubscription(Lqc2;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;

    invoke-direct {v3, v0, p0, p2, v2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$applyTabPaddings$1;-><init>(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/internal/widget/tabs/TabView;Loj3;Landroid/util/DisplayMetrics;)V

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-interface {p3, v2}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-interface {p3, v2}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-nez v2, :cond_2

    iget-object v4, v0, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-interface {p3, v2}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p3, v0}, Lqj3;->addSubscription(Lqc2;)V

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-interface {p3, v2}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2, v3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-interface {p3, v0}, Lqj3;->addSubscription(Lqc2;)V

    :goto_3
    invoke-interface {v3, v1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->o:Lcom/yandex/div/json/expressions/Expression;

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    :cond_5
    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$2;

    invoke-direct {v1, p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$2;-><init>(Lcom/yandex/div/internal/widget/tabs/TabView;)V

    invoke-static {v0, p3, p2, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->h(Lcom/yandex/div/json/expressions/Expression;Lqj3;Loj3;Le74;)V

    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->l:Lcom/yandex/div/json/expressions/Expression;

    :cond_6
    new-instance p1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$3;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$observeStyle$3;-><init>(Lcom/yandex/div/internal/widget/tabs/TabView;)V

    invoke-static {v0, p3, p2, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->h(Lcom/yandex/div/json/expressions/Expression;Lqj3;Loj3;Le74;)V

    return-void
.end method

.method public static final h(Lcom/yandex/div/json/expressions/Expression;Lqj3;Loj3;Le74;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public static final i(Lcom/yandex/div2/DivFontWeight;)Lcom/yandex/div/core/font/DivTypefaceType;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div/core/font/DivTypefaceType;->BOLD:Lcom/yandex/div/core/font/DivTypefaceType;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/div/core/font/DivTypefaceType;->LIGHT:Lcom/yandex/div/core/font/DivTypefaceType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div/core/font/DivTypefaceType;->REGULAR:Lcom/yandex/div/core/font/DivTypefaceType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/core/font/DivTypefaceType;->MEDIUM:Lcom/yandex/div/core/font/DivTypefaceType;

    :goto_0
    return-object p0
.end method

.method public static final j(Lpr2;Lcom/yandex/div2/DivTabs;Loj3;)Lpr2;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lpr2;->H()Z

    move-result v1

    iget-object p1, p1, Lcom/yandex/div2/DivTabs;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method
