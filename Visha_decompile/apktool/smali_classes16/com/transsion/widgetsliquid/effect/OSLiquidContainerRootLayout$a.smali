.class public final Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Le74;Ljava/util/List;Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->e(Le74;Ljava/util/List;Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->f(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;Ljava/util/List;ZJLe74;Le74;Le74;ILjava/lang/Object;)Landroid/animation/Animator;
    .locals 10

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->c(Ljava/util/List;ZJLe74;Le74;Le74;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Le74;Ljava/util/List;Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "$targets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$startAlphas"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    aget v4, v2, v0

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v4, v5, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v4

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-static {v6, v5, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v6

    const/4 v7, 0x2

    aget v2, v2, v7

    invoke-static {v2, v5, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v2

    invoke-virtual {v3, v4, v6, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBackDropInnerColorsAlpha(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final f(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "$targets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targetAlphas"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p3, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    iget-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    aget v4, v2, v0

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v4

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-static {v5, v6, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v6

    const/4 v7, 0x2

    aget v2, v2, v7

    invoke-static {v5, v2, p3}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a;->g(FFF)F

    move-result v2

    invoke-virtual {v3, v4, v6, v2}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setBackDropInnerColorsAlpha(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final g(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final c(Ljava/util/List;ZJLe74;Le74;Le74;)Landroid/animation/Animator;
    .locals 16

    move-object/from16 v7, p1

    move-wide/from16 v0, p3

    move-object/from16 v8, p5

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v2, "targets"

    invoke-static {v7, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v7

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->clearBackDropInnerColorsAlpha()V

    goto :goto_0

    :cond_0
    xor-int/lit8 v3, p2, 0x1

    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v3, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v5, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->setNightMode(Z)V

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    invoke-virtual {v12, v3}, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;->getBackDropDefaultAlphas(Z)[F

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-array v3, v10, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lw57;

    invoke-direct {v3, v8, v7, v4}, Lw57;-><init>(Le74;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v12, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;

    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iput-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-array v2, v10, [F

    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v15, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;

    move-object v0, v15

    move-object v1, v11

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Le74;Le74;)V

    invoke-virtual {v14, v15}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lx57;

    invoke-direct {v0, v8, v7, v13}, Lx57;-><init>(Le74;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v10, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    aput-object v14, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v1, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;

    move-object/from16 v2, p6

    invoke-direct {v1, v7, v2, v11}, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout$a$a;-><init>(Ljava/util/List;Le74;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
