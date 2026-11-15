.class public abstract Lft2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lft2$a;
    }
.end annotation


# direct methods
.method public static final a(Landroid/widget/PopupWindow;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lft2;->c(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method public static final b(Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/transition/TransitionSet;
    .locals 3

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Lw7b;

    iget-object p0, p0, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTooltip$Position;

    const/4 p1, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2, p1}, Lw7b;-><init>(Lcom/yandex/div2/DivTooltip$Position;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p0

    new-instance p1, Llv9;

    invoke-direct {p1}, Llv9;-><init>()V

    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/widget/PopupWindow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static final d(Landroid/widget/PopupWindow;Lcom/yandex/div2/DivTooltip;Loj3;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divTooltip"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/yandex/div2/DivTooltip;->a:Lcom/yandex/div2/DivAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTooltip$Position;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p2}, Lft2;->e(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivTooltip$Position;ZLoj3;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lft2;->b(Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/transition/TransitionSet;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object v0, p1, Lcom/yandex/div2/DivTooltip;->b:Lcom/yandex/div2/DivAnimation;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/yandex/div2/DivTooltip;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivTooltip$Position;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lft2;->e(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivTooltip$Position;ZLoj3;)Landroid/transition/Transition;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lft2;->b(Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/transition/TransitionSet;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static final e(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivTooltip$Position;ZLoj3;)Landroid/transition/Transition;
    .locals 4

    iget-object v0, p0, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAnimation$Name;

    sget-object v1, Lft2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    move-object v0, v1

    goto :goto_5

    :pswitch_1
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iget-object v2, p0, Lcom/yandex/div2/DivAnimation;->d:Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivAnimation;

    invoke-static {v3, p1, p2, p3}, Lft2;->e(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivTooltip$Position;ZLoj3;)Landroid/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    :goto_1
    new-instance v0, Lo19;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    double-to-float p1, p1

    goto :goto_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_2
    invoke-direct {v0, p1}, Lo19;-><init>(F)V

    goto :goto_5

    :pswitch_3
    new-instance v0, Lw7b;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    :goto_3
    if-eqz p2, :cond_3

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_4

    :cond_3
    move-object p2, v1

    :goto_4
    invoke-direct {v0, p1, p2}, Lw7b;-><init>(Lcom/yandex/div2/DivTooltip$Position;Ljava/lang/Float;)V

    goto :goto_5

    :pswitch_4
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/yandex/div2/DivAnimation;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p0}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v1

    :cond_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
