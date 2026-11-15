.class public Lut2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lut2$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ltv2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltv2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewIdProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut2;->a:Landroid/content/Context;

    iput-object p2, p0, Lut2;->b:Ltv2;

    return-void
.end method


# virtual methods
.method public final a(Lpc9;Loj3;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-interface {v2}, Log2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->j()Lcom/yandex/div2/DivChangeTransition;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Lut2;->h(Lcom/yandex/div2/DivChangeTransition;Loj3;)Landroidx/transition/Transition;

    move-result-object v1

    iget-object v3, p0, Lut2;->b:Ltv2;

    invoke-virtual {v3, v2}, Ltv2;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b(Lpc9;Loj3;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-interface {v2}, Log2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->z()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, p2}, Lut2;->g(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object v1

    iget-object v3, p0, Lut2;->b:Ltv2;

    invoke-virtual {v3, v2}, Ltv2;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c(Lpc9;Loj3;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl2;

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v2

    invoke-interface {v2}, Log2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v1

    invoke-interface {v1}, Log2;->i()Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, p2}, Lut2;->g(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object v1

    iget-object v3, p0, Lut2;->b:Ltv2;

    invoke-virtual {v3, v2}, Ltv2;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Lpc9;Lpc9;Loj3;Loj3;)Landroidx/transition/TransitionSet;
    .locals 2

    const-string v0, "fromResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toResolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3}, Lut2;->c(Lpc9;Loj3;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lv7b;->a(Landroidx/transition/TransitionSet;Ljava/lang/Iterable;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p3}, Lut2;->a(Lpc9;Loj3;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lv7b;->a(Landroidx/transition/TransitionSet;Ljava/lang/Iterable;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p4}, Lut2;->b(Lpc9;Loj3;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lv7b;->a(Landroidx/transition/TransitionSet;Ljava/lang/Iterable;)V

    :cond_2
    return-object v0
.end method

.method public e(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;
    .locals 1

    const-string v0, "resolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lut2;->g(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public final f()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object p0, p0, Lut2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "context.resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;
    .locals 8

    instance-of v0, p1, Lcom/yandex/div2/DivAppearanceTransition$d;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    check-cast p1, Lcom/yandex/div2/DivAppearanceTransition$d;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$d;->c()Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivAppearanceSetTransition;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAppearanceTransition;

    invoke-virtual {p0, v1, p2, p3}, Lut2;->g(Lcom/yandex/div2/DivAppearanceTransition;ILoj3;)Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v4

    invoke-virtual {v1}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div2/DivAppearanceTransition$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div/core/view2/animations/Fade;

    check-cast p1, Lcom/yandex/div2/DivAppearanceTransition$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivFadeTransition;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/animations/Fade;-><init>(F)V

    invoke-virtual {v0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p0}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/yandex/div2/DivAppearanceTransition$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div/core/view2/animations/Scale;

    check-cast p1, Lcom/yandex/div2/DivAppearanceTransition$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/DivScaleTransition;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivScaleTransition;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivScaleTransition;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/div/core/view2/animations/Scale;-><init>(FFF)V

    invoke-virtual {v0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivScaleTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivScaleTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivScaleTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p0}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/yandex/div2/DivAppearanceTransition$e;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div/core/view2/animations/Slide;

    check-cast p1, Lcom/yandex/div2/DivAppearanceTransition$e;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivSlideTransition;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lut2;->f()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/div2/DivSlideTransition;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSlideTransition$Edge;

    invoke-virtual {p0, v2}, Lut2;->i(Lcom/yandex/div2/DivSlideTransition$Edge;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div/core/view2/animations/Slide;-><init>(II)V

    invoke-virtual {v0, p2}, Landroidx/transition/Visibility;->setMode(I)V

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivSlideTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivSlideTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivSlideTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p0}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final h(Lcom/yandex/div2/DivChangeTransition;Loj3;)Landroidx/transition/Transition;
    .locals 3

    instance-of v0, p1, Lcom/yandex/div2/DivChangeTransition$c;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/transition/TransitionSet;

    invoke-direct {v0}, Landroidx/transition/TransitionSet;-><init>()V

    check-cast p1, Lcom/yandex/div2/DivChangeTransition$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivChangeTransition$c;->c()Lcom/yandex/div2/DivChangeSetTransition;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivChangeSetTransition;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivChangeTransition;

    invoke-virtual {p0, v1, p2}, Lut2;->h(Lcom/yandex/div2/DivChangeTransition;Loj3;)Landroidx/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivChangeTransition$a;

    if-eqz p0, :cond_2

    new-instance v0, Landroidx/transition/ChangeBounds;

    invoke-direct {v0}, Landroidx/transition/ChangeBounds;-><init>()V

    check-cast p1, Lcom/yandex/div2/DivChangeTransition$a;

    invoke-virtual {p1}, Lcom/yandex/div2/DivChangeTransition$a;->c()Lcom/yandex/div2/DivChangeBoundsTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivChangeBoundsTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivChangeTransition$a;->c()Lcom/yandex/div2/DivChangeBoundsTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivChangeBoundsTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    invoke-virtual {p1}, Lcom/yandex/div2/DivChangeTransition$a;->c()Lcom/yandex/div2/DivChangeBoundsTransition;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div2/DivChangeBoundsTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p0}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final i(Lcom/yandex/div2/DivSlideTransition$Edge;)I
    .locals 1

    sget-object p0, Lut2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 v0, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/16 v0, 0x30

    :cond_3
    :goto_0
    return v0
.end method
