.class public final Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lxv7;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lxv7;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerIndicatorConnector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->b:Lxv7;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Loj3;Lcom/yandex/div2/DivIndicator;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Loj3;Lcom/yandex/div2/DivIndicator;)V

    return-void
.end method

.method public static synthetic l(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div/internal/widget/indicator/c;FLjava/lang/Integer;ILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->k(Lcom/yandex/div/internal/widget/indicator/c;FLjava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->n(Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->o(Lcom/yandex/div2/DivShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    check-cast p3, Lcom/yandex/div2/DivIndicator;

    check-cast p4, Lcom/yandex/div2/DivIndicator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->h(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivIndicator;Lcom/yandex/div2/DivIndicator;)V

    return-void
.end method

.method public final g(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Loj3;Lcom/yandex/div2/DivIndicator;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget-object v12, v10, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v1, v10, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v13, v10, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    iget-object v0, v10, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v14, v2

    iget-object v0, v10, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v15, v2

    const-string v7, "metrics"

    if-eqz v1, :cond_1

    invoke-static {v11, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    const/16 v6, 0x8

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v8, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->p(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, v0

    goto :goto_3

    :cond_1
    move-object v8, v7

    :goto_1
    if-eqz v12, :cond_2

    invoke-static {v11, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    const/4 v0, 0x1

    int-to-float v0, v0

    div-float v5, v0, v14

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->n(Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_3

    invoke-static {v11, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    move-object/from16 v3, p2

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->n(Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_0

    iget-object v1, v10, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    invoke-static {v11, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->q(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    goto :goto_0

    :goto_3
    if-eqz v12, :cond_5

    invoke-static {v11, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    const/16 v6, 0x8

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v12, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->p(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v14, v0

    move-object v7, v8

    move-object/from16 v8, p0

    goto :goto_5

    :cond_5
    move-object v12, v7

    :goto_4
    iget-object v0, v10, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v8

    move-object/from16 v8, p0

    invoke-virtual {v8, v12, v14, v0}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->k(Lcom/yandex/div/internal/widget/indicator/c;FLjava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    move-object v14, v0

    :goto_5
    if-eqz v13, :cond_7

    invoke-static {v11, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    const/16 v6, 0x8

    const/16 v16, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v13, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->p(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    move-object v5, v0

    goto :goto_8

    :cond_7
    move-object v13, v7

    :goto_7
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->l(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div/internal/widget/indicator/c;FLjava/lang/Integer;ILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    goto :goto_6

    :goto_8
    new-instance v0, Lsz4;

    iget-object v1, v10, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivIndicator$Animation;

    invoke-virtual {v8, v1}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->j(Lcom/yandex/div2/DivIndicator$Animation;)Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->c0(Lcom/yandex/div2/DivIndicator;)Lcom/yandex/div2/DivIndicatorItemPlacement;

    move-result-object v1

    instance-of v3, v1, Lcom/yandex/div2/DivIndicatorItemPlacement$b;

    if-eqz v3, :cond_8

    new-instance v3, Lcom/yandex/div/internal/widget/indicator/a$a;

    check-cast v1, Lcom/yandex/div2/DivIndicatorItemPlacement$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivIndicatorItemPlacement$b;->c()Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v11, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11, v9}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v1}, Lcom/yandex/div/internal/widget/indicator/a$a;-><init>(F)V

    :goto_9
    move-object v6, v3

    goto :goto_c

    :cond_8
    instance-of v3, v1, Lcom/yandex/div2/DivIndicatorItemPlacement$c;

    if-eqz v3, :cond_d

    new-instance v3, Lcom/yandex/div/internal/widget/indicator/a$b;

    check-cast v1, Lcom/yandex/div2/DivIndicatorItemPlacement$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivIndicatorItemPlacement$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object v4

    iget-object v4, v4, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v11, v13}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v11, v9}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/yandex/div2/DivIndicatorItemPlacement$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const/16 v1, 0x1f

    shr-long v8, v6, v1

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_c

    const-wide/16 v15, -0x1

    cmp-long v1, v8, v15

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    sget-object v1, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable convert \'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\' to Int"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lxi;->i(Ljava/lang/String;)V

    :cond_a
    cmp-long v1, v6, v10

    if-lez v1, :cond_b

    const v1, 0x7fffffff

    goto :goto_b

    :cond_b
    const/high16 v1, -0x80000000

    goto :goto_b

    :cond_c
    :goto_a
    long-to-int v1, v6

    :goto_b
    invoke-direct {v3, v4, v1}, Lcom/yandex/div/internal/widget/indicator/a$b;-><init>(FI)V

    goto :goto_9

    :goto_c
    move-object v1, v0

    move-object v3, v14

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lsz4;-><init>(Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/c;Lcom/yandex/div/internal/widget/indicator/a;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/yandex/div/internal/widget/indicator/PagerIndicatorView;->setStyle(Lsz4;)V

    return-void

    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public h(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivIndicator;Lcom/yandex/div2/DivIndicator;)V
    .locals 2

    const-string p4, "<this>"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "bindingContext"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "div"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Loj3;Lcom/yandex/div2/DivIndicator;)V

    new-instance p4, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bind$callback$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bind$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Loj3;Lcom/yandex/div2/DivIndicator;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->E:Lcom/yandex/div2/DivShape;

    invoke-static {p1, v0, p2, p4}, Lsj3;->m(Lqj3;Lcom/yandex/div2/DivShape;Loj3;Le74;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->d:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-static {p1, v0, p2, p4}, Lsj3;->l(Lqj3;Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Le74;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->u:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-static {p1, v0, p2, p4}, Lsj3;->l(Lqj3;Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Le74;)V

    iget-object v0, p3, Lcom/yandex/div2/DivIndicator;->t:Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-static {p1, v0, p2, p4}, Lsj3;->l(Lqj3;Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Le74;)V

    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->c0(Lcom/yandex/div2/DivIndicator;)Lcom/yandex/div2/DivIndicatorItemPlacement;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div2/DivIndicatorItemPlacement$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div2/DivIndicatorItemPlacement$b;

    invoke-virtual {v0}, Lcom/yandex/div2/DivIndicatorItemPlacement$b;->c()Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    invoke-virtual {v0}, Lcom/yandex/div2/DivIndicatorItemPlacement$b;->c()Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/div2/DivIndicatorItemPlacement$c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yandex/div2/DivIndicatorItemPlacement$c;

    invoke-virtual {v0}, Lcom/yandex/div2/DivIndicatorItemPlacement$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    invoke-virtual {v0}, Lcom/yandex/div2/DivIndicatorItemPlacement$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    invoke-virtual {v0}, Lcom/yandex/div2/DivIndicatorItemPlacement$c;->c()Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;->addSubscription(Lqc2;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Log2;Loj3;Le74;)V

    return-void
.end method

.method public i(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div2/Div$h;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->rootDiv$div_release()Lcom/yandex/div2/Div;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {p3}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v1}, Lzt2;->c(Lcom/yandex/div2/Div;Loj3;)Lyt2;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;

    invoke-direct {v1, v4, v3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$1;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Lyt2;->e(Le74;)Lyt2;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$2;

    invoke-direct {v1, v4, v3}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder$bindView$lambda$2$$inlined$findNearest$2;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v1}, Lyt2;->f(Le74;)Lyt2;

    move-result-object v0

    invoke-interface {v0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lb81;->z(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4;

    invoke-virtual {v1}, Lmz4;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    if-ne v1, v2, :cond_3

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg59;

    invoke-virtual {v8}, Lg59;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Log2;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lg59;->b()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Lg59;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v7, Lg59;

    invoke-direct {v7, v6}, Lg59;-><init>(Ljava/lang/Object;)V

    iput-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_3
    instance-of v6, v1, Lcom/yandex/div2/DivPager;

    if-eqz v6, :cond_0

    move-object v6, v1

    check-cast v6, Lcom/yandex/div2/DivPager;

    invoke-virtual {p3}, Lcom/yandex/div2/Div$h;->c()Lcom/yandex/div2/DivIndicator;

    move-result-object v7

    iget-object v7, v7, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/yandex/div2/DivPager;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/yandex/div2/Div$h;->c()Lcom/yandex/div2/DivIndicator;

    move-result-object v7

    iget-object v7, v7, Lcom/yandex/div2/DivIndicator;->A:Ljava/lang/String;

    invoke-static {v6, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_4
    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v6, :cond_5

    check-cast v6, Lg59;

    invoke-virtual {v6}, Lg59;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    new-instance v6, Lg59;

    invoke-direct {v6, v1}, Lg59;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->E0(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distance clash when searching for the nearest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/yandex/div2/DivPager;

    invoke-static {v2}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v2

    invoke-interface {v2}, Lde5;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". First found is taken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Li81;->n0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Log2;

    :cond_b
    :goto_3
    check-cast v6, Lcom/yandex/div2/DivPager;

    if-eqz v6, :cond_c

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->b:Lxv7;

    invoke-virtual {v0, p2, v6}, Lxv7;->b(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Lcom/yandex/div2/DivPager;)V

    :cond_c
    invoke-super {p0, p1, p2, p3}, Lwu2;->c(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    return-void
.end method

.method public final j(Lcom/yandex/div2/DivIndicator$Animation;)Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div2/DivIndicator$Animation;->WORM:Lcom/yandex/div2/DivIndicator$Animation;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;->WORM:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    return-object p0

    :cond_0
    sget-object p0, Lcom/yandex/div2/DivIndicator$Animation;->SLIDER:Lcom/yandex/div2/DivIndicator$Animation;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;->SLIDER:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    return-object p0

    :cond_1
    sget-object p0, Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;->SCALE:Lcom/yandex/div/internal/widget/indicator/IndicatorParams$Animation;

    return-object p0
.end method

.method public final k(Lcom/yandex/div/internal/widget/indicator/c;FLjava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 7

    instance-of p0, p1, Lcom/yandex/div/internal/widget/indicator/c$b;

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result p0

    goto :goto_0

    :goto_1
    check-cast p1, Lcom/yandex/div/internal/widget/indicator/c$b;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v2

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->e()Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b$b;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->g()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$b;->f()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J(IFFFFLjava/lang/Float;Ljava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c;->c()I

    move-result p0

    :goto_2
    check-cast p1, Lcom/yandex/div/internal/widget/indicator/c$a;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c$a;->e()Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/b$a;->d()F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I(IFF)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;Log2;Loj3;Le74;)V
    .locals 1

    invoke-interface {p2}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/yandex/div2/DivFixedSize;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivFixedSize;

    invoke-static {p1, p0, p3, p4}, Lsj3;->h(Lqj3;Lcom/yandex/div2/DivFixedSize;Loj3;Le74;)V

    :cond_0
    invoke-interface {p2}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lcom/yandex/div2/DivFixedSize;

    if-eqz p2, :cond_1

    check-cast p0, Lcom/yandex/div2/DivFixedSize;

    invoke-static {p1, p0, p3, p4}, Lsj3;->h(Lqj3;Lcom/yandex/div2/DivFixedSize;Loj3;Le74;)V

    :cond_1
    return-void
.end method

.method public final n(Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 9

    iget-object p0, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSizeUnit;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    :cond_1
    iget-object v0, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, p2, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    iget-object v0, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p4, v0

    :goto_1
    invoke-virtual {p4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object p4, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p4, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v3

    iget-object p4, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p4, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v4

    iget-object p4, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p4, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result v5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    move-object v7, p0

    goto :goto_2

    :cond_4
    move-object v7, v1

    :goto_2
    iget-object p0, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    :cond_5
    move-object v8, v1

    move v6, p5

    invoke-static/range {v2 .. v8}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J(IFFFFLjava/lang/Float;Ljava/lang/Integer;)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lcom/yandex/div2/DivShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;
    .locals 6

    instance-of v0, p1, Lcom/yandex/div2/DivShape$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivShape$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$c;->c()Lcom/yandex/div2/DivRoundedRectangleShape;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivIndicatorBinder;->n(Lcom/yandex/div2/DivRoundedRectangleShape;Landroid/util/DisplayMetrics;Loj3;Lcom/yandex/div/json/expressions/Expression;F)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivShape$a;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/yandex/div2/DivShape$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivShape$a;->c()Lcom/yandex/div2/DivCircleShape;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivCircleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p0, p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p0

    invoke-virtual {p4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1, p0, p5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->I(IFF)Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
