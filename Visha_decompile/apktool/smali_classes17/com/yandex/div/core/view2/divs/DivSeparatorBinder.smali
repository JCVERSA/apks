.class public final Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;
.super Lwu2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;

    check-cast p3, Lcom/yandex/div2/DivSeparator;

    check-cast p4, Lcom/yandex/div2/DivSeparator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSeparator;Lcom/yandex/div2/DivSeparator;)V

    return-void
.end method

.method public final g(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V
    .locals 1

    const/4 p0, 0x1

    if-nez p2, :cond_0

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/SeparatorView;->setDividerColor(I)V

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/SeparatorView;->setHorizontal(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/SeparatorView;->setDividerColor(I)V

    iget-object p2, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;

    sget-object p3, Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;->HORIZONTAL:Lcom/yandex/div2/DivSeparator$DelimiterStyle$Orientation;

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/SeparatorView;->setHorizontal(Z)V

    :goto_1
    return-void
.end method

.method public h(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivSeparator;Lcom/yandex/div2/DivSeparator;)V
    .locals 17

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    const-string v0, "<this>"

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    move-object/from16 v12, p2

    invoke-static {v12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v14, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v14, Lcom/yandex/div2/DivSeparator;->b:Lcom/yandex/div2/DivAction;

    iget-object v3, v14, Lcom/yandex/div2/DivSeparator;->d:Ljava/util/List;

    iget-object v4, v14, Lcom/yandex/div2/DivSeparator;->x:Ljava/util/List;

    iget-object v5, v14, Lcom/yandex/div2/DivSeparator;->o:Ljava/util/List;

    iget-object v6, v14, Lcom/yandex/div2/DivSeparator;->u:Ljava/util/List;

    iget-object v7, v14, Lcom/yandex/div2/DivSeparator;->t:Ljava/util/List;

    iget-object v8, v14, Lcom/yandex/div2/DivSeparator;->B:Ljava/util/List;

    iget-object v9, v14, Lcom/yandex/div2/DivSeparator;->A:Ljava/util/List;

    iget-object v10, v14, Lcom/yandex/div2/DivSeparator;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivSeparator;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v11

    iget-object v1, v14, Lcom/yandex/div2/DivSeparator;->k:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v0, p1

    move-object/from16 v16, v1

    move-object/from16 v1, p2

    move-object/from16 v12, v16

    invoke-static/range {v0 .. v12}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v0, v14, Lcom/yandex/div2/DivSeparator;->m:Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    if-eqz v15, :cond_0

    iget-object v1, v15, Lcom/yandex/div2/DivSeparator;->m:Lcom/yandex/div2/DivSeparator$DelimiterStyle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v13, v0, v1, v2}, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;->i(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V

    sget v0, Lcom/yandex/div/R$dimen;->div_separator_delimiter_height:I

    invoke-virtual {v13, v0}, Lcom/yandex/div/internal/widget/SeparatorView;->setDividerHeightResource(I)V

    const/16 v0, 0x11

    invoke-virtual {v13, v0}, Lcom/yandex/div/internal/widget/SeparatorView;->setDividerGravity(I)V

    return-void
.end method

.method public final i(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {v1, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object p3, v0

    :goto_3
    invoke-static {v1, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V

    if-eqz p2, :cond_5

    iget-object p3, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object p3, v0

    :goto_4
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    iget-object p3, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_6
    move-object p3, v0

    :goto_5
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_7

    return-void

    :cond_7
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder$bindStyle$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivSeparatorBinder$bindStyle$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivSeparatorBinder;Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;Lcom/yandex/div2/DivSeparator$DelimiterStyle;Loj3;)V

    if-eqz p2, :cond_8

    iget-object p0, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_6

    :cond_8
    move-object p0, v0

    :goto_6
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;->addSubscription(Lqc2;)V

    if-eqz p2, :cond_9

    iget-object p0, p2, Lcom/yandex/div2/DivSeparator$DelimiterStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_9
    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;->addSubscription(Lqc2;)V

    return-void
.end method
