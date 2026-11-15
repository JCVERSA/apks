.class public Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;
.super Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator$z1OoOdo;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;-><init>(Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;)V

    return-void
.end method

.method private convertVelocity(FFF)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    cmpl-float p0, p1, v0

    const v1, 0x458ca000    # 4500.0f

    sub-float/2addr p1, v0

    if-lez p0, :cond_1

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    :goto_0
    div-float p0, p3, v1

    goto :goto_1

    :cond_1
    neg-float p0, p1

    sub-float/2addr p3, p2

    mul-float/2addr p3, p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method private getOptimizedFactor(Z)F
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDiffFrictionFactor:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const p1, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_0
    const p1, 0x3f266666    # 0.65f

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mUseInitialFrictionFactor:Z

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    return p1
.end method


# virtual methods
.method public createAnimation()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;->getTranslationProperty(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const-string v3, "BounceEffect"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    const-string v0, "cancel animator"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v4, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {v2, v0, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V

    iput-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomDragBounceParameters:Z

    const-wide v4, 0x3fe245a1cac08312L    # 0.571

    const-wide v6, 0x3fd24dd2f1a9fbe7L    # 0.286

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_1

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessLow:F

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingLow:F

    :goto_1
    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->damping:F

    goto/16 :goto_4

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessHigh:F

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingHigh:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragStiffnessMedium:F

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDragDampingMedium:F

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lvyd;->b:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_5

    const/high16 v0, 0x43b40000    # 360.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const v0, 0x3f99999a    # 1.2f

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_9

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    const/high16 v0, 0x43160000    # 150.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_7
    sget-boolean v0, Lvyd;->b:Z

    if-eqz v0, :cond_8

    :goto_2
    const v0, 0x439b8000    # 311.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const v0, 0x3f8e147b    # 1.11f

    goto :goto_1

    :cond_8
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v10, v0

    mul-double/2addr v10, v6

    cmpg-double v0, v8, v10

    if-gez v0, :cond_a

    :cond_9
    const/high16 v0, 0x43a50000    # 330.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const v0, 0x3f8ccccd    # 1.1f

    goto :goto_1

    :cond_a
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    float-to-double v8, v0

    mul-double/2addr v8, v4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_b

    const/high16 v0, 0x43870000    # 270.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const v0, 0x3f666666    # 0.9f

    goto/16 :goto_1

    :cond_b
    :goto_3
    const/high16 v0, 0x43960000    # 300.0f

    sput v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    const/high16 v0, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :goto_4
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;-><init>(F)V

    sget v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    invoke-virtual {v2, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    sget v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->damping:F

    invoke-virtual {v2, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createAnimation stiffness="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->stiffness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " damping="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->damping:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " CurrentOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScreenHeight:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createMotionAttributes()Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;
    .locals 1

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator$z1OoOdo;

    invoke-direct {v0, p0}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator$z1OoOdo;-><init>(Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;)V

    return-object v0
.end method

.method public getFrictionFactor(FFZZ)F
    .locals 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "viewPortLength:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mFullDragFollowEnabled:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    if-nez p3, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->frictionFactor(F)F

    move-result p1

    :goto_0
    iget-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDoubleFrictionEnabled:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-eqz p2, :cond_3

    const/high16 p2, 0x40200000    # 2.5f

    div-float/2addr p1, p2

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->requireOptParams()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p4}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;->getOptimizedFactor(Z)F

    move-result p0

    goto :goto_1

    :cond_4
    move p0, v2

    :goto_1
    mul-float/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getTranslationProperty(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public getVelocity(Landroid/view/VelocityTracker;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3e8

    const v2, 0x459c4000    # 5000.0f

    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const v1, 0x453b8000    # 3000.0f

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/effectengine/bounceeffect/VerticalOverScrollBounceEffectDecorator;->convertVelocity(FFF)F

    move-result p0

    return p0
.end method

.method public isBounceEdgeAnimRunning(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/z1OoOfor;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVertical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public sanityCheck(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_1

    const v0, -0x800001

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tanslationY:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BounceEffect"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p0, 0x0

    return p0
.end method

.method public translateView(Landroid/view/View;F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    invoke-virtual {p3, p2, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method
