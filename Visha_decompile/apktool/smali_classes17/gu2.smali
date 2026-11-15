.class public final Lgu2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgu2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgu2;

    invoke-direct {v0}, Lgu2;-><init>()V

    sput-object v0, Lgu2;->a:Lgu2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;
    .locals 1

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startAction"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivAnimator$c;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/yandex/div2/DivAnimator$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAnimator$c;->c()Lcom/yandex/div2/DivNumberAnimator;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lgu2;->e(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivAnimator$a;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/yandex/div2/DivAnimator$a;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAnimator$a;->c()Lcom/yandex/div2/DivColorAnimator;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lgu2;->b(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivColorAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivColorAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;
    .locals 9

    invoke-virtual {p2}, Lcom/yandex/div2/DivColorAnimator;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lvj3;->g()Lsnb;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Lqnb$c;

    if-nez v1, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Lqnb$c;

    if-nez v0, :cond_4

    new-instance p0, Lcom/yandex/div/evaluable/MissingVariableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find color variable with name \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yandex/div2/DivColorAnimator;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p0, p2, v2, p3, v2}, Lcom/yandex/div/evaluable/MissingVariableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    return-object v2

    :cond_4
    iget-object v1, p3, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_6

    invoke-static {v1, p4}, Leg2;->b(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v1

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    :cond_7
    :goto_2
    iget-object v1, p3, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_8

    invoke-static {v1, p4}, Leg2;->b(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_8
    iget-object v1, p2, Lcom/yandex/div2/DivColorAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lk81;->d(I)I

    move-result v2

    invoke-static {v2}, Lk81;->c(I)Lk81;

    move-result-object v2

    invoke-virtual {v0, v2}, Lqnb;->p(Ljava/lang/Object;)V

    :cond_9
    sget-object v2, Lw81;->a:Lw81;

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v0, "ofArgb(variable, ColorIntValueProperty, endValue)"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lgu2;->f(Landroid/animation/ObjectAnimator;Lcom/yandex/div/core/view2/Div2View;Ljg2;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Lqnb$e;)Landroid/animation/Animator;
    .locals 10

    iget-object v0, p3, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-eqz v0, :cond_0

    invoke-static {v0, p4}, Leg2;->c(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p2, Lcom/yandex/div2/DivNumberAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p3, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_3

    invoke-static {v1, p4}, Leg2;->c(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_1

    :cond_3
    iget-object v1, p2, Lcom/yandex/div2/DivNumberAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p5, v0}, Lqnb;->p(Ljava/lang/Object;)V

    :cond_4
    sget-object v0, Lf47;->a:Lf47;

    double-to-float v1, v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p5, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string p5, "ofFloat(variable, Number\u2026erty, endValue.toFloat())"

    invoke-static {v5, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lgu2;->f(Landroid/animation/ObjectAnimator;Lcom/yandex/div/core/view2/Div2View;Ljg2;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Lqnb$f;)Landroid/animation/Animator;
    .locals 8

    iget-object v0, p3, Lcom/yandex/div2/DivActionAnimatorStart;->h:Lcom/yandex/div2/DivTypedValue;

    if-eqz v0, :cond_0

    invoke-static {v0, p4}, Leg2;->g(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p2, Lcom/yandex/div2/DivNumberAnimator;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object v1, p3, Lcom/yandex/div2/DivActionAnimatorStart;->d:Lcom/yandex/div2/DivTypedValue;

    if-eqz v1, :cond_3

    invoke-static {v1, p4}, Leg2;->g(Lcom/yandex/div2/DivTypedValue;Loj3;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p2, Lcom/yandex/div2/DivNumberAnimator;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p5, v0}, Lqnb;->p(Ljava/lang/Object;)V

    :cond_5
    sget-object v0, Ly25;->a:Ly25;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p5, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-string p5, "ofInt(variable, IntegerV\u2026operty, endValue.toInt())"

    invoke-static {v3, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lgu2;->f(Landroid/animation/ObjectAnimator;Lcom/yandex/div/core/view2/Div2View;Ljg2;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/Animator;
    .locals 9

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p4}, Lcom/yandex/div/core/expression/local/RuntimeStore;->j(Loj3;)Lvj3;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/Div2View;->getExpressionsRuntime$div_release()Lvj3;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lvj3;->g()Lsnb;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lsnb;->a(Ljava/lang/String;)Lqnb;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    instance-of v1, v0, Lqnb$f;

    if-eqz v1, :cond_4

    move-object v8, v0

    check-cast v8, Lqnb$f;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lgu2;->d(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Lqnb$f;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lqnb$e;

    if-eqz v1, :cond_5

    move-object v8, v0

    check-cast v8, Lqnb$e;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lgu2;->c(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivNumberAnimator;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;Lqnb$e;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/yandex/div/evaluable/MissingVariableException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find number variable with name \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yandex/div2/DivNumberAnimator;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p0, p2, v2, p3, v2}, Lcom/yandex/div/evaluable/MissingVariableException;-><init>(Ljava/lang/String;Ljava/lang/Exception;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p0}, Leg2;->e(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public final f(Landroid/animation/ObjectAnimator;Lcom/yandex/div/core/view2/Div2View;Ljg2;Lcom/yandex/div2/DivActionAnimatorStart;Loj3;)Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object p0, p4, Lcom/yandex/div2/DivActionAnimatorStart;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationDirection;

    if-nez p0, :cond_1

    :cond_0
    invoke-interface {p3}, Ljg2;->a()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationDirection;

    :cond_1
    iget-object v0, p4, Lcom/yandex/div2/DivActionAnimatorStart;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-interface {p3}, Ljg2;->getDuration()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p4, Lcom/yandex/div2/DivActionAnimatorStart;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_3

    :cond_3
    invoke-interface {p3}, Ljg2;->f()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object v0, p4, Lcom/yandex/div2/DivActionAnimatorStart;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAnimationInterpolator;

    if-nez v0, :cond_5

    :cond_4
    invoke-interface {p3}, Ljg2;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAnimationInterpolator;

    :cond_5
    invoke-static {p0}, Leu2;->k(Lcom/yandex/div2/DivAnimationDirection;)Z

    move-result v1

    invoke-static {v0, v1}, Leu2;->a(Lcom/yandex/div2/DivAnimationInterpolator;Z)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p4, p4, Lcom/yandex/div2/DivActionAnimatorStart;->f:Lcom/yandex/div2/DivCount;

    if-nez p4, :cond_6

    invoke-interface {p3}, Ljg2;->c()Lcom/yandex/div2/DivCount;

    move-result-object p4

    :cond_6
    instance-of v0, p4, Lcom/yandex/div2/DivCount$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    check-cast p4, Lcom/yandex/div2/DivCount$b;

    invoke-virtual {p4}, Lcom/yandex/div2/DivCount$b;->c()Lcom/yandex/div2/DivFixedCount;

    move-result-object p4

    iget-object p4, p4, Lcom/yandex/div2/DivFixedCount;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int p4, v2

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lwn8;->d(II)I

    move-result p4

    goto :goto_4

    :cond_7
    instance-of p4, p4, Lcom/yandex/div2/DivCount$c;

    if-eqz p4, :cond_b

    const/4 p4, -0x1

    :goto_4
    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-static {p0}, Leu2;->h(Lcom/yandex/div2/DivAnimationDirection;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v1, 0x2

    :cond_8
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-interface {p3}, Ljg2;->e()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance p4, Lgu2$a;

    invoke-direct {p4, p0, p2, p5}, Lgu2$a;-><init>(Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_9
    invoke-interface {p3}, Ljg2;->b()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p3, Lgu2$b;

    invoke-direct {p3, p0, p2, p5}, Lgu2$b;-><init>(Ljava/util/List;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a
    return-object p1

    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
