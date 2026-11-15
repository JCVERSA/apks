.class public final Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

.field public final synthetic z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    return-void
.end method


# virtual methods
.method public final z1OoOdo()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    return p0
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V
    .locals 2

    .line 2
    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->createAnimation()V

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScrollMode:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->sanityCheck(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAvoidVelocity:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object v1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_1
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    :cond_2
    return-void
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollListener:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getTranslationProperty(Landroid/view/View;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    :cond_0
    return-void
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V
    .locals 0

    .line 4
    const-string p1, "BounceEffect"

    const-string p2, "onAnimationEnd"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {p1}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget p2, p2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScrollMode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurrentState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;

    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mJustCancelAnimation:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mJustCancelAnimation:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    const-string v2, "BounceEffect"

    if-eqz v0, :cond_2

    const-string v0, "touch up bounceback start anim"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v4}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->sanityCheck(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mAvoidVelocity:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    iget-object v5, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v5}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    :cond_1
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->start()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$200(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-virtual {v4, v0, p1, v5}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)Z

    const-string p1, "touch up bounceback"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-eq v4, v5, :cond_3

    iget p0, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mScrollMode:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setOverScrollMode(I)V

    const-string p0, "touch up bounceback not handle"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_4
    return v3
.end method

.method public final z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "touch down bounceback"

    const-string v1, "BounceEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aget v6, v3, v2

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v5, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    aget v3, v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v3

    add-float/2addr v5, v6

    float-to-int v3, v5

    iput v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$100(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz p0, :cond_1

    const-string p0, "touch down bounceback not handle"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v4
.end method

.method public final z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-object v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    invoke-virtual {v2, v0, p1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)Z

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$000(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v4, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    if-nez v4, :cond_1

    return v1

    :cond_1
    iget v4, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    iget v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    add-float/2addr v4, v2

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iput-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mJustCancelAnimation:Z

    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTranslationAnimation:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;

    invoke-virtual {v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/SpringAnimation;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    iget-object v6, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v6, v6, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    const-string v7, "BounceEffect"

    if-ne v5, v6, :cond_3

    iget-object p0, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-virtual {v2, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    const-string p0, "touch move bounceback handled"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "out bounceback:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "orig:0.0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v5, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v7, v7, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-nez v7, :cond_4

    cmpg-float v7, v4, v6

    if-lez v7, :cond_5

    :cond_4
    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-eqz v5, :cond_6

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_6

    :cond_5
    iget-object v5, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    invoke-virtual {v2, v5}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v2, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->clampOffsetToBoundary(F)F

    move-result v4

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v2, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->shouldHandOffMoveToScroll(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v0, p1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->performOverscrollHandoff(Landroid/view/View;Landroid/view/MotionEvent;F)Z

    move-result v1

    :cond_6
    if-nez v1, :cond_7

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p0, v0, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    :cond_7
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method
