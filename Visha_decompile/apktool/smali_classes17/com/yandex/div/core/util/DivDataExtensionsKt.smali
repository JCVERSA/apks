.class public abstract Lcom/yandex/div/core/util/DivDataExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(Lcom/yandex/div2/DivEdgeInsets;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final B(Lcom/yandex/div2/DivFilter;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivFilter$c;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivFilter$a;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final C(Lcom/yandex/div2/DivFixedSize;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final D(Lcom/yandex/div2/DivInput$NativeInterface;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div2/DivInput$NativeInterface;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    return p0
.end method

.method public static final E(Lcom/yandex/div2/DivLinearGradient$ColorPoint;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final F(Lcom/yandex/div2/DivPivot;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivPivot$b;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivPivot$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivPivotFixed;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivPivotFixed;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivPivot$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivPivot$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$c;->c()Lcom/yandex/div2/DivPivotPercentage;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivPivotPercentage;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final G(Lcom/yandex/div2/DivPoint;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->y(Lcom/yandex/div2/DivDimension;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->y(Lcom/yandex/div2/DivDimension;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final H(Lcom/yandex/div2/DivRadialGradientCenter;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradientFixedCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientRelativeCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final I(Lcom/yandex/div2/DivRadialGradientRadius;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivRadialGradientRadius$b;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientRelativeRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final J(Lcom/yandex/div2/DivShadow;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->G(Lcom/yandex/div2/DivPoint;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final K(Lcom/yandex/div2/DivShape;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivShape$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivShape$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->M(Lcom/yandex/div2/DivStroke;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->C(Lcom/yandex/div2/DivFixedSize;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->C(Lcom/yandex/div2/DivFixedSize;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->C(Lcom/yandex/div2/DivFixedSize;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivShape$a;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/yandex/div2/DivShape$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivCircleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivCircleShape;->c:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->M(Lcom/yandex/div2/DivStroke;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivCircleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->C(Lcom/yandex/div2/DivFixedSize;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_1
    return v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final L(Lcom/yandex/div2/DivSize;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivSize$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_3

    :cond_1
    move v0, v2

    goto/16 :goto_3

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v1, :cond_3

    check-cast p0, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivMatchParentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    goto :goto_3

    :cond_3
    instance-of v1, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz v1, :cond_8

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_6
    move-object v1, v3

    :goto_2
    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz p0, :cond_7

    iget-object v3, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_7
    invoke-static {v3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_3
    return v0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final M(Lcom/yandex/div2/DivStroke;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final N(Lcom/yandex/div2/DivTransform;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->F(Lcom/yandex/div2/DivPivot;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->F(Lcom/yandex/div2/DivPivot;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final O(Lcom/yandex/div2/DivLinearGradient;Loj3;)Ly91;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lcom/yandex/div/core/util/DivDataExtensionsKt$toColormap$$inlined$sortedBy$1;

    invoke-direct {v2, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt$toColormap$$inlined$sortedBy$1;-><init>(Loj3;)V

    invoke-static {v0, v2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    iget-object v4, v4, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, p0, v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    iget-object v4, v4, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ly91;

    invoke-direct {p1, p0, v1}, Ly91;-><init>([I[F)V

    return-object p1

    :cond_2
    if-eqz p0, :cond_3

    new-instance v0, Ly91;

    invoke-interface {p0, p1}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object p0

    const/4 p1, 0x2

    invoke-direct {v0, p0, v1, p1, v1}, Ly91;-><init>([I[FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    sget-object p0, Ly91;->d:Ly91;

    return-object p0
.end method

.method public static final a(Lcom/yandex/div2/DivAbsoluteEdgeInsets;Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_7
    move-object p0, v1

    :goto_6
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_8
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final b(Lcom/yandex/div2/DivBackground;Lcom/yandex/div2/DivBackground;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_11

    :cond_0
    :goto_0
    move v0, v1

    goto/16 :goto_3

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivBackground$f;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/yandex/div2/DivBackground$f;

    if-eqz v2, :cond_11

    check-cast p0, Lcom/yandex/div2/DivBackground$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$f;->c()Lcom/yandex/div2/DivSolidBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivBackground$f;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$f;->c()Lcom/yandex/div2/DivSolidBackground;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/yandex/div2/DivBackground$b;

    if-eqz v2, :cond_9

    check-cast p0, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    if-nez v2, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_3
    instance-of v3, p1, Lcom/yandex/div2/DivBackground$b;

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v3, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivImageBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v3, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivImageBackground;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v3, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    if-nez v3, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v3

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_5

    goto/16 :goto_3

    :cond_5
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_6

    invoke-static {}, Ly71;->u()V

    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFilter;

    check-cast v5, Lcom/yandex/div2/DivFilter;

    invoke-static {v5, v4}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->h(Lcom/yandex/div2/DivFilter;Lcom/yandex/div2/DivFilter;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_3

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivImageBackground;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivImageBackground;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto/16 :goto_0

    :cond_9
    instance-of v2, p0, Lcom/yandex/div2/DivBackground$c;

    if-eqz v2, :cond_f

    check-cast p0, Lcom/yandex/div2/DivBackground$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    if-nez v2, :cond_a

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_a
    instance-of v3, p1, Lcom/yandex/div2/DivBackground$c;

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivBackground$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v3, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-static {p0, v3}, Luj3;->a(Lnj3;Lnj3;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    if-nez p0, :cond_b

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eq p1, v3, :cond_c

    goto/16 :goto_3

    :cond_c
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_d

    invoke-static {}, Ly71;->u()V

    :cond_d
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    check-cast v3, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    invoke-static {v3, v2}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->k(Lcom/yandex/div2/DivLinearGradient$ColorPoint;Lcom/yandex/div2/DivLinearGradient$ColorPoint;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_3

    :cond_e
    move v2, v4

    goto :goto_2

    :cond_f
    instance-of v2, p0, Lcom/yandex/div2/DivBackground$e;

    if-eqz v2, :cond_10

    instance-of v2, p1, Lcom/yandex/div2/DivBackground$e;

    if-eqz v2, :cond_11

    check-cast p0, Lcom/yandex/div2/DivBackground$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    check-cast p1, Lcom/yandex/div2/DivBackground$e;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->n(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->n(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-static {v2, v3}, Luj3;->a(Lnj3;Lnj3;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-static {p0, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->o(Lcom/yandex/div2/DivRadialGradientRadius;Lcom/yandex/div2/DivRadialGradientRadius;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto/16 :goto_0

    :cond_10
    instance-of v2, p0, Lcom/yandex/div2/DivBackground$d;

    if-eqz v2, :cond_12

    instance-of v2, p1, Lcom/yandex/div2/DivBackground$d;

    if-eqz v2, :cond_11

    check-cast p0, Lcom/yandex/div2/DivBackground$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivNinePatchBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivBackground$d;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivNinePatchBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    invoke-virtual {p1}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    invoke-static {p0, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->a(Lcom/yandex/div2/DivAbsoluteEdgeInsets;Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_3
    return v0

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final c(Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->d(Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div2/DivCornersRadius;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    goto :goto_6

    :cond_7
    move-object v2, v1

    :goto_6
    if-eqz p1, :cond_8

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    goto :goto_7

    :cond_8
    move-object v3, v1

    :goto_7
    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->p(Lcom/yandex/div2/DivShadow;Lcom/yandex/div2/DivShadow;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    goto :goto_8

    :cond_9
    move-object p0, v1

    :goto_8
    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    :cond_a
    invoke-static {p0, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->s(Lcom/yandex/div2/DivStroke;Lcom/yandex/div2/DivStroke;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static final d(Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div2/DivCornersRadius;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_7
    move-object p0, v1

    :goto_6
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_8
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final e(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static final f(Lcom/yandex/div2/DivDrawable;Lcom/yandex/div2/DivDrawable;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivDrawable$b;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/yandex/div2/DivDrawable$b;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/yandex/div2/DivDrawable$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivShapeDrawable;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivDrawable$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivShapeDrawable;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivShapeDrawable;->b:Lcom/yandex/div2/DivShape;

    invoke-virtual {p1}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivShapeDrawable;->b:Lcom/yandex/div2/DivShape;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->q(Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivShape;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    invoke-virtual {p1}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    invoke-static {p0, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->s(Lcom/yandex/div2/DivStroke;Lcom/yandex/div2/DivStroke;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final g(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div2/DivEdgeInsets;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_7
    move-object v2, v1

    :goto_6
    if-eqz p1, :cond_8

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_8
    move-object v3, v1

    :goto_7
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p0, :cond_9

    iget-object v2, p0, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_8

    :cond_9
    move-object v2, v1

    :goto_8
    if-eqz p1, :cond_a

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_a
    move-object v3, v1

    :goto_9
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_a

    :cond_b
    move-object p0, v1

    :goto_a
    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_c
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final h(Lcom/yandex/div2/DivFilter;Lcom/yandex/div2/DivFilter;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivFilter$c;

    if-eqz v2, :cond_1

    instance-of v0, p1, Lcom/yandex/div2/DivFilter$c;

    goto :goto_1

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivFilter$a;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/yandex/div2/DivFilter$a;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final i(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static final j(Lcom/yandex/div2/DivInput$NativeInterface;Lcom/yandex/div2/DivInput$NativeInterface;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivInput$NativeInterface;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/yandex/div2/DivInput$NativeInterface;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_2
    invoke-static {p0, v0}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    return p0
.end method

.method public static final k(Lcom/yandex/div2/DivLinearGradient$ColorPoint;Lcom/yandex/div2/DivLinearGradient$ColorPoint;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/yandex/div2/DivLinearGradient$ColorPoint;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_4
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static final l(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivPivot$b;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/yandex/div2/DivPivot$b;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivPivot$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivPivotFixed;->b:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivPivot$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivPivotFixed;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivPivotFixed;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivPivot$b;->c()Lcom/yandex/div2/DivPivotFixed;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivPivotFixed;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivPivot$c;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/yandex/div2/DivPivot$c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivPivot$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivPivot$c;->c()Lcom/yandex/div2/DivPivotPercentage;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivPivotPercentage;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivPivot$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivPivot$c;->c()Lcom/yandex/div2/DivPivotPercentage;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivPivotPercentage;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final m(Lcom/yandex/div2/DivPoint;Lcom/yandex/div2/DivPoint;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->e(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    :cond_4
    invoke-static {p0, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->e(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static final n(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRadialGradientFixedCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRadialGradientFixedCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientRelativeCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final o(Lcom/yandex/div2/DivRadialGradientRadius;Lcom/yandex/div2/DivRadialGradientRadius;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivRadialGradientRadius$b;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivRadialGradientRadius$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientRelativeRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final p(Lcom/yandex/div2/DivShadow;Lcom/yandex/div2/DivShadow;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_5

    iget-object v2, p0, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object v3, v1

    :goto_5
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    goto :goto_6

    :cond_7
    move-object p0, v1

    :goto_6
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    :cond_8
    invoke-static {p0, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->m(Lcom/yandex/div2/DivPoint;Lcom/yandex/div2/DivPoint;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static final q(Lcom/yandex/div2/DivShape;Lcom/yandex/div2/DivShape;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_2

    :goto_0
    move v0, v1

    goto/16 :goto_1

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivShape$c;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/yandex/div2/DivShape$c;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivShape$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivShape$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->s(Lcom/yandex/div2/DivStroke;Lcom/yandex/div2/DivStroke;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->i(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->i(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p0, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->i(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivShape$a;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/yandex/div2/DivShape$a;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/yandex/div2/DivShape$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivCircleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivShape$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivCircleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivCircleShape;->c:Lcom/yandex/div2/DivStroke;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivCircleShape;->c:Lcom/yandex/div2/DivStroke;

    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->s(Lcom/yandex/div2/DivStroke;Lcom/yandex/div2/DivStroke;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivCircleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivCircleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p0, p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->i(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final r(Lcom/yandex/div2/DivSize;Lcom/yandex/div2/DivSize;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_b

    :goto_0
    move v0, v1

    goto/16 :goto_8

    :cond_0
    instance-of v2, p0, Lcom/yandex/div2/DivSize$b;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/yandex/div2/DivSize$b;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/yandex/div2/DivSize$c;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivMatchParentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivMatchParentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0, p1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_2
    instance-of v2, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz v2, :cond_c

    instance-of v2, p1, Lcom/yandex/div2/DivSize$d;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p1, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    invoke-static {v2, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_3
    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    invoke-static {v2, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_7
    move-object v2, v3

    :goto_5
    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_8
    move-object v4, v3

    :goto_6
    invoke-static {v2, v4}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_9
    move-object p0, v3

    :goto_7
    invoke-virtual {p1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz p1, :cond_a

    iget-object v3, p1, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_a
    invoke-static {p0, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto/16 :goto_0

    :cond_b
    :goto_8
    return v0

    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final s(Lcom/yandex/div2/DivStroke;Lcom/yandex/div2/DivStroke;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object p0, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    :cond_6
    invoke-static {p0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static final t(Lcom/yandex/div2/DivTransform;Lcom/yandex/div2/DivTransform;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    goto :goto_3

    :cond_4
    move-object v3, v1

    :goto_3
    invoke-static {v2, v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->l(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    goto :goto_4

    :cond_5
    move-object p0, v1

    :goto_4
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    :cond_6
    invoke-static {p0, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->l(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static final u(Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final v(Lcom/yandex/div2/DivBackground;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivBackground$f;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/yandex/div2/DivBackground$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$f;->c()Lcom/yandex/div2/DivSolidBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    goto/16 :goto_2

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivBackground$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p0, Lcom/yandex/div2/DivBackground$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivFilter;

    invoke-static {v3}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->B(Lcom/yandex/div2/DivFilter;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivImageBackground;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$b;->c()Lcom/yandex/div2/DivImageBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivImageBackground;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_2

    :cond_5
    :goto_1
    move v0, v2

    goto/16 :goto_2

    :cond_6
    instance-of v1, p0, Lcom/yandex/div2/DivBackground$c;

    if-eqz v1, :cond_7

    check-cast p0, Lcom/yandex/div2/DivBackground$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$c;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-static {p0}, Luj3;->e(Lnj3;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_7
    instance-of v1, p0, Lcom/yandex/div2/DivBackground$e;

    if-eqz v1, :cond_8

    check-cast p0, Lcom/yandex/div2/DivBackground$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->H(Lcom/yandex/div2/DivRadialGradientCenter;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->H(Lcom/yandex/div2/DivRadialGradientCenter;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-static {v1}, Luj3;->e(Lnj3;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$e;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->I(Lcom/yandex/div2/DivRadialGradientRadius;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_8
    instance-of v1, p0, Lcom/yandex/div2/DivBackground$d;

    if-eqz v1, :cond_9

    check-cast p0, Lcom/yandex/div2/DivBackground$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivNinePatchBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/yandex/div2/DivBackground$d;->c()Lcom/yandex/div2/DivNinePatchBackground;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivNinePatchBackground;->b:Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->u(Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_2
    return v0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final w(Lcom/yandex/div2/DivBorder;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->x(Lcom/yandex/div2/DivCornersRadius;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->J(Lcom/yandex/div2/DivShadow;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->M(Lcom/yandex/div2/DivStroke;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final x(Lcom/yandex/div2/DivCornersRadius;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final y(Lcom/yandex/div2/DivDimension;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final z(Lcom/yandex/div2/DivDrawable;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivDrawable$b;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivDrawable$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivShapeDrawable;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivShapeDrawable;->b:Lcom/yandex/div2/DivShape;

    invoke-static {v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->K(Lcom/yandex/div2/DivShape;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    invoke-static {p0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->M(Lcom/yandex/div2/DivStroke;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
