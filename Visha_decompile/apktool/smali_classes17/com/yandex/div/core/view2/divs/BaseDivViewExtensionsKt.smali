.class public abstract Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;
    }
.end annotation


# direct methods
.method public static final A(Landroid/view/View;Lcom/yandex/div2/DivAspect;Lcom/yandex/div2/DivAspect;Loj3;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div/core/widget/AspectView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-static {v1, p2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    move-object p2, p0

    check-cast p2, Lcom/yandex/div/core/widget/AspectView;

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-static {p2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f(Lcom/yandex/div/core/widget/AspectView;Ljava/lang/Double;)V

    if-eqz p1, :cond_5

    iget-object p2, p1, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_5
    move-object p2, v0

    :goto_3
    invoke-static {p2}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p2

    if-nez p2, :cond_8

    instance-of p2, p0, Lqj3;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, p0

    check-cast p2, Lqj3;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindAspectRatio$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindAspectRatio$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_7
    invoke-interface {p2, v0}, Lqj3;->addSubscription(Lqc2;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static final A0(Lcom/yandex/div2/DivAlignmentHorizontal;Z)Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->LEFT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->RIGHT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->RIGHT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->LEFT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->RIGHT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->CENTER:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;->LEFT:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    :goto_0
    return-object p0
.end method

.method public static final B(Landroid/view/ViewGroup;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Loj3;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newClipToBounds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->i(Landroid/view/ViewGroup;Z)V

    invoke-static {p1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    instance-of p2, p0, Lmk2;

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Lmk2;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    new-instance v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindClipChildren$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindClipChildren$1;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p1, p3, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p2, p0}, Lqj3;->addSubscription(Lqc2;)V

    :cond_3
    return-void
.end method

.method public static final B0(Lcom/yandex/div2/DivImageScale;)Lcom/yandex/div/internal/widget/AspectImageView$Scale;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->f:[I

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

    sget-object p0, Lcom/yandex/div/internal/widget/AspectImageView$Scale;->NO_SCALE:Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/widget/AspectImageView$Scale;->STRETCH:Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div/internal/widget/AspectImageView$Scale;->FIT:Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/internal/widget/AspectImageView$Scale;->FILL:Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    :goto_0
    return-object p0
.end method

.method public static final C(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;Le74;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivCollectionItemBuilder;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    invoke-static {p0, p1}, Lbh2;->i(Lcom/yandex/div2/DivCollectionItemBuilder;Loj3;)Loj3;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div2/DivCollectionItemBuilder;->c:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;

    iget-object v0, v0, Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final C0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;)I
    .locals 2

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivSize$b;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v0

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    instance-of p0, p3, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz p0, :cond_3

    const/4 v0, -0x3

    :cond_3
    :goto_0
    return v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final D(Landroid/view/View;Log2;Loj3;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->z(Landroid/view/View;Log2;Loj3;)V

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->m(Landroid/view/View;Log2;Loj3;)V

    invoke-interface {p1}, Log2;->g()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p1}, Log2;->o()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivAlignmentVertical;

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d(Landroid/view/View;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    :try_end_0
    .catch Lcom/yandex/div/json/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, Llj3;->a(Lcom/yandex/div/json/ParsingException;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_2
    return-void

    :cond_2
    throw p0
.end method

.method public static synthetic D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;)I

    move-result p0

    return p0
.end method

.method public static final E(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lrg2;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindStates$1;

    invoke-direct {v0, p2, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$bindStates$1;-><init>(Lrg2;Lcom/yandex/div/core/view2/a;)V

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->P0(Landroid/view/View;Le74;)V

    return-void
.end method

.method public static final E0(Lcom/yandex/div2/DivBlendMode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->h:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_3
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_4
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :pswitch_5
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final F(Lcom/yandex/div2/DivSize;Loj3;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivSize$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I
    .locals 4

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    const/16 p2, 0x1f

    shr-long p2, p0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable convert \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\' to Int"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final G(Landroid/view/View;La15;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusTracker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La15;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSizeUnit;

    sget-object v1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-int p0, p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->t0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final H(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAnimation;Lbk2;)Ls74;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt;->b(Lcom/yandex/div2/DivAnimation;Loj3;Landroid/view/View;)Ls74;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lbk2;->b()Lc74;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lbk2;->a()Lc74;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    :cond_1
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_2

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-nez p0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    new-instance v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$createAnimatedTouchListener$1;

    invoke-direct {v0, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$createAnimatedTouchListener$1;-><init>(Ls74;Landroid/view/GestureDetector;)V

    :cond_4
    return-object v0
.end method

.method public static final H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSizeUnit;

    sget-object v1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 p2, 0x1f

    shr-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable convert \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\' to Int"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p0, v2

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final I(IFF)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/widget/indicator/c$a;

    new-instance v1, Lcom/yandex/div/internal/widget/indicator/b$a;

    mul-float/2addr p1, p2

    invoke-direct {v1, p1}, Lcom/yandex/div/internal/widget/indicator/b$a;-><init>(F)V

    invoke-direct {v0, p0, v1}, Lcom/yandex/div/internal/widget/indicator/c$a;-><init>(ILcom/yandex/div/internal/widget/indicator/b$a;)V

    return-object v0
.end method

.method public static final I0(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Landroid/util/DisplayMetrics;Loj3;)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSizeUnit;

    sget-object v1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 p2, 0x1f

    shr-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable convert \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\' to Int"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p0, v2

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final J(IFFFFLjava/lang/Float;Ljava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/widget/indicator/c$b;

    new-instance v1, Lcom/yandex/div/internal/widget/indicator/b$b;

    mul-float/2addr p1, p4

    mul-float/2addr p2, p4

    mul-float/2addr p3, p4

    invoke-direct {v1, p1, p2, p3}, Lcom/yandex/div/internal/widget/indicator/b$b;-><init>(FFF)V

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/yandex/div/internal/widget/indicator/c$b;-><init>(ILcom/yandex/div/internal/widget/indicator/b$b;FI)V

    return-object v0
.end method

.method public static final J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 8

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, v0, v4

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, v0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final K0(Lcom/yandex/div2/DivRadialGradientFixedCenter;Landroid/util/DisplayMetrics;Loj3;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradientFixedCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final L0(Lcom/yandex/div2/DivImageScale;)Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->f:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;->NO_SCALE:Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;->STRETCH:Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;->FIT:Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;->FILL:Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;

    :goto_0
    return-object p0
.end method

.method public static final M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final M0(Lcom/yandex/div2/DivTextAlignmentVertical;)Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->g:[I

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

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;->BASELINE:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;->BOTTOM:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;->BASELINE:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;->CENTER:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;->TOP:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    :goto_0
    return-object p0
.end method

.method public static final N(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    instance-of v1, p0, Lvg2;

    if-eqz v1, :cond_0

    check-cast p0, Lvg2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lvg2;->getDivBorderDrawer()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->i(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public static final N0(Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;->TOP:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;->BOTTOM:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;->CENTER:Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;

    :goto_0
    return-object p0
.end method

.method public static final O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v4, 0x5

    if-eq p0, v2, :cond_5

    const/4 v5, 0x4

    const v6, 0x800003

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_2

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    const v4, 0x800005

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v0, p0, p1

    :goto_2
    const/16 p0, 0x30

    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 p0, 0x50

    goto :goto_3

    :cond_8
    const/16 p0, 0x10

    :cond_9
    :goto_3
    or-int/2addr p0, v4

    return p0
.end method

.method public static final O0(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;Ljava/util/List;Ljava/util/List;)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v0

    const-string v1, "divView.div2Component.visibilityActionTracker"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzl2;

    invoke-virtual {v3}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Y(Log2;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwp2;

    invoke-interface {v2}, Lwp2;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->W(Log2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/div2/DivVisibilityAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivVisibilityAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->X(Log2;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/yandex/div2/DivDisappearAction;

    invoke-virtual {v4}, Lcom/yandex/div2/DivDisappearAction;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lzl2;->d()Loj3;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->w(Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    :goto_5
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    new-instance p3, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;

    invoke-direct {p3, p0, p2, v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$c;-><init>(Landroid/view/ViewGroup;Ljava/util/List;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_8
    return-void
.end method

.method public static final P(Lcom/yandex/div2/DivContentAlignmentHorizontal;Lcom/yandex/div2/DivContentAlignmentVertical;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    :goto_0
    const v1, 0x800003

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/high16 v1, 0x4000000

    goto :goto_1

    :pswitch_1
    const/high16 v1, 0x2000000

    goto :goto_1

    :pswitch_2
    const/high16 v1, 0x1000000

    goto :goto_1

    :pswitch_3
    const v1, 0x800005

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x3

    :goto_1
    :pswitch_7
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->e:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v0, p0, p1

    :goto_2
    const/16 p0, 0x30

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_8
    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_3

    :pswitch_9
    const/high16 p0, 0x20000000

    goto :goto_3

    :pswitch_a
    const/high16 p0, 0x10000000

    goto :goto_3

    :pswitch_b
    const/16 p0, 0x50

    goto :goto_3

    :pswitch_c
    const/16 p0, 0x10

    :goto_3
    :pswitch_d
    or-int/2addr p0, v1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static final P0(Landroid/view/View;Le74;)V
    .locals 1

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->P0(Landroid/view/View;Le74;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final Q(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)F
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    long-to-float p0, p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->u0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static final Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I
    .locals 8

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, v0, v4

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, v0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result p0

    return p0
.end method

.method public static final R(Landroid/view/View;Loj3;)Lcom/yandex/div2/DivContentAlignmentHorizontal;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lmk2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lmk2;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    instance-of v0, p0, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/Div$b;

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivContainer;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivContentAlignmentHorizontal;

    :cond_3
    return-object v1
.end method

.method public static final R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->S0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final S(Landroid/view/View;Loj3;)Lcom/yandex/div2/DivContentAlignmentVertical;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lmk2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lmk2;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lmk2;->getDiv()Lcom/yandex/div2/Div;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    instance-of v0, p0, Lcom/yandex/div2/Div$b;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/Div$b;

    goto :goto_2

    :cond_2
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div2/Div$b;->c()Lcom/yandex/div2/DivContainer;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivContainer;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivContentAlignmentVertical;

    :cond_3
    return-object v1
.end method

.method public static final S0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)F
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x0(Lcom/yandex/div2/DivSizeUnit;)I

    move-result p2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final T(Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lwp2;

    invoke-interface {v2}, Lwp2;->isEnabled()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final U(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static final V(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static final W(Log2;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Log2;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Log2;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static final X(Log2;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Log2;->k()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final Y(Log2;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->X(Log2;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->W(Log2;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Li81;->J0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(Landroid/view/View;)Lcom/yandex/div/core/view2/a;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lmk2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lmk2;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lmk2;->getBindingContext()Lcom/yandex/div/core/view2/a;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static synthetic a(Ls74;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->r0(Ls74;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final a0(Log2;I)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivState;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/yandex/div/core/state/DivPathUtils;->a:Lcom/yandex/div/core/state/DivPathUtils;

    check-cast p0, Lcom/yandex/div2/DivState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Lcom/yandex/div/core/state/DivPathUtils;->i(Lcom/yandex/div/core/state/DivPathUtils;Lcom/yandex/div2/DivState;Lc74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Log2;->getId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lyv0;->a:Lyv0;

    invoke-virtual {p0, p1}, Lyv0;->b(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/widget/AspectView;Ljava/lang/Double;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f(Lcom/yandex/div/core/widget/AspectView;Ljava/lang/Double;)V

    return-void
.end method

.method public static final b0(Log2;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Log2;->x()Lcom/yandex/div2/DivVisibilityAction;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Log2;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {p0}, Log2;->k()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final synthetic c(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d0(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F

    move-result p0

    return p0
.end method

.method public static final c0(Lcom/yandex/div2/DivIndicator;)Lcom/yandex/div2/DivIndicatorItemPlacement;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivIndicator;->v:Lcom/yandex/div2/DivIndicatorItemPlacement;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivIndicatorItemPlacement$b;

    new-instance v1, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;

    iget-object p0, p0, Lcom/yandex/div2/DivIndicator;->F:Lcom/yandex/div2/DivFixedSize;

    invoke-direct {v1, p0}, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;-><init>(Lcom/yandex/div2/DivFixedSize;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivIndicatorItemPlacement$b;-><init>(Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;)V

    :cond_0
    return-object v0
.end method

.method public static final d(Landroid/view/View;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->l(Landroid/view/View;I)V

    sget-object p1, Lcom/yandex/div2/DivAlignmentVertical;->BASELINE:Lcom/yandex/div2/DivAlignmentVertical;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->g(Landroid/view/View;Z)V

    return-void
.end method

.method public static final d0(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F
    .locals 2

    invoke-virtual {p2}, Lcom/yandex/div2/DivPivot;->b()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/yandex/div2/DivPivotFixed;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    check-cast p2, Lcom/yandex/div2/DivPivotFixed;

    iget-object v0, p2, Lcom/yandex/div2/DivPivotFixed;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    iget-object p2, p2, Lcom/yandex/div2/DivPivotFixed;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivSizeUnit;

    sget-object p3, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    const-string v0, "resources.displayMetrics"

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p0, 0x3

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->u0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    goto :goto_0

    :cond_3
    int-to-float p0, p1

    div-float/2addr p0, v1

    return p0

    :cond_4
    instance-of p0, p2, Lcom/yandex/div2/DivPivotPercentage;

    if-eqz p0, :cond_5

    check-cast p2, Lcom/yandex/div2/DivPivotPercentage;

    iget-object p0, p2, Lcom/yandex/div2/DivPivotPercentage;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    double-to-float p0, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p0, p2

    int-to-float p1, p1

    mul-float/2addr p1, p0

    goto :goto_0

    :cond_5
    int-to-float p0, p1

    div-float p1, p0, v1

    :goto_0
    return p1
.end method

.method public static final e(Landroid/view/View;D)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    instance-of p1, p0, Lvg2;

    if-eqz p1, :cond_0

    check-cast p0, Lvg2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lvg2;->invalidateBorder()V

    :cond_1
    return-void
.end method

.method public static final e0(ILbu2;)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "typefaceProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lbu2;->getTypefaceFor(I)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string p1, "DEFAULT"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final f(Lcom/yandex/div/core/widget/AspectView;Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/yandex/div/core/widget/AspectView;->setAspectRatio(F)V

    return-void
.end method

.method public static final f0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->i:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    const/16 v0, 0x190

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    :cond_2
    move p0, v0

    goto :goto_1

    :cond_3
    const/16 p0, 0x2bc

    goto :goto_1

    :cond_4
    const/16 p0, 0x1f4

    goto :goto_1

    :cond_5
    const/16 p0, 0x12c

    :goto_1
    return p0
.end method

.method public static final g(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->j()Z

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->k(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public static final g0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)I
    .locals 8

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x1f

    shr-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p1, v2, v6

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    const p1, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p1, v0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static final h(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/Bitmap;Ljava/util/List;Le74;)V
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionAfterFilters"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/div/core/dagger/Div2Component;->l()Lze0;

    move-result-object v6

    const-string p1, "context.divView.div2Component.bitmapEffectHelper"

    invoke-static {v6, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lpdc;->d(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivFilter;

    instance-of v0, p3, Lcom/yandex/div2/DivFilter$a;

    if-eqz v0, :cond_6

    check-cast p3, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p3}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p3

    iget-object p3, p3, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p3, 0x1f

    shr-long v2, v0, p3

    const-wide/16 v7, 0x0

    cmp-long p3, v2, v7

    if-eqz p3, :cond_5

    const-wide/16 v9, -0x1

    cmp-long p3, v2, v9

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p3, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lxi;->i(Ljava/lang/String;)V

    :cond_3
    cmp-long p3, v0, v7

    if-lez p3, :cond_4

    const p3, 0x7fffffff

    goto :goto_2

    :cond_4
    const/high16 p3, -0x80000000

    goto :goto_2

    :cond_5
    :goto_1
    long-to-int p3, v0

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p3

    invoke-virtual {v6, p1, p3}, Lze0;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_6
    instance-of p3, p3, Lcom/yandex/div2/DivFilter$c;

    if-eqz p3, :cond_1

    invoke-static {p0}, Lpdc;->f(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v6, p1}, Lze0;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-interface {p4, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$b;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/util/List;Loj3;Lze0;Le74;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_3
    return-void

    :cond_9
    :goto_4
    invoke-interface {p4, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final h0(Lcom/yandex/div2/DivSize;Loj3;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivSize$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivMatchParentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-float v1, p0

    :cond_0
    return v1
.end method

.method public static final i(Landroid/view/ViewGroup;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lmk2;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lmk2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lvg2;->setNeedClipping(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p1, :cond_2

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    return-void
.end method

.method public static final i0(Lcom/yandex/div2/DivStroke;Landroid/util/DisplayMetrics;Loj3;)F
    .locals 1

    iget-object v0, p0, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v0, p1, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->S0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)F

    move-result p0

    return p0
.end method

.method public static final j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 14

    const-string v0, "<this>"

    move-object v3, p0

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionAnimation"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureFocusOnAction"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object v1

    const-string v0, "context.divView.div2Component.actionBinder"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p3

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    move-object v2, p1

    move-object v3, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->p(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    return-void
.end method

.method public static final j0(Lcom/yandex/div2/DivBorder;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object v3, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0
.end method

.method public static final k(Landroid/widget/TextView;ILcom/yandex/div2/DivSizeUnit;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x0(Lcom/yandex/div2/DivSizeUnit;)I

    move-result p2

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static final k0(Lcom/yandex/div2/DivContainer;Loj3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/yandex/div2/DivContainer$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivContainer$Orientation;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final l(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->b()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->m(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Can\'t cast "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to get gravity"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DivView"

    invoke-static {p1, p0}, Lpp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final l0(Lcom/yandex/div2/DivContainer;Loj3;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivContainer;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/yandex/div2/DivContainer$LayoutMode;->WRAP:Lcom/yandex/div2/DivContainer$LayoutMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div2/DivContainer;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/yandex/div2/DivContainer$Orientation;->OVERLAP:Lcom/yandex/div2/DivContainer$Orientation;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->k0(Lcom/yandex/div2/DivContainer;Loj3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div2/DivContainer;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F(Lcom/yandex/div2/DivSize;Loj3;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/yandex/div2/DivContainer;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F(Lcom/yandex/div2/DivSize;Loj3;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/div2/DivContainer;->i:Lcom/yandex/div2/DivAspect;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivAspect;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_4

    move v2, v1

    :cond_4
    xor-int/2addr v2, v1

    :cond_5
    :goto_0
    return v2
.end method

.method public static final m(Landroid/view/View;Log2;Loj3;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-interface {p1}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x(Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V

    return-void
.end method

.method public static final m0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->n0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final n(Landroid/view/View;F)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->d()F

    move-result v1

    cmpg-float v1, v1, p1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->n(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method

.method public static final n0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 3

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0, v2, p1}, Lz90;->a(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :cond_2
    iget p0, p1, Landroid/util/DisplayMetrics;->density:F

    div-float p0, v2, p0

    :goto_0
    return p0
.end method

.method public static final o(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public static final o0(Log2;ILcom/yandex/div/core/state/DivStatePath;)Lcom/yandex/div/core/state/DivStatePath;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->a0(Log2;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/yandex/div/core/state/DivStatePath;->c(Ljava/lang/String;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Landroid/widget/TextView;DI)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method public static final p0(ILandroid/view/View;Lb5;)V
    .locals 2

    const-string v0, "accessibilityStateProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lb5;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_1

    invoke-static {p0}, Ly90;->a(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void
.end method

.method public static final q(Landroid/widget/TextView;Ljava/lang/Long;Lcom/yandex/div2/DivSizeUnit;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unit"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ldx3;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v1, "resources.displayMetrics"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-interface {v0, p0}, Ldx3;->setFixedLineHeight(I)V

    return-void
.end method

.method public static final q0(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAnimation;Lbk2;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAnimation;Lbk2;)Ls74;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Laa0;

    invoke-direct {p2, p1}, Laa0;-><init>(Ls74;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final r(Landroid/view/View;Lcom/yandex/div2/DivEdgeInsets;Loj3;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-object v4, p1, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivSizeUnit;

    iget-object v5, p1, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    const-string v6, "metrics"

    invoke-static {v0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v5

    iget-object v6, p1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v6, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-static {v6, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v6

    iget-object v7, p1, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v7, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-static {v7, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v7

    iget-object v8, p1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v8, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-static {v8, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v8

    iget-object v9, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v9, :cond_2

    invoke-virtual {v9, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-static {v9, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    :goto_1
    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1, v0, v4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_3
    move-object p1, v3

    move-object v3, v9

    goto :goto_2

    :cond_4
    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v7

    move-object p1, v3

    :goto_2
    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne p2, v5, :cond_6

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne p2, v6, :cond_6

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne p2, v7, :cond_6

    iget p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne p2, v8, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_6

    :cond_5
    if-eqz p1, :cond_b

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_b

    :cond_6
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v3, :cond_8

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_9
    move p2, v2

    :goto_4
    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_b
    return-void
.end method

.method public static final r0(Ls74;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final s(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I0(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p1

    goto :goto_1

    :cond_2
    const p1, 0x7fffffff

    :goto_1
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->e()I

    move-result p2

    if-eq p2, p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->o(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public static final s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 8

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable convert \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\' to Int"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, v0, v4

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, v0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->t0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final t(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I0(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p1

    goto :goto_1

    :cond_2
    const p1, 0x7fffffff

    :goto_1
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result p2

    if-eq p2, p1, :cond_3

    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->p(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method public static final t0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->u0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    return p0
.end method

.method public static final u(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I0(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p2

    if-eq p2, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public static final u0(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final v(Landroid/view/View;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I0(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p2

    if-eq p2, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public static final v0(Lcom/yandex/div2/DivContentAlignmentHorizontal;)Lcom/yandex/div2/DivAlignmentHorizontal;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->START:Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->END:Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->START:Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->RIGHT:Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->CENTER:Lcom/yandex/div2/DivAlignmentHorizontal;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/yandex/div2/DivAlignmentHorizontal;->LEFT:Lcom/yandex/div2/DivAlignmentHorizontal;

    :goto_0
    return-object p0
.end method

.method public static final w(Landroid/view/View;Lcom/yandex/div2/DivEdgeInsets;Loj3;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSizeUnit;

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "metrics"

    if-nez v3, :cond_2

    iget-object v5, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v3, p1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v3

    iget-object v4, p1, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v4

    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result p1

    invoke-virtual {p0, v0, v3, v4, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    iget-object v5, p1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v4

    iget-object v5, p1, Lcom/yandex/div2/DivEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v5, :cond_4

    invoke-virtual {v5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v0

    :cond_4
    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result p1

    invoke-virtual {p0, v3, v4, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_2
    return-void
.end method

.method public static final w0(Lcom/yandex/div2/DivContentAlignmentVertical;)Lcom/yandex/div2/DivAlignmentVertical;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->e:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div2/DivAlignmentVertical;->TOP:Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div2/DivAlignmentVertical;->BASELINE:Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/yandex/div2/DivAlignmentVertical;->BOTTOM:Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivAlignmentVertical;->CENTER:Lcom/yandex/div2/DivAlignmentVertical;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div2/DivAlignmentVertical;->TOP:Lcom/yandex/div2/DivAlignmentVertical;

    :goto_0
    return-object p0
.end method

.method public static final x(Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$applyTransform$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V

    invoke-static {p0, v0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    invoke-static {p0, v0, v1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d0(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p1, p1, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    invoke-static {p0, v0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->d0(Landroid/view/View;ILcom/yandex/div2/DivPivot;Loj3;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :goto_1
    return-void
.end method

.method public static final x0(Lcom/yandex/div2/DivSizeUnit;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final y(Landroid/view/View;F)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/DivLayoutParams;->i()F

    move-result v1

    cmpg-float v1, v1, p1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->r(F)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :goto_1
    return-void
.end method

.method public static final y0(Lcom/yandex/div2/DivDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/yandex/div2/DivDrawable$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivDrawable$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivDrawable$b;->c()Lcom/yandex/div2/DivShapeDrawable;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->z0(Lcom/yandex/div2/DivShapeDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final z(Landroid/view/View;Log2;Loj3;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->C0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-interface {p1}, Log2;->m()Lcom/yandex/div2/DivTransform;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->x(Landroid/view/View;Lcom/yandex/div2/DivTransform;Loj3;)V

    return-void
.end method

.method public static final z0(Lcom/yandex/div2/DivShapeDrawable;Landroid/util/DisplayMetrics;Loj3;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div2/DivShapeDrawable;->b:Lcom/yandex/div2/DivShape;

    instance-of v1, v0, Lcom/yandex/div2/DivShape$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    new-instance v1, Lhw8;

    new-instance v10, Lhw8$a;

    check-cast v0, Lcom/yandex/div2/DivShape$c;

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v3, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v4

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v3, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v5

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yandex/div2/DivShapeDrawable;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_0
    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v3, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v7

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    :cond_1
    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v8, v3

    goto :goto_0

    :cond_2
    move-object v8, v2

    :goto_0
    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->i0(Lcom/yandex/div2/DivStroke;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_4
    move-object v9, v2

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lhw8$a;-><init>(FFIFLjava/lang/Integer;Ljava/lang/Float;)V

    invoke-direct {v1, v10}, Lhw8;-><init>(Lhw8$a;)V

    :goto_1
    move-object v2, v1

    goto :goto_3

    :cond_5
    instance-of v1, v0, Lcom/yandex/div2/DivShape$a;

    if-eqz v1, :cond_b

    new-instance v1, Lew0;

    new-instance v3, Lew0$a;

    check-cast v0, Lcom/yandex/div2/DivShape$a;

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivCircleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v4, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v4

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v5

    iget-object v5, v5, Lcom/yandex/div2/DivCircleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/yandex/div2/DivShapeDrawable;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_6
    invoke-virtual {v5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v6

    iget-object v6, v6, Lcom/yandex/div2/DivCircleShape;->c:Lcom/yandex/div2/DivStroke;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    :cond_7
    if-eqz v6, :cond_8

    iget-object v6, v6, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v6, :cond_8

    invoke-virtual {v6, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_2

    :cond_8
    move-object v6, v2

    :goto_2
    invoke-virtual {v0}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivCircleShape;->c:Lcom/yandex/div2/DivStroke;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/yandex/div2/DivShapeDrawable;->c:Lcom/yandex/div2/DivStroke;

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {v0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->i0(Lcom/yandex/div2/DivStroke;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_a
    invoke-direct {v3, v4, v5, v6, v2}, Lew0$a;-><init>(FILjava/lang/Integer;Ljava/lang/Float;)V

    invoke-direct {v1, v3}, Lew0;-><init>(Lew0$a;)V

    goto :goto_1

    :cond_b
    :goto_3
    return-object v2
.end method
