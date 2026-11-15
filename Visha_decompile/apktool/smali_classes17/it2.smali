.class public abstract Lit2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit2$a;
    }
.end annotation


# direct methods
.method public static final synthetic a(Ljava/lang/String;Landroid/view/View;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1}, Lit2;->g(Ljava/lang/String;Landroid/view/View;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/Div2View;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Lit2;->h(Lcom/yandex/div/core/view2/Div2View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div2/DivTooltip;)Z
    .locals 0

    invoke-static {p0}, Lit2;->i(Lcom/yandex/div2/DivTooltip;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Landroid/widget/PopupWindow;Lgqa;Lb5;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lit2;->j(Landroid/widget/PopupWindow;Lgqa;Lb5;)V

    return-void
.end method

.method public static final synthetic e(Lcom/yandex/div2/DivTooltip;Loj3;)Z
    .locals 0

    invoke-static {p0, p1}, Lit2;->k(Lcom/yandex/div2/DivTooltip;Loj3;)Z

    move-result p0

    return p0
.end method

.method public static final f(Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/graphics/Point;
    .locals 8

    const-string v0, "popupView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divTooltip"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p2, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTooltip$Position;

    iget v4, v2, Landroid/graphics/Point;->x:I

    sget-object v5, Lit2$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    packed-switch v6, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    :goto_0
    add-int/2addr v4, v6

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    packed-switch v1, :pswitch_data_1

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 p0, v1, 0x2

    :goto_1
    add-int/2addr v4, p0

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p2, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    const-string v1, "displayMetrics"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v0

    goto :goto_2

    :cond_0
    move v0, v3

    :goto_2
    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v2, Landroid/graphics/Point;->y:I

    iget-object p2, p2, Lcom/yandex/div2/DivTooltip;->i:Lcom/yandex/div2/DivPoint;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p2, :cond_1

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v3

    :cond_1
    add-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static final g(Ljava/lang/String;Landroid/view/View;)Lkotlin/Pair;
    .locals 4

    sget v0, Lcom/yandex/div/R$id;->div_tooltips_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTooltip;

    iget-object v3, v1, Lcom/yandex/div2/DivTooltip;->g:Ljava/lang/String;

    invoke-static {v3, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p0, v0}, Lit2;->g(Ljava/lang/String;Landroid/view/View;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_4
    return-object v2
.end method

.method public static final h(Lcom/yandex/div/core/view2/Div2View;)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static final i(Lcom/yandex/div2/DivTooltip;)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivTooltip;->h:Lcom/yandex/div2/DivTooltipMode;

    instance-of p0, p0, Lcom/yandex/div2/DivTooltipMode$b;

    return p0
.end method

.method public static final j(Landroid/widget/PopupWindow;Lgqa;Lb5;)V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->p0(ILandroid/view/View;Lb5;)V

    invoke-virtual {p1}, Lgqa;->e()Landroidx/activity/OnBackPressedCallback;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static final k(Lcom/yandex/div2/DivTooltip;Loj3;)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivTooltip;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
