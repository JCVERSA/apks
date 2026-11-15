.class public abstract Lcom/yandex/div/core/view2/animations/UtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/animations/UtilsKt$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v11, Lcom/yandex/div2/DivAnimation;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    sget-object v3, Lcom/yandex/div2/DivAnimation$Name;->FADE:Lcom/yandex/div2/DivAnimation$Name;

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v8

    const/16 v9, 0x6c

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/yandex/div2/DivAnimation;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCount;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lcom/yandex/div/core/view2/animations/UtilsKt;->a:Lcom/yandex/div2/DivAnimation;

    return-void
.end method

.method public static final a(Ljava/lang/Double;)Ljava/lang/Float;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lwn8;->j(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lcom/yandex/div2/DivAnimation;Loj3;Landroid/view/View;)Ls74;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expressionResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/animations/UtilsKt;->i(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;ILjava/lang/Object;)Landroid/view/animation/Animation;

    move-result-object p2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/core/view2/animations/UtilsKt;->i(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;ILjava/lang/Object;)Landroid/view/animation/Animation;

    move-result-object p0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/yandex/div/core/view2/animations/UtilsKt$asTouchListener$1;

    invoke-direct {p1, p2, p0}, Lcom/yandex/div/core/view2/animations/UtilsKt$asTouchListener$1;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method public static final c(Landroidx/transition/TransitionValues;Le74;)V
    .locals 1

    const-string v0, "transitionValues"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savePosition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final d(FF)Landroid/view/animation/ScaleAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    return-object v9
.end method

.method public static final e()Lcom/yandex/div2/DivAnimation;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/animations/UtilsKt;->a:Lcom/yandex/div2/DivAnimation;

    return-object v0
.end method

.method public static final f(Landroidx/transition/Transition;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneRoot"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionKey"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {p3, p4}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, [I

    invoke-static {p1, p2, p0, p3}, Lcom/yandex/div/core/view2/animations/ViewCopiesKt;->b(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/Transition;[I)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static final g(Ljava/lang/Double;)Ljava/lang/Float;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lwn8;->c(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final h(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;)Landroid/view/animation/Animation;
    .locals 10

    iget-object v0, p0, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAnimation$Name;

    sget-object v1, Lcom/yandex/div/core/view2/animations/UtilsKt$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_11

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v1, v4, :cond_c

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 p3, 0x4

    if-eq v1, p3, :cond_13

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/yandex/div/core/view2/animations/UtilsKt;->a(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_1
    iget-object v1, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Double;

    :cond_2
    invoke-static {v6}, Lcom/yandex/div/core/view2/animations/UtilsKt;->a(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_3
    const v1, 0x3f19999a    # 0.6f

    :goto_1
    invoke-direct {p3, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v6, p3

    goto/16 :goto_8

    :cond_4
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_5

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_2

    :cond_5
    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    invoke-static {v2, v4}, Lwn8;->q(II)Lu15;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v4

    check-cast v5, Lq15;

    invoke-virtual {v5}, Lq15;->nextInt()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    sget v7, Lcom/yandex/div/R$drawable;->native_animation_background:I

    if-ne v5, v7, :cond_7

    goto/16 :goto_8

    :cond_8
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    move v7, v2

    :goto_4
    if-ge v7, v5, :cond_a

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v9, "it.getDrawable(i)"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v5, "view.background"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/yandex/div/R$drawable;->native_animation_background:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_c
    iget-object p3, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_d

    invoke-virtual {p3, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    goto :goto_5

    :cond_d
    move-object p3, v6

    :goto_5
    invoke-static {p3}, Lcom/yandex/div/core/view2/animations/UtilsKt;->g(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p3

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    :cond_e
    iget-object p3, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_f

    invoke-virtual {p3, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Ljava/lang/Double;

    :cond_f
    invoke-static {v6}, Lcom/yandex/div/core/view2/animations/UtilsKt;->g(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p3

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    goto :goto_6

    :cond_10
    const p3, 0x3f733333    # 0.95f

    :goto_6
    invoke-static {v5, p3}, Lcom/yandex/div/core/view2/animations/UtilsKt;->d(FF)Landroid/view/animation/ScaleAnimation;

    move-result-object v6

    goto :goto_8

    :cond_11
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v1, p0, Lcom/yandex/div2/DivAnimation;->d:Ljava/util/List;

    if-eqz v1, :cond_13

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivAnimation;

    invoke-static {v2, p1, p2, p3}, Lcom/yandex/div/core/view2/animations/UtilsKt;->h(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_7

    :cond_13
    :goto_8
    sget-object p3, Lcom/yandex/div2/DivAnimation$Name;->SET:Lcom/yandex/div2/DivAnimation$Name;

    if-eq v0, p3, :cond_17

    if-nez v6, :cond_14

    goto :goto_a

    :cond_14
    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p2}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-static {p2}, Lav8;->a(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    goto :goto_9

    :cond_15
    iget-object p2, p0, Lcom/yandex/div2/DivAnimation;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p2}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p2

    :goto_9
    invoke-virtual {v6, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_a
    if-nez v6, :cond_16

    goto :goto_b

    :cond_16
    iget-object p2, p0, Lcom/yandex/div2/DivAnimation;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_17
    :goto_b
    if-nez v6, :cond_18

    goto :goto_c

    :cond_18
    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-virtual {v6, p0, p1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :goto_c
    if-nez v6, :cond_19

    goto :goto_d

    :cond_19
    invoke-virtual {v6, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :goto_d
    return-object v6
.end method

.method public static synthetic i(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;ILjava/lang/Object;)Landroid/view/animation/Animation;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/animations/UtilsKt;->h(Lcom/yandex/div2/DivAnimation;Loj3;ZLandroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method
