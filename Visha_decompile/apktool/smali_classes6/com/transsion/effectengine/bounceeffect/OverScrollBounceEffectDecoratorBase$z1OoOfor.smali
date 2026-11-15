.class public final Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOfor"
.end annotation


# instance fields
.field public final z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

.field public final synthetic z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->createMotionAttributes()Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    return-void
.end method


# virtual methods
.method public final z1OoOdo()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final z1OoOdo(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final z1OoOdo(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$200(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final z1OoOfor(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aget v4, v1, v2

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v5, 0x1

    aget v1, v1, v5

    int-to-float v1, v1

    add-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$100(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public final z1OoOif(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    const/4 v4, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v2}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v2

    new-array v3, v4, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aget v8, v3, v7

    int-to-float v8, v8

    add-float/2addr v4, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    aget v2, v3, v6

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    return v7

    :cond_0
    iget-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReachedNeedUpdateFirstPoint:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReachedNeedUpdateFirstPoint:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v2}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v2

    new-array v3, v4, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aget v8, v3, v7

    int-to-float v8, v8

    add-float/2addr v4, v8

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aget v3, v3, v6

    int-to-float v3, v3

    add-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    iput v3, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iput-boolean v7, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReachedNeedUpdateFirstPoint:Z

    iput-boolean v7, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReachedNeedUpdateFirstPoint:Z

    :cond_2
    iget-object v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v2, v2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v2}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    invoke-virtual {v3, v2, v1, v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)Z

    move-result v3

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iput-boolean v7, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-static {v4}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->access$000(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;)V

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurIsFlingBounceBackState:Z

    if-eqz v5, :cond_3

    iget-boolean v8, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIsFirstEnterFlingBounceBack:Z

    if-eqz v8, :cond_3

    iput-boolean v7, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIsFirstEnterFlingBounceBack:Z

    return v6

    :cond_3
    const-string v8, "BounceEffect"

    const/4 v9, 0x0

    if-eqz v5, :cond_8

    iget-boolean v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz v5, :cond_8

    iget-boolean v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v5, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-nez v5, :cond_8

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v4}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->isInAbsoluteStart()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v4}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->isInAbsoluteEnd()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_4
    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/transsion/effectengine/bounceeffect/z1OoOfor;->z1OoOdo()V

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iput-boolean v7, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurIsFlingBounceBackState:Z

    iput-boolean v6, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIsFirstEnterFlingBounceBack:Z

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    iget-object v3, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-virtual {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetAccumulatedMissedScrollDelta()V

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    iget v5, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    iget-boolean v10, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iget-object v11, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v11, v11, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    if-ne v10, v11, :cond_5

    move v10, v6

    goto :goto_0

    :cond_5
    move v10, v7

    :goto_0
    iget v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOnew:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {v1, v4, v5, v10, v7}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getFrictionFactor(FFZZ)F

    move-result v1

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    mul-float/2addr v4, v1

    iget v1, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    add-float/2addr v1, v4

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    const/high16 v0, 0x42200000    # 40.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    instance-of v0, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const-string v0, "Send action down event"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v6

    :cond_8
    iget-object v4, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    if-nez v5, :cond_9

    return v7

    :cond_9
    if-eqz v3, :cond_a

    return v7

    :cond_a
    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-boolean v5, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedScrollEnabled:Z

    if-eqz v5, :cond_d

    iget-boolean v5, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedEdgeReached:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-eqz v5, :cond_c

    :cond_b
    iget-boolean v5, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mNestedFarEdgeReached:Z

    if-eqz v5, :cond_d

    iget-boolean v4, v4, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-eqz v4, :cond_d

    :cond_c
    return v7

    :cond_d
    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v3}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->isInAbsoluteStart()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-nez v3, :cond_f

    :cond_e
    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mViewAdapter:Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;

    invoke-interface {v3}, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;->isInAbsoluteEnd()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    if-nez v3, :cond_18

    :cond_f
    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOdo:I

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget-boolean v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iput-boolean v3, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "about to switch to overscroll mode, start mDir:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAbsOffset:0.0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v1, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceEdgeEffect:Lcom/transsion/effectengine/bounceeffect/z1OoOfor;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/transsion/effectengine/bounceeffect/z1OoOfor;->z1OoOdo()V

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iput-boolean v7, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mCurIsFlingBounceBackState:Z

    iput-boolean v6, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIsFirstEnterFlingBounceBack:Z

    :cond_10
    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mOverScrollingState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOtry;

    invoke-virtual {v1, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->issueStateTransition(Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)V

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->resetAccumulatedMissedScrollDelta()V

    iget-object v1, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    iget v5, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    iget-boolean v8, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iget-object v10, v1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mStartAttr:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;

    iget-boolean v10, v10, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOnew;->z1OoOif:Z

    if-ne v8, v10, :cond_11

    move v8, v6

    goto :goto_1

    :cond_11
    move v8, v7

    :goto_1
    iget v3, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOnew:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_12

    move v3, v6

    goto :goto_2

    :cond_12
    move v3, v7

    :goto_2
    invoke-virtual {v1, v4, v5, v8, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->getFrictionFactor(FFZZ)F

    move-result v1

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOdo:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;

    iget v4, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    mul-float/2addr v4, v1

    iget v1, v3, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    add-float/2addr v1, v4

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;->z1OoOif:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->translateView(Landroid/view/View;F)V

    instance-of v0, v2, Landroid/widget/AbsListView;

    const/16 v1, 0x1f

    if-eqz v0, :cond_15

    move-object v0, v2

    check-cast v0, Landroid/widget/AbsListView;

    move v3, v7

    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_14

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v1, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-wide v8, v10

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_15
    instance-of v0, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_17

    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_17
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setSelected(Z)V

    return v6

    :cond_18
    return v7
.end method
