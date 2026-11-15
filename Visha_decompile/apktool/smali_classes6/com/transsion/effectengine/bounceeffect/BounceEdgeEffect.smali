.class public Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTTOM:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x2

.field public static final DIRECTION_TOP:I = 0x1

.field public static mCurrentRefreshRate:F = 60.0f


# instance fields
.field public final z1OoOdo:Landroid/view/View;

.field public final z1OoOfor:Z

.field public final z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

.field public final z1OoOint:F

.field public z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

.field public z1OoOtry:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_2

    :cond_0
    iput v4, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_2

    :cond_1
    iput v4, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    goto :goto_2

    :cond_2
    iput v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    goto :goto_1

    :goto_2
    iget-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz p2, :cond_4

    new-instance p2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {p2, p1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const/high16 p1, 0x42d20000    # 105.0f

    const p2, 0x3f80a3d7    # 1.005f

    goto :goto_3

    :cond_4
    new-instance p2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    sget-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    invoke-direct {p2, p1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const/high16 p1, 0x42a00000    # 80.0f

    const p2, 0x3f70a3d7    # 0.94f

    :goto_3
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    invoke-direct {v2, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;-><init>(F)V

    invoke-virtual {v2, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lgk0;

    invoke-direct {p2, p0}, Lgk0;-><init>(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)V

    invoke-virtual {p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    new-instance p1, Lhk0;

    invoke-direct {p1, p3}, Lhk0;-><init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic z1OoOdo(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz p3, :cond_1

    invoke-interface {p1, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurIsFlingBounceBackState:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4
    sget-boolean p1, Lvyd;->b:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isBounceEdgeAnimRunning(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;)Z

    move-result p1

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isRefreshRateLimited()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "checkModifyRefreshRateStatus: mIsVertical = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "  isBounceEdgeAnimRunning = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " isRefreshRateLimited = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BounceEdgeEffect"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 5
    const-string p1, "Cancel high refresh rate."

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Luyd;->a(I)V

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fling anim end--------  mIsVertical = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static z1OoOdo(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "hasVibratePermission: granted = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BounceEdgeEffect"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public cancelBounceAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBounceTranslationAnimation()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    return-object p0
.end method

.method public isBounceEdgeAnimRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAbsorb(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view tanslation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BounceEdgeEffect"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2d

    const v2, -0x800001

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto/16 :goto_e

    :cond_2
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_e

    :cond_3
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-boolean v4, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getYDirection()F

    move-result v1

    iget v4, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    mul-float/2addr v1, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAbsorb: mBase.getDirection() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getYDirection()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " error absorb."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-nez v1, :cond_5

    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    :goto_1
    sput v1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->mCurrentRefreshRate:F

    sget-boolean v1, Lvyd;->b:Z

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x43160000    # 150.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x43480000    # 200.0f

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-eqz v1, :cond_16

    iget-boolean v10, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomFlingBounceParameters:Z

    if-eqz v10, :cond_6

    iget v5, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStiffness:F

    iget v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDamping:F

    goto/16 :goto_5

    :cond_6
    iget-boolean v10, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v10, :cond_7

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v11, :cond_7

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v11, :cond_8

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v11, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v10, :cond_a

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v11, :cond_a

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    if-eqz v11, :cond_a

    goto :goto_2

    :cond_a
    if-eqz v10, :cond_b

    iget-boolean v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v11, :cond_b

    :goto_2
    move v4, v6

    move v5, v7

    goto/16 :goto_5

    :cond_b
    if-eqz v10, :cond_c

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v6, :cond_c

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v6, :cond_c

    goto :goto_3

    :cond_c
    if-eqz v10, :cond_d

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v6, :cond_d

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v6, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v10, :cond_e

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v6, :cond_e

    :goto_3
    const/high16 v5, 0x42d20000    # 105.0f

    const v4, 0x3f80a3d7    # 1.005f

    goto :goto_5

    :cond_e
    if-nez v10, :cond_f

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v6, :cond_f

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v6, :cond_f

    goto :goto_4

    :cond_f
    if-nez v10, :cond_10

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v6, :cond_10

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v6, :cond_10

    goto :goto_4

    :cond_10
    if-nez v10, :cond_11

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v6, :cond_11

    goto :goto_4

    :cond_11
    if-nez v10, :cond_12

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v6, :cond_12

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    if-eqz v6, :cond_12

    goto :goto_5

    :cond_12
    if-nez v10, :cond_13

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v6, :cond_13

    goto :goto_5

    :cond_13
    if-nez v10, :cond_14

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v4, :cond_14

    goto :goto_4

    :cond_14
    if-nez v10, :cond_15

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v4, :cond_15

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v4, :cond_15

    goto :goto_4

    :cond_15
    if-nez v10, :cond_16

    iget-boolean v1, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v1, :cond_16

    :goto_4
    const/high16 v5, 0x42a00000    # 80.0f

    const v4, 0x3f70a3d7    # 0.94f

    goto :goto_5

    :cond_16
    move v4, v8

    move v5, v9

    :goto_5
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_2a

    new-instance v6, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    invoke-direct {v6, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;-><init>(F)V

    invoke-virtual {v6, v5}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    goto/16 :goto_d

    :cond_17
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-eqz v1, :cond_28

    iget-boolean v10, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCustomFlingBounceParameters:Z

    if-eqz v10, :cond_18

    iget v5, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStiffness:F

    iget v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mDamping:F

    goto/16 :goto_c

    :cond_18
    iget-boolean v10, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    const/high16 v11, 0x43700000    # 240.0f

    if-eqz v10, :cond_19

    iget-boolean v12, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v12, :cond_19

    iget-boolean v12, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v12, :cond_19

    const v4, 0x3f5c28f6    # 0.86f

    :goto_6
    move v5, v11

    goto/16 :goto_c

    :cond_19
    const/high16 v12, 0x43750000    # 245.0f

    if-eqz v10, :cond_1a

    iget-boolean v13, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v13, :cond_1a

    iget-boolean v13, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v13, :cond_1a

    goto/16 :goto_b

    :cond_1a
    const v13, 0x3f6147ae    # 0.88f

    if-eqz v10, :cond_1b

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v14, :cond_1b

    const/high16 v5, 0x436b0000    # 235.0f

    :goto_7
    move v4, v13

    goto/16 :goto_c

    :cond_1b
    if-eqz v10, :cond_1c

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v14, :cond_1c

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    if-eqz v14, :cond_1c

    goto :goto_8

    :cond_1c
    if-eqz v10, :cond_1d

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v14, :cond_1d

    :goto_8
    move v4, v6

    move v5, v7

    goto/16 :goto_c

    :cond_1d
    if-eqz v10, :cond_1e

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v6, :cond_1e

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v6, :cond_1e

    move v5, v12

    goto :goto_7

    :cond_1e
    const v6, 0x3f733333    # 0.95f

    const/high16 v7, 0x437a0000    # 250.0f

    if-eqz v10, :cond_1f

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v14, :cond_1f

    iget-boolean v14, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v14, :cond_1f

    goto :goto_8

    :cond_1f
    const v14, 0x3f666666    # 0.9f

    if-eqz v10, :cond_20

    iget-boolean v15, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v15, :cond_20

    :goto_9
    move v5, v11

    :goto_a
    move v4, v14

    goto/16 :goto_c

    :cond_20
    const/high16 v11, 0x437f0000    # 255.0f

    if-nez v10, :cond_21

    iget-boolean v15, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v15, :cond_21

    iget-boolean v15, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v15, :cond_21

    const v4, 0x3f6b851f    # 0.92f

    goto :goto_6

    :cond_21
    if-nez v10, :cond_22

    iget-boolean v15, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v15, :cond_22

    iget-boolean v15, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v15, :cond_22

    const/high16 v5, 0x43820000    # 260.0f

    move v4, v6

    goto :goto_c

    :cond_22
    if-nez v10, :cond_23

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBigDpModeEnabled:Z

    if-eqz v6, :cond_23

    move v5, v7

    goto :goto_a

    :cond_23
    if-nez v10, :cond_24

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v6, :cond_24

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCenterDisplayModeEnabled:Z

    if-eqz v6, :cond_24

    goto :goto_c

    :cond_24
    if-nez v10, :cond_25

    iget-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mSmallDpModeEnabled:Z

    if-eqz v6, :cond_25

    goto :goto_c

    :cond_25
    if-nez v10, :cond_26

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v4, :cond_26

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCardModeEnabled:Z

    if-eqz v4, :cond_26

    goto :goto_9

    :cond_26
    if-nez v10, :cond_27

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v4, :cond_27

    iget-boolean v4, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mGridModeEnabled:Z

    if-eqz v4, :cond_27

    :goto_b
    const v4, 0x3f6e147b    # 0.93f

    move v5, v12

    goto :goto_c

    :cond_27
    if-nez v10, :cond_28

    iget-boolean v1, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mMidDpModeEnabled:Z

    if-eqz v1, :cond_28

    move v5, v7

    goto/16 :goto_7

    :cond_28
    move v4, v8

    move v5, v9

    :goto_c
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v1, :cond_29

    new-instance v6, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    invoke-direct {v6, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;-><init>(F)V

    invoke-virtual {v6, v5}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOif(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;->z1OoOdo(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->setSpring(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOint;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDampingParameters stiffness="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " damping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_d
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    move/from16 v2, p1

    int-to-float v2, v2

    iget v4, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOint:F

    mul-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "Maintain a high refresh rate."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1}, Luyd;->a(I)V

    :cond_2b
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getVibrateEnable()Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-boolean v1, Lvyd;->c:Z

    if-eqz v1, :cond_2d

    sget-boolean v1, Lvyd;->d:Z

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    invoke-static {v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    if-eqz v1, :cond_2c

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOtry:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    if-nez v2, :cond_2c

    new-instance v2, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOtry:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    :cond_2c
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOdo:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOtry:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOtry:Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    :goto_e
    return-void
.end method

.method public final onPull(F)V
    .locals 0

    .line 1
    const-string p0, "BounceEdgeEffect"

    const-string p1, "onPull"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPull(FF)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPull2\uff1a"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BounceEdgeEffect"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRelease()V
    .locals 1

    const-string p0, "BounceEdgeEffect"

    const-string v0, "onRelease"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBase(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 1

    instance-of v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    :cond_0
    return-void
.end method

.method public final z1OoOdo()Z
    .locals 2

    .line 2
    sget-boolean v0, Lvyd;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOfor:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->isRefreshRateLimited()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkStartModifyRefreshRateStatus: isRefreshRateLimited = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BounceEdgeEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
