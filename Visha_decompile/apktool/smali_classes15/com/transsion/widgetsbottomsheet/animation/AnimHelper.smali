.class public final Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;,
        Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

.field public static b:Landroid/animation/AnimatorSet;

.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    invoke-direct {v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;-><init>()V

    sput-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    new-instance v0, Lp97;

    invoke-direct {v0}, Lp97;-><init>()V

    sput-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Lp97;

    invoke-direct {v0}, Lp97;-><init>()V

    sput-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->i(Ljava/util/List;FF)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->n(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->o(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJZLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;
    .locals 9

    move-object v1, p2

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 v5, 0x1

    aput p4, v3, v5

    invoke-static {p2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v7, 0x15e

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Lzfb;->a:Lzfb;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-static {p2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-wide v7, p5

    invoke-virtual {v3, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    aput-object v3, v2, v5

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;

    move-object v0, v7

    move v2, p3

    move/from16 v3, p7

    move-object v4, p1

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$b;-><init>(Landroid/view/View;FZLcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v6

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final e(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;
    .locals 10

    move-object v0, p2

    move v1, p3

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v7, 0x1

    aput p4, v5, v7

    invoke-static {p2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x15e

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Lzfb;->a:Lzfb;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v4, [F

    fill-array-data v8, :array_0

    invoke-static {p2, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    move-wide v8, p5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v8, p7

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v6

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;

    move-object v4, p1

    move-object/from16 v5, p9

    invoke-direct {v3, p1, p2, p3, v5}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$c;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final f(Landroid/view/View;Landroid/view/ViewGroup;IIJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/ValueAnimator;
    .locals 1

    instance-of p0, p1, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->setMFixedHeight(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance p4, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;

    invoke-direct {p4, p2}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;->c(Landroid/view/View;)V

    const-string p1, "height"

    filled-new-array {p3, p0}, [I

    move-result-object p0

    invoke-static {p4, p1, p0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p1, "ofInt(\n            wrapp\u2026, start, target\n        )"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p7, p8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;

    invoke-direct {p1, p4, p3, p9, p2}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$d;-><init>(Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$ContentHeightWrapper;ILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public final g(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFJ)Landroid/animation/ObjectAnimator;
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getTitleView()Landroid/view/View;

    move-result-object p0

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    sget-object p4, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;

    invoke-direct {p4, p0, p2, p3}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$e;-><init>(Landroid/view/View;FF)V

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p0, "ofFloat(titleView, View.\u2026\n            })\n        }"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFFFZ)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->l(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Ljava/util/List;

    move-result-object v2

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v0, [F

    const/4 v7, 0x0

    aput p2, v6, v7

    const/4 v7, 0x1

    aput p3, v6, v7

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v6, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p4}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, p4}, Landroid/view/View;->setScaleY(F)V

    sget-object v4, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->a:Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;

    sget-object v6, Lf43;->q:Lf43$s;

    const-string v7, "SCALE_X"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6, p5}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->k(Landroid/view/View;Lf43$s;F)Ljv9;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lf43;->r:Lf43$s;

    const-string v7, "SCALE_Y"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6, p5}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->k(Landroid/view/View;Lf43$s;F)Ljv9;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance p1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;

    move-object v1, p1

    move v3, p2

    move v4, p4

    move v6, p6

    move v7, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$f;-><init>(Ljava/util/List;FFLjava/util/ArrayList;ZFF)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object p0
.end method

.method public final i(Ljava/util/List;FF)V
    .locals 0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 14

    const-string v0, "dragView"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panelContent"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hideView"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showView"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    move-object/from16 v13, p8

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v11, -0x3db80000    # -50.0f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42480000    # 50.0f

    move-object v1, p0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v13}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->q(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIIFFFFLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public final k(Landroid/view/View;Lf43$s;F)Ljv9;
    .locals 0

    new-instance p0, Ljv9;

    invoke-direct {p0, p1, p2, p3}, Ljv9;-><init>(Ljava/lang/Object;Laz3;F)V

    const p1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, p1}, Lf43;->k(F)Lf43;

    new-instance p1, Lkv9;

    invoke-direct {p1, p3}, Lkv9;-><init>(F)V

    const/high16 p2, 0x43c80000    # 400.0f

    invoke-virtual {p1, p2}, Lkv9;->i(F)Lkv9;

    const p2, 0x3f4a3d71    # 0.79f

    invoke-virtual {p1, p2}, Lkv9;->g(F)Lkv9;

    invoke-virtual {p0, p1}, Ljv9;->z(Lkv9;)Ljv9;

    return-object p0
.end method

.method public final l(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Ljava/util/List;
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getLeftIconView()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getRightIconView()Lcom/transsion/widgetsliquid/view/OSLiquidButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getLeftButtonView()Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getRightButtonView()Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const/4 p0, 0x2

    aput-object v1, v2, p0

    const/4 p0, 0x3

    aput-object p1, v2, p0

    invoke-static {v2}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final m()V
    .locals 2

    sget-object p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 p0, 0x0

    sput-object p0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method public final n(Landroid/view/View;Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;->a()V

    :cond_0
    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->i(Ljava/util/List;FF)V

    return-void
.end method

.method public final p(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIILcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 14

    const-string v0, "dragView"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "panelContent"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hideView"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showView"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    move-object/from16 v13, p8

    invoke-static {v13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v11, 0x42480000    # 50.0f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x3db80000    # -50.0f

    move-object v1, p0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v13}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->q(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIIFFFFLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V

    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/ViewGroup;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;ZIIFFFFLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)V
    .locals 15

    sget-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v3, p3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v0, p4

    :cond_2
    filled-new-array/range {p3 .. p4}, [Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-static {v1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v1, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p8

    float-to-int v2, v2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p9

    float-to-int v2, v2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v5, v1

    xor-int/lit8 v8, p5, 0x1

    const/4 v9, 0x0

    const-wide/16 v6, 0x64

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->d(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJZLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v2, p0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->g(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->h(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFFFZ)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p10

    float-to-int v2, v2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p11

    float-to-int v2, v2

    invoke-static {v1, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    int-to-float v8, v1

    const-wide/16 v9, 0xc8

    const-wide/16 v11, 0x32

    move-object v4, p0

    move-object/from16 v5, p4

    move-object v6, v0

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->e(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Landroid/view/View;FFJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x32

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->g(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->h(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;FFFFZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p5, :cond_4

    new-instance v10, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$g;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper$g;-><init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V

    const-wide/16 v6, 0x15e

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v10}, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->f(Landroid/view/View;Landroid/view/ViewGroup;IIJJLcom/transsion/widgetsbottomsheet/animation/AnimHelper$a;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v0, Lcom/transsion/widgetsbottomsheet/animation/AnimHelper;->b:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
