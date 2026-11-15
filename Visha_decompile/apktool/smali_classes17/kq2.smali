.class public abstract Lkq2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkq2$a;
    }
.end annotation


# direct methods
.method public static final synthetic a(Lcom/yandex/div2/DivAnimation;ZLoj3;)Landroidx/transition/Transition;
    .locals 0

    invoke-static {p0, p1, p2}, Lkq2;->d(Lcom/yandex/div2/DivAnimation;ZLoj3;)Landroidx/transition/Transition;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Double;)Ljava/lang/Float;
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

.method public static final c(Ljava/lang/Double;)Ljava/lang/Float;
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

.method public static final d(Lcom/yandex/div2/DivAnimation;ZLoj3;)Landroidx/transition/Transition;
    .locals 10

    iget-object v0, p0, Lcom/yandex/div2/DivAnimation;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAnimation$Name;

    sget-object v1, Lkq2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_12

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_0
    invoke-static {v2}, Lkq2;->b(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_2
    invoke-static {v2}, Lkq2;->b(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    new-instance v2, Lcom/yandex/div/core/view2/animations/Fade;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_3
    invoke-direct {v2, v3}, Lcom/yandex/div/core/view2/animations/Fade;-><init>(F)V

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/transition/Visibility;->setMode(I)V

    goto/16 :goto_7

    :cond_5
    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_6
    invoke-static {v2}, Lkq2;->c(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_8
    invoke-static {v2}, Lkq2;->c(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    :goto_2
    new-instance v2, Lcom/yandex/div/core/view2/animations/Scale;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :cond_9
    move v5, v3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/yandex/div/core/view2/animations/Scale;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_a
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkq2;->e(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lkq2;->e(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object v0

    :goto_3
    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_d
    invoke-static {v2}, Lkq2;->e(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_4

    :cond_e
    iget-object p0, p0, Lcom/yandex/div2/DivAnimation;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_f

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    :cond_f
    invoke-static {v2}, Lkq2;->e(Ljava/lang/Double;)Ljava/lang/Float;

    move-result-object p0

    :goto_4
    new-instance v2, Lcom/yandex/div/core/view2/animations/VerticalTranslation;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_5

    :cond_10
    const/high16 p1, -0x40800000    # -1.0f

    :goto_5
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_6

    :cond_11
    const/4 p0, 0x0

    :goto_6
    invoke-direct {v2, p1, p0}, Lcom/yandex/div/core/view2/animations/VerticalTranslation;-><init>(FF)V

    :cond_12
    :goto_7
    return-object v2
.end method

.method public static final e(Ljava/lang/Double;)Ljava/lang/Float;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, -0x40800000    # -1.0f

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
